unit S_FABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, jpeg, CheckLst, ComCtrls, S_SelEmp;

type
  TFrm_FABC = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    OMITIR_FOR: TCheckBox;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    RG_ORDEM: TRadioGroup;
    CB_FORCAR: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_ICMSRET: TCheckBox;
    Qr_For: TQuery;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForICMSR: TFloatField;
    Qr_ForTOTVLR: TFloatField;
    Qr_ForTOTQTD: TFloatField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    CB_TIPOPESQ: TComboBox;
    lbl_separado: TLabel;
    CB_SEPARADO: TComboBox;
    CB_AVANCPAG: TCheckBox;
    Qr_ForGRUPO: TStringField;
    Qr_ForCODVEN: TFloatField;
    Qr_Forpercentual: TFloatField;
    Qr_ForCOTAMES: TFloatField;
    lbl_codven: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CB_QUOTAVEN: TComboBox;
    ST_TIPOPFOR: TStaticText;
    CLB_TIPOPFOR: TCheckListBox;
    StaticText1: TStaticText;
    CLB_PRODSERV: TCheckListBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CB_EmiDocClick(Sender: TObject);
    procedure CB_TIPOPESQExit(Sender: TObject);
    procedure CB_SEPARADOClick(Sender: TObject);
    procedure Qr_ForCalcFields(DataSet: TDataSet);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_TIPOPFORClick(Sender: TObject);
    procedure CLB_PRODSERVClick(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fImprimirModelo01(pTipo: Integer): Boolean;
    function fImprimirModelo02(pTipo: Integer): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;

  public
    { Public declarations }
    form_impres_fabc: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;     
  end;

var
    Frm_FABC: TFrm_FABC;
    fabc_Origem    : Integer;
    tipo_ped       : string;
    mtotb,mtotqtd: Real;
    mtotGrub,mtotGruqtd: Real;
    mTotCotaGru,mTotCotaGer: Real;
    mtotg, mperc: Real;
    mGrupo_ant: String;
    mordem: Integer;

implementation

uses S_For;


{$R *.dfm}

procedure TFrm_FABC.bbImprimirClick(Sender: TObject);
var
mperiodo:String;
mCampoGrupo: String;
mCampoOrdem: String;
mNomeView  : String;
mCampoCota: String;
x: Integer;
mUsouVend: boolean;

begin
mUsouVend:=false;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
bbImprimir.Enabled:=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

if fabc_Origem=1 then
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO')
else

   fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');



if fabc_Origem=0 then
   begin
   la_instrucao:=la_instrucao+' and ';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');
   end
else
   begin
   la_instrucao:=la_instrucao+' and ';
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
   end;

if fabc_Origem=0 then
   begin
   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';

{   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','P2CODEMP','PFCODPRO','P2CODPRO');

      end;}

   if CB_SEPARADO.ItemIndex=0 then // bairro
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
      mCampoOrdem:='CUF,CCIDADE,CBAIRRO';
      mCampoGrupo:='CUF  ||'+chr(39)+' '+chr(39)+'|| CCIDADE ||'+chr(39)+' '+chr(39)+'|| CBAIRRO';
      end
   else if CB_SEPARADO.ItemIndex=1 then // cidade
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
      mCampoOrdem:='CUF,CCIDADE';
      mCampoGrupo:='CUF || '+chr(39)+' '+chr(39)+'|| CCIDADE ';
      end
   else if CB_SEPARADO.ItemIndex=2 then // cliente
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
      mCampoOrdem:='CRAZAO,P1CODCLI';
      mCampoGrupo:='TO_CHAR(P1CODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
      end
   else if CB_SEPARADO.ItemIndex=3 then // Estado
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
      mCampoOrdem:='CUF';
      mCampoGrupo:='CUF';
      end
   else if CB_SEPARADO.ItemIndex=4 then // fornecedor
      begin
      mCampoOrdem:='FRAZAO,FCODFOR';
      mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
      end
   else if CB_SEPARADO.ItemIndex=5 then // bairro
      begin
{      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      }
      mCampoOrdem:='PDNOMGRU,PDCODGRU';
      mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
      end
   else if CB_SEPARADO.ItemIndex=6 then // bairro
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}      mCampoOrdem:='PDMARCA';
      mCampoGrupo:='PDMARCA';
      end
   else if CB_SEPARADO.ItemIndex=7 then // bairro
      begin
      mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      end
   else if CB_SEPARADO.ItemIndex=8 then // RAMO
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}      
      mCampoOrdem:='PDNOMRAM,PDCODRAM';
      mCampoGrupo:='TO_CHAR(PDCODRAM) || '+chr(39)+'-'+chr(39)+'|| PDNOMRAM ';
      end
   else if CB_SEPARADO.ItemIndex=9 then // sem separara
      begin
      mCampoOrdem:='';
      mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
      end
   else if CB_SEPARADO.ItemIndex=10 then // RAMO
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      }
      mCampoOrdem:='PDNOMCON,PDCODCON';
      mCampoGrupo:='TO_CHAR(PDCODCON) || '+chr(39)+'-'+chr(39)+'|| PDNOMCON ';
      end
   else if CB_SEPARADO.ItemIndex=11 then // Estado
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      mCampoOrdem:='VNOME,P1CODVEN';
      mCampoGrupo:='TO_CHAR(P1CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
      mUsouVend:=true;
      end;
   if (lbx_codsup.Items.Count>0) and (not mUsouVend) then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      end;
   Qr_For.Close;
   Qr_For.SQl.Clear;
   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   if CB_ICMSRET.Checked then
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,(P2TOTLIQ+P2ICMSR)*-1,P2TOTLIQ+P2ICMSR))'
   else
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ)*-1,(P2TOTLIQ)))';
   mcampo_icmsr :='sum(DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR))';

   Qr_For.SQl.Add('Select FRAZAO AS NOME, FCODFOR AS CODIGO,max(P1CODVEN) AS CODVEN,'+mcampo_vlr+' as totvlr,'
                 +'       '+mcampo_icmsr+' as ICMSR '
                 +'       ,'+mcampo_qtd+' as totqtd '
                 +','+mCampoGrupo+' as GRUPO ');

   if CB_QUOTAVEN.ItemIndex>0 then
     begin
     if CB_QUOTAVEN.ItemIndex=2 then
        mCampoCota:='CFV_COTAQTD'
     else
        mCampoCota:='CFV_COTAVLR';
     mNomeView:=fProcTemp(22);
     end;
   Qr_For.sql.Add(',0 as COTAMES ');
   Qr_For.sql.Add('       from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
     Qr_For.SQL.Add('       and P1EMIDOC=1 ');

//   if RG_TIPOPED.ItemIndex<>16 then
//      Qr_For.SQL.Add(' and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex));


   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1TIPO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_for.SQL.Add(' and P1CODVEN '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then
      Qr_for.SQL.Add(' and VCODSUP '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' THEN
      begin
//      if CB_PRINCIPAL.Checked then
         Qr_For.Sql.Add(' and FCODFOR '+mcinst2)
{      else
         Qr_For.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');}
      end;

   if RG_ORDEM.ItemIndex=0 then
      mcinst3:=' NOME'
   else if RG_ORDEM.ItemIndex=1 then
      mcinst3:=' CODIGO'
   else if RG_ORDEM.ItemIndex=2 then
      mcinst3:=' TOTVLR'
   else if RG_ORDEM.ItemIndex=3 then
      mcinst3:=' TOTVLR DESC'
   else
      mcinst3:='';
   if trim(mCampoOrdem)<>'' then
      begin
      Qr_For.SQL.Add(' Group by '+mCampoOrdem+', FRAZAO,FCODFOR');
      if not CB_QUOTAVEN.ItemIndex>0 then
         Qr_For.SQL.Add(' order by '+mCampoGrupo+iif(mcinst3='','',','+mcinst3));
      end
   else if trim(mcinst3)<>'' then
      begin
      Qr_For.SQL.Add(' Group by  FRAZAO,FCODFOR');
//      if not CB_QUOTAVEN.ItemIndex>0 then
         Qr_For.SQL.Add(' order by '+mcinst3);
      end;

   if CB_QUOTAVEN.ItemIndex>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
      DM1.Query1.SQL.add(Qr_For.SQL.Text);
      DM1.Query1.SQL.add(' union ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if CB_SEPARADO.ItemIndex=11 then // vendedor
         begin
         mCampoOrdem:='VNOME,CFV_CODVEN';
         mCampoGrupo:='TO_CHAR(CFV_CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
         end
      else
         begin
         mCampoOrdem:='';
         mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
         end;
{
      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
}         
      fInnerJoin(0,'CADFOR','FCODEMP','CFV_CODEMP','FCODFOR','CFV_CODFOR');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN','VCODEMP','CFV_CODEMP','VCODVEN','CFV_CODVEN');

      DM1.Query1.SQl.Add('Select FRAZAO AS NOME,  FCODFOR AS CODIGO,'
                 +' max(CFV_CODVEN) AS CODVEN, 0 as totvlr,'
                 +'       0 as ICMSR ,0 as totqtd');
      DM1.Query1.Sql.Add(','+mCampoGrupo+' as GRUPO ');

      DM1.Query1.Sql.Add(',sum('+mCampoCota+') as COTAMES '

                 +' from CADFORVEN_COTAMES'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where  '+mCampoCota+'<>-9999999 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
      if trim(MDT1.Text)<>'/  /' then
         begin
         DM1.query1.SQL.add(' and CFV_ANO>='+FormatDatetime('yyyy', StrToDate(MDT1.Text))
                           +' and CFV_MES>='+FormatDatetime('mm', StrToDate(MDT1.Text)));
         mcinst:=' and ';
         end;
      if trim(MDT2.Text)<>'/  /' then
         begin
         DM1.query1.SQL.add(' and CFV_ANO<='+FormatDatetime('yyyy', StrToDate(MDT2.Text))
                     +' and CFV_MES<='+FormatDatetime('mm', StrToDate(MDT2.Text)));
         end;

      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' then
         Qr_for.SQL.Add(' and CFV_CODFOR '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CFV_CODVEN '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);


      DM1.Query1.SQL.Add(' group by '+mCampoGrupo+', FRAZAO, FCODFOR ');
//     DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.txt');

      try
         DM1.Query1.ExecSQL;
      except
         DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.txt');
         end;
     Qr_For.Close;
     Qr_For.SQl.Clear;
     Qr_For.SQl.Add('Select NOME,CODIGO,CODVEN,GRUPO,sum(totvlr) as totvlr'
                   +',sum(totqtd)  as totqtd'
                   +',sum(ICMSR) as ICMSR ');
     Qr_For.sql.Add(',sum(COTAMES) as COTAMES '
                   +' from '+mNOmeView
                   +' group by GRUPO,NOME,CODIGO,CODVEN '
                   +' order by GRUPO,NOME,CODIGO');
     try
        Qr_For.Open;
     except
        Qr_For.Sql.SavetoFile(mpastatemp + 'SQL.txt');
        end;
     end
   else
      begin
      Qr_For.Sql.SavetoFile(mpastatemp + 'SQL.txt');      
      try
         Qr_For.Open;
      except
         Qr_For.Sql.SavetoFile(mpastatemp + 'SQL.txt');
        end;
      end;
//   Qr_For.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
//   Qr_For.SQL.SaveToFile(mpastatemp + 'SQL.TXT');

//   Qr_For.Open;
   end
else
   begin
   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='PF1DATANF'
   else if CB_TIPOPESQ.ItemIndex=1 then
      pdatapesq:='PF1DATA'
   else
      pdatapesq:='PF1DATAENT';
{   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','P2CODEMP','PFCODPRO','P2CODPRO');
       end;}


   if CB_SEPARADO.ItemIndex=0 then // bairro
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      mCampoOrdem:='FUF,FCIDADE,FBAIRRO';
      mCampoGrupo:='FUF || '+chr(39)+'-'+chr(39)+'|| FCIDADE || '+chr(39)+' '+chr(39)+'|| FBAIRRO';
      end
   else if CB_SEPARADO.ItemIndex=1 then // cidade
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      mCampoOrdem:='FUF,FCIDADE';
      mCampoGrupo:='FUF || '+chr(39)+' '+chr(39)+'|| FCIDADE ';
      end
   else if CB_SEPARADO.ItemIndex=2 then // cliente
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      mCampoOrdem:='FRAZAO,PF1CODFOR';
      mCampoGrupo:='TO_CHAR(PF1CODFOR) || '+chr(39)+' '+chr(39)+'|| FRAZAO';
      end
   else if CB_SEPARADO.ItemIndex=3 then // Estado
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      mCampoOrdem:='FUF';
      mCampoGrupo:='FUF';
      end
   else if CB_SEPARADO.ItemIndex=4 then // fornecedor
      begin
      mCampoOrdem:='FRAZAO,FCODFOR';
      mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
      end
   else if CB_SEPARADO.ItemIndex=5 then // bairro
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}
      mCampoOrdem:='PDNOMGRU,PDCODGRU';
      mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
      end
   else if CB_SEPARADO.ItemIndex=6 then // bairro
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}
      mCampoOrdem:='PDMARCA';
      mCampoGrupo:='PDMARCA';
      end
   else if CB_SEPARADO.ItemIndex=7 then // bairro
      begin
      mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      end
   else if CB_SEPARADO.ItemIndex=8 then // RAMO
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}
      mCampoOrdem:='PDNOMRAM,PDCODRAM';
      mCampoGrupo:='TO_CHAR(PDCODRAM) || '+chr(39)+'-'+chr(39)+'|| PDNOMRAM ';
      end
   else if CB_SEPARADO.ItemIndex=9 then // sem separara
      begin
      mCampoOrdem:='';
      mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
      end
   else if CB_SEPARADO.ItemIndex=10 then // RAMO
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
}
      mCampoOrdem:='PDNOMCON,PDCODCON';
      mCampoGrupo:='TO_CHAR(PDCODCON) || '+chr(39)+'-'+chr(39)+'|| PDNOMCON ';
      end
   else if CB_SEPARADO.ItemIndex=11 then // Estado
      begin
      mCampoOrdem:='';
      mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
      end;


   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
   if CB_ICMSRET.Checked then
      mcampo_vlr:='sum((PF2QTDP*PF2PU+PF2ICMSR)-PF2TOTDES)'
   else
      mcampo_vlr:='sum(PF2QTDP*PF2PU-PF2TOTDES)';

   Qr_For.Close;    
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select FRAZAO AS NOME, PF1CODFOR AS CODIGO, PF1CODFOR AS CODVEN, '+mcampo_vlr+' as totvlr,'
                 +'       sum(PF1ICMSR) as ICMSR '
                 +'       ,sum(PF2QTDP) as totqtd '
                 +','+mCampoGrupo+' as GRUPO ');
   Qr_For.sql.Add(',0 as COTAMES ');
   Qr_For.sql.Add('       from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas

                 +'       '+la_Join
                 +'       where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));

   mcinst2:=fItenstCheckListBox(0,CLB_TIPOPFOR);
   if trim(mcinst2)<>'' then
      begin
      mcinst:='';
      for x:=0 to length(mcinst2) do
         begin
         if mcinst2[x]='2' then
            mcinst:=iif(mcinst='','10',mcinst+'10')
         else
            mcinst:=iif(mcinst='',mcinst2[x],mcinst+mcinst2[x]);
         end;                                            
      mcinst:=trim(mcinst);
      Qr_For.SQL.Add(' and PF1TIPO '+mcinst);
      end;

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' THEN
      begin
//      if CB_PRINCIPAL.Checked then
         Qr_For.Sql.Add(' and FCODFOR '+mcinst2)
{      else
         Qr_For.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');}
      end;

   if RG_ORDEM.ItemIndex=0 then
      mcinst3:=' NOME'
   else if RG_ORDEM.ItemIndex=1 then
      mcinst3:=' CODIGO'
   else if RG_ORDEM.ItemIndex=2 then
      mcinst3:=' TOTVLR'
   else if RG_ORDEM.ItemIndex=3 then
      mcinst3:=' TOTVLR DESC'
   else
      mcinst3:='';


   if trim(mCampoOrdem)<>'' then
      begin
      Qr_For.SQL.Add(' Group by '+mCampoOrdem+', FRAZAO,PF1CODFOR');
      Qr_For.SQL.Add(' order by '+mCampoGrupo+iif(mcinst3='','',','+mcinst3));
      end
   else if trim(mcinst3)<>'' then
      begin
      Qr_For.SQL.Add(' Group by  FRAZAO,PF1CODFOR');
      Qr_For.SQL.Add(' order by '+mcinst3);
      end;
   try
      Qr_For.Open;
   except
      Qr_For.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   end;


// Qr_For.SQL.SaveToFile('C:\SGE\FABC_SQL.TXT');

if Qr_For.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit
   end;
if CB_QUOTAVEN.ItemIndex>0 then
   fImprimirModelo02(0)
else
   fImprimirModelo01(0);
if Trim(mnomeView)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop view '+mnomeView);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;
mNOmeView:='';

bbImprimir.Enabled:=true;
end;

procedure TFrm_FABC.MDT1Exit(Sender: TObject);
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

procedure TFrm_FABC.MDT2Exit(Sender: TObject);
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

end;

procedure TFrm_FABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if fabc_Origem=1 then
   CB_TIPOPESQ.Items.Add('Data da Entrada');

if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));
if fabc_Origem=0 then
   begin
   Frm_FABC.Caption:='ABC das Vendas por Fornecedor';
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   RG_TIPOPED.Checked[0] := TRUE;
   end
else
   begin
   Frm_FABC.Caption:='ABC das Compras por Fornecedor';
   RG_TIPOPED.Visible:=False;
   CLB_TIPOPFOR.Visible:=TRUE;
   ST_TIPOPFOR.Visible :=TRUE;
   CLB_TIPOPFOR.Checked[0]:=True;

   end;

if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=true;
   OMITIR_VEN.Enabled:=true;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

if log_codsup=0 then
   begin
   CODSUP.Enabled    :=true;
   lbx_codsup.Enabled:=true;
   OMITIR_SUP.Enabled:=true;
   end
else
   begin
   CODSUP.Enabled    :=false;
   lbx_codsup.Enabled:=false;
   OMITIR_SUP.Enabled:=false;
   CODSUP.Text       :=FloatToStr(log_codsup);
   CODSUPExit(self);
   end;



end;

procedure TFrm_FABC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_FABC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)='' then
   CODFOR.Text:=''
else
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.TEXT := '';
      CODfor.SetFocus;
      end
   else
      begin
      Lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_FABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_FABC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FABC.CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_FABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_FABC.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_FABC.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_FABC.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_FABC.CB_EmiDocClick(Sender: TObject);
begin
if CB_EmiDoc.Checked then
   CB_TIPOPESQ.ItemIndex:=0
else
   CB_TIPOPESQ.ItemIndex:=1;

end;

procedure TFrm_FABC.CB_TIPOPESQExit(Sender: TObject);
begin
with CB_TIPOPESQ do ItemIndex:=Items.IndexOf(CB_TIPOPESQ.Text);

end;

function tFrm_FAbc.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
      form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',136),mneg);
      end;
   end;
result:=true;
end;


function tFrm_FABC.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',136),mreduz);
if not CB_ICMSRET.Checked then
   begin
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra('Totais sem Impostos.',' ',136),mneg);
   end;
