unit S_ProMed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC, S_SelEmp,
  ExtCtrls,S_Impres;

type
  TFrm_ProMed = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ven: TQuery;
    RG_ORDEM: TRadioGroup;
    RG_TIPOPED: TRadioGroup;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    RG_TIPO: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RG_TIPOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fmedVenInterbase(ptipo: Integer):Boolean;
  public
    { Public declarations }
    Form_Impres_ProMed : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ProMed: TFrm_ProMed;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mtabtemp: String;
  FProMed_Origem: Integer;
  mcasas_med: String;
implementation

{$R *.dfm}

procedure TFrm_ProMed.FormCreate(Sender: TObject);
begin
mcasas_med:=mcasas;
if FProMed_Origem=0 then
   begin
   Frm_ProMed.Caption:='Média Trimestral de Vendas Por Tipo de Produtos';
   end
else
   begin
   Frm_ProMed.Caption:='Média Trimestral de Compras Por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if pbanco=0 then
   begin
   RG_ORDEM.Items.add('To&tais Crescente');
   RG_ORDEM.Items.add('Totai&s Decrescente');
   end;
RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);

end;

procedure TFrm_ProMed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ProMed.bbImprimirClick(Sender: TObject);
var
mcampos,mmest,mdt1,mdt2: String;
x,mlin, mpag:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mmedia, mperc: Real;

begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   MessageDlg('Mês Inválido!',mtWarning,[mbOk],0);
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
if FProMed_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
   end;

if pbanco=1 then
   fmedVenInterbase(0)
