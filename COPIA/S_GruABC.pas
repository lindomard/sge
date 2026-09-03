unit S_GruABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls, S_SelEmp,s_lerarq_geral;

type
  TFrm_GruABC = class(TForm)
    Qr_For: TQuery;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForTOTAL: TFloatField;
    Qr_ForICMSR: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label12: TLabel;
    RG_ORDEM: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lbx_codpro: TListBox;
    CODPRO: TEdit;
    OMITIR_PRO: TCheckBox;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    Label5: TLabel;
    CODGRU: TEdit;
    Label8: TLabel;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label11: TLabel;
    CLBNivel: TCheckListBox;
    CLBStatus: TCheckListBox;
    Label14: TLabel;
    Label15: TLabel;
    CLBEstoque: TCheckListBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label6: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    lbl_codven: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    CB_FORCAR: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_ICMSRET: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBStatusClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBNivelClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_UFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_GruABC: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_GruABC: TFrm_GruABC;
  fGruabc_Origem: Integer;
  codigo_for : string;
  codigo_pro : string;
  codigo_con : string;
  codigo_tip : string;
  codigo_gru : string;
  codigo_ram : string;
  codigo_ven : string;
  codigo_uf  : string;
  tipo_ped   : string;
  tipo_nivel : string;
  tipo_estoque : string;
  tipo_status: string;
  tipo_uf    : string;


implementation

uses S_GPro, s_tipPro, S_TCon, S_For, S_Ram, S_UF;


{$R *.dfm}

procedure TFrm_GruABC.BitBtn1Click(Sender: TObject);
var
mperiodo:String;
mordem,mpag, mlin: Integer;
mordemp: Array [0..3] of string;
mtoti,mtotsc,mtotb: Real;
mtotg, mperc: Real;
mCampo_Vlr: String;
begin
mordemp[0]:='GRNOME';
mordemp[1]:='PDCODGRU';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if fGruabc_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
//   fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   if pbanco=0 then
  //    la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP' ,'GRCODGRU' ,'PDCODGRU');
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADGRU','GRCODEMP' ,'PDCODEMP','GRCODGRU' ,'PDCODGRU');
   end;

if fGruabc_Origem=0 then
   begin
   if CB_EmiDoc.Checked then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';
    
   if CB_ICMSRET.Checked then
     mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,P2TOTLIQ+P2ICMSR))'
   else
     mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ*-1,P2TOTLIQ))';

   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select GRNOME AS NOME, PDCODGRU AS CODIGO,'+mCampo_Vlr+' as total,'
                 +'       sum(P2ICMSR) as ICMSR from CADP01,CADP02, CADCLI, CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
//                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),' and PDCODEMP=P2CODEMP ','')
//                 +iif(fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and ')
//                 +fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)
                 +iif(MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS))
                 +iif(MEmpresa('CADCLI','CCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADCLI','CCODEMP',Form_SelEmp.CLB_EMPRESAS))
                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                 +'      '+' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM and PDCODPRO=P2CODPRO AND CCODCLI=P1CODCLI');
   if CB_EmiDoc.Checked then
      Qr_For.SQL.Add(' and (P1EMIDOC>0)');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1TIPO '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDNIVEL '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBStatus);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDSTATUS '+mcinst2);
   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and  '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P2CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P2CODFAB '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODGRU '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and CUF '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and GRCODGRU '+mcinst2);



   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   Qr_For.SQL.Add(' Group by GRNOME,PDCODGRU');
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
   Qr_For.SQl.Add('Select GRNOME AS NOME, PDCODGRU AS CODIGO,sum( (PF2QTDP*PF2PU)-PF2TOTDES ) as total,'
                 +'       sum(PF1ICMSR) as ICMSR from CADPF1,CADPF2, CADFOR '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +iif(MEmpresa('CADFOR','FCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADFOR','FCODEMP',Form_SelEmp.CLB_EMPRESAS))
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE AND FCODFOR=PF1CODFOR '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and FUF '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PF2CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODRAM '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and GRCODGRU '+mcinst2);


   Qr_For.SQL.Add(' Group by GRNOME,PDCODGRU');
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
testeform := TFrm_GruABC(FindGlobalComponent('form_Impres_GruABC'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_GruABC);

form_Impres_GruABC.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
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
      form_Impres_GruABC.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_Impres_GruABC.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      if fGruabc_Origem=0 then
         form_Impres_GruABC.RDprint1.ImpF(02,01,'Vendas por Grupo de Produto.',mnormal)
      else
         form_Impres_GruABC.RDprint1.ImpF(02,01,'Compras por Grupo de Produto.',mnormal);

      form_Impres_GruABC.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_Impres_GruABC.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_Impres_GruABC.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      mlin:=4;
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,'+-----+------+----------------------------------------+-------------+----------+',mnormal);
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,'|Ordem|Código|Nome do Grupo                           |    Total    |Percentual|',mnormal);
      end;
   mordem:=mordem+1;
   mlin:=mlin+1;
   mperc:=((Qr_ForTOTAL.Value)*100)/mtotg;
   form_Impres_GruABC.RDprint1.ImpF(mlin,01,'|'+FormatFloat('00000',mordem)
                           +'|'+FormatFloat('000000',Qr_ForCODIGO.Value)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTAL.Value),' ',13)+'|  '
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'% |',mnormal);
   mtotb :=mtotb +Qr_ForTOTAL.Value;
   Qr_For.Next;
   if Qr_For.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,'|     '
                           +'|      '
                           +'|'+insere2('Total','.',40)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',13)+'|  '
                           +insere('100.00',' ',6)+'% |',mnormal);
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,'+Fim.-+------+----------------------------------------+-------------+----------+',mnormal);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_GruABC.RDprint1.ImpF(mlin,01,'+Continua...-+----------------------------------------+-------------+----------+',mnormal);
      form_Impres_GruABC.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_Impres_GruABC.RDprint1.Setup then form_Impres_GruABC.RDprint1.Fechar;
