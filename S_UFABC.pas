unit S_UFABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls, S_SelEmp,s_lerarq_geral;

type
  TFrm_UFABC = class(TForm)
    Panel1: TPanel;
    Qr_For: TQuery;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TStringField;
    Qr_ForTOTAL: TFloatField;
    Qr_ForICMSR: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RG_ORDEM: TRadioGroup;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label1: TLabel;
    lbl_codven: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CLBNivel: TCheckListBox;
    RG_TIPOPED: TCheckListBox;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    OMITIR_PRO: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_UF: TCheckBox;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    Label14: TLabel;
    Label15: TLabel;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CODCON: TEdit;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label6: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CB_ICMSRET: TCheckBox;
    CB_FORCAR: TCheckBox;
    CB_EmiDoc: TCheckBox;
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
    procedure CODUFExit(Sender: TObject);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_UFMouseMove(Sender: TObject; Shift: TShiftState; X,
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
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
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
    procedure monta_parametros;
    procedure LE_CODPRO;
    procedure LE_CODFOR;
    procedure LE_CODTIP;
    procedure LE_CODCON;
    procedure LE_CODGRU;
    procedure LE_CODRAM;
    procedure LE_CODVEN;
    procedure LE_UF;
    procedure LE_NIVEL;
    procedure LE_STATUS;
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_ufabc: tFrm_impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_UFABC: TFrm_UFABC;
  fUFabc_Origem: Integer;
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

uses s_tipPro, S_GPro, S_TCon, S_For, S_Ram, S_UF, S_DM2;


{$R *.dfm}

procedure TFrm_UFABC.BitBtn1Click(Sender: TObject);
var
mperiodo:String;
mordem: Integer;
mordemp: Array [0..3] of string;
mtoti,mtotsc,mtotb: Real;
mtotg, mperc: Real;
mcampo_vlr: string;
begin

mordemp[0]:='PNOM';
mordemp[1]:='PUF';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if fUFabc_Origem=0 then
   begin
   if CB_EmiDoc.Checked then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADUF' ,'PCODEMP','CCODEMP' ,'PUF'    ,'CUF');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO','P2CODPRO');

   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADUF' ,'PCODEMP','FCODEMP'  ,'PUF'    ,'FUF');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO','PF2CODPRO');

   end;

if fUFabc_Origem=0 then
   begin
   if CB_ICMSRET.Checked then
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,(P2TOTLIQ+P2ICMSR)))'
   else
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ)*-1,(P2TOTLIQ)))';

   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select PNOM AS NOME, PUF AS CODIGO,'+mcampo_vlr+' as total,'
                 +'       sum(P2ICMSR) as ICMSR from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                 +'      '+' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM '
                 +'       and P1EMIDOC=1 ');

   monta_parametros;
   mcinst:=' and ';

   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));


   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' FCODFOR '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' P2CODPRO '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' PUF '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' PDCODTIP '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' PDCODGRU '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' PDCODCON '+mcinst2);
      mcinst:=' and ';
      end;


   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' PDCODRAM '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(mcinst+' P1CODVEN '+mcinst2);
      mcinst:=' and ';
      end;



   Qr_For.SQL.Add(' Group by PNOM,PUF');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
   TRY
      Qr_For.Open;
   EXCEPT
      Qr_For.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   end
else
   begin
   Qr_For.Close;
   Qr_For.SQl.Clear;
//   Qr_For.SQl.Add('Select PNOM AS NOME, PUF AS CODIGO,sum( ( PF2QTDP*PF2PU)-PF2TOTDES-PF2DESCRAT ) as total,'
   Qr_For.SQl.Add('Select PNOM AS NOME, PUF AS CODIGO,sum( ( PF2QTDP*PF2PU)-PF2TOTDES ) as total,'
                 +'       sum(PF2ICMSR) as ICMSR from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

   monta_parametros;

   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));



   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.sql.Add(' and FCODFOR '+mcinst2);
      end;

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and  P2CODPRO '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and PUF '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and  PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and  PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and PDCODCON '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Qr_For.sql.Add(' and PDCODRAM '+mcinst2);




   Qr_For.SQL.Add(' Group by PNOM,PUF');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
   try
      Qr_For.Open;
   except
      Qr_For.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;

   end;
