unit S_Extp3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, func, db, dbtables, S_DM1, Grids,
  DBGrids,S_Pro,S_DM2,lerarq,S_Impres,RdPrint,func2, ComCtrls, RxMemDS,
  jpeg, S_SelEmp, Menus, ADODB, DBCtrls, RLReport,s_lerarq_geral;

type
  TFrm_Extp3 = class(TForm)
    PageControl1: TPageControl;
    TsIndividual: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CODPRO2: TEdit;
    NOMPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    RG_TIPO: TRadioGroup;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    COMPRAS: TStaticText;
    VENDASC: TStaticText;
    AJUSTE: TStaticText;
    DEVF: TStaticText;
    DEVA: TStaticText;
    ESTANT: TStaticText;
    ENTOP: TStaticText;
    SAIOP: TStaticText;
    Panel1: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    bbImprimir: TBitBtn;
    BitBtn2: TBitBtn;
    bbAtualizar: TBitBtn;
    SALDO: TStaticText;
    SALDO_CAD: TStaticText;
    Src_ExtProd: TDataSource;
    Query_ExtProd: TADOQuery;
    Query_ExtProdEXT_CODEMP: TFloatField;
    Query_ExtProdEXT_CHAVE: TFloatField;
    Query_ExtProdEXT_CHAVE_ANO: TFloatField;
    Query_ExtProdEXT_CODPRO: TFloatField;
    Query_ExtProdEXT_QTD: TFloatField;
    Query_ExtProdEXT_SALDO_ANT: TFloatField;
    Query_ExtProdEXT_DATHOR: TDateTimeField;
    Query_ExtProdEXT_NOME_COMP: TStringField;
    Query_ExtProdEXT_CODUSR: TFloatField;
    Query_ExtProdEXT_ORIGEM: TStringField;
    Query_ExtProdEXT_TIPOMOV: TStringField;
    Query_ExtProdPDNOME: TStringField;
    Query_ExtProdPDUND: TStringField;
    Query_ExtProdSALDO_ATU: TBCDField;
    Query_ExtProdMOVIMENTO: TStringField;
    tsDivergencias: TTabSheet;
    Panel3: TPanel;
    Query_div: TQuery;
    Label15: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label16: TLabel;
    edt_datini: TMaskEdit;
    Label17: TLabel;
    edt_datfin: TMaskEdit;
    Query_divSALDO_INI: TFloatField;
    Query_divSALDO_FINAL: TFloatField;
    Query_divSALDO_CALC: TFloatField;
    Query_divEXT_QTD: TFloatField;
    Query_divEXT_CODPRO: TFloatField;
    Query_divPDNOME: TStringField;
    Query_divPDUND: TStringField;
    bbDivAtu: TBitBtn;
    bbDivSair: TBitBtn;
    src_div: TDataSource;
    DBGrid_div: TDBGrid;
    rg_tipoext: TRadioGroup;
    Query_divQTD_ENT: TFloatField;
    Query_divQTD_SAI: TFloatField;
    rg_divergencias: TRadioGroup;
    lbl_qtdreg: TLabel;
    tsDetDivergencias: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    DBEdit4: TDBEdit;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    StaticText6: TStaticText;
    DBEdit6: TDBEdit;
    StaticText7: TStaticText;
    DBEdit7: TDBEdit;
    StaticText8: TStaticText;
    DBEdit8: TDBEdit;
    gb_extratos: TGroupBox;
    GroupBox1: TGroupBox;
    qr_cadest_ext: TQuery;
    src_cadest_ext: TDataSource;
    qr_cadest_mov: TQuery;
    src_cadest_mov: TDataSource;
    DBGrid_cadest_ext: TDBGrid;
    DBGrid_cadest_mov: TDBGrid;
    qr_cadest_extEXT_CODPRO: TFloatField;
    qr_cadest_extQTD_SAI: TFloatField;
    qr_cadest_extQTD_ENT: TFloatField;
    qr_cadest_extEXT_DATHOR: TDateTimeField;
    qr_cadest_extEXT_CODUSR: TFloatField;
    qr_cadest_extEXT_ORIGEM: TStringField;
    qr_cadest_extNOMUSR: TStringField;
    qr_cadest_extEXT_SALDO_ANT: TFloatField;
    qr_cadest_extSALDO_ATU: TFloatField;
    DBText1: TDBText;
    DBText2: TDBText;
    qr_cadest_movMCECODPRO: TFloatField;
    qr_cadest_movQTD_SAI: TFloatField;
    qr_cadest_movQTD_ENT: TFloatField;
    qr_cadest_movMCEDATHOR: TDateTimeField;
    qr_cadest_movMCECOMPEVE: TStringField;
    qr_cadest_movMCESALDO_ANT: TFloatField;
    qr_cadest_movMCESALDO_ATU: TFloatField;
    Label18: TLabel;
    cb_estoque: TComboBox;
    Label19: TLabel;
    cb_estoque2: TComboBox;
    Button1: TButton;
    tsImpressao: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    rl_codigo: TRLAngleLabel;
    rl_nome: TRLAngleLabel;
    rl_EstPrev: TRLAngleLabel;
    rl_EstReal: TRLAngleLabel;
    rl_Div: TRLAngleLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Query_divDIF: TFloatField;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText6: TRLDBText;
    procedure bbImprimirClick(Sender: TObject);
    procedure CODPRO2Exit(Sender: TObject);
    procedure CODPRO2KeyPress(Sender: TObject; var Key: Char);
    procedure MDT2Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPRO2Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure bbDivAtuClick(Sender: TObject);
    procedure bbDivSairClick(Sender: TObject);
    procedure DBGrid_divDblClick(Sender: TObject);
    procedure tsDetDivergenciasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query_divCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fLerDetalhes(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_extp3 : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Extp3: TFrm_Extp3;
  msaldoant,msaldo, mcompras, mvendasc, mdevcli, mdevf, majue, majus, mentop, msaiop:Real;
  mdesc: String;
  mtabtemp: String;
  mtabtemp02: String;
  mCasasDec: String;
  mCasasSaldo: Integer;



function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;

implementation

uses  func_excecoes, Math, S_DM1_ADO;

{$R *.DFM}

procedure TFrm_Extp3.bbImprimirClick(Sender: TObject);
var
mlin,mpag: Integer;
begin
if Query_ExtProd.IsEmpty then
   begin
   FMensagem('Click primeiro em atualizar!',0,['0'],0);
   exit;
   end;
if Query_ExtProd.RecordCount<1 then
   begin
   FMensagem('Nada a ser impresso!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Extp3(FindGlobalComponent('form_impres_extp3'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_extp3);

form_impres_extp3.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Query_ExtProd.First;
mlin:=0;
mpag:=0;

if form_impres_extp3.RDprint1.Setup then form_impres_extp3.RDprint1.Fechar;
form_impres_extp3.free;
form_impres_extp3:=nil;

end;

procedure TFrm_Extp3.CODPRO2Exit(Sender: TObject);
begin
if BitBtn2.Focused then
   exit;
if not flcadpro(1,0,0,Trim(CODPRO2.Text)) then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   CODPRO2.SetFocus;
   end
else if trim(codpro2.Text)='' then
  begin
  NOMPRO.Text:='***Nenhum Produto Selecionado!!!';
  end
else
   begin
   NOMPRO.Text:=Trim(DM1.Tb_ProPDNOME.Value);
   end;

end;

procedure TFrm_Extp3.CODPRO2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO2.Text:=fChamaPro(0,'Frm_extp3',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Extp3.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_Extp3.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Extp3.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Extp3.bbAtualizarClick(Sender: TObject);
begin

if ValFloat(CODPRO2.Text)=0 then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   CODPRO2.SetFocus;
   exit;
   end;

if not flcadpro(1,0,0,Trim(CODPRO2.Text)) then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   CODPRO2.SetFocus;
   exit;
   end
else
   begin
   if Log_TipoLote=2 then
      begin
      if RG_TIPO.ItemIndex=3 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDT.Value)
      else if RG_TIPO.ItemIndex=2 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDR.Value)
      else if RG_TIPO.ItemIndex=1 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDC.Value)
      else
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTD.Value);
      end
   else
      begin
      if RG_TIPO.ItemIndex=3 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_Proestoquet.Value)
      else if RG_TIPO.ItemIndex=2 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_Proestoquer.Value)
      else if RG_TIPO.ItemIndex=1 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_Proestoquec.Value)
      else
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_Proestoque.Value);
      end;

   end;