form_Impres_GruABC.Free;
form_Impres_GruABC:=nil;

end;

procedure TFrm_GruABC.MDT1Exit(Sender: TObject);
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

procedure TFrm_GruABC.MDT2Exit(Sender: TObject);
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

procedure TFrm_GruABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if fGruabc_Origem=0 then
   begin
   Frm_GruABC.Caption:='ABC das Vendas por Grupo de Produto';
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   end
else
   begin
   Frm_GruABC.Caption:='ABC das Compras por Grupo de Produto';
   RG_TIPOPED.Visible:=False;
   label12.Visible   :=false;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('V&alor Crescente');
   RG_ORDEM.Items.add('Va&lor Decrescente');
   end;

RG_TIPOPED.Checked[0] := TRUE;

for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;
   
RG_ORDEM.itemIndex:=0;
end;

procedure TFrm_GruABC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_GruABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GruABC.CODPROExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_GruABC.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
   if valfloat(codpro.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   key:=#0;
   end;
end;

procedure TFrm_GruABC.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CLBStatusClick(Sender: TObject);
begin
  inherited;
  CLBStatus:=Valida_CheckList(CLBStatus);
end;

procedure TFrm_GruABC.CODFORExit(Sender: TObject);
begin
   if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_GruABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_GruABC.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CLBEstoqueClick(Sender: TObject);
begin
  inherited;
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;

procedure TFrm_GruABC.CODGRUExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_GruABC.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_GruABC.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_GruABC.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_GruABC.RG_TIPOPEDExit(Sender: TObject);
var
x:integer;
e:Boolean;
begin
        e:=false;
        for x := 0 to RG_TIPOPED.Count -2 do
            if RG_TIPOPED.Checked[x] then e:=true;

        if not e then RG_TIPOPED.Checked[1] := TRUE;

end;

procedure TFrm_GruABC.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
//   CODTIP.Text:='Todos...';
   EXIT;
   end;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
   END else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_GruABC.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      lbx_codtip.Items.Add(FormatFloat('0000000',DM1.Tb_TproTCODTIP.AsFloat)
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;


end;

procedure TFrm_GruABC.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CODCONExit(Sender: TObject);
begin
if ValFloat(CODCON.Text)<=0 then
   begin
//   CODTIP.Text:='Todos...';
   EXIT;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
END else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_GruABC.CODCONKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_GruABC.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CODRAMExit(Sender: TObject);
begin
if ValFloat(CODRAM.Text)<=0 then
   begin
   CODRAM.Text:='';
   EXIT;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
END else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_GruABC.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_GruABC.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;        
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

procedure TFrm_GruABC.CODVENKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_GruABC.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_GruABC.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;

end;

procedure TFrm_GruABC.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_GruABC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_GruABC.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Estados'+#13+' Selecionados Nao Serao Impressos';
end;



procedure TFrm_GruABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_GruABC.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');

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

procedure TFrm_GruABC.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   mcinst2:=fChamaUF(0,'frm_cabc','');
   if trim(mcinst2)<>'' then
      begin
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      CODUFExit(self);
      coduf.SetFocus;
      end;
   end;

end;

end.
