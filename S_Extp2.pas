unit S_Extp2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, func, db, dbtables, S_DM1, Grids,
  DBGrids,S_Pro,S_DM2,lerarq,S_Impres,RdPrint,func2, ComCtrls, RxMemDS,
  jpeg, S_SelEmp, Menus,s_lerarq_geral;

type
  TFrm_Extp2 = class(TForm)
    Qr_Mov: TQuery;
    Src_Mov: TDataSource;
    Qr_MovDATA: TDateTimeField;
    Qr_MovCODIGO: TFloatField;
    Qr_MovFORCLI: TStringField;
    Qr_MovDOCUM: TFloatField;
    Qr_MovQUANT: TFloatField;
    Qr_MovPRECO: TFloatField;
    Qr_MovTIPOMOV: TStringField;
    Qr_Movtotal: TFloatField;
    Qr_Movnome: TStringField;
    Qr_MovTIPO: TFloatField;
    Qr_MovENTRADA: TFloatField;
    Qr_MovSAIDA: TFloatField;
    Qr_MovSALDO: TFloatField;
    PageControl1: TPageControl;
    TsIndividual: TTabSheet;
    tsComparativoGeral: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_grade: TLabel;
    CODPRO2: TEdit;
    NOMPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CB_ORC: TCheckBox;
    GRADE: TEdit;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbAtualizar: TBitBtn;
    SALDO: TStaticText;
    SALDO_CAD: TStaticText;
    Panel3: TPanel;
    bbAtuaGer: TBitBtn;
    bbImpGer: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label16: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label17: TLabel;
    MDT1_02: TMaskEdit;
    Label18: TLabel;
    MDT2_02: TMaskEdit;
    StaticText1: TStaticText;
    CB_TIPOEST: TComboBox;
    Qr_Resumo: TQuery;
    Src_Resumo: TDataSource;
    DBGrid2: TDBGrid;
    Qr_ResumoCODIGO: TFloatField;
    Qr_ResumoGRADE: TStringField;
    Qr_ResumoDESCRICAO: TStringField;
    Qr_ResumoUND: TStringField;
    Qr_ResumoSALDO_INIC: TFloatField;
    Qr_ResumoVENDAS: TFloatField;
    Qr_ResumoDEVOL_CLIENTE: TFloatField;
    Qr_ResumoCOMPRAS: TFloatField;
    Qr_ResumoENTRADA_AJUSTE: TFloatField;
    Qr_ResumoSAIDA_AJUSTE: TFloatField;
    Qr_ResumoENTRADA_OP: TFloatField;
    Qr_ResumoSAIDA_OP: TFloatField;
    Qr_ResumoSALDO: TFloatField;
    Qr_ResumoESTOQUE: TFloatField;
    Qr_ResumoDEVOL_FORNEC: TFloatField;
    CB_FILTRAR: TComboBox;
    StaticText2: TStaticText;
    Label80: TLabel;
    CB_CASASD: TComboBox;
    Qr_MovCODUSR: TFloatField;
    mem_mov: TRxMemoryData;
    mem_movDATA: TDateTimeField;
    mem_movCODIGO: TFloatField;
    mem_movFORCLI: TStringField;
    mem_movQUANT: TFloatField;
    mem_movPRECO: TFloatField;
    mem_movTIPOMOV: TStringField;
    mem_movENTRADAS: TFloatField;
    mem_movSAIDAS: TFloatField;
    mem_movSALDO: TFloatField;
    mem_movTOTAL: TFloatField;
    mem_movTIPO: TFloatField;
    mem_movCODUSR: TFloatField;
    mem_movNOME: TStringField;
    mem_movDOCUM: TFloatField;
    mem_movLOTE: TStringField;
    Qr_MovLOTE: TStringField;
    Qr_MovEMIDOC: TFloatField;
    Qr_MovNUMNF: TStringField;
    Qr_MovDATANF: TDateTimeField;
    mem_movDATANF: TDateTimeField;
    mem_movNUMNF: TStringField;
    mem_movEMIDOC: TIntegerField;
    rg_serie: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure CODPRO2Exit(Sender: TObject);
    procedure CODPRO2KeyPress(Sender: TObject; var Key: Char);
    procedure MDT2Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Qr_MovCalcFields(DataSet: TDataSet);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPRO2Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GRADEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAtuaGerClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure MDT1_02Exit(Sender: TObject);
    procedure MDT2_02Exit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbImpGerClick(Sender: TObject);
    procedure CB_CASASDExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_extp2 : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Extp2: TFrm_Extp2;
  msaldoant,msaldo, mcompras, mvendasc, mdevcli, mdevf, majue, majus, mentop, msaiop:Real;
  mdesc: String;
  mtabtemp: String;
  mtabtemp02: String;
  mCasasDec: String;
  mCasasSaldo: Integer;


function fextp2CriaTemp(ptipo: Integer): Boolean;
function fextp2CriaTemp02(ptipo: Integer): Boolean;

function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;

implementation

uses  func_excecoes, Math;

{$R *.DFM}

procedure TFrm_Extp2.BitBtn1Click(Sender: TObject);
var
mlin,mpag: Integer;
begin
if not mem_mov.Active then
   begin
   FMensagem('Click primeiro em atualizar!',0,['0'],0);
   exit;
   end;
if mem_mov.RecordCount<1 then
   begin
   FMensagem('Nada a ser impresso!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Extp2(FindGlobalComponent('form_impres_extp2'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_extp2);

form_impres_extp2.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mem_mov.First;
mlin:=0;
mpag:=0;

While not mem_mov.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_extp2.Rdprint1.ImpF(01,001,DM1.Tb_EmpRAZAO.Value,mreduz);
      form_impres_extp2.RDprint1.ImpF(01,115,'Pagina: '+FormatFloat('0000',mpag),mreduz);
      form_impres_extp2.RDprint1.ImpF(02,001,'Extrato de Produtos 2. Periodo: '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',mreduz);
      form_impres_extp2.RDprint1.ImpF(02,116,'Data: '+FormatDateTime(fdt2, date),mreduz);
      form_impres_extp2.RDprint1.ImpF(03,001,'Codigo Produto.: '+CODPRO2.text+' - '+NOMPRO.text,mreduz);
      form_impres_extp2.RDprint1.ImpF(04,001,insere2('=','=',132),mreduz);
      form_impres_extp2.RDprint1.ImpF(05,001,'+----------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
      form_impres_extp2.Rdprint1.ImpF(06,001,'|Dt.Movimen|Documento |Razao Social                            |  Entrada |    Saida   |    Saldo   |Tipo do Movimento             |',mreduz);
      form_impres_extp2.RDprint1.ImpF(07,001,'+----------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
{

+----------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
|Dt.Movimen|Documento |Razao Social                            |  Entrada |    Saida   |    Saldo   |Tipo do Movimento             |',mreduz);
+----------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);

}
      mlin:=7;
      end;

   mlin:=mlin+1;
   form_impres_extp2.RDprint1.ImpF(mlin,001,'|'
                           +FormatDateTime(fdt2, mem_movDATA.Value)
                           +'|'+insere(mem_movDOCUM.AsString,' ',10)
                           +'|'+insere2(mem_movnome.AsString,' ',40)
                           +'|'+insere(FormatFloat(mcasind, mem_movENTRADAS.Value),' ',10)
                           +'|'+insere(FormatFloat(mcasaspu, mem_movSAIDAS.Value),' ',12)
                           +'|'+insere(FormatFloat(mcasas,   mem_movSALDO.Value),' ',12)
                           +'|'+insere2(mem_movTIPOMOV.Value,' ',30)
                           +'|',mreduz);

   mem_mov.Next;

   if mem_mov.Eof then
      begin
      mlin:=mlin+1;
      form_impres_extp2.RDprint1.ImpF(mlin,001,'+----------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
      mlin:=mlin+1;
      form_impres_extp2.RDprint1.ImpF(mlin,001,' '
                           +'- Totais.....:'
                           +' Compras: '+insere(FormatFloat(mcasind, mcompras),' ',11)
                           +' Vendas.: '+insere(FormatFloat(mcasind, mvendasc),' ',11)
                           +' Ajustes: '+insere(FormatFloat(mcasind, (majue-majus)),' ',11)
//                           +' Dev.For: '+insere(FormatFloat(mcasind, mdevf),' ',11)
//                           +' Dev.Cli: '+insere(FormatFloat(mcasind, mdevcli),' ',11)
                           +insere2(' ',' ',11)
                           +' ',mreduz);
      mlin:=mlin+1;
      form_impres_extp2.RDprint1.ImpF(mlin,001,' '
                           +'- Totais.....:'
//                           +' Compras: '+insere(FormatFloat(mcasind, mcompras),' ',11)
//                           +' Vendas.: '+insere(FormatFloat(mcasind, mvendasc),' ',11)
//                           +' Ajustes: '+insere(FormatFloat(mcasind, (majue-majus)),' ',11)
                           +' Dev.For: '+insere(FormatFloat(mcasind, mdevf),' ',11)
                           +' Dev.Cli: '+insere(FormatFloat(mcasind, mdevcli),' ',11)
                           +' Ent. Op: '+insere(FormatFloat(mcasind, mentop),' ',11)
                           +' Sai. Op: '+insere(FormatFloat(mcasind, msaiop),' ',11)
                           +insere2(' ',' ',11)
                           +' ',mreduz);

      mlin:=mlin+1;
      form_impres_extp2.RDprint1.ImpF(mlin,001,'+Fim.------+----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
      end
   else if mlin>57 then
      begin
      mlin:=mlin+1;
      form_impres_extp2.RDprint1.ImpF(mlin,001,'+Continua...----------+----------------------------------------+----------+------------+------------+------------------------------+',mreduz);
      form_impres_extp2.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_impres_extp2.RDprint1.Setup then form_impres_extp2.RDprint1.Fechar;
form_impres_extp2.free;
form_impres_extp2:=nil;

end;

procedure TFrm_Extp2.CODPRO2Exit(Sender: TObject);
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

procedure TFrm_Extp2.CODPRO2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO2.Text:=fChamaPro(0,'Frm_Extp2',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Extp2.MDT2Exit(Sender: TObject);
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

procedure TFrm_Extp2.MDT1Exit(Sender: TObject);
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

procedure TFrm_Extp2.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Extp2.Qr_MovCalcFields(DataSet: TDataSet);
begin
   if Qr_MovFORCLI.Value='OP' then
      begin
         Qr_Movnome.Value:='ORDEM DE PRODUCAO.....';
         EXIT;
      end;

if not Qr_MovCODIGO.IsNull then
   begin
   if Qr_MovFORCLI.Value='FR' then
      begin
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_MovCODIGO.AsString);
      Qr_Movnome.Value:=DM1.Query1.Fields[0].AsString;
      end
   else
      begin
      if Qr_MovFORCLI.Value<>'AJ' then
         begin
         flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_MovCODIGO.AsString);
         Qr_Movnome.Value:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   Qr_Movtotal.Value:=Qr_MovQUANT.Value*Qr_MovPRECO.Value;
   end;
end;

procedure TFrm_Extp2.bbAtualizarClick(Sender: TObject);
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
if trim(GRADE.Text)<>'' then
   begin
   if flcadlgc(0,1,0,trim(CODPRO2.Text),trim(GRADE.Text),'') then
      begin
      if RG_TIPO.ItemIndex=3 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDT.Value)
      else if RG_TIPO.ItemIndex=2 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDR.Value)
      else if RG_TIPO.ItemIndex=1 then
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTDC.Value)
      else
         SALDO_CAD.Caption:=formatFloat(mcasind, DM1.Tb_LGCCLQTD.Value);
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
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fextp2CriaTemp(1);

mdesc:=insere2('Vendas',' ',50);
Qr_MovQUANT.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);
//if msaldoant<>0 then
//   begin