msaldo:=Valfloat(SALDO_CAD.Caption);
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;

msaldoant:=0;
//if trim(MDT1.Text)<>'/  /' then
//   msaldoAnt:=fEstoqueAnterior(StrtoDate(MDT1.Text)-1,RG_TIPO.ItemIndex,ValFloat(CODPRO2.Text),GRADE.Text);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','EXT_CODEMP' ,'PDCODPRO' ,'EXT_CODPRO');

mdesc:=insere2('Vendas',' ',50);
Query_ExtProdEXT_QTD.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);
Query_ExtProd.Close;
Query_ExtProd.SQL.Clear;
Query_ExtProd.SQL.Add('Select EXT_FILIAL, EXT_CODEMP,EXT_CHAVE,EXT_CHAVE_ANO,EXT_CODPRO'
                     +',EXT_DATHOR,EXT_NOME_COMP,EXT_CODUSR,EXT_ORIGEM'
                     +',EXT_TIPOMOV,PDNOME,PDUND'
                     +',EXT_SALDO_ANT,EXT_QTD,'
                     +'EXT_SALDO_ANT +'
                     +'DECODE(SUBSTR(EXT_TIPOMOV,1,1),'+QuotedStr('E')+',EXT_QTD,EXT_QTD*-1) AS SALDO_ATU,'
                     +'case when EXT_TIPOMOV='+QuotedStr('EN')+' then '+QuotedStr('Entrada Normal ')
                     +'     when EXT_TIPOMOV='+QuotedStr('EC')+' then '+QuotedStr('Entrada Consignado ')
                     +'     when EXT_TIPOMOV='+QuotedStr('ET')+' then '+QuotedStr('Entrada Terceiros ')
                     +'     when EXT_TIPOMOV='+QuotedStr('ER')+' then '+QuotedStr('Entrada Revenda ' )
                     +'     when EXT_TIPOMOV='+QuotedStr('SN')+' then '+QuotedStr('Saida Normal ' )
                     +'     when EXT_TIPOMOV='+QuotedStr('SC')+' then '+QuotedStr('Saida Consignado ')
                     +'     when EXT_TIPOMOV='+QuotedStr('ST')+' then '+QuotedStr('Saida Terceiros ' )
                     +'     when EXT_TIPOMOV='+QuotedStr('SR')+' then '+QuotedStr('Saida Revenda ' )
                     +' else '+QuotedStr('desconhecido')+' end as movimento '
                     +'   from CADEST_EXT '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and '));

Query_ExtProd.SQL.Add(' EXT_CODPRO=:CODPRO');
Query_ExtProd.Parameters.ParamByName('CODPRO').Value:=fsonumero(CODPRO2.Text);

Query_ExtProd.SQL.Add(' and (EXT_FILIAL=:FILIAL or EXT_FILIAL is null)');
Query_ExtProd.Parameters.parambyName('FILIAL').Value:=fRetonaCodigoFilial(CB_ESTOQUE.Text);

if Trim(MDT1.Text)<>'/  /' then
   begin
   Query_ExtProd.SQL.Add(' and  EXT_DATHOR>=:DATINI');
   Query_ExtProd.Parameters.ParamByName('DATINI').Value:=StrtoDate(MDT1.Text);
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Query_ExtProd.SQL.Add(' and EXT_DATHOR<=:DATFIN');
   Query_ExtProd.Parameters.ParamByName('DATFIN').Value:=StrtoDate(MDT2.Text+' 23:59:59');
   end;

   
Query_ExtProd.SQL.Add(' order by EXT_DATHOR,ROWNUM DESC');

Try
  Query_ExtProd.Open;
except
  end;
//Query_ExtProd.SQL.SaveToFile('c:\sql03.txt');


end;

procedure TFrm_Extp3.FormCreate(Sender: TObject);
var
  x: Integer;
begin
lbl_qtdreg.Caption:='';
tsDivergencias.TabVisible:=false;
tsDetDivergencias.TabVisible:=false;
mCasasDec:=mcasind;
mCasasSaldo:=0;
for x:=1 to length(mcasas) do
  begin
  if Copy(mcasas,x,1)='0' then
    mCasasSaldo:=mCasasSaldo+1;
  end;
if mCasasSaldo>0 then
  mCasasSaldo:=mCasasSaldo-1;
Query_ExtProdEXT_SALDO_ANT.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);
Query_ExtProdEXT_QTD.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Extp3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mdiferenca: Real;
mcampolgc: String;
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
      end
   end;
