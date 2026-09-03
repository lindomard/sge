unit S_TProABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls, S_SelEmp,s_lerarq_geral;

type
  TFrm_TProABC = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    RG_ORDEM: TRadioGroup;
    CLBNivel: TCheckListBox;
    RG_TIPOPED: TCheckListBox;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    OMITIR_PRO: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    Qr_For: TQuery;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForTOTAL: TFloatField;
    Qr_ForICMSR: TFloatField;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CODUF: TEdit;
    lbl_codven: TLabel;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label8: TLabel;
    CB_ICMSRET: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_FORCAR: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure monta_parametros;
    procedure LE_CODPRO;
    procedure LE_CODFOR;
    procedure LE_CODTIP;
    procedure LE_CODCON;
    procedure LE_CODGRU;
    procedure LE_CODRAM;
    procedure LE_CODVEN;
    procedure LE_TIPOPED;
    procedure LE_UF;
    procedure LE_NIVEL;
    procedure LE_STATUS;
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
    procedure CLBEstoqueClick(Sender: TObject);
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
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_tproca: tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_TProABC: TFrm_TProABC;
  fTProabc_Origem: Integer;
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

uses s_tipPro, S_GPro, S_TCon, S_For, S_UF, S_Ram;


{$R *.dfm}

procedure TFrm_TProABC.bbImprimirClick(Sender: TObject);
var
mperiodo:String;
mordem,mpag, mlin: Integer;
mordemp: Array [0..3] of string;
mtoti,mtotsc,mtotb: Real;
mtotg, mperc: Real;
mCampo_vlr: String;
begin
mordemp[0]:='TNOME';
mordemp[1]:='PDCODTIP';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if fTProabc_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
//   fInnerJoin(iif(cb_forcar.checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   if pbanco=0 then
  //    la_instrucao:=la_instrucao+' and ';
   //fInnerJoin(iif(cb_forcar.checked,0,1),'CADTP' ,'TCODEMP','PDCODEMP' ,'TCODTIP' ,'PDCODTIP');
   fInnerJoin(0,'CADTP' ,'TCODEMP','PDCODEMP' ,'TCODTIP' ,'PDCODTIP');

   end
else
   begin
//   la_Empresas:='PF1CODEMP='+IntToStr(codemp);
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(cb_forcar.checked,0,1),'CADTP' ,'TCODEMP' ,'PDCODEMP','TCODTIP' ,'PDCODTIP');

   end;

if fTProabc_Origem=0 then
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
   Qr_For.SQl.Add('Select TNOME AS NOME, PDCODTIP AS CODIGO,'+mcampo_vlr+' as total,'
                 +'       sum(P2ICMSR) as ICMSR from CADP01,CADP02,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
//                 +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'and PDCODEMP=P2CODEMP ','')
//                 +iif(fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and ')
//                 +fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)
                 +iif(MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS))
                 +'      '+' and P2LOTSEQ(+)=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM(+)=P1ORDEM '
                 +'       and P1EMIDOC>0 and P2CODPRO=PDCODPRO');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pdatapesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pdatapesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

   monta_parametros;

   Qr_For.SQL.Add(' Group by TNOME,PDCODTIP');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
//   Qr_For.sql.savetofile(mpastatemp + 'SQL_ABCTIPO.txt');
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
   Qr_For.SQl.Add('Select TNOME AS NOME, PDCODTIP AS CODIGO,sum( (PF2QTDP*PF2PU)-PF2TOTDES ) as total,'
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

   Qr_For.SQL.Add(' Group by TNOME,PDCODTIP');
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
   fMensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_TProABC(FindGlobalComponent('form_impres_tproca'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_tproca);

form_impres_tproca.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
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
      form_impres_tproca.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_tproca.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      if fTProabc_Origem=0 then
         form_impres_tproca.RDprint1.ImpF(02,01,'Vendas por Tipo de Produto.',mnormal)
      else
         form_impres_tproca.RDprint1.ImpF(02,01,'Vendas por Tipo de Produto.',mnormal);

      form_impres_tproca.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_tproca.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_tproca.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      mlin:=4;
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,'+-----+------+----------------------------------------+-------------+----------+',mnormal);
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,'|Ordem|Código|Nome do Tipo                            |    Total    |Percentual|',mnormal);
      end;
   mordem:=mordem+1;
   mlin:=mlin+1;
   mperc:=((Qr_ForTOTAL.Value)*100)/mtotg;
   form_impres_tproca.RDprint1.ImpF(mlin,01,'|'+FormatFloat('00000',mordem)
                           +'|'+FormatFloat('000000',Qr_ForCODIGO.Value)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTAL.Value),' ',13)+'|  '
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'% |',mnormal);
   mtotb :=mtotb +Qr_ForTOTAL.Value;
   Qr_For.Next;
   if Qr_For.Eof then
      begin
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,'|     '
                           +'|      '
                           +'|'+insere2('Total','.',40)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',13)+'|  '
                           +insere('100.00',' ',6)+'% |',mnormal);
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,'+Fim.-+------+----------------------------------------+-------------+----------+',mnormal);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_tproca.RDprint1.ImpF(mlin,01,'+Continua...-+----------------------------------------+-------------+----------+',mnormal);
      form_impres_tproca.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_impres_tproca.RDprint1.Setup then form_impres_tproca.RDprint1.Fechar;