{
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +') Values ('
                  +chr(39)+mcinst2+chr(39)
                  +',0' // codigo
                  +','+chr(39)+' '+CHR(39)
                  +',0' // documento
                  +','+iif(msaldoant<0,mudavp(floattoStr(msaldoant*-1)),Mudavp(FloatToStr(msaldoant)))
                  +',0'
                  +','+chr(39)+'Estoque Inicial'+chr(39)
                  +',7'
                  +','+iif(msaldoant<0,'1','0')
                  +','+InttoStr(codusr)
                  +')');

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,299,'Frm_Extp2',mtabtemp);
      end;
//   end;
 }
mcinst4:=fGerarInstrucaoQtd(4,'ROUND(( CASE WHEN P2LM_QTD IS NULL THEN   CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END ELSE P2LM_QTD END ) ,'+IntToStr(mCasasSaldo)+')',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +' ,EMIDOC'
                  +',NUMNF'
                  +',DATANF'

                  +') '
                  +' Select max(to_date(P1DATAP)) AS DATA, max(P1CODCLI) AS CODIGO,'
                  +chr(39)+'CL'+CHR(39)+' AS FORCLI,'
                  +'P1CHAVE AS DOCUM, '
                  +mcinst4+' AS QUANT,'
                  +'max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)) AS LOTE, '
                  +'sum(P2PRECO) AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +', sum(P1CODEMP-P1CODEMP) AS TIPO'
                  +', 1 AS ENTSAI '
                  +', max(P1CODUSR) AS CODUSR '
                  +', MAX(P1EMIDOC) AS EMIDOC '
                  +',MAX(TO_CHAR(P1NUMNF)) AS  NUMNF'
                  +',MAX(P1DATANF) AS P1DATANF'

                  +' FROM CADP02, CADP01, CADP02_LOTES where  '+la_Empresas
                  +' P2CODPRO=0'+Trim(CODPRO2.Text)
                  +' and P2LM_CODPRO(+)=P2CODPRO and P2LM_CODEMP(+)=P2CODEMP '
                  +' and P2LM_CHAVE(+)=P2CHAVE and P2LM_LOTSEQ(+)=P2LOTSEQ '
                  +' and P2LM_ITEM(+)=P2ITEM ');
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and (P2LOTE='+chr(39)+GRADE.Text+chr(39)+' or P2LM_LOTE='+chr(39)+GRADE.Text+chr(39)+')');
   DM1.Query1.SQL.Add(' and P2CODEMP=P1CODEMP '
                  +' and P2LOTSEQ=P1LOTSEQ '
                  +' and P2CHAVE=P1CHAVE '
                  +' and P2ORDEM=P1ORDEM ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   DM1.Query1.SQL.Add(' and P1STATUS<'+mstatus_excluido+' ');
   if rg_tipo.ItemIndex=0 then
      DM1.Query1.SQL.add(' and ('
      +'     (P1TIPO=01) or (P1TIPO=02) or '
      +'     (P1TIPO=04) or (P1TIPO=05) or '
      +'     (P1TIPO=06) or (P1TIPO=07) or '
      +'     (P1TIPO=09) or (P1TIPO=11) or (P1TIPO=16) or (P1TIPO>18) ) ')
   else if rg_tipo.ItemIndex=1 then
      DM1.Query1.SQL.Add(' and (P1TIPO=12 or P1TIPO=14 ) ')
   else if rg_tipo.ItemIndex=2 then
      DM1.Query1.SQL.Add(' and (P1TIPO=13 or P1TIPO=15 ) ')
   else if rg_tipo.ItemIndex=3 then
      DM1.Query1.SQL.Add(' and (P1TIPO=19) ');

   if rg_serie.ItemIndex<>2 then
      DM1.query1.sql.add(' and P1SERIE='+QuotedStr(IntToStr(rg_serie.ItemIndex+1)));

   DM1.Query1.SQL.Add(' group by P1CHAVE,P1ORDEM ');

// DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.txt');
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,299,'Frm_Extp2',mtabtemp);
  end;

if CB_ORC.Checked then
   begin
   mdesc:=insere2('Orcamentos',' ',50);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                     +' FORCLI, '
                     +' DOCUM, '
                     +' QUANT, '
                     +' LOTE, '
                     +' PRECO, '
                     +' TIPOMOV, '
                     +' TIPO '
                     +' ,ENTSAI'
                     +' ,CODUSR'
                     +',EMIDOC '
                  +',NUMNF'
                  +',DATANF'


                     +') '
                     +' Select max(to_date(P1DATAP)) AS DATA, max(P1CODCLI) AS CODIGO,'
                     +chr(39)+'CL'+CHR(39)+' AS FORCLI,'
                     +'P1CHAVE AS DOCUM, '
                     +mcinst4+' AS QUANT,'
                     +'max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)) AS LOTE, '
                     +'sum(P2PRECO) AS PRECO, '
                     +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                     +', sum(P1CODEMP-P1CODEMP) AS TIPO'
                     +', 1 AS ENTSAI '
                     +', max(P1CODUSR) AS CODUSR '
                     +', MAX(P1EMIDOC) AS EMIDOC '

                  +',MAX(TO_CHAR(P1NUMNF)) AS  NUMNF'
                  +',MAX(P1DATANF) AS P1DATANF'

                     +' FROM CADP02, CADP02_LOTES, CADP01 where '+la_Empresas);
   DM1.Query1.SQL.Add(' P2CODPRO=0'+Trim(CODPRO2.Text)
                     +' and P2LM_CODPRO(+)=P2CODPRO and P2LM_CODEMP(+)=P2CODEMP '
                     +' and P2LM_CHAVE(+)=P2CHAVE and P2LM_LOTSEQ(+)=P2LOTSEQ '
                     +' and P2LM_ITEM(+)=P2ITEM ');

   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and (P2LOTE='+chr(39)+GRADE.Text+chr(39)+' or P2LM_LOTE='+chr(39)+GRADE.Text+chr(39)+')');
   DM1.Query1.SQL.Add(' and P2CODEMP=P1CODEMP '
                     +' and P2LOTSEQ=P1LOTSEQ '
                     +' and P2CHAVE=P1CHAVE '
                     +' and P2ORDEM=P1ORDEM ');
    if Trim(MDT1.Text)<>'/  /' then
      dm1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   if Trim(MDT2.Text)<>'/  /' then
      dm1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',FALSE,StrToDate(MDT2.Text)));
   DM1.Query1.SQL.Add(' and P1STATUS<'+mstatus_excluido+'  and P1TIPO=0 ');
   DM1.Query1.Sql.add(' Group by P1CHAVE,P1ORDEM ');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,334,'Frm_Extp2',mtabtemp);
      end;
   end;

if RG_TIPO.ItemIndex=0 then
   mdesc:=insere2('Devolução cliente',' ',50)
else if RG_TIPO.ItemIndex=1 then
   mdesc:=insere2('Mercadoria Consignada',' ',50)
else if RG_TIPO.ItemIndex=2 then
   mdesc:=insere2('Mercadoria Remetida p/Venda',' ',50)
else if RG_TIPO.ItemIndex=3 then
   mdesc:=insere2('Mercadoria de Terceiro',' ',50);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +' ,EMIDOC '
                  +',NUMNF'
                  +',DATANF'

                  +') '
                  +'Select max(to_date(P1DATAP)) AS DATA, max(P1CODCLI) AS CODIGO,'
                  +CHR(39)+'CL'+CHR(39)+' as FORCLI,'
                  +'P1CHAVE AS DOCUM, '
                  +mcinst4+' AS QUANT,'
                  +'max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)) AS LOTE, '
                  +'SUM(P2PRECO) AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +',1 AS TIPO'
                  +',0 AS ENTSAI '
                  +',max(P1CODUSR) AS CODUSR'
                  +', MAX(P1EMIDOC) AS EMIDOC '
                  +',MAX(TO_CHAR(P1NUMNF)) AS  NUMNF'
                  +',MAX(P1DATANF) AS P1DATANF'

                  +' FROM CADP01, CADP02, CADP02_LOTES where P1STATUS <'+mstatus_excluido+' and '+la_Empresas
                  +' P2CODEMP=P1CODEMP AND '
                  +' P2LOTSEQ=P1LOTSEQ '
                  +' and P2CHAVE=P1CHAVE '
                  +' and P2ORDEM=P1ORDEM '
                  +' and P2CODPRO=0'+Trim(CODPRO2.Text)
                  +' and P2LM_CODPRO(+)=P2CODPRO and P2LM_CODEMP(+)=P2CODEMP '
                  +' and P2LM_CHAVE(+)=P2CHAVE and P2LM_LOTSEQ(+)=P2LOTSEQ '
                  +' and P2LM_ITEM(+)=P2ITEM ');