if (codusr=1111) and (KEY=INTEGER('O')) and (EstaoPressionadas([VK_CONTROL,VK_MENU])) then
   begin
   if tsDivergencias.TabVisible=true then
      tsDivergencias.TabVisible:=false
   else
      tsDivergencias.TabVisible:=true;
   end;

end;

procedure TFrm_Extp3.CODPRO2Enter(Sender: TObject);
begin
Query_ExtProd.Close;
end;

procedure TFrm_Extp3.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('drop table '+mtabtemp);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,745,'Frm_extp3',mtabtemp);
      end;
   end;

if Trim(mtabtemp02)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('drop table '+mtabtemp02);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,745,'Frm_extp3',mtabtemp02);
      end;
   end;
end;





procedure TFrm_Extp3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;


function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;
var
mCampoEstoque: String;
x: Integer;
mAchou: boolean;
mMes_ant: Integer;
begin

if ValInt(copy(mpseg,4,2))=2 then
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEGD where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));
   if pgrade='' then
      DM1.Query1.SQL.add(' and CED_GRADE is null ')
   else
      DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEGD where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));

      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEGD ');
            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            if pgrade='' then
               DM1.Query1.SQL.add(' and CED_GRADE is null ')
            else
               DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEGD ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end
else
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEDIA where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEDIA ');

            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEDIA ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end;