if Qr_For.Eof then
   begin
   fMensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;

testeform := TFrm_UFABC(FindGlobalComponent('form_impres_ufabc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ufabc);

form_impres_ufabc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtoti :=0;
mtotsc:=0;
mtotb :=0;
form_impres_ufabc.mpag:=0;
form_impres_ufabc.mlin:=0;
mtotg:=0;
While not Qr_For.Eof do
   begin
   mtotg:=mtotg+Qr_ForTOTAL.Value;;
   Qr_For.Next;
   end;
Qr_For.First;
While not Qr_For.Eof do
   begin
   if form_impres_ufabc.mlin=0 then
      begin
      form_impres_ufabc.mpag:=form_impres_ufabc.mpag+1;
      form_impres_ufabc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_ufabc.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',form_impres_ufabc.mpag),mnormal);
      if fUFabc_Origem=0 then
         form_impres_ufabc.RDprint1.ImpF(02,01,'Relatorio de Vendas por Estado.',mnormal)
      else
         form_impres_ufabc.RDprint1.ImpF(02,01,'Relatorio de Compras por Estado.',mnormal);

      form_impres_ufabc.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_ufabc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_ufabc.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_ufabc.mlin:=4;
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'+-----+------+----------------------------------------+-------------+----------+',mnormal);
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'|Ordem|Código|Nome do Estado                          |    Total    |Percentual|',mnormal);
      end;
   mordem:=mordem+1;
   form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
   mperc:=((Qr_ForTOTAL.Value)*100)/mtotg;
   form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'|'+FormatFloat('00000',mordem)
                           +'|'+insere2(Qr_ForCODIGO.Value,' ',6)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTAL.Value),' ',13)+'|  '
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'% |',mnormal);
   mtotb :=mtotb +Qr_ForTOTAL.Value;
   Qr_For.Next;
   if Qr_For.Eof then
      begin
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'|     '
                           +'|      '
                           +'|'+insere2('Total','.',40)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',13)+'|  '
                           +insere('100.00',' ',6)+'% |',mnormal);
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'+Fim.-+------+----------------------------------------+-------------+----------+',mnormal);
      end
   else if form_impres_ufabc.mlin>58 then
      begin
      form_impres_ufabc.mlin:=form_impres_ufabc.mlin+1;
      form_impres_ufabc.RDprint1.ImpF(form_impres_ufabc.mlin,01,'+Continua...-+----------------------------------------+-------------+----------+',mnormal);
      form_impres_ufabc.RDprint1.Novapagina;
      form_impres_ufabc.mlin:=0;
      end;
   end;
if form_impres_ufabc.RDprint1.Setup then form_impres_ufabc.RDprint1.Fechar;
form_impres_ufabc.Free;
form_impres_ufabc:=nil;

end;

procedure TFrm_UFABC.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_UFABC.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_UFABC.FormCreate(Sender: TObject);
var
x: Integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if fUFabc_Origem=0 then
   begin
   Frm_UFABC.Caption:='ABC das Vendas por Estado';

   flTipPed(0,'');
   RG_TIPOPED.Items.Clear;
   While not DM2.Tb_TipPed.Eof do
      begin
      RG_TIPOPED.Items.Add(DM2.Tb_TipPedTPNOME.AsString);
      DM2.Tb_TipPed.Next;
      end;
   RG_TIPOPED.Items.Add('Todos');
   RG_TIPOPED.Checked[0] := TRUE;

{
   RG_TIPOPED.Items.Clear;
   for x:=0 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
}
   end
else
   begin
   Frm_UFABC.Caption:='ABC das Compras por Estado';
   RG_TIPOPED.Visible:=False;
   label12.visible   :=false;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('V&alor Crescente');
   RG_ORDEM.Items.add('Va&lor Decrescente');
   end;


//for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
//for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;

RG_ORDEM.itemIndex:=0;
if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;
end;

procedure TFrm_UFABC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_UFABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_UFABC.CODPROExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fMensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_UFABC.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'medpro02',key);
   if valfloat(CODPRO.Text)<>0 then
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',valfloat(CODPRO.Text))
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
      end;
   key:=#0;
   codpro.text := '';
   end;