if RG_TIPO.ItemIndex=0 then
   DM1.Query1.SQL.add(' and   ( (P1TIPO=08) or (P1TIPO=12) or '
                        +'     (P1TIPO=13) or (P1TIPO=17) or (P1TIPO=18) )')
else if RG_TIPO.ItemIndex=1 then
   DM1.Query1.SQL.Add(' and P1TIPO=11 ')
else if RG_TIPO.ItemIndex=2 then
   DM1.Query1.SQL.Add(' and P1TIPO=07 ');

if Trim(GRADE.Text)<>'' then
  DM1.Query1.SQL.Add(' and (P2LOTE='+chr(39)+GRADE.Text+chr(39)+' or P2LM_LOTE='+chr(39)+GRADE.Text+chr(39)+')');

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query1.SQL.add(' group by P1CHAVE,P1ORDEM ' );

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,515,'Frm_Extp2',mtabtemp);
  end;

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

mdesc:=insere2('Compra de Mercadoria',' ',50);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '

                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +',  EMIDOC '

                  +',NUMNF'
                  +',DATANF'
                  +') '
                  +'Select DECODE(to_date(PF1DATCONF),null,to_date(PF1DATAENT),to_date(PF1DATCONF)) AS DATA, PF1CODFOR AS CODIGO, '
                  +CHR(39)+'FR'+CHR(39)+' as FORCLI,'
                  +' PF1CHAVE AS DOCUM, ROUND(decode(PF2L_QTD,null,PF2QTDP,PF2L_QTD),'+IntToStr(mCasasSaldo)+') AS QUANT,'
                  +' DECODE(PF2LOTE,NULL,PF2L_LOTE,PF2LOTE) AS LOTE, '
                  +'PF2PU AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +',(PF1CODEMP-PF1CODEMP)+2 AS TIPO'
                  +', 0 AS ENTSAI '
                  +',PF1CODUSR AS CODUSR'
                  +', PF1STATUS AS EMIDOC '

                  +',TO_CHAR(PF1NUMNF) AS  NUMNF'
                  +',PF1DATANF AS P1DATANF'
                  +' FROM CADPF2, CADPF1, CADPF2_LOTES_ORC where '+la_Empresas
                  +' PF1TIPO<2 and PF2CODPRO=0'+Trim(CODPRO2.Text));
if Trim(GRADE.Text)<>'' then
   DM1.Query1.SQL.Add(' and DECODE(PF2LOTE,NULL,PF2L_LOTE,PF2LOTE)='+chr(39)+GRADE.Text+chr(39));

DM1.Query1.SQL.Add(' and PF1CODEMP=PF2CODEMP and PF2L_CODEMP(+)=PF2CODEMP '
                  +' and PF1LOTSEQ=PF2LOTSEQ and PF2L_LOTSEQ(+)=PF2LOTSEQ '
                  +' and PF1CHAVE=PF2CHAVE and PF2L_CHAVE(+)=PF2CHAVE '
                  +' and PF2L_ITEM(+)=PF2ITEM '
                  +' and PF2L_CODPRO(+)=PF2CODPRO and PF1STATUS<8 '
                  +iif(CB_ORC.Checked,'', ' and PF1STATUS<>0 '));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and PF1DATCONF>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and PF1DATCONF<='+chr(39)+MDT2.Text+chr(39));
if RG_TIPO.ItemIndex=3 then
   DM1.query1.SQL.Add(' and PF1ORIGEM=1 ')
else if RG_TIPO.ItemIndex>0 then
   DM1.query1.SQL.Add(' and PF1DATCONF is null ');
//DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.txt');

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,404,'Frm_Extp2',mtabtemp);
  end;
mdesc:='Ajuste ';

la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Insert into '+mtabtemp+' (DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +', EMIDOC '
                  +',NUMNF'
                  +',DATANF'


                  +') '
                  +'Select to_date(AJDATA) AS DATA, AJSEQ AS CODIGO, '
                  +CHR(39)+'AJ'+CHR(39)+' as FORCLI,'
                  +' DECODE(AJTIPOM,30,0 '
                                 +'  ,22,0 '
                                 +'  ,12,0 '
                                 +'  ,31,1 '
                                 +'  ,23,1 '
                                 +'  ,13,1 '
                                 +'  ,AJTIPOM) AS DOCUM, AJQTD AS QUANT,'
                  +'AJLOTE AS LOTE, '
                  +' ROUND((AJQTD-AJQTD),'+IntToStr(mCasasSaldo)+') AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' || '+' decode(AJTIPOM,0,'+chr(39)+' (entrada) '+chr(39)+' , '+chr(39)+' (saida) '+chr(39)+' )  AS TIPOMOV'
                  +', (AJCODEMP-AJCODEMP)+3 AS TIPO'
                  +', AJTIPOM AS ENTSAI '
                  +', AJCODUSR AS CODUSR'
                  +', 1 AS EMIDOC '
                  +',0 AS  NUMNF'
                  +',null AS P1DATANF'

                  +' FROM CADAJU where '+la_Empresas
                  +' AJCODPRO=0'+Trim(CODPRO2.Text));
if Trim(GRADE.Text)<>'' then
   DM1.Query1.SQL.Add(' and AJLOTE='+chr(39)+GRADE.Text+chr(39));

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and AJDATA>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and AJDATA<='+chr(39)+MDT2.Text+chr(39));
if RG_TIPO.ItemIndex=0 then
   DM1.Query1.SQL.add('and (AJESTMOV=0 or AJESTMOV=3) ')
else
   DM1.Query1.SQL.add(' and AJESTMOV=0'+IntTostr(RG_TIPO.ItemIndex));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,441,'Frm_Extp2',mtabtemp);
  end;


mdesc:=insere2('Devolução Fornecedor',' ',50);

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

if RG_TIPO.ItemIndex=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+mtabtemp+' (REGISTRO, DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +', EMIDOC '
                  +',NUMNF'
                  +',DATANF'

                  +' ) '
                  +'Select max(P1CHAVE) AS REGISTRO,max(to_date(P1DATAP)) AS DATA, max(P1CODCLI) AS CODIGO,'
                  +CHR(39)+'CL'+CHR(39)+' as FORCLI,'
                  +'P1CHAVE AS DOCUM, '
                  +mcinst4+' AS QUANT,'
                  +'max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)) AS LOTE, '
                  +'sum(P2PRECO) AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +', 4 AS TIPO'
                  +', 1 AS ENTSAI '
                  +', max(P1CODUSR) AS CODUSR'
                  +', MAX(P1STATUS) AS EMIDOC '
                  +',MAX(TO_CHAR(P1NUMNF)) AS  NUMNF'
                  +',MAX(P1DATANF) AS P1DATANF'

                  +' FROM CADP01, CADP02, CADP02_LOTES where '+la_Empresas
                  +' P1STATUS<'+mstatus_excluido+''
                  +' and P2CODEMP=P1CODEMP '
                  +' and P1TIPO=3 '
                  +' and P2LOTSEQ=P1LOTSEQ '
                  +' and P2CHAVE=P1CHAVE '
                  +' and P2ORDEM=P1ORDEM '
                  +' and P2CODPRO=0'+Trim(CODPRO2.Text)
                  +' and P2LM_CODPRO(+)=P2CODPRO and P2LM_CODEMP(+)=P2CODEMP '
                  +' and P2LM_CHAVE(+)=P2CHAVE and P2LM_LOTSEQ(+)=P2LOTSEQ '
                  +' and P2LM_ITEM(+)=P2ITEM ');                  
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and (P2LOTE='+chr(39)+GRADE.Text+chr(39)+' or P2LM_LOTE='+chr(39)+GRADE.Text+chr(39)+')');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   DM1.Query1.SQL.add(' Group by P1CHAVE,P1ORDEM ');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,738,'Frm_Extp2',mtabtemp);
      end;
   end;

////////////// ENTRADA POR OP.

mdesc:=insere2('Entrada Ordem Producao',' ',50);

la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
if RG_TIPO.ItemIndex=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+mtabtemp+' (REGISTRO,DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +' , EMIDOC '

                  +') '
                  +'Select ROWNUM AS REGISTRO,to_date(OP1_DATA) AS DATA, OP1_CODIGO AS CODIGO,'
                  +CHR(39)+'OP'+CHR(39)+' as FORCLI,'
                  +'OP1_CODIGO AS DOCUM, ROUND(OP2_QTDPROD,'+IntToStr(mCasasSaldo)+') AS QUANT,'
                  +'decode(OP2_NUMERO,null,OP1_LOTE,OP2_NUMERO) AS LOTE, '
                  +'''0'' AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +', (OP1_CODEMP-OP1_CODEMP)+5 AS TIPO'
                  +', 0 AS ENTSAI '
                  +', 0 AS CODUSR '
                  +', 1 AS EMIDOC '

                  +' FROM CADOP01, CADOP02 where '+la_Empresas
                  +'     OP2_CODPRO =0'+Trim(CODPRO2.Text)
                  +' and OP2_CODIGO = OP1_CODIGO'
                  +' and OP2_CODEMP = OP1_CODEMP'
                  +' and OP2_FABENV = OP1_FABENV'

                  +' and OP1_STATUS = 2 ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA>='+chr(39)+MDT1.Text+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA<='+chr(39)+MDT2.Text+chr(39));
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and OP1_LOTE='+chr(39)+GRADE.Text+chr(39));
//   DM1.Query1.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,785,'Frm_Extp2',mtabtemp);
      end;
   end;

//////////////////////////////////////////////////////////////////////////////

////////////// SAIDA POR OP.

mdesc:=insere2('Saida Ordem Producao',' ',50);

la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
if RG_TIPO.ItemIndex=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+mtabtemp+' (REGISTRO,DATA, CODIGO,'
                  +' FORCLI, '
                  +' DOCUM, '
                  +' QUANT, '
                  +' LOTE, '
                  +' PRECO, '
                  +' TIPOMOV, '
                  +' TIPO '
                  +' ,ENTSAI'
                  +' ,CODUSR'
                  +', EMIDOC '

                  +') '
                  +'Select ROWNUM AS REGISTRO, to_date(OP1_DATA) AS DATA, OP1_CODIGO AS CODIGO,'
                  +CHR(39)+'OP'+CHR(39)+' as FORCLI,'
                  +'OP1_CODIGO AS DOCUM, ROUND(OP3_QTDUTIL,'+IntToStr(mCasasSaldo)+') AS QUANT,'
                  +'OP3_LOTE AS LOTE, '
                  +'''0'' AS PRECO, '
                  +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                  +', (OP1_CODEMP-OP1_CODEMP)+6 AS TIPO'
                  +', 1 AS ENTAI '
                  +', 0 AS CODUSR'
                  +', 0 EMIDOC '

                  +' FROM CADOP01, CADOP03 where '+la_Empresas
                  +'     OP3_CODMAT =0'+Trim(CODPRO2.Text)
                  +' and OP3_CODIGO = OP1_CODIGO'
                  +' and OP3_CODEMP = OP1_CODEMP'
                  +' and OP3_FABENV = OP1_FABENV'
                  +' and (OP1_STATUS = 0 or OP1_STATUS = 2)');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA>='+chr(39)+MDT1.Text+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA<='+chr(39)+MDT2.Text+chr(39));
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and OP3_LOTE='+chr(39)+GRADE.Text+chr(39));