end;

Function fLerMovimento(pTipo,pTipoExt: Integer; pLbx_Codpro,pLbx_Codfor,pLbx_Codgru,pLbx_Codram,pLbx_codcon,pLbx_CodTip,pLbx_TipPro: TListBox): Boolean;
begin
{
pTipo=0 Individual Extrato
      1 Geral Comparativo de Estoque
}

result:=true;
end;
function tFrm_Extp3.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_extp3.mlin:=form_impres_extp3.mlin+1;
      form_impres_extp3.RDprint1.ImpF(form_impres_extp3.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_Extp3.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Odd(Query_ExtProd.RecNo) then
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
       begin
       DBGrid1.Canvas.Brush.Color := clActiveCaption;
       DBGrid1.Canvas.Font.Color  := clWindow;
       end
    else
       begin
       DBGrid1.Canvas.Font.Color  := clBlack;
       DBGrid1.Canvas.Brush.Color := clMoneyGreen;
       end;
   end
else
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
      begin
      DBGrid1.Canvas.Brush.Color := clActiveCaption;
      DBGrid1.Canvas.Font.Color  := clWindow;
      end
   else
      begin
      DBGrid1.Canvas.Font.Color  := clBlack;
      DBGrid1.Canvas.Brush.Color := clInfoBk;
      end;
   end;
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

procedure TFrm_Extp3.CODPROExit(Sender: TObject);
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

procedure TFrm_Extp3.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Lpreco1',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_lpreco1',key);
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                 +' - '+DM1.Tb_ProPDNOME.Value);
      codpro.text := '';
      codpro.setfocus;
      key:=#0;
      end;
   end;

