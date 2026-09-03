unit S_CX_RG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu, S_Emp,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq;
  

type
  TFrm_CX_RG = class(TForm)
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
    Qr_LDRCRED: TFloatField;
    Qr_LDRDEB: TFloatField;
    Qr_LDRNOMDEP: TStringField;
    Qr_LDRCODDEP: TStringField;
    SP1: TSpeedButton;
    SP2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_cx_rg: tFrm_Impres;
  end;

var
  Frm_CX_RG: TFrm_CX_RG;

implementation

{$R *.dfm}

procedure TFrm_CX_RG.BitBtn1Click(Sender: TObject);
var
msaldod,msaldoi, mdeb, mcred: Real;
mp1,mp2,mp3: Real;
begin
if (pbanco<>0) then // interbase
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete From TMLDR');
   DM1.query1.execsql;
   DM1.Query1.Close;

   if RG_NAT.ItemIndex<>1 then
      begin
      DM1.Query1.close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into TMLDR (TMDATA,TMCODDEP,TMNOMDEP,TMCRED) '
                        +' Select DATAREAL,CODDEP,DNOME, sum(VALORR)','Insert into TMLDR (TMDATA,TMCODDEP,TMNOMDEP,TMCRED) '
                        +' Select DATADP,CODDEP,DNOME,sum(VALORP)')
                        +' from CADLDR '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDEP',[]),
                        ' left OUTER JOIN CADDEP ON (DCODDEP = CODDEP) ',
                        ' left OUTER JOIN CADDEP ON (DCODEMP = CODEMP) and (DCODDEP = CODDEP) )')
                        +' where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
                        +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                        +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                        +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                        +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                        +'  and NATDC<>'+chr(39)+'D'+chr(39)
                        +iif(RG_ESTADO.ItemIndex=0,
                        ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                        +iif(RG_ESTADO.ItemIndex=1,
                        ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));
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
      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by DATAREAL,CODDEP,DNOME ',' Group by DATADP,CODDEP,DNOME '));
      DM1.Query1.ExecSQL;
      end;
   if RG_NAT.ItemIndex<>2 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(iif(RG_ESTADO.ItemIndex=0,'Insert into TMLDR (TMDATA,TMCODDEP,TMNOMDEP,TMDEB) '
                        +' Select DATAREAL,CODDEP,DNOME,sum(VALORR)','Insert into TMLDR (TMDATA,TMCODDEP,TMNOMDEP,TMDEB) '
                        +' Select DATADP,CODDEP,DNOME,sum(VALORP)')
                        +' from CADLDR '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDEP',[]),
                        ' left OUTER JOIN CADDEP ON (DCODDEP = CODDEP) ',
                        ' left OUTER JOIN CADDEP ON (DCODEMP = CODEMP) and (DCODDEP = CODDEP) )')
                        +' where STATUS<>9 '
                        +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                        +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
                        +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                        +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                        +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                        +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                        +'  and NATDC='+chr(39)+'D'+chr(39)
                        +iif(RG_ESTADO.ItemIndex=0,
                        ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                        +iif(RG_ESTADO.ItemIndex=1,
                        ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));
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
      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Group by DATAREAL,CODDEP,DNOME ',' Group by DATADP,CODDEP,DNOME '));
      DM1.Query1.ExecSQL;

      end;
   Qr_Ldr.Close;
   Qr_Ldr.Sql.Clear;
   Qr_Ldr.Sql.add('Select TMCODDEP as CODDEP,TMNOMDEP as NOMDEP, sum(TMCRED) as CRED,sum(TMDEB) as DEB '
                 +' from TMLDR group by TMCODDEP,TMNOMDEP');
   Qr_Ldr.Open;
   end
else
   begin
   Qr_Ldr.Close;
   Qr_Ldr.SQl.Clear;
   Qr_Ldr.SQl.add(iif(RG_ESTADO.ItemIndex=0,'Select DCODDEP as CODDEP, DNOME as NOMDEP,sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0,VALORR)) as CRED, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORR,0)) as DEB ',
                 'Select DCODDEP as CODDEP, DNOME as NOMDEP,sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+',0, VALORP)) as CRED, '
                 +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+', VALORP,0)) as DEB ')
                 +' from CADLDR,CADDEP where STATUS<>9 '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDEP',[]),'',' and DCODEMP=CODEMP')
                 +' and DCODDEP(+)=CODDEP '
                 +iif(Trim(MCODEMP.Text)<>'',' and CODEMP=0'+Trim(MCODEMP.Text),'')
                 +iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
                 +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
                 +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
                 +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                 +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                 +iif(RG_ESTADO.ItemIndex=0,
                 ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                 +iif(RG_ESTADO.ItemIndex=1,
                 ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));
   if RG_NAT.ItemIndex=2 then
      Qr_Ldr.SQL.add('  and NATDC='+chr(39)+'C'+chr(39));
   if RG_NAT.ItemIndex=1 then
      Qr_Ldr.SQL.add('  and NATDC<>'+chr(39)+'C'+chr(39));


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
   Qr_Ldr.Sql.add(' Group by DCODDEP,DNOME');
   Qr_Ldr.Open;
   end;