if lbx_codfor.Count>0 then
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
if lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codsup.Count>0 then
   FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;

function TFrm_FABC.fImprimirModelo01(pTipo: Integer): Boolean;
begin
testeform := TFrm_Fabc(FindGlobalComponent('form_impres_fabc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_fabc);

form_impres_fabc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtotb     :=0;
mtotqtd   :=0;
mtotGrub  :=0;
mtotGruqtd:=0;

form_impres_fabc.mpag:=0;
form_impres_fabc.mlin:=0;
mtotg:=0;
While not Qr_For.Eof do
   begin
   mtotg:=mtotg+Qr_ForTOTVLR.Value;;
   Qr_For.Next;
   end;
Qr_For.First;
mGrupo_ant:=Qr_ForGRUPO.AsString;
While not Qr_For.Eof do
   begin
   if form_impres_fabc.mlin=0 then
      begin
      form_impres_fabc.mpag:=form_impres_fabc.mpag+1;
      form_impres_fabc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_fabc.Rdprint1.Impf(01,120,'Pagina: '+FormatFloat('0000',form_impres_fabc.mpag),mnormal);
      if fabc_Origem=0 then
         form_impres_fabc.RDprint1.ImpF(02,01,'Relatorio de Vendas por Fornecedor.',mnormal)
      else
         form_impres_fabc.RDprint1.ImpF(02,01,'Relatorio de Compras por Fornecedor.',mnormal);

      form_impres_fabc.RDprint1.ImpF(02,120,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_fabc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_fabc.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_fabc.mlin:=4;
{      if not CB_ICMSRET.Checked then
         begin
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra('Totais sem Impostos.',' ',80),mneg);
         end;
      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);

      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
}

      if CB_SEPARADO.ItemIndex<>9 then
         begin
         mGrupo_ant:=Qr_ForGRUPO.AsString;
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.impf(form_impres_fabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
         end;
      form_impres_fabc.mlin:=form_impres_fabc.mlin+1;

{
+----+------+------------------------------------+----------+-----------+------+',mnormal);
|Ord.|Código|Nome do Fornecedor                  |Quantidade|Total Valor|   %  |',mnormal);
?123e?123456?123456789012345678901234567890123456?1234567890?12345678901?100.00?
}
      form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+----+------+------------------------------------+----------+-----------+------+',mnormal);

      form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
      form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|Ord.|Código|Nome do Fornecedor                  |Quantidade|Total Valor|   %  |',mnormal);
      end;
   mordem:=mordem+1;
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   try
      mperc:=((Qr_ForTOTVLR.Value)*100)/mtotg;
   except
      mperc:=0;
      end;
   form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|'+insere(IntToStr(mordem),'0',4)
                           +'|'+insere(Qr_ForCODIGO.AsString,'0',6)
                           +'|'+insere2(Qr_ForNOME.Value,' ',36)+'|'
                           +insere(FormatFloat(mcasqtd, Qr_ForTOTQTD.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTVLR.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'|',mnormal);

   mtotb :=mtotb +Qr_ForTOTVLR.Value;
   mtotqtd:=mtotqtd+Qr_ForTOTQTD.Value;

   mtotGrub :=mtotGrub +Qr_ForTOTVLR.Value;
   mtotGruqtd:=mtotGruqtd+Qr_ForTOTQTD.Value;

   Qr_For.Next;
   if not Qr_For.Eof then
      begin
      if (CB_SEPARADO.ItemIndex<>9) and (mGrupo_ant<>Qr_ForGRUPO.AsString) then
         begin
         try
            mperc:=((mtotGrub)*100)/mtotg;
         except
            mperc:=0;
            end;

         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|    '
                           +'|      '
                           +'|'+insere2('Total','.',36)+'|'
                           +insere(FormatFloat(mcasqtd, mtotGruqtd),' ',10)+'|'
                           +insere(FormatFloat(mcasas, mtotGrub),' ',11)+'|'
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'|',mnormal);
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         mtotGruqtd:=0;
         mtotGrub  :=0;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+-----------+------------------------------------+----------+-----------+------+',mnormal);
         if (CB_AVANCPAG.Checked) or (form_impres_fabc.mlin>57) then
            begin
            form_impres_fabc.mlin:=0;
            form_impres_fabc.RDprint1.Novapagina;
            end
         else
            begin
            mGrupo_ant:=Qr_ForGRUPO.AsString;
            form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
            form_impres_fabc.RDprint1.impf(form_impres_fabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
            end;
         end
      else if form_impres_fabc.mlin>58 then
         begin
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+Continua...+------------------------------------+----------+-----------+------+',mnormal);
         form_impres_fabc.RDprint1.Novapagina;
         form_impres_fabc.mlin:=0;
         end;
      end;
   end;

if (CB_SEPARADO.ItemIndex<>9) and ((mtotGruqtd<>0) or (mtotGrub<>0)) then
   begin
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   try
      mperc:=((mtotGrub)*100)/mtotg;
   except
      mperc:=0;
      end;

   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|    '
                     +'|      '
                     +'|'+insere2('Total','.',36)+'|'
                     +insere(FormatFloat(mcasqtd, mtotGruqtd),' ',10)+'|'
                     +insere(FormatFloat(mcasas, mtotGrub),' ',11)+'|'
                     +insere(FormatFloat(mcasas, mperc),' ',6)+'|',mnormal);
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   mtotGruqtd:=0;
   mtotGrub  :=0;
   end;

form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|    '
                  +'|      '
                  +'|'+insere2('Total Geral','.',36)+'|'
                  +insere(FormatFloat(mcasqtd, mtotqtd),' ',10)+'|'
                  +insere(FormatFloat(mcasas, mtotb),' ',11)+'|'
                  +insere('100.00',' ',6)+'|',mnormal);
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
mtotqtd:=0;
mtotb  :=0;

if Qr_For.Eof then
  begin
  form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
  form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Insere2('-','-',136),mreduz);
  fImprimirCriterito(136);
  if form_impres_fabc.RDprint1.Setup then
    form_impres_fabc.RDprint1.Fechar;
  form_impres_fabc.free;
  form_impres_fabc:=nil;
  end;

