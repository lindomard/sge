unit S_MedGru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC, S_SelEmp,
  ExtCtrls,S_Impres, CheckLst, ComCtrls,s_lerarq_geral;

type
  TFrm_MedGru = class(TForm)
    Qr_Ven: TQuery;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    MES: TEdit;
    ANO: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RG_ORDEM: TRadioGroup;
    Label5: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    CLBNivel: TCheckListBox;
    RG_TIPOPED: TCheckListBox;
    ListBox2: TListBox;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    OMITIR_PRO: TCheckBox;
    CODPRO: TEdit;
    ListBox1: TListBox;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    CODGRU: TEdit;
    ListBox5: TListBox;
    OMITIR_GRU: TCheckBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    lbl_codven: TLabel;
    CODCON: TEdit;
    CODTIP: TEdit;
    ListBox7: TListBox;
    OMITIR_TPRO: TCheckBox;
    ListBox4: TListBox;
    OMITIR_CON: TCheckBox;
    CODRAM: TEdit;
    ListBox6: TListBox;
    OMITIR_RAM: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CODUF: TEdit;
    ListBox3: TListBox;
    OMITIR_UF: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBStatusClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox5KeyDown(Sender: TObject; var Key: Word;
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
    procedure ListBox7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox6KeyDown(Sender: TObject; var Key: Word;
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
    procedure CODUFKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_UFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    function fmedVenInterbase(ptipo: Integer):Boolean;
  public
    { Public declarations }
    form_impres_medgru: Tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_MedGru: TFrm_MedGru;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mtabtemp: String;
  FMedGru_Origem: Integer;
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

uses S_GPro, s_tipPro, S_TCon, S_For, S_Ram, S_Ven, S_UF;

{$R *.dfm}

procedure TFrm_MedGru.FormCreate(Sender: TObject);
var x:integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if FMedGru_Origem=0 then
   begin
   Frm_MedGru.Caption:='Média Trimestral de Vendas Por Grupo de Produto';
   RG_TIPOPED.Items.Clear;
   for x:=0 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   end
else
   begin
   Frm_MedGru.Caption:='Média Trimestral de Compras Por Grupo de Produtos';
   RG_TIPOPED.Visible:=False;
   label12.Visible   :=false;
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('To&tais Crescente');
   RG_ORDEM.Items.add('Totai&s Decrescente');
   end;

RG_TIPOPED.Checked[1] := TRUE;

for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;
   

RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);
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

procedure TFrm_MedGru.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedGru.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x,mlin, mpag:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mmedia, mperc: Real;

begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   fMensagem('Mês Inválido!',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

mes03:=StrToInt('0'+Trim(MES.Text));
ano03:=StrToInt('0'+Trim(ANO.Text));
mes02:=mes03-1;
ano02:=ano03;
if mes02<1 then
   begin
   mes02:=12;
   ano02:=ano02-1;
   end;
mes01:=mes02-1;
ano01:=ano02;
if mes01<1 then
   begin
   mes01:=12;
   ano01:=ano01-1;
   end;
mdt1:='01/'+FormatFloat('00',mes01)+'/'+FormatFloat('0000',ano01);
mdt2:='28/'+FormatFloat('00',valfloat(mes.Text))+'/'+FormatFloat('0000',valfloat(ano.Text));
x:=StrToInt('0'+Trim(mes.Text));
while true do
   begin
   mmest:=FormatDateTime('mm',StrTodate(mdt2)+1);
   if StrToInt('0'+mmest)<>x then
      break;
   mdt2:=FormatDateTime(fdt2,StrToDate(mdt2)+1);
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if FMedGru_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';

   fInnerJoin(0,'CADGRU','GRCODEMP' ,'PDCODEMP','GRCODGRU' ,'PDCODGRU');
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP' ,'GRCODGRU' ,'PDCODGRU');
   end;

if pbanco=1 then
   fmedVenInterbase(0)
else
   begin
   if FMedGru_Origem=0 then
      begin
      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select GRNOME AS NOME, PDCODGRU AS CODIGO,sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+',(P2TOTLIQ-P2DESCRAT),0)) as venmes01,'
                    +'                     sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+',(P2TOTLIQ-P2DESCRAT),0)) as venmes02,'
                    +'                     sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+',(P2TOTLIQ-P2DESCRAT),0)) as venmes03  '
                    +'       from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                    +'       and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                    +'       and P1EMIDOC=1 ');
