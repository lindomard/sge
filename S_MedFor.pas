unit S_MedFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC,
  ExtCtrls,S_Impres, CheckLst, jpeg, ComCtrls, S_SelEmp;

type
  TFrm_MedFor = class(TForm)
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
    CB_EmiDoc: TCheckBox;
    CB_FORCAR: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label5: TLabel;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    CB_ICMSRET: TCheckBox;
    Label3: TLabel;
    CB_TIPOPESQ: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LE_TIPOPED;
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_medfor: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  Frm_MedFor: TFrm_MedFor;
  mes01,ano01    : Integer;
  mes02,ano02    : Integer;
  mes03,ano03    : Integer;
  mtabtemp       : String;
  FMedFor_Origem : Integer;
  tipo_ped       : string;

implementation

uses S_For;
{$R *.dfm}

procedure TFrm_MedFor.FormCreate(Sender: TObject);
var x:integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1] := TRUE;

if FMedFor_Origem=0 then
   begin
   Frm_MedFor.Caption:='Média Trimestral de Vendas Por Fornecedor';
   RG_TIPOPED.Visible:=True;
   end
else
   begin
   Frm_MedFor.Caption:='Média Trimestral de Compras Por Fornecedor';
   RG_TIPOPED.Visible:=False;
   end;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);

end;

procedure TFrm_MedFor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedFor.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mmedia, mperc: Real;

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


if FMedFor_Origem=0 then
   begin
   fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   la_instrucao:=la_instrucao+' and ';

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP' ,'PDCODEMP','FCODFOR' ,'PDCODFOR');
   end
else
   begin
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
   la_instrucao:=la_instrucao+' and ';
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin3(1,'CADPF2','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP' ,'PF1CODEMP','FCODFOR' ,'PF1CODFOR');
   end;

if FMedFor_Origem=0 then
   begin

   if CB_ICMSRET.Checked then
      mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,(P2TOTLIQ+P2ICMSR))'
   else
      mcampo_vlr    :='DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ)*-1,P2TOTLIQ)';

   mcampo_semcom :='DECODE(P1TIPO_ENTSAI,1,p2semcom*-1,p2semcom)';
   mcampo_icmsr  :='DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR)';
   mcampo_valfre :='DECODE(P1TIPO_ENTSAI,1,(P2SEMCOM-P2SEMCOM)*-1,P2SEMCOM-P2SEMCOM)';

   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';

   Qr_Ven.Close;
   Qr_Ven.SQL.Clear;
   Qr_Ven.SQL.Add('select FRAZAO AS NOME,PDCODFOR AS CODIGO,sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_vlr+',0)) as venmes01,'
                 +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_vlr+',0)) as venmes02,'
                 +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_vlr+',0)) as venmes03  '
                 +'       from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                 +'       and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Qr_Ven.SQL.Add('       and P1EMIDOC=1 ');

   LE_TIPOPED;
   if tipo_ped <> '' then
      Qr_Ven.SQL.Add(' and P1TIPO IN ('+tipo_ped+')');

   if Trim(MDT1)<>'/  /' then
      Qr_Ven.Sql.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
   if Trim(MDT2)<>'/  /' then
      Qr_Ven.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));

   mcinst2:=fItensListBox(0,Lbx_Codfor,OMITIR_for);
   if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODFOR '+mcinst2);

   Qr_Ven.SQL.Add(' Group by FRAZAO,PDCODFOR Order by ');
   if RG_ORDEM.ItemIndex=0 then
      Qr_Ven.SQL.Add(' FRAZAO ')
   else if RG_ORDEM.ItemIndex=1 then
      Qr_Ven.SQL.Add(' PDCODFOR ')
   else if RG_ORDEM.ItemIndex=2 then
     Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
   else if RG_ORDEM.ItemIndex=3 then
      Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
   try
     Qr_ven.Open;
   except
     Qr_ven.sql.savetofile(mpastatemp + 'SQL.txt');
     end;
   end
else
   begin

   if CB_ICMSRET.Checked then
      mcampo_vlr    :='(PF2QTDP*PF2PU-PF2TOTDES+PF2ICMSR)'
   else
      mcampo_vlr    :='(PF2QTDP*PF2PU-PF2TOTDES)';

   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='PF1DATANF'
   else
      pdatapesq:='PF1DATA';

   Qr_Ven.Close;
   Qr_Ven.SQL.Clear;
   Qr_Ven.SQL.Add('select FRAZAO AS NOME,PF1CODFOR AS CODIGO,sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mcampo_vlr+',0)) as venmes01,'
                 +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mcampo_vlr+',0)) as venmes02,'
                 +'                     sum(decode(to_char('+pDataPesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mcampo_vlr+',0)) as venmes03  '
                 +'       from CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1)<>'/  /' then
      Qr_Ven.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
   if Trim(MDT2)<>'/  /' then
      Qr_Ven.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));

   mcinst2:=fItensListBox(0,Lbx_Codfor,OMITIR_for);
   if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PF1CODFOR '+mcinst2);

   Qr_Ven.SQL.Add(' Group by FRAZAO,PF1CODFOR Order by ');

   if RG_ORDEM.ItemIndex=0 then
      Qr_Ven.SQL.Add(' FRAZAO ')
   else if RG_ORDEM.ItemIndex=1 then
      Qr_Ven.SQL.Add(' PF1CODFOR ')
   else if RG_ORDEM.ItemIndex=2 then
     Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
   else if RG_ORDEM.ItemIndex=3 then
      Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
   try
     Qr_ven.Open;
   except
     Qr_Ven.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     end;
   end;
