unit S_MinRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,S_Tra,lerarq,func, Mask,S_Impres, Buttons, DB,
  DBTables, S_SelEmp;

type
  TFrm_MinRel = class(TForm)
    Label5: TLabel;
    CODTRA: TEdit;
    lbx_codtra: TListBox;
    OMITIR_TRA: TCheckBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Tb_Min2: TQuery;
    Tb_Min2CM2CODEMP: TFloatField;
    Tb_Min2CM2CODMIN: TFloatField;
    Tb_Min2CM2SEQ: TFloatField;
    Tb_Min2CM2TIPO: TStringField;
    Tb_Min2CM2NUMERO: TFloatField;
    Tb_Min2CM2VALOR: TFloatField;
    Tb_Min2CM2DTCONF: TDateTimeField;
    Tb_Min2CM2USRCONF: TFloatField;
    Tb_Min2CM2CLIFOR: TStringField;
    Tb_Min2CM2CODIGO: TFloatField;
    Tb_Min2CM2TIPDOC: TStringField;
    Tb_Min2CM2NUMDOC: TFloatField;
    Tb_Min2CM2OBS01: TStringField;
    Tb_Min2CM2OBS02: TStringField;
    Tb_Min2CM2OBS03: TStringField;
    Tb_Min2CM2LOTSEQ: TFloatField;
    Tb_Min2CM2LOTSEQ_CP: TFloatField;
    Tb_Min2CM2QTDVOL: TFloatField;
    Tb_Min2CM2PESOB: TFloatField;
    Tb_Min2CM2PESOL: TFloatField;
    Tb_Min2CM2PED_CODEMP: TFloatField;
    Tb_Min2CM2QTDITENS: TFloatField;
    Tb_Min2CM2QTDUND: TFloatField;
    Tb_Min2CM2TIPOPED: TFloatField;
    Tb_Min2CM2CODCLI: TFloatField;
    Tb_Min2CM2VALFRE: TFloatField;
    Tb_Min2NOMCLI: TStringField;
    Tb_Min2CM2QTDPAG: TFloatField;
    Tb_Min2CM2CODBCO: TFloatField;
    Tb_Min2CM2DATANF: TDateTimeField;
    Tb_Min2CCIDADE: TStringField;
    Tb_Min2CUF: TStringField;
    Tb_Min2CFONE01: TStringField;
    Tb_Min2CM1CODTRA: TFloatField;
    Tb_Min2TRRAZTRA: TStringField;
    Tb_Min2CM1DATA: TDateTimeField;
    Tb_Min2CM1INCDTHORA: TDateTimeField;
    Tb_Min2CM1USRINC: TFloatField;
    CB_BLOQ: TCheckBox;
    CB_RESUMIDO: TCheckBox;
    Tb_Min1: TQuery;
    Tb_Min1CM1CODTRA: TFloatField;
    Tb_Min1CM1INCDTHORA: TDateTimeField;
    Tb_Min1CM1USRINC: TFloatField;
    Tb_Min1CM1DATA: TDateTimeField;
    Tb_Min1TRRAZTRA: TStringField;
    Tb_Min1CM1CODMIN: TFloatField;
    Tb_Min1M1NOMEENT: TStringField;
    Tb_Min1CM1RG: TStringField;
    Tb_Min1CM1TOTAL: TFloatField;
    Tb_Min1CM1CNPF: TStringField;
    Tb_Min1TOTPED: TFloatField;
    Tb_Min1TOTBON: TFloatField;
    Tb_Min2Situacao: TStringField;
    Tb_Min2P1DATENT: TDateTimeField;
    Label1: TLabel;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label4: TLabel;
    edt_numnf: TEdit;
    lbx_numnf: TListBox;
    OMITIR_NF: TCheckBox;
    Label6: TLabel;
    edt_chave_ped: TEdit;
    lbx_chave_ped: TListBox;
    OMITIR_PED: TCheckBox;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_numnfExit(Sender: TObject);
    procedure edt_chave_pedExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_numnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_chave_pedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    function fRetonarFiltros: String;

  public
    { Public declarations }
    form_impres_minrel: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_MinRel: TFrm_MinRel;

implementation

{$R *.dfm}

procedure TFrm_MinRel.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;
end;

