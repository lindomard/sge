unit S_MedTPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,lerarq, StdCtrls, Buttons, DB, DBTables,FUNC,
  ExtCtrls,S_Impres, ComCtrls, CheckLst, S_SelEmp,s_lerarq_geral;

type
  TFrm_MedTPro = class(TForm)
    Qr_Ven: TQuery;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenVENMES01: TFloatField;
    Qr_VenVENMES02: TFloatField;
    Qr_VenVENMES03: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RG_ORDEM: TRadioGroup;
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label5: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
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
    Label7: TLabel;
    Label8: TLabel;
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
    CODUF: TEdit;
    lbl_codven: TLabel;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label4: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    CB_ICMSRET: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_FORCAR: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
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
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_UFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBNivelClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    function fmedVenInterbase(ptipo: Integer):Boolean;
  public
    { Public declarations }
    form_impres_medtpro: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  Frm_MedTPro: TFrm_MedTPro;
  mes01,ano01: Integer;
  mes02,ano02: Integer;
  mes03,ano03: Integer;
  mtabtemp: String;
  FMedTPro_Origem: Integer;

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

uses s_tipPro, S_GPro, S_TCon, S_For, S_UF, S_Ram, S_Ven;

{$R *.dfm}

procedure TFrm_MedTPro.FormCreate(Sender: TObject);
var x:integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if FMedTPro_Origem=0 then
   begin
   Frm_MedTPro.Caption:='Média Trimestral de Vendas Por Tipo de Produtos';
   RG_TIPOPED.Items.Clear;
   for x:=0 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;

   end
else
   begin
   Frm_MedTPro.Caption:='Média Trimestral de Compras Por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   label12.visible   :=false;
   end;
if pbanco=0 then
   begin
   RG_ORDEM.Items.add('To&tais Crescente');
   RG_ORDEM.Items.add('Totai&s Decrescente');
   end;


RG_TIPOPED.Checked[1] := TRUE;

//for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
///for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;

RG_ORDEM.itemIndex:=0;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);

end;

procedure TFrm_MedTPro.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedTPro.bbImprimirClick(Sender: TObject);
var
mmest,mdt1,mdt2: String;
x,mlin, mpag:  Integer;
mtotmes01,mtotmes02,mtotmes03: Real;
mtotalg: Real;
mmedia, mperc: Real;
mCampo_Vlr: String;

begin
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   Fmensagem('Mês Inválido!',0,['0'],0);
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
if FMedTPro_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADTP' ,'TCODEMP'  ,'PDCODEMP','TCODTIP(+)'  ,'PDCODTIP');
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADTP' ,'TCODEMP' ,'PDCODEMP' ,'TCODTIP(+)'  ,'PDCODTIP');
   end;

if pbanco=1 then
   fmedVenInterbase(0)
else
   begin
   if FMedTPro_Origem=0 then
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
      Qr_Ven.SQL.Add('select TNOME AS NOME, PDCODTIP AS CODIGO,sum(decode(to_char('+pdatapesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+','+mCampo_Vlr+',0)) as venmes01,'
                    +'                     sum(decode(to_char('+pdatapesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+','+mCampo_Vlr+',0)) as venmes02,'
                    +'                     sum(decode(to_char('+pdatapesq+', '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+','+mCampo_Vlr+',0)) as venmes03  '
                    +'       from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                    +'       '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                    +'       and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                    +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                    +'       and P1EMIDOC=1 ');
//                    and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1));
      if Trim(MDT1)<>'/  /' then
         Qr_Ven.Sql.Add(' and '+pdatapesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1))+chr(39));
      if Trim(MDT2)<>'/  /' then
         Qr_Ven.Sql.Add(' and '+pdatapesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2))+chr(39));

      monta_parametros;

      Qr_Ven.SQL.Add(' Group by TNOME,PDCODTIP Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' TNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODTIP ')
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
      Qr_Ven.SQL.Add('select TNOME AS NOME, PDCODTIP AS CODIGO,sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano01)+FormatFloat('00',mes01)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes01,'
                    +'                     sum(decode(to_char(PF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano02)+FormatFloat('00',mes02)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes02,'
                    +'                     sum(decode(to_char(pF1DATAENT, '+chr(39)+'yyyymm'+chr(39)+'), '+chr(39)+FormatFloat('0000',ano03)+FormatFloat('00',mes03)+chr(39)+',((PF2QTDP*PF2PU)-PF2TOTDES),0)) as venmes03  '
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
      Qr_Ven.SQL.Add(' Group by TNOME,PDCODTIP Order by ');
      if RG_ORDEM.ItemIndex=0 then
         Qr_Ven.SQL.Add(' TNOME ')
      else if RG_ORDEM.ItemIndex=1 then
         Qr_Ven.SQL.Add(' PDCODTIP ')
      else if RG_ORDEM.ItemIndex=2 then
        Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) ')
      else if RG_ORDEM.ItemIndex=3 then
         Qr_Ven.SQL.Add(' (venmes01+venmes02+venmes03) desc ');
      Qr_ven.Open;
      end;
   end;
if Qr_Ven.Eof then
   begin
   Fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_MedTPro(FindGlobalComponent('form_impres_medtpro'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_medtpro);

form_impres_medtpro.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
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
      form_impres_medtpro.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_medtpro.RDprint1.ImpF(01,60,'Pagina:     '+FormatFloat('0000',mpag),mnormal);
      if FMedTPro_Origem=0 then
         form_impres_medtpro.RDprint1.ImpF(02,01,'Media de Vendas Trimestral Por Tipo de Produto.    ',mnormal)
      else
         form_impres_medtpro.RDprint1.ImpF(02,01,'Media de Compras Trimestral Por Tipo de PRoduto.    ',mnormal);
      form_impres_medtpro.RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      mlin:=3;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,Centra(fperiodo(0,mdt1,mdt2),' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,Centra('Totais deduzidos os Impostos e os Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'+------+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'|Código|Nome do Tipo de Produto                 |'
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
   form_impres_medtpro.RDprint1.ImpF(mlin,01,'|'
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
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'|      '
                           +'|'+insere2('Totais','.',40)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes02),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mtotmes01+mtotmes02+mtotmes03),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mmedia),' ',14)
                           +'|'+insere(FormatFloat(mcasas, mperc),' ',06)
                           +'%|',mreduz);
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'+Fim.--+----------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_medtpro.RDprint1.Setup then form_impres_medtpro.RDprint1.Fechar;
      form_impres_medtpro.Free;
      form_impres_medtpro:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_medtpro.RDprint1.ImpF(mlin,01,'+Continua...------------------------------------+--------------+--------------+--------------+--------------+--------------+-------+',mreduz);
      form_impres_medtpro.RDprint1.Novapagina;      
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