//                    and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1));

      monta_parametros;

      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));
      Qr_Ven.SQL.Add(' Group by GRNOME,PDCODGRU Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' GRNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODGRU ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end
   else
      begin
      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select GRNOME AS NOME, PDCODGRU AS CODIGO,sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes01,'
                    +'                     sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes02,'
                    +'                     sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes03  '
                    +'       from CADPF1,CADPF2'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                    +'      and PF2LOTSEQ=PF1LOTSEQ  and PF2CHAVE=PF1CHAVE '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));
      Qr_Ven.SQL.Add(' Group by GRNOME,PDCODGRU Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' GRNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODGRU ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end;
   end;
if Qr_Ven.Eof then
   begin
   fMensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_MedGru(FindGlobalComponent('form_impres_medgru'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medgru);
form_impres_medgru.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mtotalg:=0;
While not Qr_Ven.Eof do
   begin
   mtotalg:=mtotalg+Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
   Qr_Ven.Next;
   end;
Qr_Ven.First;


mtotmes01:=0;
mtotmes02:=0;
mtotmes03:=0;

While not Qr_Ven.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_medgru.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_medgru.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',mpag),mnormal);
      if FMedGru_Origem=0 then
         form_impres_medgru.RDprint1.ImpF(02,01,'Media de Vendas Trimestral Por Grupo de Produto.    ',mnormal)
      else
         form_impres_medgru.RDprint1.ImpF(02,01,'Media de Compras Trimestral Por Grupo de PRoduto.    ',mnormal);
      form_impres_medgru.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      mlin:=3;
      form_impres_medgru.RDprint1.ImpF(mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'|Código|Nome do Grupo de Produto                |'
                              +insere(tabmes[mes01]+'/'+FormatFloat('0000',ano01),' ',14)
                              +'|'
                              +insere(tabmes[mes02]+'/'+FormatFloat('0000',ano02),' ',14)
                              +'|'
                              +insere(tabmes[mes03]+'/'+FormatFloat('0000',ano03),' ',14)
                              +'| Total Periodo|Media Trimestr|% Acum.|',mreduz);
      end;

{
+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
|Código|Nome do Estado                          |12345678901234|12345678901234|12345678901234| Total Periodo|Media Trimestr|% Acum.|
|123456|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zz%|
}
   mlin:=mlin+1;
   mmedia:=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
   mperc :=(mmedia*100)/mtotalg;
   mmedia:=(mmedia/3);
   form_impres_medgru.RDprint1.ImpF(mlin,01,'|'
                           +insere(FormatFloat('000000',Qr_VenCODIGO.Value),' ',6)
                           +'|'+insere2(Qr_VenNOME.Value,' ',40)
                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES01.Value),' ',14)
                           +'|'+insere(FormatFloat(mcasas, Qr_VenVENMES02.Value),' ',14)
                           +'|' +insere(FormatFloat(mcasas, Qr_VenVENMES03.Value),' ',14)
                           +'|' +insere(FormatFloat(mcasas, (
                                   Qr_VenVENMES01.Value
                                   +Qr_VenVENMES02.Value
                                   +Qr_VenVENMES03.Value)),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
   mtotmes01:=mtotmes01+Qr_VenVENMES01.Value;
   mtotmes02:=mtotmes02+Qr_VenVENMES02.Value;
   mtotmes03:=mtotmes03+Qr_VenVENMES03.Value;
   Qr_Ven.Next;
   if Qr_Ven.Eof then
      begin
      mmedia:=mtotmes01+mtotmes02+mtotmes03;
      mmedia:=(mmedia/3);
      mperc :=100;
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'|      '
                           +'|'+insere2('Totais','.',40)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01+mtotmes02+mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_medgru.RDprint1.Setup then form_impres_medgru.RDprint1.Fechar;
      form_impres_medgru.Free;
      form_impres_medgru:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_medgru.RDprint1.ImpF(mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medgru.RDprint1.Novapagina;      
      mlin:=0;
      end;
   end;
Qr_Ven.close;
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

function TFrm_MedGru.fmedVenInterbase(ptipo: Integer):Boolean;
var
x: Integer;
mmes, mano: Integer;
begin
mtabtemp:=fProcTemp(0);
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.SQL.Add('Create table '+mtabtemp
                  +'('
                  +'NOME VARCHAR(40),'
                  +'CODIGO  DOUBLE PRECISION,'
                  +'P1DATDOC TIMESTAMP, '
                  +'ANO INTEGER,'
                  +'MES INTEGER,'
                  +'VENMES01  DOUBLE PRECISION,'
                  +'VENMES02  DOUBLE PRECISION,'
                  +'VENMES03  DOUBLE PRECISION)');
DM1.Query2.ExecSQL;

for x:=1 to 3 do
   begin
   if x=1 then
      begin
      mmes:=mes01;
      mano:=ano01;
      end
   else if x=2 then
      begin
      mmes:=mes02;
      mano:=ano02;
      end
   else
      begin
      mmes:=mes03;
      mano:=ano03;
      end;
   if FMedGru_Origem=0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.Query2.SQL.Add('Insert into '+mtabtemp
                        +'('
                        +'NOME,'
                        +'CODIGO,'
                        +'P1DATDOC,'
                        +'ANO,'
                        +'MES,'
                        +'VENMES01,'
                        +'VENMES02,'
                        +'VENMES03) '
                        +'Select GRNOME,PDCODGRU,P1DATDOC, '
                        +'       EXTRACT(YEAR FROM P1DATDOC) as ano, '
                        +'        EXTRACT(MONTH FROM P1DATDOC) as mes, ');
      if x=1 then
         begin
         DM1.Query2.SQL.add('       sum(p2totliq-P2DESCRAT) as venmes01, '
                           +'       0                       as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else if x=2 then
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       sum(p2totliq-P2DESCRAT) as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       0                       as venmes02, '
                           +'       sum(p2totliq-P2DESCRAT) as venmes03 ');
         end;

      DM1.Query2.SQL.Add('  from cadp01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'      where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                        +'       and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +'       and P1EMIDOC=1 and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1)
                        +'       and EXTRACT(YEAR FROM P1DATDOC)='+InttoStr(mano)
                        +'       and EXTRACT(MONTH FROM P1DATDOC)='+IntToStr(mmes));
      DM1.Query2.SQL.Add(' Group by GRNOME,PDCODGRU,P1DATDOC');
      DM1.Query2.ExecSQL;
      end
   else
      begin
      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.Query2.SQL.Add('Insert into '+mtabtemp
                        +'('
                        +'NOME,'
                        +'CODIGO,'
                        +'P1DATDOC,'
                        +'ANO,'
                        +'MES,'
                        +'VENMES01,'
                        +'VENMES02,'
                        +'VENMES03) '
                        +'Select GRNOME,PDCODGRU,PF1DATAENT, '
                        +'       EXTRACT(YEAR FROM PF1DATAENT) as ano, '
                        +'        EXTRACT(MONTH FROM PF1DATAENT) as mes, ');
      if x=1 then
         begin
         DM1.Query2.SQL.add('       sum((PF2QTDP*PF2PU)-PF2TOTDES) as venmes01, '
                           +'       0                       as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else if x=2 then
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       sum((PF2QTDP*PF2PU)-PF2TOTDES) as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       0                       as venmes02, '
                           +'       sum((PF2QTDP*PF2PU)-PF2TOTDES) as venmes03 ');
         end;

      DM1.Query2.SQL.Add('  from cadpf1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'      where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                        +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +'       and EXTRACT(YEAR FROM PF1DATAENT)='+InttoStr(mano)
                        +'       and EXTRACT(MONTH FROM PF1DATAENT)='+IntToStr(mmes));
      DM1.Query2.SQL.Add(' Group by GRNOME,PDCODGRU,PF1DATAENT');
      DM1.Query2.ExecSQL;
      end

   end;

Qr_ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.SQL.Add('Select NOME,'
              +'CODIGO,'
              +'sum(VENMES01)  as VENMES01,'
              +'sum(VENMES02)  as VENMES02,'
              +'sum(VENMES03)  as VENMES03'
              +' from '+mtabtemp
              +' group by NOME,CODIGO order by ');
if RG_ORDEM.ItemIndex=0 then
   Qr_Ven.SQL.Add(' NOME ')
else if RG_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' CODIGO ')
else if RG_ORDEM.ItemIndex=2 then
   Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
else if RG_ORDEM.ItemIndex=3 then
   Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
Qr_ven.Open;
result:=True;

end;
procedure TFrm_MedGru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedGru.CODPROExit(Sender: TObject);
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
      ListBox1.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_MedGru.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
      ListBox1.Items.Add(FormatFloat('0000000',valfloat(fChamaPro(0,'MedPro02',key)))
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
      codpro.text := '';
   end;

end;

procedure TFrm_MedGru.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox1.ItemIndex>=0 then
      ListBox1.Items.Delete(ListBox1.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CLBStatusClick(Sender: TObject);
begin
  inherited;

CLBStatus:=Valida_CheckList(CLBStatus);
end;

procedure TFrm_MedGru.CODFORExit(Sender: TObject);
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
      ListBox2.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_MedGru.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox2.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedGru.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox2.ItemIndex>=0 then
      ListBox2.Items.Delete(ListBox2.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CLBEstoqueClick(Sender: TObject);
begin
  inherited;
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;

procedure TFrm_MedGru.CODGRUExit(Sender: TObject);
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
      ListBox5.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_MedGru.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox5.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedGru.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox5.ItemIndex>=0 then
      ListBox5.Items.Delete(ListBox5.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_MedGru.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_MedGru.RG_TIPOPEDExit(Sender: TObject);
var
x:integer;
e:Boolean;
begin
        e:=false;
        for x := 0 to RG_TIPOPED.Count -2 do
            if RG_TIPOPED.Checked[x] then e:=true;

        if not e then RG_TIPOPED.Checked[1] := TRUE;

end;

procedure TFrm_MedGru.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
//   CODTIP.Text:='Todos...';
   EXIT;
   end;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
      ListBox7.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
   END else
   begin
   fMensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_MedGru.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox7.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedGru.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox7.ItemIndex>=0 then
      ListBox7.Items.Delete(ListBox7.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CODCONExit(Sender: TObject);
begin
if ValFloat(CODCON.Text)<=0 then
   begin
//   CODTIP.Text:='Todos...';
   EXIT;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
BEGIN
   ListBox4.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
END else
   begin
   fMensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_MedGru.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox4.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TconCCODCON.AsString))
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedGru.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox4.ItemIndex>=0 then
      ListBox4.Items.Delete(ListBox4.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CODRAMExit(Sender: TObject);
begin
if ValFloat(CODRAM.Text)<=0 then
   begin
//       CODRAM.Text:='Todos...';
       EXIT;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
BEGIN
   ListBox6.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
END else
   begin
   fMensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_MedGru.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox6.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_RamRCODRAM.AsString))
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MedGru.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox6.ItemIndex>=0 then
      ListBox6.Items.Delete(ListBox6.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CODVENExit(Sender: TObject);
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

procedure TFrm_MedGru.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MedGru.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codven.ItemIndex>=0 then
    lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.CODUFExit(Sender: TObject);
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
      ListBox3.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'       - '+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;

end;

procedure TFrm_MedGru.CODUFKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   ListBox3.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'       - '+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MedGru.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedGru.ListBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox3.ItemIndex>=0 then
      ListBox3.Items.Delete(ListBox3.ItemIndex);

end;

procedure TFrm_MedGru.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Estados'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedGru.monta_parametros;
begin
    LE_NIVEL;
    if tipo_nivel <> '' then
       Qr_ven.SQL.Add(' and PDNIVEL IN ('+tipo_nivel+')');

    LE_TIPOPED;
    if tipo_ped <> '' then
       Qr_ven.SQL.Add(' and P1TIPO IN ('+tipo_ped+')');

    LE_STATUS;
    if tipo_status <> '' then
       Qr_ven.SQL.Add(' and PDSTATUS IN ('+tipo_status+')');

    if CLBEstoque.Count -1 > 0 then
    begin
       if not clbestoque.Checked[3] then
       begin
         if  clbestoque.Checked[0] then
             if  clbestoque.Checked[2] then
                 Qr_ven.SQL.Add(' and (pdsaldo < 0) or (pdsaldo >0) ');

         if  clbestoque.Checked[1] then
             if  clbestoque.Checked[2] then
                 Qr_ven.SQL.Add(' and (pdsaldo = 0) or (pdsaldo <0)');

         if  clbestoque.Checked[0] then
             if  clbestoque.Checked[1] then
                 Qr_ven.SQL.Add(' and (pdsaldo = 0) or (pdsaldo >0)');
       end;
    end;

    IF ListBox1.Count > 0 THEN
       begin
       LE_CODPRO;
       IF OMITIR_PRO.Checked THEN
          Qr_ven.Sql.Add(' and PDCODPRO NOT  IN ('+CODIGO_PRO+')')
          ELSE Qr_ven.Sql.Add(' and PDCODPRO IN ('+CODIGO_PRO+')');
       END;

    IF ListBox2.Count > 0 THEN
       begin
       LE_CODFOR;
       IF OMITIR_FOR.Checked THEN
          Qr_ven.Sql.Add(' and PDCODFOR NOT  IN ('+CODIGO_FOR+')')
          ELSE Qr_ven.Sql.Add(' and PDCODFOR IN ('+CODIGO_FOR+')');
       END;

    IF ListBox3.Count > 0 THEN
       begin
       LE_UF;
       IF OMITIR_UF.Checked THEN
          Qr_ven.Sql.Add(' and PUF NOT  IN ('+TRIM(CODIGO_UF)+')')
          ELSE Qr_ven.Sql.Add(' and PUF IN ('+TRIM(CODIGO_UF)+')');
       END;

    IF lbx_codven.Count > 0 THEN
       begin
       LE_CODVEN;
       IF OMITIR_VEN.Checked THEN
          Qr_ven.Sql.Add(' and P1CODVEN NOT  IN ('+CODIGO_VEN+')')
          ELSE Qr_ven.Sql.Add(' and P1CODVEN IN ('+CODIGO_VEN+')');
       END;

    IF ListBox4.Count > 0 THEN
       begin
       LE_CODCON;
       IF OMITIR_CON.Checked THEN
          Qr_ven.Sql.Add(' and PDCODCON NOT  IN ('+CODIGO_CON+')')
          ELSE Qr_ven.Sql.Add(' and PDCODCON IN ('+CODIGO_CON+')');
       END;

    IF ListBox5.Count > 0 THEN
       begin
       LE_CODGRU;
       IF OMITIR_GRU.Checked THEN
          Qr_ven.Sql.Add(' and PDCODGRU NOT  IN ('+CODIGO_GRU+')')
          ELSE Qr_ven.Sql.Add(' and PDCODGRU IN ('+CODIGO_GRU+')');
       END;

    IF ListBox6.Count > 0 THEN
       begin
       LE_CODRAM;
       IF OMITIR_RAM.Checked THEN
          Qr_ven.Sql.Add(' and PDCODGRU NOT  IN ('+CODIGO_RAM+')')
          ELSE Qr_ven.Sql.Add(' and PDCODGRU IN ('+CODIGO_RAM+')');
       END;

    IF ListBox7.Count > 0 THEN
       begin
       LE_CODTIP;
       IF OMITIR_TPRO.Checked THEN
          Qr_ven.Sql.Add(' and PDCODTIP NOT  IN ('+CODIGO_TIP+')')
          ELSE Qr_ven.Sql.Add(' and PDCODTIP IN ('+CODIGO_TIP+')');
       END;

end;

procedure TFrm_MedGru.LE_CODPRO;
VAR
 X : INTEGER;
begin

    CODIGO_PRO := '';
    IF ListBox1.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox1.Count -1 do
        begin
            CODIGO_PRO :=  CODIGO_PRO+COPY(ListBox1.Items[X],1,7);
            IF X <> ListBox1.Count-1 THEN CODIGO_PRO := CODIGO_PRO+',';
        end;
    END;
end;

procedure TFrm_MedGru.LE_CODFOR;
VAR
 X : INTEGER;
begin

    CODIGO_FOR := '';
    IF ListBox2.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox2.Count -1 do
        begin
            CODIGO_FOR :=  CODIGO_FOR+COPY(ListBox2.Items[X],1,7);
            IF X <> ListBox2.Count-1 THEN CODIGO_FOR := CODIGO_FOR+',';
        end;
    END;

end;

procedure TFrm_MedGru.LE_CODVEN;
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

procedure TFrm_MedGru.LE_UF;
VAR
 X : INTEGER;
begin

    CODIGO_UF := '';
    IF ListBox3.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox3.Count -1 do
        begin
            CODIGO_UF := trim(CODIGO_UF)+''''+TRIM(COPY(ListBox3.Items[X],1,7))+'''';
            IF X <> ListBox3.Count-1 THEN CODIGO_UF := TRIM(CODIGO_UF)+',';
        end;
    END;
end;

procedure TFrm_MedGru.LE_CODCON;
VAR
 X : INTEGER;
begin

    CODIGO_CON := '';
    IF ListBox4.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox4.Count -1 do
        begin
            CODIGO_CON :=  CODIGO_CON+COPY(ListBox4.Items[X],1,7);
            IF X <> ListBox4.Count-1 THEN CODIGO_CON := CODIGO_CON+',';
        end;
    END;

end;

procedure TFrm_MedGru.LE_CODGRU;
VAR
 X : INTEGER;
begin

    CODIGO_GRU := '';
    IF ListBox5.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox5.Count -1 do
        begin
            CODIGO_GRU :=  CODIGO_GRU+COPY(ListBox5.Items[X],1,7);
            IF X <> ListBox5.Count-1 THEN CODIGO_GRU := CODIGO_GRU+',';
        end;
    END;

end;

procedure TFrm_MedGru.LE_CODRAM;
VAR
 X : INTEGER;
begin

    CODIGO_RAM := '';
    IF ListBox6.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox6.Count -1 do
        begin
            CODIGO_RAM :=  CODIGO_RAM+COPY(ListBox6.Items[X],1,7);
            IF X <> ListBox6.Count-1 THEN CODIGO_RAM := CODIGO_RAM+',';
        end;
    END;

end;

procedure TFrm_MedGru.LE_CODTIP;
VAR
 X : INTEGER;
begin

    CODIGO_TIP := '';
    IF ListBox7.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox7.Count -1 do
        begin
            CODIGO_TIP :=  CODIGO_TIP+COPY(ListBox7.Items[X],1,7);
            IF X <> ListBox7.Count-1 THEN CODIGO_TIP := CODIGO_TIP+',';
        end;
    END;

end;

procedure TFrm_MedGru.LE_TIPOPED;
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

procedure TFrm_MedGru.LE_NIVEL;
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

procedure TFrm_MedGru.LE_STATUS;
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

procedure TFrm_MedGru.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_MedGru.FormShow(Sender: TObject);
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