end;

procedure TFrm_Extp3.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Extp3.edt_datiniExit(Sender: TObject);
begin
if Trim(edt_datini.Text)<>'/  /' then
   begin
   Try
      edt_datini.Text:=FormatDateTime(fdt2,StrToDate(edt_datini.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      edt_datini.SetFocus;
      end;
   end;

end;

procedure TFrm_Extp3.edt_datfinExit(Sender: TObject);
begin
if Trim(edt_datfin.Text)<>'/  /' then
   begin
   Try
      edt_datfin.Text:=FormatDateTime(fdt2,StrToDate(edt_datfin.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      edt_datfin.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Extp3.bbDivAtuClick(Sender: TObject);
var
mSaida: String;
mEntrada: String;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','EXT_CODEMP' ,'PDCODPRO' ,'EXT_CODPRO');

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;

if rg_tipoext.ItemIndex=3 then
   begin
   mSaida:='ST';
   mEntrada:='ET';
   end
else if rg_tipoext.ItemIndex=2 then
   begin
   mSaida:='SR';
   mEntrada:='ER';
   end
else if rg_tipoext.ItemIndex=1 then
   begin
   mSaida:='SC';
   mEntrada:='EC';
   end
else
   begin
   mSaida:='SN';
   mEntrada:='EN';
   end;


Query_div.Close;
Query_div.SQL.clear;
Query_div.SQL.add('SELECT SUM(SALDO_INI) AS SALDO_INI '
                 +',SUM(SALDO_FINAL) AS SALDO_FINAL '
                 +',SUM(SALDO_INI+EXT_QTD) AS SALDO_CALC '
                 +',SUM(EXT_QTD) AS EXT_QTD '
                 +',SUM(QTD_SAI) AS QTD_SAI '
                 +',SUM(QTD_ENT) AS QTD_ENT '
                 +',EXT_CODPRO '
                 +',PDNOME,PDUND '
                 +' FROM '
                 +' ( '
                 +' SELECT decode (lag(EXT_CODPRO,1) '
                 +' over (ORDER BY EXT_CODPRO,ext_dathor,ext_chave),EXT_CODPRO,0,EXT_SALDO_ANT) SALDO_INI, '
                 +' decode (lead(EXT_CODPRO,1) '
                 +' over (ORDER BY EXT_CODPRO,ext_dathor,ext_chave),EXT_CODPRO,0,EXT_SALDO_ANT+EXT_QTD) SALDO_FINAL, '
                 +'  EXT_CODPRO,EXT_QTD,'
                 +'QTD_ENT,QTD_SAI, EXT_SALDO_ANT,PDNOME,PDUND from '
                 +' (SELECT EXT_CODPRO,EXT_SALDO_ANT,EXT_DATHOR,EXT_CHAVE, '
                 +' DECODE(EXT_TIPOMOV,'+QuotedStr(mSaida)+',EXT_QTD*-1,EXT_QTD) AS '
                 +' EXT_QTD'
                 +',DECODE(EXT_TIPOMOV,'+QuotedStr(mSaida)+',EXT_QTD,0) AS QTD_SAI'
                 +',DECODE(EXT_TIPOMOV,'+QuotedStr(mSaida)+',0,EXT_QTD) AS QTD_ENT'
                 +',PDNOME,PDUND FROM CADEST_EXT'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' (EXT_TIPOMOV='+QuotedStr(mEntrada)+' or EXT_TIPOMOV='+QuotedStr(mSaida)+')');

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Query_div.SQL.Add(' and  PDCODPRO '+mcinst2);


if Trim(edt_datini.Text)<>'/  /' then
   begin
   Query_div.SQL.Add(' and  EXT_DATHOR>=:DATINI');
   Query_div.ParamByName('DATINI').Value:=StrtoDate(edt_datini.Text);
   end;
if Trim(edt_datfin.Text)<>'/  /' then
   begin
   Query_div.SQL.Add(' and EXT_DATHOR<=:DATFIN');
   Query_div.ParamByName('DATFIN').Value:=StrtoDate(edt_datfin.Text+' 23:59:59');
   end;

Query_Div.SQL.Add(' and (EXT_FILIAL=:FILIAL or EXT_FILIAL is null)');
Query_Div.parambyName('FILIAL').Asinteger:=fRetonaCodigoFilial(CB_ESTOQUE2.Text);

Query_div.SQL.Add(' ORDER BY EXT_CODPRO,EXT_DATHOR,ROWNUM DESC '
                 +' ) tab01 '
                 +' ) TAB02 ');
if rg_divergencias.ItemIndex=0 then
   Query_div.SQL.Add(' HAVING '
                 +' (SUM(SALDO_FINAL)<>SUM(SALDO_INI+EXT_QTD)) ')
else if rg_divergencias.ItemIndex=1 then
   Query_div.SQL.Add(' HAVING '
                 +' (SUM(SALDO_FINAL)=SUM(SALDO_INI+EXT_QTD)) ');


Query_div.SQL.Add(' GROUP BY EXT_CODPRO,PDNOME,PDUND ');
try
   Query_div.Open;
except
   ex_erroSql_Novo(Query_div,341,'frm_stru','CADEST_EXT');

   end;
lbl_qtdreg.Caption:='Quantidade de Registros Selecionados '+IntToStr(Query_div.RecordCount);


end;

procedure TFrm_Extp3.bbDivSairClick(Sender: TObject);
begin
close;
end;
function TFrm_Extp3.fLerDetalhes(pTipo: Integer): Boolean;
var
mSaida,mEntrada: String;
begin


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADUSR' ,'CODEMP','EXT_CODEMP' ,'CODUSR' ,'EXT_CODUSR');


if rg_tipoext.ItemIndex=3 then
   begin
   mSaida:='ST';
   mEntrada:='ET';
   end
else if rg_tipoext.ItemIndex=2 then
   begin
   mSaida:='SR';
   mEntrada:='ER';
   end
else if rg_tipoext.ItemIndex=1 then
   begin
   mSaida:='SC';
   mEntrada:='EC';
   end
else
   begin
   mSaida:='SN';
   mEntrada:='EN';
   end;


qr_cadest_ext.Close;
qr_cadest_ext.SQL.Clear;
qr_cadest_ext.SQL.Add('select ext_codpro,decode(EXT_TIPOMOV,'+QuotedStr(mSaida)+',EXT_QTD,0) as QTD_SAI '
                     +' ,decode(EXT_TIPOMOV,'+QuotedStr(mSaida)+',0,EXT_QTD) as QTD_ENT '
                     +' ,EXT_DATHOR,EXT_CODUSR,EXT_ORIGEM,NOMUSR '
                     +' ,EXT_SALDO_ANT,EXT_SALDO_ANT+decode(EXT_TIPOMOV,'+QuotedStr(mSaida)+',EXT_QTD*-1,EXT_QTD) as SALDO_ATU '
                     +' from CADEST_EXT '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' (EXT_TIPOMOV='+QuotedStr(mEntrada)+' or EXT_TIPOMOV='+QuotedStr(mSaida)+')'
                     +' and EXT_CODPRO=:CODPRO ');
Qr_cadEst_Ext.SQL.Add(' and (EXT_FILIAL=:FILIAL or EXT_FILIAL is null)');
qr_cadest_ext.SQL.Add(' order by EXT_DATHOR,ROWNUM DESC ');
Qr_cadEst_Ext.ParambyName('CODPRO').asfloat:=Query_divEXT_CODPRO.AsFloat;
Qr_cadEst_Ext.parambyName('FILIAL').Asinteger:=fRetonaCodigoFilial(CB_ESTOQUE2.Text);

try
   qr_cadest_ext.Open;
except
   ex_erroSql_Novo(qr_cadest_ext,1073,'s_ext3','CADEST_EXT');
   end;
//qr_cadest_ext.sql.SaveToFile('c:\sql.txt');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
qr_cadest_mov.Close;
qr_cadest_mov.SQL.Clear;
qr_cadest_mov.SQL.Add('select MCEcodpro '
                     +' ,case when mcesaldo_ant>MCESALDO_ATU THEN (MCESALDO_ANT-MCESALDO_ATU) ELSE 0 END as QTD_SAI '
                     +' ,case when mcesaldo_ant>MCESALDO_ATU THEN 0 ELSE (MCESALDO_ATU-MCESALDO_ANT) END as QTD_ENT '
                     +' ,MCEDATHOR,MCECOMPEVE '
                     +' ,MCESALDO_ANT,MCESALDO_ATU '
                     +' from CADEST_MOV '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' MCECODPRO=:CODPRO '
                     +' and (MCEFILIAL=:FILIAL or MCEFILIAL is null)'
                     +' order by MCEDATHOR,ROWNUM ');
qr_cadest_mov.ParamByName('CODPRO').AsFloat:=Query_divEXT_CODPRO.AsFloat;
qr_cadest_mov.parambyName('FILIAL').Asinteger:=fRetonaCodigoFilial(CB_ESTOQUE2.Text);

try
   qr_cadest_mov.Open;
except
   ex_erroSql_Novo(qr_cadest_mov,1100,'s_ext3','CADEST_MOV');
   end;

//ex_erroSql_Novo(qr_cadest_mov,1100,'s_ext3','CADEST_MOV');
tsDetDivergencias.TabVisible:=true;
PageControl1.ActivePage:=tsDetDivergencias;

end;

procedure TFrm_Extp3.DBGrid_divDblClick(Sender: TObject);
begin
if (Query_div.Active) and not (Query_divEXT_CODPRO.IsNull) then
   fLerDetalhes(0);



end;

procedure TFrm_Extp3.tsDetDivergenciasExit(Sender: TObject);
begin
{
tsDetDivergencias.TabVisible:=false;
PageControl1.ActivePage:=TsIndividual;
PageControl1.ActivePage:=tsDivergencias;
}
end;

procedure TFrm_Extp3.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin
Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
cb_estoque.Items.Clear;
cb_estoque2.Items.Clear;
While not Query_filial.Eof do
   begin
   cb_estoque.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   cb_estoque2.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;
if log_filial_padrao=0 then
   begin
  cb_estoque.ItemIndex:=0;
  cb_estoque2.ItemIndex:=0;
  end
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     cb_estoque.Text:=Query_filial.fieldbyName('CFNOME').Value;
     cb_estoque2.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with cb_estoque do
           ItemIndex := items.IndexOf(cb_estoque.Text);
     with cb_estoque2 do
           ItemIndex := items.IndexOf(cb_estoque2.Text);

     end;
  end;
FreeAndNil(query_filial);




end;

procedure TFrm_Extp3.Query_divCalcFields(DataSet: TDataSet);
begin
Query_divDIF.AsFloat:=Query_divSALDO_FINAL.AsFloat-Query_divSALDO_CALC.AsFloat;
if Query_divDIF.AsFloat<0 then
  Query_divDIF.AsFloat:=Query_divDIF.AsFloat*(-1);
end;

procedure TFrm_Extp3.Button1Click(Sender: TObject);
begin
RLReport1.PreviewModal;
end;

end.