else
   begin
   if FProMed_Origem=0 then
      begin
      if RG_TIPO.ItemIndex=0 then
         mcampos:='(P2TOTLIQ-P2DESCRAT)'
      else
         mcampos:='(P2QTD)';
      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select PDNOME AS NOME, P2CODPRO AS CODIGO,'
                    +' sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos+',0)) as venmes01,'
                    +' sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos+',0)) as venmes02,'
                    +' sum(decode(to_char(p1datdoc, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos+',0)) as venmes03  '
                    +'       from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                    +'       and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                    +'       and P1EMIDOC=1 and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1));
      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT2))+chr(39));
      Qr_Ven.SQL.Add(' Group by PDNOME,P2CODPRO Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' PDNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' P2CODPRO ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end
   else
      begin
      if RG_TIPO.ItemIndex=0 then
         mcampos:='((PF2QTDP*PF2PU)-PF2TOTDES)'
      else
         mcampos:='(PF2QTDP)';

      Qr_Ven.Close;
      Qr_Ven.SQL.Clear;
      Qr_Ven.SQL.Add('select NVL(TRIM(PF2NOMPRO),PDNOME) AS NOME, PF2CODPRO AS CODIGO,'
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampos+',0)) as venmes01,'
                    +' sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampos+',0)) as venmes02,'
                    +' sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampos+',0)) as venmes03  '
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

      Qr_Ven.SQL.Add(' Group by NVL(TRIM(PF2NOMPRO),PDNOME),PF2CODPRO Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' NVL(TRIM(PF2NOMPRO),PDNOME) ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PF2CODPRO ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end;
   end;
if Qr_Ven.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição solicitada',mtWarning,[mbok],0);
   exit
   end;
testeform := TFrm_ProMed(FindGlobalComponent('form_impres_promed'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, Form_Impres_ProMed);

Form_Impres_ProMed.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
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
      Form_Impres_ProMed.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      Form_Impres_ProMed.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',mpag),mnormal);
      if FProMed_Origem=0 then
         Form_Impres_ProMed.RDprint1.ImpF(02,01,'Media de Vendas Trimestral Por Produto.    ',mnormal)
      else
         Form_Impres_ProMed.RDprint1.ImpF(02,01,'Media de Compras Trimestral Por Produto.    ',mnormal);
      Form_Impres_ProMed.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      mlin:=3;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'|Código|Nome do Produto                         |'
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

+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
|Código|Nome do Produto                         |12345678901234|12345678901234|12345678901234| Total Periodo|Media Trimestr|% Acum.|
|123456|1234567890123456789012345678901234567890|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zz%|
}
   mlin:=mlin+1;
   mmedia:=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
   mperc :=(mmedia*100)/mtotalg;
   mmedia:=(mmedia/3);
   Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'|'+FormatFloat('000000',Qr_VenCODIGO.Value)
                           +'|'+insere2(Qr_VenNOME.Value,' ',40)
                           +'|'+insere(FormatFloat(mcasas_med, Qr_VenVENMES01.Value),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, Qr_VenVENMES02.Value),' ',14)
                           +'|' +insere(FormatFloat(mcasas_med, Qr_VenVENMES03.Value),' ',14)
                           +'|' +insere(FormatFloat(mcasas_med, (
                                   Qr_VenVENMES01.Value
                                   +Qr_VenVENMES02.Value
                                   +Qr_VenVENMES03.Value)),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, mmedia),' ',14)
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
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'|      '
                           +'|'+insere2('Totais','.',40)
                           +'|'+insere(FormatFloat(mcasas_med, mtotmes01),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, mtotmes02),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, mtotmes01+mtotmes02+mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas_med, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if Form_Impres_ProMed.RDprint1.Setup then Form_Impres_ProMed.RDprint1.Fechar;
      Form_Impres_ProMed.free;
      Form_Impres_ProMed:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      Form_Impres_ProMed.RDprint1.ImpF(mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      Form_Impres_ProMed.RDprint1.Novapagina;      
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

function TFrm_ProMed.fmedVenInterbase(ptipo: Integer):Boolean;
var
x: Integer;
mmes, mano: Integer;
mcampos: String;
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
   if FProMed_Origem=0 then
      begin
      if RG_TIPO.ItemIndex=0 then
         mcampos:='sum(p2totliq-P2DESCRAT)'
      else
         mcampos:='sum(p2qtd)';


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
                        +'Select PDNOME,P2CODPRO,P1DATDOC, '
                        +'       EXTRACT(YEAR FROM P1DATDOC) as ano, '
                        +'        EXTRACT(MONTH FROM P1DATDOC) as mes, ');
      if x=1 then
         begin
         DM1.Query2.SQL.add(mcampos+'  as venmes01, '
                           +'       0                       as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else if x=2 then
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +mcampos+' as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       0                       as venmes02, '
                           +mcampos+' as venmes03 ');
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
      DM1.Query2.SQL.Add(' Group by PDNOME,P2CODPRO,PDCODTIP,P1DATDOC');
      DM1.Query2.ExecSQL;
      end
   else
      begin
      mcampos:='sum((PF2QTDP*PF2PU)-PF2TOTDES)';
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
                        +'Select TNOME,PDCODTIP,PF1DATAENT, '
                        +'       EXTRACT(YEAR FROM PF1DATAENT) as ano, '
                        +'        EXTRACT(MONTH FROM PF1DATAENT) as mes, ');
      if x=1 then
         begin
         DM1.Query2.SQL.add(mcampos+ ' as venmes01, '
                           +'       0                       as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else if x=2 then
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +mcampos+' as venmes02, '
                           +'       0                       as venmes03 ');
         end
      else
         begin
         DM1.Query2.SQL.add('       0                       as venmes01, '
                           +'       0                       as venmes02, '
                           +mcampos+' as venmes03 ');
         end;

      DM1.Query2.SQL.Add('  from cadpf1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'      where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                        +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +'       and EXTRACT(YEAR FROM PF1DATAENT)='+InttoStr(mano)
                        +'       and EXTRACT(MONTH FROM PF1DATAENT)='+IntToStr(mmes));
      DM1.Query2.SQL.Add(' Group by TNOME,PDCODTIP,PF1DATAENT');
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
procedure TFrm_ProMed.RG_TIPOExit(Sender: TObject);
begin
if RG_TIPO.ItemIndex=0 then
   mcasas_med:=mcasas
else
   mcasas_med:=mcasqtd;
end;

procedure TFrm_ProMed.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProMed.FormKeyDown(Sender: TObject; var Key: Word;
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