form_impres_tproca.free;
form_impres_tproca:=nil;

end;

procedure TFrm_TProABC.MDT1Exit(Sender: TObject);
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

procedure TFrm_TProABC.MDT2Exit(Sender: TObject);
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

procedure TFrm_TProABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
 Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if fTProabc_Origem=0 then
   begin
   Frm_TProABC.Caption:='ABC das Vendas por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   RG_TIPOPED.Items.Clear;
   for x:=0 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   end
else
   begin
   Frm_TProABC.Caption:='ABC das Compras por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   label12.visible   :=false;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('V&alor Crescente');
   RG_ORDEM.Items.add('Va&lor Decrescente');
   end;

RG_TIPOPED.Checked[1] := TRUE;

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

procedure TFrm_TProABC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TProABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_TProABC.monta_parametros;
begin

    LE_NIVEL;
    if tipo_nivel <> ''   then  Qr_For.SQL.Add(' and PDNIVEL IN ('+tipo_nivel+')');

    LE_STATUS;
    if tipo_status <> ''  then Qr_For.SQL.Add(' and PDSTATUS IN ('+tipo_status+')');

    if RG_TIPOPED.Visible then
    begin
       LE_TIPOPED;
       if tipo_ped <> ''  then Qr_For.SQL.Add(' and P1TIPO IN ('+tipo_ped+')');
    end;
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

procedure TFrm_TProABC.LE_CODPRO;
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

procedure TFrm_TProABC.LE_CODFOR;
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

procedure TFrm_TProABC.LE_CODVEN;
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

procedure TFrm_TProABC.LE_UF;
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

procedure TFrm_TProABC.LE_CODCON;
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

procedure TFrm_TProABC.LE_CODGRU;
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

procedure TFrm_TProABC.LE_CODRAM;
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

procedure TFrm_TProABC.LE_CODTIP;
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

procedure TFrm_TProABC.LE_TIPOPED;
var x:integer;
begin
    tipo_ped := '';
    for x := 0 to RG_TIPOPED.Count -2 do
    begin
        if RG_TIPOPED.Checked[x] then
        begin
           tipo_ped := tipo_ped+inttostr(x);
           tipo_ped := tipo_ped+',';
        end;
    end;
    tipo_ped := copy(tipo_ped,1,length(tipo_ped)-1);
end;

procedure TFrm_TProABC.LE_NIVEL;
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

procedure TFrm_TProABC.LE_STATUS;
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
procedure TFrm_TProABC.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
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

procedure TFrm_TProABC.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_proabc',key);
   if valfloat(CODPRO.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CLBStatusClick(Sender: TObject);
begin
  inherited;
CLBStatus:=Valida_CheckList(CLBStatus);
end;

procedure TFrm_TProABC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
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

procedure TFrm_TProABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:= fChamaFor(0,'frm_proabc',key);
   if valfloat(codfor.Text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:='Todos...'
else
   begin
   flcaduf(0,0,0,CODUF.Text);
   if DM1.Tb_uf.Eof then
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

procedure TFrm_TProABC.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CLBEstoqueClick(Sender: TObject);
begin
  inherited;
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;

procedure TFrm_TProABC.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_TProABC.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_TProABC.RG_TIPOPEDExit(Sender: TObject);
var
x:integer;
e:Boolean;
begin
        e:=false;
        for x := 0 to RG_TIPOPED.Count -2 do
            if RG_TIPOPED.Checked[x] then e:=true;

        if not e then RG_TIPOPED.Checked[1] := TRUE;

end;

procedure TFrm_TProABC.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
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

procedure TFrm_TProABC.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_proabc',key);
   if valfloat(codtip.TEXT)<>0 then
      lbx_codtip.Items.Add(FormatFloat('0000000',DM1.Tb_TproTCODTIP.AsFloat)
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
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

procedure TFrm_TProABC.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_tproabc',key);
   if valfloat(codgru.TEXT)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                  +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   begin
   exit;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   begin
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   end
else
   begin
   fMensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_TProABC.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'FRM_TPROABC',key);
   if valfloat(codcon.TEXT)<>0 then
     lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
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

procedure TFrm_TProABC.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_tproabc',key);
   if ValFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                  +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_TProABC.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
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

procedure TFrm_TProABC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_tproabc',key);
   if ValFloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.asFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_TProABC.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_TProABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_TProABC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_TProABC.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114  then
   begin
   CODUF.Text:=fChamaUF(0,'frm_tproabc','');
   if trim(coduf.TEXT)<>'' then
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   end;


end;

procedure TFrm_TProABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_TProABC.FormShow(Sender: TObject);
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

end.