procedure TFrm_MinRel.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;
end;

procedure TFrm_MinRel.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if not flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Trim(CODTRA.Text)) then
      begin
      fMensagem('Transportadora não cadastrado!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(CODTRA.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;

end;

procedure TFrm_MinRel.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_MinRel',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_MinRel.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_MinRel.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MinRel.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text:=FormatDatetime(fdt2, date);
end;


function TFrm_MinRel.fRetonarFiltros: String;
var
mFiltros: String;
begin
mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
if trim(mcinst2)<>'' then
   mFiltros :=mFiltros +' and CM1CODTRA '+mcinst2;

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   mFiltros :=mFiltros +' and (CM2CODIGO '+mcinst2 +' AND CM2CLIFOR='+quotedstr('CL')+')';

mcinst2:=fItensListBox(0,lbx_chave_ped,OMITIR_PED);
if trim(mcinst2)<>'' then
   mFiltros :=mFiltros +' and (CM2NUMERO '+mcinst2 +' AND CM2TIPO='+quotedstr('PD')+')';


mcinst2:=fItensListBox(0,lbx_numnf,OMITIR_NF);
if trim(mcinst2)<>'' then
   mFiltros :=mFiltros +' and CM2NUMDOC '+mcinst2;


result := mfiltros;

end;

procedure TFrm_MinRel.bbImprimirClick(Sender: TObject);
var
mTotPed, mTotBri: Real;
mEmpresas,mGrupo_Ant: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
bbImprimir.Enabled:=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' (CM1CODEMP=0'+IntToStr(codemp)+' or CM1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,100+codemp))+')';