end;

procedure TFrm_UFABC.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CLBStatusClick(Sender: TObject);
begin
  inherited;
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_UFABC.CODFORExit(Sender: TObject);
begin
   if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fMensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_UFABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_ufabc',key);
   if valfloat(codfor.Text)<>0 then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
      end;
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:=''
else
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      fMensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;

end;

procedure TFrm_UFABC.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_UFABC.RG_TIPOPEDClick(Sender: TObject);
var x:integer;
begin
    if RG_TIPOPED.ItemIndex=RG_TIPOPED.count -1 then
    begin
        for x := 0 to RG_TIPOPED.Count -2 do
        begin
            if RG_TIPOPED.Checked[RG_TIPOPED.count-1] then
               RG_TIPOPED.Checked[x] := true;
            if not RG_TIPOPED.Checked[RG_TIPOPED.count-1] then
            BEGIN
               RG_TIPOPED.Checked[x] := false;
               RG_TIPOPED.Checked[1] := TRUE;
            END;
        end;
    end ELSE
    BEGIN
        RG_TIPOPED.Checked[RG_TIPOPED.count-1] := false;
    END;

end;

procedure TFrm_UFABC.RG_TIPOPEDExit(Sender: TObject);
var
x:integer;
e:Boolean;
begin
        e:=false;
        for x := 0 to RG_TIPOPED.Count -2 do
            if RG_TIPOPED.Checked[x] then e:=true;

        if not e then RG_TIPOPED.Checked[1] := TRUE;

end;

procedure TFrm_UFABC.CODTIPExit(Sender: TObject);
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
   fMensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_UFABC.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_ufabc',key);
   IF ValFloat(CODTIP.Text)<>0 then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',DM1.Tb_TproTCODTIP.AsFloat)
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      end;
   CODTIP.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CODGRUExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fMensagem('Grupo Não Cadastrado!',0,['0'],0);
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