if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
//  Qr_Ven.SQL.SaveToFile('c:\SGE\sqlMEDCPR.txt');

testeform := TFrm_MedFor(FindGlobalComponent('form_impres_medfor'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medfor);

form_impres_medfor.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_medfor.mlin:=0;
form_impres_medfor.mpag:=0;
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
   if form_impres_medfor.mlin=0 then
      begin
      form_impres_medfor.mpag:=form_impres_medfor.mpag+1;
      form_impres_medfor.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_medfor.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',form_impres_medfor.mpag),mnormal);
      if FMedFor_Origem=0 then
         form_impres_medfor.RDprint1.ImpF(02,01,'Relatorio de Media de Vendas Trimestral Por Fornecedor.',mnormal)
      else
         form_impres_medfor.RDprint1.ImpF(02,01,'Relatorio de Media de Compras Trimestral Por Fornecedor.',mnormal);
      form_impres_medfor.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_medfor.mlin:=3;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'+--------+------------------------------------------+-----------------+----------------+----------------+----------------+---------+',mreduz);
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'| Código | Nome do Fornecedor                       | '
                              +insere(tabmes[mes01]+'/'+FormatFloat('0000',ano01),' ',14)
                              +'  | '
                              +insere(tabmes[mes02]+'/'+FormatFloat('0000',ano02),' ',14)
                              +' | '
                              +insere(tabmes[mes03]+'/'+FormatFloat('0000',ano03),' ',14)
                              +' |Media Trimestre | % Acum. |',mreduz);
      end;
   form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
   mmedia:=Qr_VenVENMES01.Value+Qr_VenVENMES02.Value+Qr_VenVENMES03.Value;
   if mtotalg <= 0 then mtotalg :=1;
   mperc :=(mmedia*100)/mtotalg;
   mmedia:=(mmedia/3);
   form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'| '
                         +insere(FormatFloat('000000',Qr_VenCODIGO.Value),' ',6)
                           +' | '+insere2(Qr_VenNOME.Value,' ',40)
                           +' | '+insere(FormatFloat(mcasas, Qr_VenVENMES01.Value),' ',14)
                           +'  | '+insere(FormatFloat(mcasas, Qr_VenVENMES02.Value),' ',14)
                           +' | ' +insere(FormatFloat(mcasas, Qr_VenVENMES03.Value),' ',14)
                           +' | '+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +' | '+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'% |',mreduz);
   mtotmes01:=mtotmes01+Qr_VenVENMES01.Value;
   mtotmes02:=mtotmes02+Qr_VenVENMES02.Value;
   mtotmes03:=mtotmes03+Qr_VenVENMES03.Value;
   Qr_Ven.Next;
   if Qr_Ven.Eof then
      begin
      mmedia:=mtotmes01+mtotmes02+mtotmes03;
      mmedia:=(mmedia/3);
      mperc :=100;
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'|       '
                           +' | '+insere2('Totais','.',40)
                           +' | '+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                           +'  | '+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                           +' | '+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                           +' | '+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +' | '+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'% |',mreduz);
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'+fim.----+------------------------------------------+-----------------+----------------+----------------+----------------+---------+',mreduz);
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_medfor.RDprint1.Setup then form_impres_medfor.RDprint1.Fechar;
      form_impres_medfor.free;
      form_impres_medfor:=nil;
      end
   else if form_impres_medfor.mlin>58 then
      begin
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,'+Continua...----------------------------------------+-----------------+----------------+----------------+----------------+---------+',mreduz);
      form_impres_medfor.RDprint1.Novapagina;
      form_impres_medfor.mlin:=0;
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

procedure TFrm_MedFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin


Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedFor.CODFORExit(Sender: TObject);
begin

CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      codfor.text := '';
      CODfor.SetFocus;
      end
   else
      Lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
   end;

end;

procedure TFrm_MedFor.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedFor.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedFor.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedFor.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codfor.ItemIndex>=0 then
      Lbx_codfor.Items.Delete(Lbx_codfor.ItemIndex);

end;

procedure TFrm_MedFor.RG_TIPOPEDClick(Sender: TObject);
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

procedure TFrm_MedFor.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_MedFor.LE_TIPOPED;
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

function tFrm_Medfor.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_medfor.mlin:=form_impres_medfor.mlin+1;
      form_impres_medfor.RDprint1.ImpF(form_impres_medfor.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_MedFor.FormKeyDown(Sender: TObject; var Key: Word;
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