function TFrm_MedTPro.fmedVenInterbase(ptipo: Integer):Boolean;
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
   if FMedTPro_Origem=0 then
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
                        +'Select TNOME,PDCODTIP,P1DATDOC, '
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
      DM1.Query2.SQL.Add(' Group by TNOME,PDCODTIP,P1DATDOC');
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
                        +'Select TNOME,PDCODTIP,PF1DATAENT, '
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
procedure TFrm_MedTPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MedTPro.monta_parametros;
begin

    LE_NIVEL;
    if tipo_nivel <> ''   then  Qr_Ven.SQL.Add(' and PDNIVEL IN ('+tipo_nivel+')');

    LE_STATUS;
    if tipo_status <> ''  then Qr_Ven.SQL.Add(' and PDSTATUS IN ('+tipo_status+')');

    if RG_TIPOPED.Visible then
    begin
       LE_TIPOPED;
       if tipo_ped <> ''  then Qr_Ven.SQL.Add(' and P1TIPO IN ('+tipo_ped+')');
    end;

   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      Qr_Ven.SQL.Add(' and  '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODPRO '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODFOR '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_ven);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and P1CODVEN '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODCON '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODGRU '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODRAM '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PDCODTIP '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and PUF '+mcinst2);


end;

procedure TFrm_MedTPro.LE_CODPRO;
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

procedure TFrm_MedTPro.LE_CODFOR;
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

procedure TFrm_MedTPro.LE_CODVEN;
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

procedure TFrm_MedTPro.LE_UF;
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

procedure TFrm_MedTPro.LE_CODCON;
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

procedure TFrm_MedTPro.LE_CODGRU;
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

procedure TFrm_MedTPro.LE_CODRAM;
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

procedure TFrm_MedTPro.LE_CODTIP;
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

procedure TFrm_MedTPro.LE_TIPOPED;
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

procedure TFrm_MedTPro.LE_NIVEL;
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

procedure TFrm_MedTPro.LE_STATUS;
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

procedure TFrm_MedTPro.CODPROExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      Fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_MedTPro.CODPROKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CLBStatusClick(Sender: TObject);
begin
  inherited;
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_MedTPro.CODFORExit(Sender: TObject);
begin
   if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      Fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_MedTPro.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CLBEstoqueClick(Sender: TObject);
begin
  inherited;
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;

procedure TFrm_MedTPro.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:='Todos...'
else
   begin
   flcaduf(0,0,0,CODUF.Text);
   if DM1.Tb_uf.Eof then
      begin
      Fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;

end;

procedure TFrm_MedTPro.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.OMITIR_UFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_MedTPro.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_MedTPro.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_MedTPro.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_MedTPro.CODTIPExit(Sender: TObject);
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
   Fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_MedTPro.CODTIPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CODGRUExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      Fmensagem('Grupo Não Cadastrado!',0,['0'],0);
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

procedure TFrm_MedTPro.CODGRUKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CODCONExit(Sender: TObject);
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
   Fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_MedTPro.CODCONKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CODRAMExit(Sender: TObject);
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
   Fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_MedTPro.CODRAMKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   CODVEN.Text:=''
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      Fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

procedure TFrm_MedTPro.CODVENKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_MedTPro.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_MedTPro.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_MedTPro.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_MedTPro.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   CODUF.Text:=fChamaUF(0,'FRM_MEDTPRO','');
   if trim(coduf.TEXT)<>'' then
     lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   end;


end;

procedure TFrm_MedTPro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_MedTPro.FormShow(Sender: TObject);
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