{if form_impres_fabc.RDprint1.Setup then form_impres_fabc.RDprint1.Fechar;
form_impres_fabc.free;
form_impres_fabc:=nil;}
result:=true;
end;
procedure TFrm_FABC.CB_SEPARADOClick(Sender: TObject);
begin
if CB_SEPARADO.ItemIndex=11 then
   CB_QUOTAVEN.Visible:=true
else
   begin
   CB_QUOTAVEN.Visible:=false;
   CB_QUOTAVEN.ItemIndex:=0;
   end;

end;


function TFrm_FABC.fImprimirModelo02(pTipo: Integer): Boolean;
begin
mTotCotaGru:=0;
mTotCotaGer:=0;


testeform := TFrm_Fabc(FindGlobalComponent('form_impres_fabc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_fabc);

form_impres_fabc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtotb     :=0;
mtotqtd   :=0;
mtotGrub  :=0;
mtotGruqtd:=0;

form_impres_fabc.mpag:=0;
form_impres_fabc.mlin:=0;
mtotg:=0;
Qr_For.First;
mGrupo_ant:=Qr_ForGRUPO.AsString;

While not Qr_For.Eof do
   begin
   if form_impres_fabc.mlin=0 then
      begin
      form_impres_fabc.mpag:=form_impres_fabc.mpag+1;
      form_impres_fabc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_fabc.Rdprint1.Impf(01,120,'Pagina: '+FormatFloat('0000',form_impres_fabc.mpag),mnormal);
      if fabc_Origem=0 then
         form_impres_fabc.RDprint1.ImpF(02,01,'Relatorio de Vendas por Fornecedor.',mnormal)
      else
         form_impres_fabc.RDprint1.ImpF(02,01,'Relatorio de Compras por Fornecedor.',mnormal);

      form_impres_fabc.RDprint1.ImpF(02,120,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_fabc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_fabc.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_fabc.mlin:=4;
      if not CB_ICMSRET.Checked then
         begin
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,Centra('Totais sem Impostos.',' ',80),mneg);
         end;
      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);

      if CB_SEPARADO.ItemIndex<>9 then
         begin
         mGrupo_ant:=Qr_ForGRUPO.AsString;
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.impf(form_impres_fabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
         end;
      form_impres_fabc.mlin:=form_impres_fabc.mlin+1;

{

+-----------+----------------------------------------+----------+-----------+-----------+------+',mnormal);
|   Código  |Nome do Fornecedor                      |Quantidade|Total Valor| Cota Valor|   %  |',mnormal);
|12345678901|1234567890123456789012345678901234567890|1234567890|12345678901|12345678901|100.00|

+----+------+------------------------------------+----------+-----------+------+',mnormal);
|Ord.|Código|Nome do Fornecedor                  |Quantidade|Total Valor|   %  |',mnormal);
?123e?123456?123456789012345678901234567890123456?1234567890?12345678901?100.00?
}
      form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+-----------+----------------------------------------+----------+-----------+-----------+------+',m12ccp);
      form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
      form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|   Código  |Nome do Fornecedor                      |Quantidade|Total Valor|'
                      +centra((iif(CB_QUOTAVEN.ItemIndex=2,'Cota Qtd','Cota Valores')),' ',12)+'|   %  |',m12ccp);
      end;
   mordem:=mordem+1;
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
{
   try
      mperc:=((Qr_ForTOTVLR.Value)*100)/mtotg;
   except
      mperc:=0;
      end;
}
   form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|'+insere(Qr_ForCODIGO.AsString,'0',11)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasqtd, Qr_ForTOTQTD.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTVLR.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Qr_Forcotames.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Qr_Forpercentual.Value),' ',6)+'|',m12ccp);

   mtotb :=mtotb +Qr_ForTOTVLR.Value;
   mtotqtd:=mtotqtd+Qr_ForTOTQTD.Value;
   mTotCotaGru:=mTotCotaGru+Qr_Forcotames.Value;

   mTotCotaGer:=mTotCotaGer+Qr_Forcotames.Value;

   mtotGrub :=mtotGrub +Qr_ForTOTVLR.Value;
   mtotGruqtd:=mtotGruqtd+Qr_ForTOTQTD.Value;

   Qr_For.Next;
   if not Qr_For.Eof then
      begin
      if (CB_SEPARADO.ItemIndex<>9) and (mGrupo_ant<>Qr_ForGRUPO.AsString) then
         begin
         try
          mperc:=(mTotCotaGru*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotGruQtd,mTotGrub)
         except
            mperc:=0;
            end;

         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|'+insere(' ',' ',11)
                           +'|'+insere2('Total do Grupo','.',40)+'|'
                           +insere(FormatFloat(mcasqtd, mtotGruqtd),' ',10)+'|'
                           +insere(FormatFloat(mcasas, mtotGrub),' ',11)+'|'
                           +insere(FormatFloat(mcasas, mTotCotaGru),' ',11)+'|'
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'|',m12ccp);