procedure TFrm_UFABC.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_ufabc',key);
   if ValFloat(CODGRU.Text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CODCONExit(Sender: TObject);
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
   fMensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;


end;

procedure TFrm_UFABC.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_uf',key);
   if valfloat(codcon.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CODRAMExit(Sender: TObject);
begin
if ValFloat(CODRAM.Text)<=0 then
   begin
//       CODRAM.Text:='Todos...';
       EXIT;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
END else
   begin
   fMensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_UFABC.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_ufabc',key);
   if valfloat(codram.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.monta_parametros;
begin
    LE_NIVEL;
    if tipo_nivel <> ''   then  Qr_For.SQL.Add(' and PDNIVEL IN ('+tipo_nivel+')');

    LE_STATUS;
    if tipo_status <> ''  then Qr_For.SQL.Add(' and PDSTATUS IN ('+tipo_status+')');


   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and  P1TIPO '+mcinst2);



   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and  '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODPRO '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODFOR '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_ven);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and P1CODVEN '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODCON '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODGRU '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODRAM '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PDCODTIP '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
    if trim(mcinst2)<>'' then Qr_For.sql.Add(' and PUF '+mcinst2);

end;

procedure TFrm_UFABC.LE_CODPRO;
VAR
 X : INTEGER;
begin

    CODIGO_PRO := '';
    IF lbx_codpro.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codpro.Count -1 do
        begin
            CODIGO_PRO :=  CODIGO_PRO+COPY(lbx_codpro.Items[X],1,7);
            IF X <> lbx_codpro.Count-1 THEN CODIGO_PRO := CODIGO_PRO+',';
        end;
    END;
end;

procedure TFrm_UFABC.LE_CODFOR;
VAR
 X : INTEGER;
begin

    CODIGO_FOR := '';
    IF lbx_codfor.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codfor.Count -1 do
        begin
            CODIGO_FOR :=  CODIGO_FOR+COPY(lbx_codfor.Items[X],1,7);
            IF X <> lbx_codfor.Count-1 THEN CODIGO_FOR := CODIGO_FOR+',';
        end;
    END;

end;

procedure TFrm_UFABC.LE_CODVEN;
VAR
 X : INTEGER;
begin

    CODIGO_VEN := '';
    IF lbx_codven.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codven.Count -1 do
        begin
            CODIGO_VEN :=  CODIGO_VEN+COPY(lbx_codven.Items[X],1,7);
            IF X <> lbx_codven.Count-1 THEN CODIGO_VEN := CODIGO_VEN+',';
        end;
    END;
end;

procedure TFrm_UFABC.LE_UF;
VAR
 X : INTEGER;
begin

    CODIGO_UF := '';
    IF lbx_coduf.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_coduf.Count -1 do
        begin
            CODIGO_UF := trim(CODIGO_UF)+''''+TRIM(COPY(lbx_coduf.Items[X],1,7))+'''';
            IF X <> lbx_coduf.Count-1 THEN CODIGO_UF := TRIM(CODIGO_UF)+',';
        end;
    END;
end;

procedure TFrm_UFABC.LE_CODCON;
VAR
 X : INTEGER;
begin

    CODIGO_CON := '';
    IF lbx_codcon.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codcon.Count -1 do
        begin
            CODIGO_CON :=  CODIGO_CON+COPY(lbx_codcon.Items[X],1,7);
            IF X <> lbx_codcon.Count-1 THEN CODIGO_CON := CODIGO_CON+',';
        end;
    END;

end;

procedure TFrm_UFABC.LE_CODGRU;
VAR
 X : INTEGER;
begin

    CODIGO_GRU := '';
    IF lbx_codgru.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codgru.Count -1 do
        begin
            CODIGO_GRU :=  CODIGO_GRU+COPY(lbx_codgru.Items[X],1,7);
            IF X <> lbx_codgru.Count-1 THEN CODIGO_GRU := CODIGO_GRU+',';
        end;
    END;

end;

procedure TFrm_UFABC.LE_CODRAM;
VAR
 X : INTEGER;
begin

    CODIGO_RAM := '';
    IF lbx_codram.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codram.Count -1 do
        begin
            CODIGO_RAM :=  CODIGO_RAM+COPY(lbx_codram.Items[X],1,7);
            IF X <> lbx_codram.Count-1 THEN CODIGO_RAM := CODIGO_RAM+',';
        end;
    END;

end;

procedure TFrm_UFABC.LE_CODTIP;
VAR
 X : INTEGER;
begin

    CODIGO_TIP := '';
    IF lbx_codtip.Count > 0 THEN
    BEGIN
        for X := 0 to lbx_codtip.Count -1 do
        begin
            CODIGO_TIP :=  CODIGO_TIP+COPY(lbx_codtip.Items[X],1,7);
            IF X <> lbx_codtip.Count-1 THEN CODIGO_TIP := CODIGO_TIP+',';
        end;
    END;

end;


procedure TFrm_UFABC.LE_NIVEL;
var x:integer;
begin
    tipo_nivel := '';
    for x := 0 to CLBNivel.Count -2 do
    begin
        if CLBNivel.Checked[x] then
        begin
           tipo_nivel := tipo_nivel+inttostr(x);
           tipo_nivel := tipo_nivel+',';
        end;
    end;
    tipo_nivel := copy(tipo_nivel,1,length(tipo_nivel)-1);
end;

procedure TFrm_UFABC.LE_STATUS;
var x:integer;
begin
    tipo_status := '';
    for x := 0 to CLBStatus.Count -2 do
    begin
        if CLBStatus.Checked[x] then
        begin
           tipo_status := tipo_status+inttostr(x);
           tipo_status := tipo_status+',';
        end;
    end;
    tipo_status := copy(tipo_status,1,length(tipo_status)-1);
end;

procedure TFrm_UFABC.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fMensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

procedure TFrm_UFABC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_ufabc',key);
   if ValFloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.ASFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;

end;

procedure TFrm_UFABC.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_UFABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_UFABC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_UFABC.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_UFABC.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   CODUF.Text:=fChamaUF(0,'frm_uf','');
   if trim(coduf.Text)<>'' then
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   end;


end;

procedure TFrm_UFABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_UFABC.FormShow(Sender: TObject);
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
end;

end.