if CB_RESUMIDO.Checked then
   begin
   fInnerJoin3(1,'CADMIN2','CM2CODEMP','CM1CODEMP','CM2LOTSEQ','CM1LOTSEQ','CM2CODMIN','CM1CODMIN');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADTRA','TRCODEMP','CM1CODEMP' ,'TRCODTRA' ,'CM1CODTRA');
   la_Empresas:=fEmpresas_Selecionadas('CADMIN2','CM2PED_CODEMP',Form_SelEmp.CLB_EMPRESAS);

   Tb_min1.Close;
   Tb_min1.Sql.Clear;
   Tb_min1.Sql.Add(' SELECT '
                  +' CM1CODTRA '
                  +',CM1CODMIN '
                  +',CM1DATA '
                  +',max(CM1INCDTHORA) as CM1INCDTHORA '
                  +',max(CM1USRINC) as CM1USRINC '
                  +',max(TRRAZTRA) as TRRAZTRA '
                  +',max(M1NOMEENT) as M1NOMEENT '
                  +',max(CM1RG) as CM1RG '
                  +',max(CM1TOTAL) as CM1TOTAL '
                  +',max(CM1CNPF) as CM1CNPF '
                  +',sum(decode(CM2TIPOPED,21,0 '
                                        +'  ,22,0 '
                                        +'  ,2,0  '
                                        +'  ,CM2VALOR)) as TOTPED'
                  +',sum(decode(CM2TIPOPED,21,CM2VALOR '
                                        +'  ,22,CM2VALOR '
                                        +'  ,2,CM2VALOR  '
                                        +'  ,0)) as TOTBON'
                  +'  from CADMIN1 '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' (CM1STATUS<>9 or CM1STATUS is null) ' );
   if trim(MDT1.Text)<>'/  /' then
      Tb_Min1.SQL.add(' and CM1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Tb_Min1.SQL.add(' and CM1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

   Tb_min1.SQL.add(fRetonarFiltros);
   Tb_Min1.SQL.Add(' and CM2NUMERO in (select unique p1chave from cadp01 where p1status<'+mstatus_excluido+' and p1chave=CM2NUMERO) ');


   if mEmpresas<>'' then
      Tb_Min1.SQL.add(' and '+mEmpresas);

   Tb_min1.Sql.add(' group by CM1CODTRA,CM1CODMIN,CM1DATA ');
   try
      Tb_Min1.Open;
   except
      Tb_Min1.sql.SaveToFile(mpastatemp +'sql.TXT');
      end;
//  Tb_Min1.sql.SaveToFile(mpastatemp +'sql.TXT');

   testeform := TFrm_MinRel(FindGlobalComponent('form_impres_minrel'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Impres, form_impres_minrel);


   form_impres_minrel.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   form_impres_minrel.mlin:=0;form_impres_minrel.mpag:=0;

   While not Tb_Min1.Eof do
      begin
      if form_impres_minrel.mlin=0 then
         begin
         form_impres_minrel.mpag:=form_impres_minrel.mpag+1;
         form_impres_minrel.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
         form_impres_minrel.RDprint1.ImpF(02,01,insere2('Relacao resumida das Minutas. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',form_impres_minrel.mpag),mreduz);
         form_impres_minrel.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
         form_impres_minrel.RDprint1.ImpF(04,01,'Transportadora: '+FormatFloat('0000', Tb_Min1CM1CODTRA.Value)+' - '+Tb_Min1TRRAZTRA.Value,mneg);
         form_impres_minrel.RDprint1.ImpF(05,01,'Minuta     Data   Transportadora                      Tot.Ped.Venda  Tot.Brindes',mnormal);
{
Minuta     Data   Transportadora                      Tot.Ped.Venda  Tot.Brindes
123456 10/09/2007 123456789012346578901234567890123456zz.zzz.zz9,99zz.zzz.zz9,99

Minuta     Data   Transportadora                                           Total
123456 10/09/2007 12345678901234657890123456789012345678901234567890 zzz.zzz9,99
}

         form_impres_minrel.mlin:=5;
         mGrupo_Ant:=Tb_Min1CM1CODTRA.AsString;
         end;
      form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
      form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2(FormatFloat('000000',Tb_Min1CM1CODMIN.Value),'0',06)+' '
                                      +insere2(FormatDateTime(fdt2, Tb_Min1CM1DATA.Value),' ',10)+' '
                                      +insere2(FormatFloat('000000',Tb_Min1CM1CODTRA.Value)+'-'+Tb_Min1TRRAZTRA.Value,' ',36)
                                      +insere(FormatFloat(mcasas, Tb_Min1TOTPED.Value),' ',13)
                                      +insere(FormatFloat(mcasas, Tb_Min1TOTBON.Value),' ',13),mnormal);

      mTotBri:=mTotBri+Tb_Min1TOTBON.Value;
      mTotPed:=mTotPed+Tb_Min1TOTPED.Value;
      Tb_Min1.Next;
      if Tb_Min1.Eof then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2('Total','.',52)+insere(FormatFloat(mcasas, mTotPed),' ',15)
                                 +insere(FormatFloat(mcasas, mTotBri),' ',13),mnormal);
         if form_impres_minrel.RDprint1.Setup then form_impres_minrel.RDprint1.Fechar;
         form_impres_minrel.free;
         form_impres_minrel:=nil;
         end
      else if form_impres_minrel.mlin>60 then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,'Continua...',mreduz);
         form_impres_minrel.mlin:=0;
         form_impres_minrel.RDprint1.Novapagina;
         end;
      if mGrupo_ant<>Tb_Min1CM1CODTRA.AsString then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         mGrupo_Ant:=Tb_Min1CM1CODTRA.AsString;

         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2('Total','.',52)+insere(FormatFloat(mcasas, mTotPed),' ',15)
                                 +insere(FormatFloat(mcasas, mTotBri),' ',13),mnormal);
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,'Continua...',mreduz);
         form_impres_minrel.RDprint1.Novapagina;
         form_impres_minrel.mlin:=0;
         mTotPed:=0;
         mTotBri:=0;
         end;
      end;
   end
