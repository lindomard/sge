unit S_TConABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls,s_FOR, S_SelEmp,s_lerarq_geral;

type
  TFrm_TConABC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    RG_ORDEM: TRadioGroup;
    Qr_For: TQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForTOTAL: TFloatField;
    Qr_ForICMSR: TFloatField;
    PageControl1: TPageControl;
    tsFiltros01: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    tsFiltros02: TTabSheet;
    Label7: TLabel;
    RG_TIPOPED: TCheckListBox;
    CB_ICMSRET: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_FORCAR: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_tconABC: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_TConABC: TFrm_TConABC;
  fTConabc_Origem: Integer;

implementation


{$R *.dfm}

procedure TFrm_TConABC.BitBtn1Click(Sender: TObject);
var
mperiodo:String;
mordem,mpag, mlin: Integer;
mordemp: Array [0..3] of string;
mtoti,mtotsc,mtotb: Real;
mtotg, mperc: Real;
mcampo_vlr: String;
begin
mordemp[0]:='CNOME';
mordemp[1]:='PDCODCON';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if fTConabc_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
//   fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   if pbanco=0 then
    //  la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCON','CCODEMP','PDCODEMP' ,'CCODCON' ,'PDCODCON');

   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCON','CCODEMP' ,'PDCODEMP', 'CCODCON' ,'PDCODCON');

   end;

if fTConabc_Origem=0 then
   begin
   if CB_EmiDoc.Checked then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';
   if CB_ICMSRET.Checked then
     mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,(P2TOTLIQ+P2ICMSR)))'
   else
     mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ)*-1,P2TOTLIQ))';

   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select CNOME AS NOME, PDCODCON AS CODIGO,'+mcampo_vlr+' as total,'
                 +'       sum(P2ICMSR) as ICMSR from CADP01,CADP02,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
//                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'and PDCODEMP=P2CODEMP ','')
//                 +iif(fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and ')
//                 +fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)
                 +iif(MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS))
                 +'      '+' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM and P2CODPRO=PDCODPRO ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_For.SQl.Add(' and P1TIPO '+mcinst2);
   if cb_emidoc.checked then
      Qr_For.SQL.Add(' and (P1EMIDOC>0)');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1CODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P2CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P2CODFAB '+mcinst2);


   Qr_For.SQL.Add(' Group by CNOME,PDCODCON');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
   try
     Qr_For.Open;
   except
     showmessage('Erro ao gerar o Relatorio');
     Qr_For.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     Abort;
     end;
   end
else
   begin
   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select CNOME AS NOME, PDCODCON AS CODIGO,sum( (PF2QTDP*PF2PU)-PF2TOTDES ) as total,'
                 +'       sum(PF1ICMSR) as ICMSR from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   Qr_For.SQL.Add(' Group by CNOME,PDCODCON');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
   try
     Qr_For.Open;
   except
     showmessage('Erro ao gerar o Relatorio');
     Qr_For.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     Abort;
     end;
   end;
if Qr_For.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_TConABC(FindGlobalComponent('form_impres_tconABC'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_tconABC);

form_impres_tconABC.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtoti :=0;
mtotsc:=0;
mtotb :=0;
mpag:=0;
mlin:=0;
mtotg:=0;
While not Qr_For.Eof do
   begin
   mtotg:=mtotg+Qr_ForTOTAL.Value;;
   Qr_For.Next;
   end;
Qr_For.First;
While not Qr_For.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_tconABC.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_tconABC.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      if fTConabc_Origem=0 then
         form_impres_tconABC.RDprint1.ImpF(02,01,'Vendas por Tipo de Controle de Produto.',mnormal)
      else
         form_impres_tconABC.RDprint1.ImpF(02,01,'Compras por Tipo de Controle de Produto.',mnormal);

      form_impres_tconABC.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_tconABC.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_tconABC.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      mlin:=4;
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,'+-----+------+----------------------------------------+-------------+----------+',mnormal);
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,'|Ordem|Código|Nome do Controle                        |    Total    |Percentual|',mnormal);
      end;
   mordem:=mordem+1;
   mlin:=mlin+1;
   mperc:=((Qr_ForTOTAL.Value)*100)/mtotg;
   form_impres_tconABC.RDprint1.ImpF(mlin,01,'|'+FormatFloat('00000',mordem)
                           +'|'+FormatFloat('000000',Qr_ForCODIGO.Value)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTAL.Value),' ',13)+'|  '
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'% |',mnormal);
   mtotb :=mtotb +Qr_ForTOTAL.Value;
   Qr_For.Next;
   if Qr_For.Eof then
      begin
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,'|     '
                           +'|      '
                           +'|'+insere2('Total','.',40)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',13)+'|  '
                           +insere('100.00',' ',6)+'% |',mnormal);
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,'+Fim.-+------+----------------------------------------+-------------+----------+',mnormal);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_tconABC.RDprint1.ImpF(mlin,01,'+Continua...-+----------------------------------------+-------------+----------+',mnormal);
      form_impres_tconABC.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_impres_tconABC.RDprint1.Setup then form_impres_tconABC.RDprint1.Fechar;
form_impres_tconABC.Free;
form_impres_tconABC:=nil;

end;

procedure TFrm_TConABC.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_TConABC.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_TConABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

if fTConabc_Origem=0 then
   begin
   Frm_TConABC.Caption:='ABC das Vendas por Tipo de Controle de Produto';
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   RG_TIPOPED.Checked[0]:=true;
   end
else
   begin
   Frm_TConABC.Caption:='ABC das Compras por Tipo de Controle de Produto';
   RG_TIPOPED.Visible:=False;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('V&alor Crescente');
   RG_ORDEM.Items.add('Va&lor Decrescente');
   end;
RG_ORDEM.itemIndex:=0;
end;

procedure TFrm_TConABC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_TConABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_TConABC.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_TConABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_TConABC.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
      begin
      fmensagem('Produto não cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODPRO.text := '';
      CODPRO.SetFocus;
      end;
   end;


end;

procedure TFrm_TConABC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      begin
      fmensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_TConABC.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_TConABC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_TConABC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_tconabc',key);
   if valfloat(CODVEN.text)=0 then
      CODVENExit(self);
   key:=#0;
   end;


end;

procedure TFrm_TConABC.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_DestPro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_DestPro',key);
      CODPROExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_TConABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_TConABC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_TConABC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_TConABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_TConABC.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_TConABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_TConABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_TConABC.FormShow(Sender: TObject);
begin
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=True;
   OMITIR_VEN.Enabled:=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;
end;

end.