//   DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,836,'Frm_Extp2',mtabtemp);
      end;
   end;

//////////////////////////////////////////////////////////////////////////////

      Qr_Mov.Close;
      Qr_Mov.SQL.Clear;
      Qr_Mov.SQL.Add('Select REGISTRO,DATA,'
                    +'CODIGO, '
                    +'FORCLI,'
                    +'DOCUM,'
                    +'QUANT,'
                    +' LOTE, '
                    +'PRECO,'
                    +'TIPOMOV,'
                    +'TIPO '
                    +',ROUND(DECODE(ENTSAI,1,0,QUANT),2) AS ENTRADA '
                    +',ROUND(DECODE(ENTSAI,1,QUANT,0),2) AS SAIDA '
                    +',ROUND(sum(DECODE(ENTSAI,1,QUANT*-1,QUANT)) over (order by DATA,ENTSAI,REGISTRO,CODIGO),'+IntToStr(mCasasSaldo)+') AS SALDO '
                    +', CODUSR '
                    +', EMIDOC as  EMIDOC '
                    +', NUMNF as  NUMNF '
                    +', DATANF as DATANF  '
                    +' FROM '+mtabtemp);
      Qr_Mov.SQL.Add(' order by DATA,ENTSAI,REGISTRO,CODIGO ');
//Qr_Mov.Sql.Savetofile(mpastatemp + 'SQL.txt');

      try
         Qr_Mov.Open;
      except
         Qr_Mov.Sql.Savetofile(mpastatemp + 'SQL.txt');
         end;