msaldoi:=0;  mdeb:=0; mcred:=0; msaldod:=0;
if Qr_LDR.Eof then
   begin
   MessageDlg('Nada a ser impresso no período Solicitado!',mtWarning,[mbOk],0);
   exit;
   end;

testeform := TFrm_CX_RG(FindGlobalComponent('form_impres_pfor01'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_cx_rg);
   end;

form_impres_cx_rg.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_cx_rg.mpag:=0;
form_impres_cx_rg.mlin:=0;
While not Qr_Ldr.Eof do
   begin
   if form_impres_cx_rg.mlin=0 then
      begin
      form_impres_cx_rg.mpag:=form_impres_cx_rg.mpag+1;
      form_impres_cx_rg.mlin:=form_impres_cx_rg.fImprimirCabecalho(80,'Resumo do caixa por Departamento.');
      form_impres_cx_rg.mlin:=form_impres_cx_rg.mlin+1;
      form_impres_cx_rg.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      form_impres_cx_rg.RDprint1.ImpF(04,01,'  Código   Nome do Departamento                             Creditos      %             Debitos      %               Saldo      %',mreduz);
{
 12345   1234567890123456789012345678901234567890   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00

 Código   Nome do Departamento                             Creditos      %             Debitos      %               Saldo      %
  12345   1234567890123456789012345678901234567890   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00
}
      form_impres_cx_rg.mlin:=4;
      end;
   mp1:=0;
   mp2:=0;
   mp3:=0;
   msaldoi:=Qr_LDRCRED.Value-Qr_LDRDEB.Value;
   mdeb :=mdeb +Qr_LDRDEB.Value;
   mcred:=mcred+Qr_LDRCRED.Value;

   form_impres_cx_rg.mlin :=form_impres_cx_rg.mlin+1;
   form_impres_cx_rg.RDprint1.ImpF(form_impres_cx_rg.mlin,03,insere(Qr_LDRCODDEP.Value,' ',5)+'   '
                           +insere2(Qr_LDRNOMDEP.Value,' ',40)+'   '
                           +insere(FormatFloat('##0.00',Qr_LDRCRED.Value),' ',14)+'   '
                           +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                           +insere(FormatFloat('##0.00',Qr_LDRDEB.Value),' ',14)+'   '
                           +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                           +insere(FormatFloat('##0.00',msaldoi),' ',14)+'   '
                           +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
   Qr_Ldr.Next;

   if Qr_Ldr.Eof then
      begin
      mp1:=0;
      mp2:=0;
      mp3:=0;
      msaldoi:=mcred-mdeb;
      form_impres_cx_rg.mlin :=form_impres_cx_rg.mlin+1;
      form_impres_cx_rg.RDprint1.ImpF(form_impres_cx_rg.mlin,03,insere2('-Totais','.',51)
                              +insere(FormatFloat('##0.00',mcred),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                              +insere(FormatFloat('##0.00',mdeb),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                              +insere(FormatFloat('##0.00',msaldoi),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
      form_impres_cx_rg.mlin:=form_impres_cx_rg.mlin+1;
      form_impres_cx_rg.RDprint1.ImpF(form_impres_cx_rg.mlin,01,insere2('Fim...','-',80),mnormal);
      if form_impres_cx_rg.RDprint1.Setup then form_impres_cx_rg.RDprint1.Fechar;
      form_impres_cx_rg.free;
      form_impres_cx_rg:=nil;
      end
   else if form_impres_cx_rg.mlin>58 then
      begin
      form_impres_cx_rg.mlin:=form_impres_cx_rg.mlin+1;
      form_impres_cx_rg.RDprint1.ImpF(form_impres_cx_rg.mlin,01,insere2('Coninua...','-',80),mnormal);
      form_impres_cx_rg.RDprint1.Novapagina;
      form_impres_cx_rg.mlin:=0;
      end;
   end;
end;

procedure TFrm_CX_RG.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_RG.MCODEMPExit(Sender: TObject);
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

procedure TFrm_CX_RG.MCODEMPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_CX_RG.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)<>'' Then
   begin
   flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text);
   if DM1.Query1.Eof then
      begin
      ShowMessage('Banco Não Cadastrado');
      CODBCO.SetFocus;
      end
   else
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMBCO.Text:='Todos...';

end;

procedure TFrm_CX_RG.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_RG',Key);
   if trim(CODBCO.Text)<>'' then
      CODDEP.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_CX_RG.CODDEPExit(Sender: TObject);
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

procedure TFrm_CX_RG.CODCCUExit(Sender: TObject);
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

procedure TFrm_CX_RG.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CX_RG',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
       MDT1.SetFocus;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_CX_RG',Key);
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_RG',Key);
      MDT1.SetFocus;
      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_CX_RG',key);
      key:=#0;
      end;
   key:=#0;
   end;

end;

procedure TFrm_CX_RG.CODIGOExit(Sender: TObject);
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

procedure TFrm_CX_RG.FormCreate(Sender: TObject);
begin
MCODEMP.Text:=IntToStr(codemp);

end;

procedure TFrm_CX_RG.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_RG','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_CX_RG.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_RG','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(Self);
end;

procedure TFrm_CX_RG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RG.FormActivate(Sender: TObject);
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