{
+-----------+----------------------------------------+----------+-----------+-----------+------+',mnormal);
|   Código  |Nome do Fornecedor                      |Quantidade|Total Valor| Cota Valor|   %  |',mnormal);
|12345678901|1234567890123456789012345678901234567890|1234567890|12345678901|12345678901|100.00|
}
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         mtotGruqtd :=0;
         mtotGrub   :=0;
         mTotCotaGru:=0;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+-----------+----------------------------------------+----------+-----------+-----------+------+',m12ccp);
         if (CB_AVANCPAG.Checked) or (form_impres_fabc.mlin>57) then
            begin
            form_impres_fabc.mlin:=0;
            form_impres_fabc.RDprint1.Novapagina;
            end
         else
            begin
            mGrupo_ant:=Qr_ForGRUPO.AsString;
            form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
            form_impres_fabc.RDprint1.impf(form_impres_fabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
            end;
         end
      else if form_impres_fabc.mlin>58 then
         begin
         form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
         form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'+Continua...+----------------------------------------+----------+-----------+-----------+------+',m12ccp);
         form_impres_fabc.RDprint1.Novapagina;
         form_impres_fabc.mlin:=0;
         end;
      end;
   end;

if (CB_SEPARADO.ItemIndex<>9) and ((mtotGruqtd<>0) or (mtotGrub<>0)) then
   begin
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   try
      mperc:=(mTotCotaGru*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotGruQtd,mTotGrub)
   except
      mperc:=0;
      end;


   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|'+insere(' ',' ',11)
                     +'|'+insere2('Total do Grupo','.',40)+'|'
                     +insere(FormatFloat(mcasqtd, mtotGruqtd),' ',10)+'|'
                     +insere(FormatFloat(mcasas, mtotGrub),' ',11)+'|'
                     +insere(FormatFloat(mcasas, mTotCotaGru),' ',11)+'|'
                     +insere(FormatFloat(mcasas, mperc),' ',6)+'|',m12ccp);
   form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
   mtotGruqtd:=0;
   mtotGrub  :=0;
   end;