{
// LINDOMAR
Qr_Mov.Close;
Qr_Mov.SQL.Clear;
Qr_Mov.SQL.Add('Select P1DATAP AS DATA, P1CODCLI AS CODIGO,'
              +chr(39)+'CL'+CHR(39)+' AS FORCLI,'
              +'P1CHAVE AS DOCUM, P2QTD AS QUANT,'
              +'P2PRECO AS PRECO, '
              +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
              +', (P1CODEMP-P1CODEMP) AS TIPO'
              +' FROM CADP01, CADP02 where '+la_Empresas
              +' P1STATUS<8'
              +' and P1TIPO<>3 and P1TIPO<>8  and P1TIPO<>0 '
              +' and P2CHAVE=P1CHAVE '
              +' and P2ORDEM=P1ORDEM '
              +' and P2CODPRO=0'+Trim(CODPRO2.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP<='+chr(39)+MDT2.Text+chr(39));
if CB_ORC.Checked then
   begin
   Qr_Mov.SQL.Add(' union ');
   mdesc:=insere2('Orcamentos',' ',50);
   Qr_Mov.SQL.Add('Select P1DATAP AS DATA, P1CODCLI AS CODIGO,'
                 +chr(39)+'CL'+CHR(39)+' AS FORCLI,'
                 +'P1CHAVE AS DOCUM, P2QTD AS QUANT,'
                 +'P2PRECO AS PRECO, '
                 +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
                 +', (P1CODEMP-P1CODEMP) AS TIPO'
                 +' FROM CADP01, CADP02 where '+la_Empresas
                 +' P1STATUS<'+mstatus_excluido+''
                 +' and P1TIPO=00 '
                 +' and P2CHAVE=P1CHAVE '
                 +' and P2ORDEM=P1ORDEM '
                 +' and P2CODPRO=0'+Trim(CODPRO2.Text));
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Mov.SQL.Add(' and P1DATAP>='+chr(39)+MDT1.Text+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Mov.SQL.Add(' and P1DATAP<='+chr(39)+MDT2.Text+chr(39));
   end;
Qr_Mov.SQL.Add(' union ');
mdesc:=insere2('Devolução cliente',' ',50);

Qr_Mov.SQL.Add('Select P1DATAP AS DATA, P1CODCLI AS CODIGO,'
              +CHR(39)+'CL'+CHR(39)+' as FORCLI,'
              +'P1CHAVE AS DOCUM, P2QTD AS QUANT,'
              +'P2PRECO AS PRECO, '
              +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
              +',(P1CODEMP-P1CODEMP)+1 AS TIPO'
              +' FROM CADP01, CADP02 where '+la_Empresas
              +' P1STATUS<8'
              +' and P1TIPO=8 '
              +' and P2CHAVE=P1CHAVE '
              +' and P2ORDEM=P1ORDEM '
              +' and P2CODPRO=0'+Trim(CODPRO2.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP<='+chr(39)+MDT2.Text+chr(39));
Qr_Mov.SQL.Add(' union ');
if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

mdesc:=insere2('Compra de Mercadoria',' ',50);

Qr_Mov.SQL.Add('Select PF1DATCONF AS DATA, PF1CODFOR AS CODIGO, '
              +CHR(39)+'FR'+CHR(39)+' as FORCLI,'
              +' PF1CHAVE AS DOCUM, PF2QTDP AS QUANT,'
              +'PF2PU AS PRECO, '
              +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
              +',(PF1CODEMP-PF1CODEMP)+2 AS TIPO'
              +' FROM CADPF1, CADPF2 where '+la_Empresas
              +' PF1STATUS<9'
              +iif(CB_ORC.Checked,'', ' and PF1STATUS<>0 ')
              +' and PF2CHAVE=PF1CHAVE '
              +' and PF2CODPRO=0'+Trim(CODPRO2.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and PF1DATCONF>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and PF1DATCONF<='+chr(39)+MDT2.Text+chr(39));
Qr_Mov.SQL.Add(' union ');
mdesc:=insere2('Ajuste de Mercadorias',' ',50);
if DM1.Qr_Tid.Locate('TINOME','CADAJU',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('AJCODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_Mov.SQL.Add('Select AJDATA AS DATA, AJSEQ AS CODIGO, '
              +CHR(39)+'AJ'+CHR(39)+' as FORCLI,'
              +' AJTIPOM AS DOCUM, AJQTD AS QUANT,'
              +'(AJQTD-AJQTD) AS PRECO, '
              +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
              +', (AJCODEMP-AJCODEMP)+3 AS TIPO'
              +' FROM CADAJU where '+la_Empresas
              +' AJCODPRO=0'+Trim(CODPRO2.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and AJDATA>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and AJDATA<='+chr(39)+MDT2.Text+chr(39));
Qr_Mov.SQL.Add(' union ');
mdesc:=insere2('Devolução Fornecedor',' ',50);
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_Mov.SQL.Add('Select P1DATAP AS DATA, P1CODCLI AS CODIGO,'
              +CHR(39)+'CL'+CHR(39)+' as FORCLI,'
              +'P1CHAVE AS DOCUM, P2QTD AS QUANT,'
              +'P2PRECO AS PRECO, '
              +CHR(39)+mdesc+CHR(39)+' AS TIPOMOV'
              +', (P1CODEMP-P1CODEMP)+4 AS TIPO'
              +' FROM CADP01, CADP02 where '+la_Empresas
              +' P1STATUS<8'
              +' and P1TIPO=3 '
              +' and P2CHAVE=P1CHAVE '
              +' and P2ORDEM=P1ORDEM '
              +' and P2CODPRO=0'+Trim(CODPRO2.Text));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP>='+chr(39)+MDT1.Text+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Mov.SQL.Add(' and P1DATAP<='+chr(39)+MDT2.Text+chr(39));
Qr_Mov.open;
Qr_Mov.First;

 }

//msaldo:=0;


 mcompras:=0; mvendasc:=0; mdevcli:=0; mdevf:=0; majue:=0;majus:=0;mentop:=0;msaiop:=0;
While not Qr_Mov.Eof do
   begin
   if Qr_MovTIPO.Value=0 Then
      mvendasc:=mvendasc+Qr_MovQUANT.Value
   else if Qr_MovTIPO.Value=1 Then
      mdevcli:=mdevcli+Qr_MovQUANT.Value
   else if Qr_MovTIPO.Value=2 Then
      mcompras:=mcompras+Qr_MovQUANT.Value
   else if Qr_MovTIPO.Value=3 Then
      begin
      if Qr_MovDOCUM.Value=1 then
         majus:=majus+Qr_MovQUANT.Value
      else
         majue:=majue+Qr_MovQUANT.Value;
      end
   else if Qr_MovTIPO.Value=4 Then
      mdevf:=mdevf+Qr_MovQUANT.AsFloat;
   if Qr_MovTIPO.Value=5 Then
      mentop:=mentop+Qr_MovQUANT.AsFloat;
   if Qr_MovTIPO.Value=6 Then
      msaiop:=msaiop+Qr_MovQUANT.AsFloat;

   Qr_Mov.Next;
   end;
//msaldo:=msaldoant+(mcompras+mdevcli)-(mvendasc+mdevf+mentop+msaiop)+(majue-majus);
msaldoant:=msaldo
           -(mcompras+mdevcli+mentop)
           +(mvendasc+mdevf+msaiop)+(majus-majue);

ESTANT.Caption :=Formatfloat(mcasind,msaldoant);
COMPRAS.Caption:=Formatfloat(mcasind,mcompras);
VENDASC.Caption:=FormatFloat(mcasind,mvendasc);
AJUSTE.Caption :=FormatFloat(mcasind,(majue-majus));
DEVF.Caption   :=FormatFloat(mcasind,mdevf);
ENTOP.Caption  :=FormatFloat(mcasind,mentop);
SAIOP.Caption  :=FormatFloat(mcasind,msaiop);
DEVA.Caption   :=FormatFloat(mcasind,mdevcli);
SALDO.Caption  :=FormatFloat(mcasind,msaldo);


Qr_Mov.First;
mem_mov.Close;
mem_mov.Open;
mem_mov.append;

msaldoant:=Arredonda(msaldoant,DM1.Tb_PargerPCASQTD.AsInteger);
if trim(MDT1.text)<>'/  /' then
   mem_movDATA.Value :=StrToDate(MDT1.Text)-1;
mem_movTIPOMOV.Value :='Estoque Inicial';
mem_movQUANT.Value   :=ValFloat(iif(msaldoant<0,mudavp(floattoStr(msaldoant*-1)),Mudavp(FloatToStr(msaldoant))));
mem_movTIPO.Value    :=7;
//if msaldoant<0 then
//   msaldo:=msaldoant*-1
//else
msaldo:=msaldoant;
mem_movSALDO.Value:=msaldo;
mem_mov.Post;

While not Qr_Mov.Eof do
   begin
   mem_mov.Append;
   mem_movDATA.Value    :=Qr_MovDATA.Value;
   mem_movLOTE.Value    :='';
   mem_movCODIGO.Value  :=Qr_MovCODIGO.Value;
   mem_movLOTE.Value    :=Qr_MovLOTE.Value;
   mem_movFORCLI.Value  :=Qr_MovFORCLI.Value;
   mem_movDOCUM.Value   :=Qr_MovDOCUM.Value;
//   mem_movQUANT.Value   :=Qr_MovQUANT.Value;
   mem_movQUANT.Value   :=iif(Qr_MovQUANT.AsFloat<0,Qr_MovQUANT.AsFloat*-1,Qr_MovQUANT.AsFloat);
   mem_movPRECO.Value   :=Qr_MovPRECO.Value;
   mem_movTIPOMOV.Value :=Qr_MovTIPOMOV.Value;
   mem_movENTRADAS.Value:=iif(Qr_MovENTRADA.AsFloat<0,Qr_MovENTRADA.AsFloat*-1,Qr_MovENTRADA.AsFloat);
   mem_movSAIDAS.Value  :=iif(Qr_MovSAIDA.AsFloat<0,Qr_MovSAIDA.AsFloat*-1,Qr_MovSAIDA.AsFloat);
   mem_movTOTAL.Value   :=Qr_Movtotal.Value;
   mem_movTIPO.Value    :=Qr_MovTIPO.Value;
   mem_movCODUSR.Value  :=Qr_MovCODUSR.Value;
   mem_movNOME.Value    :=Qr_Movnome.Value;
   mem_movEMIDOC.Value  :=Qr_MovEMIDOC.AsInteger;
   mem_movDATANF.Value  :=Qr_MovDATANF.AsDateTime;
   mem_movNUMNF.Value   :=Qr_MovNUMNF.AsString;

   msaldo:=msaldo+(mem_movENTRADAS.AsFloat-mem_movSAIDAS.AsFloat);
   mem_movSALDO.Value   :=mSaldo;
   mem_mov.Post;
   Qr_Mov.Next;
   end;
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update '+mtabtemp+' set QUANT='+Mudavp(FloatToStr(msaldoant))
                  +' where TIPOMOV='+chr(39)+'Estoque Inicial'+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
Qr_Mov.Close;
Qr_Mov.open;
}
end;

procedure TFrm_Extp2.FormCreate(Sender: TObject);
var
  x: Integer;
begin
if Log_TipoLote<>2 then
   dbgrid2.columns[1].Visible:=false;
mCasasDec:=mcasind;
mCasasSaldo:=0;
for x:=1 to length(mcasas) do
  begin
  if Copy(mcasas,x,1)='0' then
    mCasasSaldo:=mCasasSaldo+1;
  end;
if mCasasSaldo>0 then
  mCasasSaldo:=mCasasSaldo-1;
mem_movSALDO.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);

mem_movQUANT.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasind);
mem_movPRECO.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcasind,mcasind);
mem_movtotal.DisplayFormat:=mcasas;
tsComparativoGeral.TabVisible:=FALSE;

mtabtemp:=fProcTemp(0);
fextp2CriaTemp(0);
mtabtemp02:=fProcTemp(0);
fextp2CriaTemp02(0);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if Log_TipoLote=2 then
   begin
   lbl_grade.Caption:='Grade:';
   lbl_grade.Visible:=True;
   GRADE.Visible    :=True;
   GRADE.Text       :='';
   end
else if Log_TipoLote=1 then
   begin
   lbl_grade.Caption:='Lote.:';
   lbl_grade.Visible:=True;
   GRADE.Visible    :=True;
   GRADE.Text       :='';
   end;

end;

procedure TFrm_Extp2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mdiferenca: Real;
mcampolgc: String;
begin
If (Key=120) and (Shift=[ssCtrl]) then // ctrl-f9
   begin
   rg_serie.Visible:=rg_serie.Visible=false;
   end;


If (Key=120) and (Shift=[ssCtrl]) then // ctrl-f9
   begin
   rg_serie.Visible:=rg_serie.Visible=false;
   end;

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
flcadpro(1,0,0,Trim(CODPRO2.Text));
end;

procedure TFrm_Extp2.CODPRO2Enter(Sender: TObject);
begin
Qr_Mov.Close;
end;

procedure TFrm_Extp2.FormCloseQuery(Sender: TObject;
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
      ex_erroSql(01,745,'Frm_Extp2',mtabtemp);
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
      ex_erroSql(02,745,'Frm_Extp2',mtabtemp02);
      end;
   end;
end;

function fextp2CriaTemp(ptipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
if ptipo=1 then
   begin
   DM1.Query1.SQL.Add('Delete from '+mtabtemp);
   end
else
   begin
   DM1.Query1.SQL.Add('Create Table '+mtabtemp
                  +'('
                  +'REGISTRO NUMBER, '
                  +'DATA DATE, '
                  +'CODIGO NUMBER(14), '
                  +'FORCLI VARCHAR2(02),'
                  +'DOCUM  NUMBER(14),'
                  +'QUANT  NUMBER(15,3),'
                  +'LOTE   VARCHAR2(20),'
                  +'PRECO  NUMBER(15,3),'
                  +'TIPOMOV VARCHAR2(50),'
                  +'TIPO   NUMBER(03), '
                  +'ENTSAI NUMBER(03)'
                  +',CODUSR NUMBER'
                  +',EMIDOC NUMBER '
                  +',NUMNF VARCHAR2(44) '
                  +',DATANF DATE '

                  +')');
   end;               
try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.sql.savetofile('c:\sge\errolivro.txt')
   end;
result:=true;
end;


function fextp2CriaTemp02(ptipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
if ptipo=1 then
   begin
   DM1.Query1.SQL.Add('Delete from '+mtabtemp02);
   end
else
   begin
   DM1.Query1.SQL.Add('Create Table '+mtabtemp02
                     +'('
                     +'CODIGO NUMBER(14), '
                     +'GRADE  VARCHAR2(20), '
                     +'DESCRICAO VARCHAR2(100), '
                     +'UND    VARCHAR2(03),'
                     +'SALDO_INIC  NUMBER,'
                     +'VENDAS NUMBER,'
                     +'DEVOL_CLIENTE NUMBER,'
                     +'DEVOL_FORNEC NUMBER,'
                     +'COMPRAS NUMBER,'
                     +'ENTRADA_AJUSTE NUMBER,'
                     +'SAIDA_AJUSTE NUMBER,'
                     +'ENTRADA_OP NUMBER,'
                     +'SAIDA_OP NUMBER,'
                     +'SALDO NUMBER,'
                     +'ESTOQUE NUMBER '
                     +' )');
   end;
DM1.Query1.ExecSQL;

result:=true;
end;


procedure TFrm_Extp2.GRADEExit(Sender: TObject);
begin
if Log_TipoLote=2 then
   begin
   if not flcadlgc(0,1,0,Trim(CODPRO2.Text),GRADE.Text,'') then
      begin
      FMensagem('Grade Não cadastrada!',0,['0'],0);
      CODPRO2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Extp2.FormClose(Sender: TObject; var Action: TCloseAction);
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
procedure TFrm_Extp2.bbAtuaGerClick(Sender: TObject);
var
mDataEstoque:tDateTime;
x,mMes_Ant: Integer;
mDia_inicio: Integer;

begin


if (Trim(MDT1_02.Text)<>'/  /') and (Trim(MDT2_02.Text)<>'/  /') then
    begin
    if StrToDate(MDT2_02.Text)<StrToDate(MDT1_02.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1_02.SetFocus;
       exit;
       end;
    end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fextp2CriaTemp02(1);
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(1,'CADP02_LOTES','P2LM_CODEMP','P1CODEMP','P2LM_LOTSEQ(+)','P1LOTSEQ','P2LM_CHAVE(+)','P1CHAVE');
if lbx_codfor.Items.Count>0 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADP02_LOTES','P2LM_CODEMP','PDCODEMP','P2LM_CODPRO','PDCODPRO');
   end;


mcinst4:=fGerarInstrucaoQtd(4,'ROUND((CASE WHEN P2LM_QTD IS NULL THEN   CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END ELSE P2LM_QTD END )) ',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select P2CODPRO '
                     +iif(Log_TipoLote=2,',DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)',',max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE))')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +','+mcinst4+' AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADP01'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P1STATUS<'+mstatus_excluido+' ');
if Trim(MDT1_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

if rg_tipo.ItemIndex=0 then
   DM1.Query1.SQL.add(' and ('
   +'     (P1TIPO=01) or (P1TIPO=02) or '
   +'     (P1TIPO=04) or (P1TIPO=05) or '
   +'     (P1TIPO=06) or (P1TIPO=07) or '
   +'     (P1TIPO=09) or (P1TIPO=11) or (P1TIPO=16) or (P1TIPO>=18) ) ')
else if rg_tipo.ItemIndex=1 then
   DM1.Query1.SQL.Add(' and (P1TIPO=12 or P1TIPO=14 ) ')
else if rg_tipo.ItemIndex=2 then
   DM1.Query1.SQL.Add(' and (P1TIPO=13 or P1TIPO=15 ) ')
else if rg_tipo.ItemIndex=3 then
   DM1.Query1.SQL.Add(' and (P1TIPO=19) ');

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);



if rg_serie.ItemIndex<>2 then
   dm1.query1.sql.add(' and P1SERIE='+QuotedStr(IntToStr(rg_serie.ItemIndex+1)));

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

DM1.Query1.SQL.Add(' group by P2CODPRO'
                     +iif(Log_TipoLote=2,',P2LOTE',''));

//DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.txt');
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,299,'Frm_Extp2',mtabtemp);
  end;


{
if RG_TIPO.ItemIndex=0 then
   mdesc:=insere2('Devolução cliente',' ',50)
else if RG_TIPO.ItemIndex=1 then
   mdesc:=insere2('Mercadoria Consignada',' ',50)
else if RG_TIPO.ItemIndex=2 then
   mdesc:=insere2('Mercadoria Remetida p/Venda',' ',50)
else if RG_TIPO.ItemIndex=3 then
   mdesc:=insere2('Mercadoria de Terceiro',' ',50);
}


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select P2CODPRO '
                     +iif(Log_TipoLote=2,',DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)',',max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE))')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +','+mcinst4+' AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADP01'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P1STATUS<'+mstatus_excluido+' ');
if Trim(MDT1_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1_02.Text)));
if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT1_02.Text)));
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);


if RG_TIPO.ItemIndex=0 then
   DM1.Query1.SQL.add(' and   ( (P1TIPO=08) or (P1TIPO=12) or '
                        +'     (P1TIPO=13) or (P1TIPO=17) or (P1TIPO=18) )')
else if RG_TIPO.ItemIndex=1 then
   DM1.Query1.SQL.Add(' and P1TIPO=11 ')
else if RG_TIPO.ItemIndex=2 then
   DM1.Query1.SQL.Add(' and P1TIPO=07 ');


if Trim(MDT1_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1_02.Text)));
if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT2_02.Text)));
DM1.Query1.SQL.Add(' group by P2CODPRO'
                     +iif(Log_TipoLote=2,',P2LOTE',''));

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,515,'Frm_Extp2',mtabtemp);
  end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
