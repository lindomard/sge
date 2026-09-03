unit S_MedTCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC,
  ExtCtrls,S_Impres, CheckLst, ComCtrls,S_Ven,S_For, S_SelEmp,s_lerarq_geral;

type
  TFrm_MedTCon = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ven: TQuery;
    RG_ORDEM: TRadioGroup;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    PageControl1: TPageControl;
    tsFiltros01: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
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
    CB_FORCAR: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_ICMSRET: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
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
  private
    { Private declarations }
    function fmedVenInterbase(ptipo: Integer):Boolean;
  public
    { Public declarations }
    form_impres_medtcon: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_MedTCon: TFrm_MedTCon;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mtabtemp: String;
  FMedTCon_Origem: Integer;

implementation

{$R *.dfm}

procedure TFrm_MedTCon.FormCreate(Sender: TObject);
var
x: Integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if FMedTCon_Origem=0 then
   begin
   Frm_MedTCon.Caption:='Média Trimestral de Vendas Por Tipo de Controle de Produto';
   end
else
   begin
   Frm_MedTCon.Caption:='Média Trimestral de Compras Por Tipo de Controle de Produtos';
   RG_TIPOPED.Visible:=False;
   end;
if FMedTCon_Origem=0 then
   begin
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   RG_TIPOPED.Checked[0]:=true;
   end;


if pbanco=0 then
   begin
   RG_ORDEM.Items.add('To&tais Crescente');
   RG_ORDEM.Items.add('Totai&s Decrescente');
   end;
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

procedure TFrm_MedTCon.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedTCon.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x,mlin, mpag:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mmedia, mperc: Real;
mcampo_vlr: string;


begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   fmensagem('Mês Inválido!',0,['0'],0);
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
if FMedTCon_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCON','CCODEMP'  ,'PDCODEMP','CCODCON'  ,'PDCODCON');
   end
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
      la_Empresas:=''
    else
      la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCON','CCODEMP' ,'PDCODEMP' ,'CCODCON'  ,'PDCODCON');
   end;

if pbanco=1 then
   fmedVenInterbase(0)
else
   begin
   if FMedTCon_Origem=0 then
      begin
      if CB_EmiDoc.Checked then
         pdatapesq:='P1DATDOC'
      else
         pdatapesq:='P1DATAP';

      if CB_ICMSRET.Checked then
         mcampo_vlr:='(P2TOTLIQ+P2ICMSR)'
      else
         mcampo_vlr:='P2TOTLIQ';

      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select CNOME AS NOME, PDCODCON AS CODIGO,sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_vlr+',0)) as venmes01,'
                    +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_vlr+',0)) as venmes02,'
                    +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_vlr+',0)) as venmes03  '
                    +'       from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                    +'       and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
      if CB_EmiDoc.Checked then
         Qr_Ven.SQL.Add(' and (P1EMIDOC>0)');

      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Qr_Ven.SQl.Add(' and P1TIPO '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
     if trim(mcinst2)<>'' then
         Qr_Ven.SQL.Add(' and P1CODCLI '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
     if trim(mcinst2)<>'' then
        Qr_Ven.SQL.Add(' and P1CODVEN '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         Qr_Ven.SQL.Add(' and P2CODPRO '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' then
         Qr_Ven.SQL.Add(' and P2CODFAB '+mcinst2);

      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));
      Qr_Ven.SQL.Add(' Group by CNOME,PDCODCON Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' CNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODCON ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      try
         Qr_ven.Open;
      except
         Qr_Ven.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      end
   else
      begin
      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select CNOME AS NOME, PDCODCON AS CODIGO,sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes01,'
                    +'                     sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes02,'
                    +'                     sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes03  '
                    +'       from CADPF1,CADPF2'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                    +'       and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));
//      Qr_Ven.SQL.Add(' and substr(to_char(pf2cfo),-3,3)<>'+chr(39)+'902'+chr(39));

      Qr_Ven.SQL.Add(' Group by CNOME,PDCODCON Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' CNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODCON ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end;
   end;
if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_MedTCon(FindGlobalComponent('form_impres_medtcon'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medtcon);
form_impres_medtcon.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
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
      form_impres_medtcon.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_medtcon.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',mpag),mnormal);
      if FMedTCon_Origem=0 then
         form_impres_medtcon.RDprint1.ImpF(02,01,'Media de Vendas Trimestral Por Tipo de Controle de Produto.',mnormal)
      else
         form_impres_medtcon.RDprint1.ImpF(02,01,'Media de Compras Trimestral Por Tipo de Controle de Produto.',mnormal);
      form_impres_medtcon.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      mlin:=3;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'|Código|Nome do Tipo de Controle de Produto.    |'
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
   form_impres_medtcon.RDprint1.ImpF(mlin,01,'|'
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
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'|      '
                           +'|'+insere2('Totais','.',40)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01+mtotmes02+mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_medtcon.RDprint1.Setup then form_impres_medtcon.RDprint1.Fechar;
      form_impres_medtcon.Free;
      form_impres_medtcon:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_medtcon.RDprint1.ImpF(mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medtcon.RDprint1.Novapagina;      
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

function TFrm_MedTCon.fmedVenInterbase(ptipo: Integer):Boolean;
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
   if FMedTCon_Origem=0 then
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
                        +'Select CNOME,PDCODCON,P1DATDOC, '
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
                        +'       and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +'       and P1EMIDOC=1 and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1)
                        +'       and EXTRACT(YEAR FROM P1DATDOC)='+InttoStr(mano)
                        +'       and EXTRACT(MONTH FROM P1DATDOC)='+IntToStr(mmes));
      DM1.Query2.SQL.Add(' Group by CNOME,PDCODCON,P1DATDOC');
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
                        +'Select CNOME,PDCODCON,PF1DATAENT, '
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
      DM1.Query2.SQL.Add(' Group by CNOME,PDCODCON,PF1DATAENT');
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
procedure TFrm_MedTCon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedTCon.CODCLIExit(Sender: TObject);
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

procedure TFrm_MedTCon.CODVENExit(Sender: TObject);
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

procedure TFrm_MedTCon.CODPROExit(Sender: TObject);
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

procedure TFrm_MedTCon.CODFORExit(Sender: TObject);
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

procedure TFrm_MedTCon.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MedTCon.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_MedTCon',Key);
   CODVENExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedTCon.CODPROKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTCon.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_MedTCon',Key);
   CODFORExit(self);
   key:=#0;
   end;


end;

procedure TFrm_MedTCon.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_MedTCon.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedTCon.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_MedTCon.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_MedTCon.FormKeyDown(Sender: TObject; var Key: Word;
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