form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
mperc:=0;
if (mTotCotaGer<>0) and (mtotg<>0) then
   begin
   try
      mperc:=(mTotCotaGer*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotQtd,mTotG)
   except
      mperc:=0;
      end;
   end;

form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
form_impres_fabc.RDprint1.ImpF(form_impres_fabc.mlin,01,'|'+insere(' ',' ',11)
                  +'|'+insere2('Total Geral','.',40)+'|'
                  +insere(FormatFloat(mcasqtd, mtotqtd),' ',10)+'|'
                  +insere(FormatFloat(mcasas, mtotb),' ',11)+'|'
                  +insere(FormatFloat(mcasas, mTotCotaGer),' ',11)+'|'
                  +insere(FormatFloat(mcasas, mperc),' ',6)+'|',m12ccp);
form_impres_fabc.mlin:=form_impres_fabc.mlin+1;
mtotqtd:=0;
mtotb  :=0;

if form_impres_fabc.RDprint1.Setup then form_impres_fabc.RDprint1.Fechar;
form_impres_fabc.free;
form_impres_fabc:=nil;
result:=true;
end;

procedure TFrm_FABC.Qr_ForCalcFields(DataSet: TDataSet);
begin
if (Qr_Forcotames.AsFloat<>0) and (Qr_ForTOTVLR.AsFloat<>0) then
   Qr_Forpercentual.Value:=(iif(CB_QUOTAVEN.ItemIndex=2,Qr_ForTOTQTD.Value,Qr_ForTOTVLR.Value)*100)/Qr_Forcotames.AsFloat
else
   Qr_Forpercentual.Value:=0;


end;

procedure TFrm_FABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

procedure TFrm_FABC.CODVENKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_FABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_FABC.CLB_TIPOPFORClick(Sender: TObject);
begin
CLB_TIPOPFOR:=Valida_CheckList(CLB_TIPOPFOR);

end;

procedure TFrm_FABC.CLB_PRODSERVClick(Sender: TObject);
begin
CLB_PRODSERV:=Valida_CheckList(CLB_PRODSERV);
end;

procedure TFrm_FABC.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      fmensagem('Supervisor não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);
      lbx_codsup.ItemIndex:=lbx_codsup.Items.Count-1;

      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_FABC.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_proabc',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_FABC.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_FABC.FormKeyDown(Sender: TObject; var Key: Word;
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