if(trim(la_instrucao)<>'') then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ(+)','PF2LOTSEQ','PF2L_CHAVE(+)','PF2CHAVE','PF2L_CODPRO','PF2CODPRO');

if lbx_codfor.Items.Count>0 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select PF2CODPRO '
                     +iif(Log_TipoLote=2,',DECODE(PF2LOTE,NULL,PF2L_LOTE,PF2LOTE)',',max(DECODE(PF2LOTE,NULL,PF2L_LOTE,PF2LOTE))')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', ROUND(decode(PF2L_QTD,null,PF2QTDP,PF2L_QTD),2) AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' PF1STATUS<8 and PF1TIPO<2 ');
if Trim(MDT1_02.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and PF1DATCONF>='+chr(39)+MDT1_02.Text+chr(39));
if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and PF1DATCONF<='+chr(39)+MDT2_02.Text+chr(39));
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PF2CODPRO '+mcinst2);

//DM1.Query1.SQL.Add(' and substr(to_char(pf2cfo),-3,3)<>'+chr(39)+'902'+chr(39));

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);


if RG_TIPO.ItemIndex=3 then
   DM1.query1.SQL.Add(' and PF1ORIGEM=1 ')
else if RG_TIPO.ItemIndex>0 then
   DM1.query1.SQL.Add(' and PF1DATCONF is null ');
DM1.Query1.SQL.Add(' group by PF2CODPRO'
                     +iif(Log_TipoLote=2,',PF2LOTE',''));
//DM1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.txt');

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,404,'Frm_Extp2',mtabtemp);
  end;

mdesc:='Ajuste ';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);

if lbx_codfor.Items.Count>0 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'AJCODEMP','PDCODPRO' ,'AJCODPRO');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select AJCODPRO '
                     +iif(Log_TipoLote=2,',AJLOTE',',max(AJLOTE)')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', sum(DECODE(AJTIPOM,0,AJQTD '
                                          +' ,30,AJQTD '
                                          +' ,22,AJQTD '
                                          +' ,12,AJQTD '
                                          +' ,0)) AS ENTRADA_AJUSTE'
                     +', sum(DECODE(AJTIPOM,0,0 '
                                          +',30,0 '
                                          +',22,0 '
                                          +',12,0 '
                                          +',AJQTD)) AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADAJU'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' AJESTMOV<100 ');


if Trim(MDT1_02.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and AJDATA>='+chr(39)+MDT1_02.Text+chr(39));
if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and AJDATA<='+chr(39)+MDT2_02.Text+chr(39));
if RG_TIPO.ItemIndex=0 then
   DM1.Query1.SQL.add('and (AJESTMOV=0 or AJESTMOV=3) ')
else
   DM1.Query1.SQL.add(' and AJESTMOV=0'+IntTostr(RG_TIPO.ItemIndex));
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and AJCODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);


DM1.Query1.SQL.Add(' group by AJCODPRO'
                     +iif(Log_TipoLote=2,',AJLOTE',''));

Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,441,'Frm_Extp2',mtabtemp);
   end;


mdesc:=insere2('Devolução Fornecedor',' ',50);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if RG_TIPO.ItemIndex=0 then
   begin
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   if lbx_codfor.Items.Count>0 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select P2CODPRO '
                     +iif(Log_TipoLote=2,',DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE)',',max(DECODE(P2LOTE,null,P2LM_LOTE,P2LOTE))')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +','+mcinst4+' AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADP01'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P1STATUS<'+mstatus_excluido+'  and P1TIPO=3');
   if Trim(MDT1_02.Text)<>'/  /' then
      DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1_02.Text)));
   if Trim(MDT2_02.Text)<>'/  /' then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',FALSE,StrToDate(MDT1_02.Text)));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);


   DM1.Query1.SQL.add(' Group by P2CODPRO'+iif(Log_TipoLote=2,',P2LOTE','')
);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2097,'Frm_Extp2',mtabtemp);
      end;
   end;

////////////// ENTRADA POR OP.
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);

if RG_TIPO.ItemIndex=0 then
   begin
   fInnerJoin3(1,'CADOP02','OP2_CODEMP','OP1_CODEMP','OP2_CODIGO','OP1_CODIGO','OP2_FABENV','OP1_FABENV');
   if lbx_codfor.Items.Count>0 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP', 'OP2_CODEMP','PDCODPRO' ,'OP2_CODPRO');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select OP2_CODPRO '
                     +iif(Log_TipoLote=2,',OP2_NUMERO',',max(OP2_NUMERO)')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', sum(OP2_QTDPROD) AS ENTRADA_OP'
                     +', 0 AS SAIDA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADOP01'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' OP1_STATUS=2');

   if Trim(MDT1_02.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA>='+chr(39)+MDT1_02.Text+chr(39));
   if Trim(MDT2_02.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA<='+chr(39)+MDT2_02.Text+chr(39));
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and OP1_LOTE='+chr(39)+GRADE.Text+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and OP2_CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);


   DM1.Query1.SQL.add(' Group by OP2_CODPRO'+iif(Log_TipoLote=2,',OP2_NUMERO',''));
//   DM1.Query1.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2180,'Frm_Extp2',mtabtemp);
      end;
   end;

//////////////////////////////////////////////////////////////////////////////

////////////// SAIDA POR OP.
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);

if RG_TIPO.ItemIndex=0 then
   begin
   fInnerJoin3(1,'CADOP03','OP3_CODEMP','OP1_CODEMP','OP3_CODIGO','OP1_CODIGO','OP3_FABENV','OP1_FABENV');

   if lbx_codfor.Items.Count>0 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(1,'CADPRO','PDCODEMP', 'OP3_CODEMP','PDCODPRO' ,'OP3_CODIGO','OP3_FABENV','OP1_FABENV');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select OP3_CODMAT '
                     +iif(Log_TipoLote=2,',OP3_NUMERO',',max(OP3_NUMERO)')+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', sum(OP3_QTDUTIL) AS ENTRADA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADOP01'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' OP1_STATUS=2');
   if Trim(MDT1_02.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA>='+chr(39)+MDT1_02.Text+chr(39));
   if Trim(MDT2_02.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and OP1_DATA<='+chr(39)+MDT2_02.Text+chr(39));
   if Trim(GRADE.Text)<>'' then
      DM1.Query1.SQL.Add(' and OP3_LOTE='+chr(39)+GRADE.Text+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and OP3_CODMAT '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

   DM1.Query1.SQL.add(' Group by OP3_CODMAT'+iif(Log_TipoLote=2,',OP3_NUMERO',''));
//   DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2263,'Frm_Extp2',mtabtemp);
      end;
   end;
// estoque atual
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if Log_TipoLote=2 then
   begin
   if lbx_codfor.Items.Count>0 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP', 'CLCODEMP','PDCODPRO' ,'CLCODPRO');
      end;

   la_Empresas:=fEmpresas_Selecionadas('CADLGC','CLCODEMP',Form_SelEmp.CLB_EMPRESAS);

   if CB_TIPOEST.ItemIndex=3 then
      mcampo_qtd:='CLQTDT'
   else if CB_TIPOEST.ItemIndex=2 then
      mcampo_qtd:='CLQTDR'
   else if CB_TIPOEST.ItemIndex=1 then
      mcampo_qtd:='CLQTDC'
   else
      mcampo_qtd:='CLQTD';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select CLCODPRO '
                     +', CLNUMERO as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SALDO'
                     +', sum('+mcampo_qtd+') AS ESTOQUE'
                     +' FROM CADLGC'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CLCODEMP<>-101');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CLCODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

   DM1.Query1.SQL.add(' Group by CLCODPRO,CLNUMERO');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2343,'Frm_Extp2',mtabtemp);
      end;
   end
else
   begin
   if lbx_codfor.Items.Count>0 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP', 'CECODEMP','PDCODPRO' ,'CECODPRO');
      end;

   la_Empresas:=fEmpresas_Selecionadas('CADEST','CECODEMP',Form_SelEmp.CLB_EMPRESAS);

   if CB_TIPOEST.ItemIndex=3 then
      mcampo_qtd:='CESALDOT'
   else if CB_TIPOEST.ItemIndex=2 then
      mcampo_qtd:='CESALDOR'
   else if CB_TIPOEST.ItemIndex=1 then
      mcampo_qtd:='CESALDOC'
   else
      mcampo_qtd:='CESALDO';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select CECODPRO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as GRADE '
                     +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SALDO'
                     +', sum('+mcampo_qtd+') AS ESTOQUE'
                     +' FROM CADEST'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CECODEMP<>-101');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CECODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

   DM1.Query1.SQL.add(' Group by CECODPRO');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2419,'Frm_Extp2',mtabtemp);
      end;
   end;

if trim(MDT1_02.Text)<>'/  /' then
   begin
   mDataEstoque:=StrtoDate(MDT1_02.Text)-1;
   if CB_TIPOEST.ItemIndex=3 then
      mcampo_qtd:='CED_QTDDIAT'
   else if CB_TIPOEST.ItemIndex=2 then
      mcampo_qtd:='CED_QTDDIAR'
   else if CB_TIPOEST.ItemIndex=1 then
      mcampo_qtd:='CED_QTDDIAC'
   else
      mcampo_qtd:='CED_QTDDIA';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', mDataEstoque)
                     +' and CED_MES=0'+FormatDateTime('mm',mDataEstoque));
   mDia_inicio:=valint(FormatDateTime('dd',mDataEstoque));
   if mDia_inicio<2 then
      DM1.Query1.SQL.add(' and '+mcampo_qtd+FormatFloat('00', mDia_inicio)+'<>0')
   else
      begin
      DM1.Query1.SQL.add(' and (');
      mcinst2:='';
      for x:=mDia_inicio downto 1 do
         begin
         DM1.Query1.SQL.add(mcinst2+' '+mcampo_qtd+FormatFloat('00', x)+'<>0');
         mcinst2:=' or ';
         end;
      DM1.Query1.SQL.add(' )');
      end;

   try
      DM1.Query1.Open;
   except
      DM1.Query1.sql.savetofile(mpastatemp + 'SQL.TXT');
      end;