else
   begin
   fInnerJoin(1,'CADCLI','CCODEMP','CM2CODEMP','CCODCLI','CM2CODIGO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADTRA','TRCODEMP','CM1CODEMP' ,'TRCODTRA' ,'CM1CODTRA');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin3(1,'CADP01','P1CODEMP','CM2PED_CODEMP','P1LOTSEQ','CM2LOTSEQ_CP','P1CHAVE','CM2NUMERO');



   if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      mEmpresas:=''
   else
      mEmpresas:=fla_sqlmp('CM2PED_CODEMP',Form_SelEmp.CLB_EMPRESAS);


   if CB_BLOQ.Checked then
      begin
      Tb_Min2.Close;
      Tb_Min2.Sql.Clear;
      Tb_Min2.Sql.Add('Select max(CM1CODTRA) as CM1CODTRA ');
      Tb_Min2.Sql.Add(',max(CM1DATA) as CM1DATA ');
      Tb_Min2.Sql.Add(',max(CM1INCDTHORA) as CM1INCDTHORA ');
      Tb_Min2.Sql.Add(',max(CM1USRINC) as CM1USRINC ');
      Tb_Min2.Sql.Add(',max(TRRAZTRA) as TRRAZTRA ');
      Tb_Min2.Sql.Add(',max(CM2CODEMP) as CM2CODEMP  ');
      Tb_Min2.Sql.Add(',max(CM2LOTSEQ) as CM2LOTSEQ ');
      Tb_Min2.Sql.Add(',max(CM2CODMIN) as CM2CODMIN ');
      Tb_Min2.Sql.Add(',max(CM2SEQ) as CM2SEQ ');
      Tb_Min2.Sql.Add(',max(CM2TIPO) as CM2TIPO ');
      Tb_Min2.Sql.Add(',max(CM2CLIFOR) as CM2CLIFOR ');
      Tb_Min2.Sql.Add(',max(CM2CODIGO) as CM2CODIGO ');
      Tb_Min2.Sql.Add(',max(CM2TIPDOC) as CM2TIPDOC ');
      Tb_Min2.Sql.Add(',max(CM2NUMDOC) as CM2NUMDOC  ');
      Tb_Min2.Sql.Add(',max(CM2QTDVOL) as CM2QTDVOL ');
      Tb_Min2.Sql.Add(',max(CM2PESOB) as CM2PESOB ');
      Tb_Min2.Sql.Add(',max(CM2PESOL) as CM2PESOL');
      Tb_Min2.Sql.Add(',max(CM2VALOR) as CM2VALOR ');
      Tb_Min2.Sql.Add(',max(CM2OBS01) as CM2OBS01');
      Tb_Min2.Sql.Add(',max(CM2OBS02) as CM2OBS02');
      Tb_Min2.Sql.Add(',max(CM2OBS03) as CM2OBS03');
      Tb_Min2.Sql.Add(',max(CM2DTCONF) as  CM2DTCONF');
      Tb_Min2.Sql.Add(',max(CM2USRCONF) as CM2USRCONF');
      Tb_Min2.Sql.Add(',max(CM2QTDITENS) as  CM2QTDITENS');
      Tb_Min2.Sql.Add(',max(CM2QTDUND) as CM2QTDUND ');
      Tb_Min2.Sql.Add(',max(CM2TIPOPED) as CM2TIPOPED ');
      Tb_Min2.Sql.Add(',max(CM2CODCLI) as CM2CODCLI ');
      Tb_Min2.Sql.Add(',max(CM2VALFRE) as CM2VALFRE');
      Tb_Min2.Sql.Add(',max(CM2QTDPAG) as CM2QTDPAG');
      Tb_Min2.Sql.Add(',max(CM2CODBCO) as CM2CODBCO');
      Tb_Min2.Sql.Add(',max(CM2DATANF) as  CM2DATANF');
      Tb_Min2.Sql.Add(',max(CRAZAO)  AS NOMCLI ');
      Tb_Min2.Sql.Add(',max(CCIDADE) as CCIDADE ');
      Tb_Min2.Sql.Add(',max(CUF) as CUF ');
      Tb_Min2.Sql.Add(',max(CFONE01) AS CFONE01 ');
      Tb_Min2.sql.add(',max(CASE WHEN P1DATENT is null or P1DATENT < '+QuotedStr('01/01/2000')+' THEN '+quotedstr('   ')+' else '+QuotedStr('  OK ')+' end) as situacao ');

      Tb_Min2.Sql.Add(',max(P1DATENT) AS P1DATENT ');

      Tb_Min2.Sql.Add(',CM2PED_CODEMP');
      Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
      Tb_Min2.Sql.Add(',CM2NUMERO ');

      Tb_Min2.Sql.Add(' from CADMIN1,CADMIN2 '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
      Tb_Min2.Sql.Add(iif(DM1.Qr_tid.Locate('TINOME','CADPED',[]),'',' CM2CODEMP=CM1CODEMP and ')
                     +' CM2LOTSEQ=CM1LOTSEQ '
                     +' AND CM2CODMIN=CM1CODMIN ');
      if trim(MDT1.Text)<>'/  /' then
         Tb_Min2.SQL.add(' and CM1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if trim(MDT2.Text)<>'/  /' then
         Tb_Min2.SQL.add(' and CM1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      if mEmpresas<>'' then
         Tb_Min2.SQL.add(' and '+mEmpresas);

      Tb_Min2.SQL.Add(' and CM2NUMERO in (select unique p1chave from cadp01 where p1status<'+mstatus_excluido+' and p1chave=CM2NUMERO) ');
 {
      mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
      if trim(mcinst2)<>'' then
         Tb_Min2.SQL.Add(' and CM1CODTRA '+mcinst2);
}
      Tb_min2.SQL.add(fRetonarFiltros);

      Tb_Min2.SQL.add(' Group by ');

      Tb_Min2.Sql.Add(' CM2PED_CODEMP');
      Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
      Tb_Min2.Sql.Add(',CM2NUMERO ');


      Tb_Min2.Sql.Add(' order by TRRAZTRA,CM2NUMERO,CM2SEQ');
      end
   else
      begin
      Tb_Min2.Close;
      Tb_Min2.Sql.Clear;
      Tb_Min2.Sql.Add('Select CM1CODTRA ');
      Tb_Min2.Sql.Add(',CM1DATA ');
      Tb_Min2.Sql.Add(',CM1INCDTHORA ');
      Tb_Min2.Sql.Add(',CM1USRINC ');
      Tb_Min2.Sql.Add(',TRRAZTRA ');
      Tb_Min2.Sql.Add(',CM2CODEMP  ');
      Tb_Min2.Sql.Add(',CM2LOTSEQ ');
      Tb_Min2.Sql.Add(',CM2CODMIN ');
      Tb_Min2.Sql.Add(',CM2SEQ ');
      Tb_Min2.Sql.Add(',CM2TIPO ');
      Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
      Tb_Min2.Sql.Add(',CM2NUMERO ');
      Tb_Min2.Sql.Add(',CM2CLIFOR ');
      Tb_Min2.Sql.Add(',CM2CODIGO ');
      Tb_Min2.Sql.Add(',CM2TIPDOC ');
      Tb_Min2.Sql.Add(',CM2NUMDOC  ');
      Tb_Min2.Sql.Add(',CM2QTDVOL ');
      Tb_Min2.Sql.Add(',CM2PESOB ');
      Tb_Min2.Sql.Add(',CM2PESOL');
      Tb_Min2.Sql.Add(',CM2VALOR ');
      Tb_Min2.Sql.Add(',CM2OBS01');
      Tb_Min2.Sql.Add(',CM2OBS02');
      Tb_Min2.Sql.Add(',CM2OBS03');
      Tb_Min2.Sql.Add(',CM2DTCONF');
      Tb_Min2.Sql.Add(',CM2USRCONF');
      Tb_Min2.Sql.Add(',CM2PED_CODEMP');
      Tb_Min2.Sql.Add(',CM2QTDITENS');
      Tb_Min2.Sql.Add(',CM2QTDUND ');
      Tb_Min2.Sql.Add(',CM2TIPOPED ');
      Tb_Min2.Sql.Add(',CM2CODCLI ');
      Tb_Min2.Sql.Add(',CM2VALFRE');
      Tb_Min2.Sql.Add(',CM2QTDPAG');
      Tb_Min2.Sql.Add(',CM2CODBCO');
      Tb_Min2.Sql.Add(',CM2DATANF');
      Tb_Min2.Sql.Add(',CRAZAO AS NOMCLI ');
      Tb_Min2.Sql.Add(',CCIDADE ');
      Tb_Min2.Sql.Add(',CUF ');
      Tb_Min2.Sql.Add(',CFONE01 ');
      Tb_Min2.Sql.Add(',P1DATENT ');
      Tb_Min2.sql.add(', CASE WHEN P1DATENT is null or P1DATENT < '+QuotedStr('01/01/2000')+' THEN '+quotedstr('   ')+' else '+QuotedStr('  OK ')+' end as situacao ');


      Tb_Min2.Sql.Add(' from CADMIN1,CADMIN2 '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
      Tb_Min2.Sql.Add(iif(DM1.Qr_tid.Locate('TINOME','CADPED',[]),'',' CM2CODEMP=CM1CODEMP and ')
                     +' CM2LOTSEQ=CM1LOTSEQ '
                     +' AND CM2CODMIN=CM1CODMIN ');
      if trim(MDT1.Text)<>'/  /' then
         Tb_Min2.SQL.add(' and CM1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if trim(MDT2.Text)<>'/  /' then
         Tb_Min2.SQL.add(' and CM1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

      Tb_Min2.SQL.Add(' and CM2NUMERO in (select unique p1chave from cadp01 where p1status<'+mstatus_excluido+' and p1chave=CM2NUMERO) ');

      mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
      if trim(mcinst2)<>'' then
         Tb_Min2.SQL.Add(' and CM1CODTRA '+mcinst2);
      Tb_min2.SQL.add(fRetonarFiltros);

      if mEmpresas<>'' then
         Tb_Min2.SQL.add(' and '+mEmpresas);
      Tb_Min2.Sql.Add(' order by TRRAZTRA,CM2NUMERO,CM2SEQ');
      end;
       Tb_Min2.sql.savetofile('C:\SGE\sql.txt');
   try
      Tb_Min2.Open;
   except
      Tb_Min2.sql.savetofile(mpastatemp +'sql.txt');
      end;
   if Tb_Min2.eof then
      begin
      fmensagem('Não ha Registro a ser impresso!',0,['0'],0);
      bbImprimir.Enabled:=true;
      exit;
      end;
   testeform := TFrm_MinRel(FindGlobalComponent('form_impres_minrel'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Impres, form_impres_minrel);
   form_impres_minrel.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   form_impres_minrel.mlin:=0;form_impres_minrel.mpag:=0;

   While not Tb_Min2.Eof do
      begin
      if form_impres_minrel.mlin=0 then
         begin
         form_impres_minrel.mpag:=form_impres_minrel.mpag+1;
         form_impres_minrel.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
         form_impres_minrel.RDprint1.ImpF(02,01,insere2('Relacao dos Pedidos por das Minutas. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',form_impres_minrel.mpag),mreduz);
         form_impres_minrel.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
         form_impres_minrel.RDprint1.ImpF(04,01,'Transportadora: '+FormatFloat('0000', Tb_Min2CM1CODTRA.Value)+' - '+Tb_Min2TRRAZTRA.Value,mneg);
         form_impres_minrel.RDprint1.ImpF(05,01,'Pedido      N.F.  Dt.Emissao          Valor Cidade/UF               Dt.Minuta  Hora   Min.  Cliente                                Sit',mreduz);
         form_impres_minrel.mlin:=5;
         mGrupo_Ant:=Tb_Min2TRRAZTRA.Value;
         end;
      form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
      form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2(FormatFloat('0000000',Tb_Min2CM2NUMERO.Value)+'/'+FormatFloat('00',01 {Tb_Min2CM2SEQ.Value}),' ',10)
                                      +iif(Tb_Min2CM2PED_CODEMP.AsFloat>100,'*',' ')
                                      +insere2(FormatFloat('000000',Tb_Min2CM2NUMDOC.Value),' ',6)+' '
                                      +insere2(FormatDateTime(fdt2, Tb_Min2CM2DATANF.Value),' ',10)+' '
                                      +insere(FormatFloat(mcasas, Tb_Min2CM2VALOR.Value),' ',14)+' '
                                      +insere2(Tb_Min2CCIDADE.Value+'-'+Tb_Min2CUF.Value,' ',23)+' '
                                      +insere2(FormatDateTime(fdt2, Tb_Min2CM1DATA.Value),' ',10)+' '
                                      +insere2(FormatDateTime('hh:nn',Tb_Min2CM1INCDTHORA.Value),' ',5)+' '
                                      +insere(Formatfloat('00000', Tb_Min2CM2CODMIN.Value),' ',6)+' '
                                      +insere2(Formatfloat('00000', Tb_Min2CM2CODCLI.Value)
                                              +'-'+Tb_Min2NOMCLI.value,' ',38)
                                      +insere(Tb_min2Situacao.Asstring,' ',05) ,mreduz);
//Tb_Min1CM1CODMIN.Value
      if (Tb_Min2CM2TIPOPED.Value=21) or
         (Tb_Min2CM2TIPOPED.Value=22) or
         (Tb_Min2CM2TIPOPED.Value=2) then
         mTotBri:=mTotBri+Tb_Min2CM2VALOR.Value
      else
         mTotPed:=mTotPed+Tb_Min2CM2VALOR.Value;
      Tb_Min2.Next;
      if Tb_Min2.Eof then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2('Total','.',29)+insere(FormatFloat(mcasas, mTotPed),' ',15)
                                 +iif(mTotBri>0,'Brindes: '+insere2(FormatFloat(mcasas, mTotBri),' ',14),''),mreduz);
         if form_impres_minrel.RDprint1.Setup then form_impres_minrel.RDprint1.Fechar;
         form_impres_minrel.free;
         form_impres_minrel:=nil;
         end
      else if form_impres_minrel.mlin>60 then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,'Continua...',mreduz);
         form_impres_minrel.mlin:=0;
         form_impres_minrel.RDprint1.Novapagina;
         end;
      if mGrupo_ant<>Tb_Min2TRRAZTRA.Value then
         begin
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         mGrupo_Ant:=Tb_Min2TRRAZTRA.Value;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,insere2('Total','.',29)+insere(FormatFloat(mcasas, mTotPed),' ',15)
                                 +iif(mTotBri>0,'Brindes: '+insere2(FormatFloat(mcasas, mTotBri),' ',14),''),mreduz);
         form_impres_minrel.mlin:=form_impres_minrel.mlin+1;
         form_impres_minrel.RDprint1.ImpF(form_impres_minrel.mlin,01,'Continua...',mreduz);
         form_impres_minrel.RDprint1.Novapagina;
         form_impres_minrel.mlin:=0;
         mTotPed:=0;
         mTotBri:=0;
         end;

      end;
   end;


{
Pedido      N.F.  Dt.Emissao          Valor Cidade/UF               Dt.Minuta  Hora  Usr.   Cliente
0268330/01 080805 31/05/2007 ZZZ.ZZZ.ZZ9,99 APARECIDA DE GOIANIA-GO 01/09/2007 14:00 000183 070782-123456789012345679801234567890123456

}

bbImprimir.Enabled:=true;
end;

procedure TFrm_MinRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MinRel.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_MinRel.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(edt_codcli.Text)) then
      begin
      fMensagem('Cliente não cadastrado!',0,['0'],0);
      edt_codcli.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcli.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end;
   end;


end;

procedure TFrm_MinRel.edt_numnfExit(Sender: TObject);
begin
edt_numnf.Text:=fdeixanum2(edt_numnf.Text);
if Trim(edt_numnf.Text)<>'' then
   begin
   lbx_numnf.Items.Add(fdeixanum(edt_numnf.Text)
                                    +' - Nota Fiscal  Numero '+fdeixanum(edt_numnf.text));
   edt_numnf.text := '';
   edt_numnf.SetFocus;
   end;


end;

procedure TFrm_MinRel.edt_chave_pedExit(Sender: TObject);
begin
edt_chave_ped.Text:=fdeixanum2(edt_chave_ped.Text);

if Trim(edt_chave_ped.Text)<>'' then
   begin
   lbx_chave_ped.Items.Add(fdeixanum(edt_chave_ped.Text)
                                    +' - Chave do Pedido '+fdeixanum(edt_chave_ped.text));
   edt_chave_ped.text := '';
   edt_chave_ped.SetFocus;
   end;

end;

procedure TFrm_MinRel.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaTra(0,'frm_MinRel',Key);
   if trim(edt_codcli.Text)<>'' then
      edt_codcliExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_MinRel.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_MinRel.lbx_numnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_numnf.ItemIndex>=0 then
      lbx_numnf.Items.Delete(lbx_numnf.ItemIndex);

end;

procedure TFrm_MinRel.lbx_chave_pedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_chave_ped.ItemIndex>=0 then
      lbx_chave_ped.Items.Delete(lbx_chave_ped.ItemIndex);

end;

end.
