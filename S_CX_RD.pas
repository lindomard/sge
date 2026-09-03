unit S_CX_RD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu, S_Emp,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq, S_SelEmp;

type
  TFrm_CX_RD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MCODEMP: TEdit;
    Label2: TLabel;
    CODBCO: TEdit;
    NOMEMP: TEdit;
    NOMBCO: TEdit;
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
    Qr_LDRDATA: TDateTimeField;
    Qr_LDRCRED: TFloatField;
    Qr_LDRDEB: TFloatField;
    SP1: TSpeedButton;
    SP2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_cx_rd: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CX_RD: TFrm_CX_RD;

implementation

{$R *.dfm}

procedure TFrm_CX_RD.BitBtn1Click(Sender: TObject);
var
msaldod,msaldoi, mdeb, mcred: Real;
mpag, mlin: Integer;
begin
if pbanco=1 then // interbase
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete From TMLDR');
   DM1.query1.execsql;
   DM1.Query1.Close;

   if RG_NAT.ItemIndex<>1 then
      begin
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into TMLDR (TMDATA,TMCRED) '
                        +' Select DATAREAL,sum(VALORR)','Insert into TMLDR (TMDATA,TMCRED) '
                        +' Select DATADP,sum(VALORP)')
                        +' from CADLDR where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
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
      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into TMLDR (TMDATA,TMDEB) '
                        +' Select DATAREAL,sum(VALORR)','Insert into TMLDR (TMDATA,TMDEB) '
                        +' Select DATADP,sum(VALORP)')
                        +' from CADLDR where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
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
   Qr_Ldr.Sql.add('Select TMDATA as DATA,sum(TMCRED) as CRED,sum(TMDEB) as DEB '
                 +' from TMLDR group by TMDATA');
   Qr_Ldr.Open;
   end
else
   begin
   Qr_Ldr.Close;
   Qr_Ldr.SQl.Clear;
   Qr_Ldr.SQl.add(iif(RG_ESTADO.ItemIndex=0,'Select DATAREAL as DATA,sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0,VALORR)) as CRED, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORR,0)) as DEB ',
                 'Select DATADP as DATA,sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0, VALORP)) as CRED, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORP,0)) as DEB ')
                 +' from CADLDR where STATUS<>9 '
                 +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                 +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
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
   Qr_Ldr.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by DATAREAL ',' Group by DATADP '));
   Qr_Ldr.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Order by DATAREAL ',' Order by DATADP '));
   Qr_Ldr.Open;
   end;
if Qr_LDR.Eof then
   begin
   MessageDlg('Nada a ser impresso no período Solicitado!',mtWarning,[mbOk],0);
   exit;
   end;
   
msaldoi:=0;  mdeb:=0; mcred:=0; msaldod:=0;
testeform := TFrm_CX_RD(FindGlobalComponent('form_impres_cx_rd'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_cx_rd);
   end;


form_impres_cx_rd.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpag:=0;
mlin:=0;
While not Qr_Ldr.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      mlin:=form_impres_cx_rd.fImprimirCabecalho(80,'Resumo diário do Caixa. ');
      mlin:=mlin+1;

      form_impres_cx_rd.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      if RG_ESTADO.ItemIndex=0 then
         form_impres_cx_rd.RDprint1.ImpF(04,01,'D a t a           Recebidos          Pagos       Saldo do dia      Saldo Geral',mnormal)
      else if RG_ESTADO.ItemIndex=1 then
         form_impres_cx_rd.RDprint1.ImpF(04,01,'D a t a           A Receber          A Pagar     Saldo do dia      Saldo Geral',mnormal)
      else
         form_impres_cx_rd.RDprint1.ImpF(04,01,'D a t a           Creditos           Debitos     Saldo do dia      Saldo Geral',mnormal);

      mlin:=4;
      end;
   mlin :=mlin+1;
   mdeb :=mdeb +Qr_LDRDEB.Value;
   mcred:=mcred+Qr_LDRCRED.Value;
   msaldod:=Qr_LDRCRED.Value-Qr_LDRDEB.Value;
   msaldoi:=msaldoi+msaldod;
   form_impres_cx_rd.RDprint1.ImpF(mlin,01,FormatDateTime('dd/mm/yyyy',Qr_LDRDATA.Value)  +'   '
                           +insere(FormatFloat('#,##0.00',Qr_LDRCRED.Value),' ',14)+'   '
                           +insere(FormatFloat('#,##0.00',Qr_LDRDEB.Value),' ',14)  +'   '
                           +insere(FormatFloat('#,##0.00',msaldod),' ',14)         +'   '
                           +insere(FormatFloat('#,##0.00',msaldoi),' ',14),mnormal);

   Qr_ldr.Next;
   if Qr_Ldr.Eof then
      begin
      msaldod:=mcred-mdeb;
      msaldoi:=msaldod;
      mlin:=mlin+1;
      form_impres_cx_rd.RDprint1.ImpF(mlin,01,'- Totais.....'
                           +insere(FormatFloat('#,##0.00',mcred),' ',14)+'   '
                           +insere(FormatFloat('#,##0.00',mdeb),' ',14)  +'   '
                           +insere2(' ',' ',14)         +'   '
                           +insere(FormatFloat('#,##0.00',msaldoi),' ',14),mnormal);
      mlin:=mlin+1;
      form_impres_cx_rd.RDprint1.ImpF(mlin,01,insere2('Fim...','-',80),mnormal);
      if form_impres_cx_rd.RDprint1.Setup then form_impres_cx_rd.RDprint1.Fechar;
      form_impres_cx_rd.free;
      form_impres_cx_rd:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_cx_rd.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
      form_impres_cx_rd.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
end;

procedure TFrm_CX_RD.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_RD.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CX_RCC',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_CX_RD',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_RD',Key);
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
   key:=#0;
   end;

end;

procedure TFrm_CX_RD.CODIGOExit(Sender: TObject);
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

procedure TFrm_CX_RD.CODCCUExit(Sender: TObject);
begin
CODCCU.Text:=Trim(CODCCU.Text);

if Trim(CODCCU.Text)<>'' Then
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
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

procedure TFrm_CX_RD.CODDEPExit(Sender: TObject);
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

procedure TFrm_CX_RD.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)<>'' Then
   begin
   flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text);
   if DM1.Query1.Eof then
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

procedure TFrm_CX_RD.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

      begin
      CODBCO.Text:=fChamaBco(0,'frm_CX_RD',Key);
      if trim(CODBCO.Text)<>'' then
         CODBCOExit(Self);
      key:=#0;
      end;
    end;
end;

procedure TFrm_CX_RD.MCODEMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

 if Frm_Emp=nil then
      Application.CreateForm(TFrm_Emp, Frm_Emp)
   else
      begin
      Frm_Emp.Free;
      Frm_Emp:=nil;
      Application.CreateForm(TFrm_Emp, Frm_Emp);
      end;

   Frm_Emp.ShowModal;
   Frm_Emp.Free;
   Frm_Emp:=nil;

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

procedure TFrm_CX_RD.MCODEMPExit(Sender: TObject);
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

procedure TFrm_CX_RD.FormCreate(Sender: TObject);
begin
MCODEMP.Text:=IntToStr(codemp);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_CX_RD.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_DR','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
   end;

procedure TFrm_CX_RD.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_RD','');
CODCCU.SetFocus;

end;

procedure TFrm_CX_RD.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.items.Strings[CB_TIPO.itemindex];

end;

procedure TFrm_CX_RD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RD.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CX_RD.FormActivate(Sender: TObject);
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