//   LINDOMAR
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEDIA where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( (CED_ANO=0'+FormatDateTime('yyyy', mDataEstoque)
                        +' and CED_MES<'+FormatDateTime('mm',mDataEstoque)
                        +' ) or CED_ANO<'+FormatDateTime('yyyy', mDataEstoque)
                        + ')'
                        +' GROUP BY CED_ANO, CED_MES '
                        +' order by CED_ANO DESC, CED_MES DESC '
                                               );
      try
         DM1.Query1.Open;
      except
         DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');
         end;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         mDataEstoque:=pdatanula
      else
         begin
         mDataEstoque:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',mDataEstoque));
         mboolean:=true;
         While mboolean do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', sum('+mcampo_qtd+FormatFloat('00',x)+') as '+mcampo_qtd+FormatFloat('00',x) );
               end;
            DM1.Query1.SQL.add(' from CADEDIA ');

            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', mDataEstoque));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', mDataEstoque));
            DM1.Query1.SQL.add(' group by CED_ANO,CED_MES,CED_CODPRO');
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               mDataEstoque:=pdatanula;
               mboolean:=false;
               break;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mcampo_qtd+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     mDataEstoque:=StrtoDate(FormatFloat('00',x)+'/'+Formatdatetime('mm/yyyy',mDataEstoque));
                     mboolean:=false;
                     break;
                     end;
                  end;
               if not mboolean then
                  continue
               end;
            if not mboolean then
               continue;
            While Valint(FormatDatetime('mm',mDataEstoque))=mMes_ant do
               begin
               mDataEstoque:=mDataEstoque-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',mDataEstoque));
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
         DM1.Query1.SQL.Add(', sum('+mcampo_qtd+FormatFloat('00',x)+') as '+mcampo_qtd+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEDIA ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', mDataEstoque));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', mDataEstoque));
      DM1.Query1.SQL.add(' Group by CED_ANO,CED_MES,CED_CODPRO');
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         mDataEstoque:=pdatanula;
         end
      else
         begin
         mDia_inicio:=Valint(FormatDateTime('dd',mDataEstoque));
         for x:=mDia_inicio downto 1 do
            begin
            if DM1.query1.FieldByName(mcampo_qtd+FormatFloat('00',x)).AsFloat<>0 then
               begin
               mDataEstoque:=StrtoDate(FormatFloat('00',x)+'/'+Formatdatetime('mm/yyyy',mDataEstoque));
               break;
               end;
            end;
         end;
      end;
   end;
if mDataEstoque>pdatanula then
   begin
//   ShowMessage('dATA eSTOQUE? '+formatDatetime(fdt2, mdataestoque));
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   if Log_TipoLote=2 then
      begin
      if lbx_codfor.Items.Count>0 then
         begin
         if (pbanco=0) and (trim(la_instrucao)<>'') then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(1,'CADPRO','PDCODEMP', 'CED_CODEMP','PDCODPRO' ,'CED_CODPRO');
         end;

      la_Empresas:=fEmpresas_Selecionadas('CADEDIA','CED_CODEMP',Form_SelEmp.CLB_EMPRESAS);

      if CB_TIPOEST.ItemIndex=3 then
         mcampo_qtd:='CED_QTDDIAT'
      else if CB_TIPOEST.ItemIndex=2 then
         mcampo_qtd:='CED_QTDDIAR'
      else if CB_TIPOEST.ItemIndex=1 then
         mcampo_qtd:='CED_QTDDIAC'
      else
         mcampo_qtd:='CED_QTDDIA';

      mcampo_qtd:=mcampo_qtd+FormatDateTime('dd',mDataEstoque);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                        +'('
                        +'CODIGO, '
                        +'GRADE, '
                        +'DESCRICAO, '
                        +'UND,'
                        +'SALDO_INIC,'
                        +'VENDAS,'
                        +'DEVOL_CLIENTE,'
                        +'COMPRAS,'
                        +'ENTRADA_AJUSTE,'
                        +'SAIDA_AJUSTE,'
                        +'DEVOL_FORNEC,'
                        +'ENTRADA_OP,'
                        +'SAIDA_OP,'
                        +'SALDO,'
                        +'ESTOQUE '
                        +' )'
                        +' Select CED_CODPRO '
                        +', CED_GRADE as GRADE '
                        +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                        +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                        +',sum('+mcampo_qtd+') AS SALDO_INIC'
                        +', 0 AS VENDAS'
                        +', 0 AS DEVOL_CLIENTE'
                        +', 0 AS COMPRAS'
                        +', 0 AS ENTRADA_AJUSTE'
                        +', 0 AS SAIDA_AJUSTE'
                        +', 0 AS DEVOL_FORNEC'
                        +', 0 AS ENTRADA_OP'
                        +', 0 AS ENTRADA_OP'
                        +', 0 AS SALDO'
                        +', 0 AS ESTOQUE'
                        +' FROM CADEGD'+iif(la_tabelas='','',',')+la_tabelas
                                   +'       '+la_Join
                                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                   +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', mDataEstoque));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', mDataEstoque));

      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CED_CODPRO '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

      DM1.Query1.SQL.add(' Group by CED_CODPRO,CED_GRADE');
//      DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');

      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2652,'Frm_Extp2',mtabtemp);
         end;
      end
   else
      begin
      if lbx_codfor.Items.Count>0 then
         begin
         if (pbanco=0) and (trim(la_instrucao)<>'') then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(1,'CADPRO','PDCODEMP', 'CED_CODEMP','PDCODPRO' ,'CED_CODPRO');
         end;

      la_Empresas:=fEmpresas_Selecionadas('CADEDIA','CED_CODEMP',Form_SelEmp.CLB_EMPRESAS);

      if CB_TIPOEST.ItemIndex=3 then
         mcampo_qtd:='CED_QTDDIAT'
      else if CB_TIPOEST.ItemIndex=2 then
         mcampo_qtd:='CED_QTDDIAR'
      else if CB_TIPOEST.ItemIndex=1 then
         mcampo_qtd:='CED_QTDDIAC'
      else
         mcampo_qtd:='CED_QTDDIA';
      mcampo_qtd:=mcampo_qtd+FormatDateTime('dd',mDataEstoque);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                        +'('
                        +'CODIGO, '
                        +'GRADE, '
                        +'DESCRICAO, '
                        +'UND,'
                        +'SALDO_INIC,'
                        +'VENDAS,'
                        +'DEVOL_CLIENTE,'
                        +'COMPRAS,'
                        +'ENTRADA_AJUSTE,'
                        +'SAIDA_AJUSTE,'
                        +'DEVOL_FORNEC,'
                        +'ENTRADA_OP,'
                        +'SAIDA_OP,'
                        +'SALDO,'
                        +'ESTOQUE '
                        +' )'
                        +' Select CED_CODPRO '
                        +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as GRADE '
                        +','+chr(39)+insere2(' ',' ',53)+chr(39)+' as DESCRICAO '
                        +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as UND '
                        +',sum('+mcampo_qtd+') AS SALDO_INIC'
                        +', 0 AS VENDAS'
                        +', 0 AS DEVOL_CLIENTE'
                        +', 0 AS COMPRAS'
                        +', 0 AS ENTRADA_AJUSTE'
                        +', 0 AS SAIDA_AJUSTE'
                        +', 0 AS DEVOL_FORNEC'
                        +', 0 AS ENTRADA_OP'
                        +', 0 AS ENTRADA_OP'
                        +', 0 AS SALDO'
                        +', 0 AS ESTOQUE'
                        +' FROM CADEDIA'+iif(la_tabelas='','',',')+la_tabelas
                                   +'       '+la_Join
                                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                   +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', mDataEstoque));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', mDataEstoque));
      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CED_CODPRO '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

      DM1.Query1.SQL.add(' Group by CED_CODPRO');
//      DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');

      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2732,'Frm_Extp2',mtabtemp);
         end;
      end;
   end;


// cadastro de produtos
if Log_TipoLote=2 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'CED_CODEMP','PDCODPRO' ,'CED_CODPRO');


   la_Empresas:=fEmpresas_Selecionadas('CADEDIA','CED_CODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select CED_CODPRO '
                     +', CED_GRADE as GRADE '
                     +', PDNOME as DESCRICAO '
                     +', PDUND as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADEGD '+iif(la_tabelas='','',',')+la_tabelas
                                   +'       '+la_Join
                                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                   +' CED_CODEMP<>-101');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CED_CODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);
   DM1.Query1.SQL.add(' Group by CED_CODPRO, CED_GRADE,PDNOME,PDUND');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2807,'Frm_Extp2',mtabtemp);
      end;

   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into '+mtabtemp02
                     +'('
                     +'CODIGO, '
                     +'GRADE, '
                     +'DESCRICAO, '
                     +'UND,'
                     +'SALDO_INIC,'
                     +'VENDAS,'
                     +'DEVOL_CLIENTE,'
                     +'COMPRAS,'
                     +'ENTRADA_AJUSTE,'
                     +'SAIDA_AJUSTE,'
                     +'DEVOL_FORNEC,'
                     +'ENTRADA_OP,'
                     +'SAIDA_OP,'
                     +'SALDO,'
                     +'ESTOQUE '
                     +' )'
                     +' Select PDCODPRO '
                     +','+chr(39)+insere2(' ',' ',03)+chr(39)+' as GRADE '
                     +', PDNOME as DESCRICAO '
                     +', PDUND as UND '
                     +', 0 AS SALDO_INIC'
                     +', 0 AS VENDAS'
                     +', 0 AS DEVOL_CLIENTE'
                     +', 0 AS COMPRAS'
                     +', 0 AS ENTRADA_AJUSTE'
                     +', 0 AS SAIDA_AJUSTE'
                     +', 0 AS DEVOL_FORNEC'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS ENTRADA_OP'
                     +', 0 AS SALDO'
                     +', 0 AS ESTOQUE'
                     +' FROM CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                     +' PDCODEMP<>-101 ');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);

   DM1.Query1.SQL.add(' Group by PDCODPRO,PDNOME,PDUND');
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2863,'Frm_Extp2',mtabtemp);
      end;
   end;

Qr_Resumo.Close;
Qr_Resumo.SQL.Clear;
Qr_Resumo.SQL.Add('Select CODIGO,'
                 +iif(Log_TipoLote=2,'GRADE ','max(GRADE) ')+' as GRADE, '
                 +'max(DESCRICAO) as DESCRICAO, '
                 +'max(UND) as UND, '
                 +'sum(SALDO_INIC) AS SALDO_INIC,sum(VENDAS) AS vendas, '
                 +'sum(DEVOL_CLIENTE) as DEVOL_CLIENTE, '
                 +'sum(DEVOL_FORNEC) as DEVOL_FORNEC, '
                 +'sum(COMPRAS) as COMPRAS, '
                 +'sum(ENTRADA_AJUSTE) as ENTRADA_AJUSTE, '
                 +'sum(SAIDA_AJUSTE) as SAIDA_AJUSTE, '
                 +'sum(ENTRADA_OP) as ENTRADA_OP, '
                 +'sum(SAIDA_OP) as SAIDA_OP, '
                 +'sum(ESTOQUE) as ESTOQUE '
                 +',sum(SALDO_INIC+DEVOL_CLIENTE+COMPRAS+ENTRADA_AJUSTE+ENTRADA_OP-(VENDAS+DEVOL_FORNEC+SAIDA_AJUSTE+SAIDA_OP)) AS SALDO '
                 +' FROM '+mtabtemp02
                 +' GROUP BY CODIGO'
                 +iif(Log_TipoLote=2,',GRADE ','')
                 +' order by DESCRICAO,CODIGO ');
try
   Qr_Resumo.Open;
except
   Qr_Resumo.SQL.savetofile(mpastatemp + 'SQL.TXT');
   end;


end;

procedure TFrm_Extp2.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_Extp2.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_Extp2.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Extp2.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Extp2.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Extp2.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;


end;

procedure TFrm_Extp2.MDT1_02Exit(Sender: TObject);
begin
if Trim(MDT1_02.Text)<>'/  /' then
   begin
   Try
      MDT1_02.Text:=FormatDateTime(fdt2,StrToDate(MDT1_02.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT1_02.SetFocus;
      end;
   end;

end;

procedure TFrm_Extp2.MDT2_02Exit(Sender: TObject);
begin
if Trim(MDT2_02.Text)<>'/  /' then
   begin
   Try
      MDT2_02.Text:=FormatDateTime(fdt2,StrToDate(MDT2_02.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT2_02.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Extp2.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_ResumoSALDO.AsFloat<>Qr_ResumoESTOQUE.AsFloat then
   begin
   DBGrid2.Canvas.Font.Color:=clRed;
   DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
end;

procedure TFrm_Extp2.bbImpGerClick(Sender: TObject);
begin
testeform := TFrm_Extp2(FindGlobalComponent('form_impres_extp2'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_extp2);

form_impres_extp2.fimpresajustaimp(4,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Qr_Resumo.First;
form_impres_extp2.mlin:=0;
form_impres_extp2.mpag:=0;

While not Qr_Resumo.Eof do
   begin
   if CB_FILTRAR.ItemIndex=1 then
       begin
       if Qr_ResumoSALDO.AsFloat=Qr_ResumoESTOQUE.AsFloat then
          begin
          Qr_Resumo.Next;
          Continue;
          end
       end
   else if CB_FILTRAR.ItemIndex=2 then
       begin
       if Qr_ResumoSALDO.AsFloat<>Qr_ResumoESTOQUE.AsFloat then
          begin
          Qr_Resumo.Next;
          Continue;
          end
       end;
   if form_impres_extp2.mlin=0 then
      begin
      form_impres_extp2.mpag:=form_impres_extp2.mpag+1;
      form_impres_extp2.fImprimirCabecalho(136,'Extrato Comparativo Geral');
      form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
      form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,001,insere2('=','=',160),m20ccp);
      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
//      if lbx_codpro.Count>0 then
//         FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
{
+--------+-----------------------------------+---------+---------+--------+--------+--------+--------+---------+--------+--------+---------+---------+---------+
|        |                                   |  Saldo  | Vendas  |  Devol.| Saidas | Saidas | Devol. | Compras |Entradas|Entradas|  Saldo  | Estoque |Diferenca|
| Codigo |Descricao do Produto               | Inicial | Periodo | Fornec.|p/Ajuste|Producao|Cliente | Periodo |p/Ajuste|Producao| Extrato | Produto |  Produto|
|12345678|12345678901234567980123456789012345|123456789|123456789|12345678|12345678|12345678|12345678|123456789|12345678|12345678|123456789|123456789|123456789|
}
      form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
      form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,001,'+--------+-----------------------------------+---------+---------+--------+--------+--------+--------+---------+--------+--------+---------+---------+---------+',m20ccp);
      form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
      form_impres_extp2.Rdprint1.ImpF(form_impres_extp2.mlin,001,'|        |                                   |  Saldo  | Vendas  |  Devol.| Saidas | Saidas | Devol. | Compras |Entradas|Entradas|  Saldo  | Estoque |Diferenca|',m20ccp);
      form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
      form_impres_extp2.Rdprint1.ImpF(form_impres_extp2.mlin,001,'| Codigo |Descricao do Produto               | Inicial | Periodo | Fornec.|p/Ajuste|Producao|Cliente | Periodo |p/Ajuste|Producao| Extrato | Produto |  Produto|',m20ccp);
      end;

   form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
   form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,001,'|'
                           +insere2(Qr_ResumoCODIGO.AsString
                           +iif(Log_TipoLote=2,'/'+Qr_ResumoGRADE.AsString,''),' ',8)
                           +'|'
                           +Insere2(Qr_ResumoDESCRICAO.AsString,' ',35)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoSALDO_INIC.AsFloat),' ',09)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoVENDAS.AsFloat),' ',09)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoDEVOL_FORNEC.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoSAIDA_AJUSTE.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoSAIDA_OP.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoDEVOL_CLIENTE.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoCOMPRAS.AsFloat),' ',09)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoENTRADA_AJUSTE.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoENTRADA_OP.AsFloat),' ',08)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoSALDO.AsFloat),' ',09)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoESTOQUE.AsFloat),' ',09)+'|'
                           +insere(Formatfloat(mCasasDec, Qr_ResumoESTOQUE.AsFloat-Qr_ResumoSALDO.AsFloat),' ',09)+'|'
                           ,m20ccp);
   Qr_Resumo.Next;

   if not Qr_Resumo.Eof then
      begin
      if form_impres_extp2.mlin>57 then
         begin
         form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
         form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,001,'+Continua...---------------------------------+---------+---------+--------+--------+--------+--------+---------+--------+--------+---------+---------+---------+',m20ccp);
         form_impres_extp2.RDprint1.Novapagina;
         form_impres_extp2.mlin:=0;
         end;
      end;
   end;
form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,001,'+fim-----+-----------------------------------+---------+---------+--------+--------+--------+--------+---------+--------+--------+---------+---------+---------+',m20ccp);
if form_impres_extp2.RDprint1.Setup then form_impres_extp2.RDprint1.Fechar;
form_impres_extp2.free;
form_impres_extp2:=nil;


end;


function tFrm_Extp2.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_extp2.mlin:=form_impres_extp2.mlin+1;
      form_impres_extp2.RDprint1.ImpF(form_impres_extp2.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_Extp2.CB_CASASDExit(Sender: TObject);
begin
if CB_CASASD.ItemIndex=0 then
   mCasasDec:=mcasind
else if CB_CASASD.ItemIndex=1 then
   mCasasDec:='###,###'
else
   mCasasDec:='###,##0'+sys_decimal+insere('0','0',CB_CASASD.ItemIndex-1);

end;

procedure TFrm_Extp2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Odd(mem_mov.RecNo) then
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
       begin
       DBGrid1.Canvas.Brush.Color := clActiveCaption;
       if mem_movEMIDOC.AsInteger=1 then
          DBGrid1.Canvas.Font.Color  := clWindow
       else
          DBGrid1.Canvas.Font.Color  := clRed;
       end
    else
       begin
       if mem_movEMIDOC.AsInteger=1 then
          DBGrid1.Canvas.Font.Color  := clBlack
       else
          DBGrid1.Canvas.Font.Color  := clRed;

       DBGrid1.Canvas.Brush.Color := clMoneyGreen;
       end;
   end
else
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
      begin
      DBGrid1.Canvas.Brush.Color := clActiveCaption;
      if mem_movEMIDOC.AsInteger=1 then
         DBGrid1.Canvas.Font.Color  := clWindow
      else
         DBGrid1.Canvas.Font.Color  := clRed;

      end
   else
      begin
      if mem_movEMIDOC.AsInteger=1 then
         DBGrid1.Canvas.Font.Color  := clBlack
      else
         DBGrid1.Canvas.Font.Color  := clRed;
      DBGrid1.Canvas.Brush.Color := clInfoBk;
      end;
   end;
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

end.

