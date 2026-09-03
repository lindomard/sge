unit S_RPed_Encargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,lerarq,func, Buttons, DB, DBTables,
  Grids, DBGrids, Gauges, S_Impres, S_SelEmp,s_lerarq_geral;

type
  TFrm_RPed_Encargos = class(TForm)
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsOutros: TTabSheet;
    Label6: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Vendas: TQuery;
    Qr_VendasVNOME: TStringField;
    Qr_VendasTOTAL: TFloatField;
    Qr_VendasSEMCOM: TFloatField;
    Qr_VendasFRETE: TFloatField;
    Qr_VendasICMSR: TFloatField;
    Qr_VendasP1CODVEN: TFloatField;
    Label1: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_EmiDoc: TCheckBox;
    Tb_Custo: TTable;
    Tb_CustoCODPRO: TFloatField;
    Tb_CustoCODENC: TFloatField;
    Tb_CustoNOMENC: TStringField;
    Tb_CustoPCOUCPR: TFloatField;
    Tb_CustoPCOCUS: TFloatField;
    Tb_CustoPCOVDA: TFloatField;
    Tb_CustoQTDVDA: TFloatField;
    Tb_CustoVLRENC: TFloatField;
    Tb_CustoNOMPRO: TStringField;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label15: TLabel;
    Tb_CustoLOCALPCO: TFloatField;
    Tb_CustoCODCLI: TFloatField;
    Tb_CustoCODVEN: TFloatField;
    Tb_CustoTABPV: TStringField;
    Tb_CustoCODPV: TFloatField;
    Tb_CustoCODTRA: TFloatField;
    rg_progresso: TGroupBox;
    Gauge1: TGauge;
    Label5: TLabel;
    cb_somado: TComboBox;
    Qr_Custo: TQuery;
    Tb_CustoCODSOM: TStringField;
    Tb_CustoNOMSOM: TStringField;
    TsGrids: TTabSheet;
    STG_TP00: TStringGrid;
    STG_TP01: TStringGrid;
    STG_TP03: TStringGrid;
    STG_TP04: TStringGrid;
    STG_TP09: TStringGrid;
    Qr_CustoCODSOM: TStringField;
    Qr_CustoNOMSOM: TStringField;
    Qr_CustoLOCALPCO: TFloatField;
    Qr_CustoQTDVDA: TFloatField;
    Qr_CustoVLRENC: TFloatField;
    Qr_CustoPCOCUS: TFloatField;
    Qr_CustoPCOVDA: TFloatField;
    Qr_CustoCODENC: TFloatField;
    Qr_CustoNOMENC: TStringField;
    Qr_CustoPCOUCPR: TFloatField;
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     function fRPed_EncImpCab(pTipo: Integer): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    form_Impres_RPed_Encargos: TFrm_Impres;
    end;


var
  Frm_RPed_Encargos: TFrm_RPed_Encargos;
  mRPed_TabTemp: String;

implementation

uses S_DM1, S_DM5, Math;

{$R *.dfm}

procedure TFrm_RPed_Encargos.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed_Encargos.CODVENKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrm_RPed_Encargos.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RPed_Encargos.bbImprimirClick(Sender: TObject);
var
mfator,mValor_Ori,mVlr_Calc,mVlr_Acum: Real;
mQtdGrid,x: Integer;
mCodSom_Ant,mNomSom_Ant: String;
mlin00,mlin01,mlin03,mlin04,mlin09: Integer;
mTotCpr, mTotCus,mTotPVdaSEnc,mTotPcoVda, mTotVda: Real;
mQtd,mLid: Integer;
begin
//          PAREI NESTE FORMULARIO TESTE DE VALORES
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';

DM1.Query5.Close;
DM1.Query5.Sql.Clear;
DM1.Query5.Sql.Add('Select sum(P2QTD) AS QTD '
                  +'       ,sum(P2TOTDES) AS TOTPRODES '
                  +'       ,sum(P2TOTLIQ) AS TOTPROLIQ '
                  +'       ,P2PCOCUS AS PCOCUS '
                  +'       ,P2UCPR   AS UCPR '
                  +'       ,P2CODPRO '

                  +'       ,max(P1TOTALL)   as TOTLIQ '
                  +'       ,max(P1VALFRE)   as VALFRE '
                  +'       ,max(P1FRETEPC)  as FRETEPC '
                  +'       ,max(P1CODCLI)   as CODCLI '
                  +'       ,max(P1CODVEN)   as CODVEN '
                  +'       ,max(P1TABPV)    as TABPV '
                  +'       ,max(P1CODPV)    as CODPV '
                  +'       ,max(P1CODTRA)   as CODTRA '

                  +'       ,P2REPAS,P2ICMSR '
                  +'       ,P2ALIPI,P2VALIPI '
                  +'       ,P2ALIQNR,P2ICMSNR '
                  +'       ,P2ALIQ,P2ICMSN, P2REDUTICM '
                  +'       ,P2PDESCF,P2VDESCF '
                  +'       ,P2VCOMIS, P2VCOM02, P2VCOM03,P2VCOM04 ');

if cb_somado.ItemIndex=0 then // Bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   DM1.Query5.Sql.Add(', TO_CHAR(max(CCODBAI)) AS CODSOM '
                     +', max(CBAIRRO) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=1 then // Banco
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO','BCCODEMP','P1CODEMP','BCCODBCO','P1BANCO');
   DM1.Query5.Sql.Add(', TO_CHAR(max(P1BANCO)) AS CODSOM '
                     +', max(decode(BCBANCO,null,'+chr(39)+'Carteira'+chr(39)+',BCBANCO)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=2 then // Cidade
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   DM1.Query5.Sql.Add(', TO_CHAR(max(CCODLOC)) AS CODSOM '
                     +', max(CCIDADE ||'+chr(39)+'-'+chr(39)+'|| CUF ) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=3 then // convenio
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCV','CVCODEMP','P1CODEMP','CVCODCV','P1CODCV');
   DM1.Query5.Sql.Add(', TO_CHAR(max(CCODCV)) AS CODSOM '
                     +', max(decode(CVRAZAO,null,'+chr(39)+'Sem Convenio'+chr(39)+',CVRAZAO)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=4 then // Estado
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   DM1.Query5.Sql.Add(', max(CUF) AS CODSOM '
                     +', max(CUF) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=5 then // Fornecedor
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   DM1.Query5.Sql.Add(', TO_CHAR(max(PDCODFOR)) AS CODSOM '
                     +', max(decode(PDNOMFOR,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',PDNOMFOR)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=6  then // Nome do produto
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   DM1.Query5.Sql.Add(', TO_CHAR(max(PDCODPRO)) AS CODSOM '
                     +', max(decode(PDNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',PDNOME)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=7  then // Plano de Vendas
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADPV','PVCODEMP','P1CODEMP','PVCODTIP','P1TABPV','PVCODPV','P1CODPV');
   DM1.Query5.Sql.Add(', max(PVCODTIP) ||'+chr(39)+'/'+'|| TO_CHAR(max(PVCODPV)) AS CODSOM '
                     +', max(decode(PVNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',PVNOME)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=8 then // Razao Social
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   DM1.Query5.Sql.Add(', max(TO_CHAR(CCODCLI)) AS CODSOM '
                     +', max(CRAZAO) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=9 then // Rede de cliente
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   DM1.Query5.Sql.Add(', max(TO_CHAR(CCODRED)) AS CODSOM '
                     +', max(decode(CNOMRED,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',CNOMRED)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=10 then // Supervisor
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADSUP','SCODEMP','VCODEMP','SCODSUP','VCODSUP');

   DM1.Query5.Sql.Add(', max(TO_CHAR(VCODSUP)) AS CODSOM '
                     +', max(decode(SNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',SNOME)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=11 then // televendas
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADUSR','CODEMP','P1CODEMP','CODUSR','P1CODTLV');
   DM1.Query5.Sql.Add(', max(TO_CHAR(P1CODTLV)) AS CODSOM '
                     +', max(decode(NOMUSR,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',NOMUSR)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=12 then // tipo do plano de vendas
   begin
   DM1.Query5.Sql.Add(', max(P1TABPV) AS CODSOM '
                     +', max(P1TABPV) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=13 then // transportadora
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADTRA','TRCODEMP','P1CODEMP','TRCODTRA','P1CODTRA');
   DM1.Query5.Sql.Add(', max(TO_CHAR(P1CODTRA)) AS CODSOM '
                     +', max(decode(TRRAZTRA,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',TRRAZTRA)) AS NOMSOM ');
   end
else if cb_somado.ItemIndex=14 then // Vendedor
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

   DM1.Query5.Sql.Add(', max(TO_CHAR(P1CODVEN)) AS CODSOM '
                     +', max(decode(VNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+',VNOME)) AS NOMSOM ');
   end;


DM1.Query5.Sql.Add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                  +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if CB_EmiDoc.Checked then
   DM1.Query5.SQL.Add('       and P1EMIDOC=1 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query5.Sql.Add(' and '+pdataPesq+'>='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query5.Sql.Add(' and '+pDataPesq+'<='+chr(39)+FormatDateTime(fdt2,StrtoDate(MDT2.Text))+chr(39));

mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query5.sql.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then DM1.Query5.sql.Add(' and P2CODPRO '+mcinst2);

DM1.Query5.SQL.add(' group by P2PCOCUS,P2UCPR,P2CODPRO '
                  +'       ,P2REPAS,P2ICMSR '
                  +'       ,P2ALIPI,P2VALIPI '
                  +'       ,P2ALIQNR,P2ICMSNR '
                  +'       ,P2ALIQ,P2ICMSN, P2REDUTICM '
                  +'       ,P2PDESCF,P2VDESCF '
                  +'       ,P2VCOMIS, P2VCOM02, P2VCOM03,P2VCOM04 ');
//DM1.Query5.SQL.savetofile(mpastatemp +'sql.txt');

try
   DM1.Query5.Open;
except
   DM1.Query5.SQL.savetofile(mpastatemp +'sql.txt');
   exit;
   end;
mQtd:=DM1.Query5.RecordCount;
mLid:=0;

{
//INICIO DA LEGENCA
990 - Frete
991 - Icms Retido
992 - Valor do Ipi
993 - Valor do Icms



995 - Repasse
996 - Desconto financeiro
}
// TERMINO DA LEGENDA

mRPed_TabTemp:=fProcTemp(11);

if Tb_Custo.Active then
   Tb_Custo.Close;
if Tb_Custo.Exists then
   Tb_Custo.DeleteTable;

Tb_Custo.TableName:=mRPed_TabTemp;
Tb_Custo.CreateTable;

Tb_Custo.Exclusive:=True;
Tb_Custo.Open;
Tb_Custo.AddIndex('PrimaryKey','CODPRO;CODENC;CODCLI;CODVEN;TABPV;CODPV;CODTRA',[ixPrimary, ixUnique ]);
{
  mTesta_Cli  : Boolean=false;
  mTesta_Ven  : Boolean=false;
  mTesta_TabPV: Boolean=false;
  mTesta_PV   : Boolean=false;
  mTesta_Tra  : Boolean=false;
}
//Tb_Custo.AddIndex('IBanco','Banco', [ixCaseInsensitive]);
//Tb_Custo.AddIndex('ICodigo','Codigo', [ixCaseInsensitive]);
//Tb_Custo.AddIndex('INumConta','NumConta', [ixCaseInsensitive]);
Tb_Custo.Close;
Tb_Custo.Exclusive:=False;

Tb_Custo.Open;
{
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create index '+mRPed_TabTemp+'0 on '+mRPed_TabTemp+' (CODPRO,CODENC) ');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   fMensagem('Erro ao Criar Indice da Tabela: '+mRPed_TabTemp,0,['0'],0);
   exit;
   end;

Tb_Custo.IndexName:=mRPed_TabTemp+'0';
}
While not DM1.Query5.Eof do
   begin
   mLid:=mLid+1;
   Gauge1.Progress:=mLid*100 div mQtd;
   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        990
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=990;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoNOMENC.AsString :='Frete Venda';
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;
      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;
      end;

   Tb_CustoPCOUCPR.AsFloat :=Tb_CustoPCOUCPR.AsFloat+(DM1.Query5.FieldbyName('UCPR').AsFloat*DM1.Query5.FieldbyName('QTD').AsFloat);
   Tb_CustoPCOCUS.AsFloat  :=Tb_CustoPCOCUS.AsFloat+(DM1.Query5.FieldbyName('PCOCUS').AsFloat*DM1.Query5.FieldbyName('QTD').AsFloat);
   Tb_CustoPCOVDA.AsFloat  :=Tb_CustoPCOVDA.AsFloat+(DM1.Query5.FieldbyName('TOTPROLIQ').AsFloat);
   Tb_CustoQTDVDA.AsFloat  :=Tb_CustoQTDVDA.AsFloat+(DM1.Query5.FieldbyName('QTD').AsFloat);

   IF DM1.Query5.FieldbyName('VALFRE').AsFloat<>0 then
      begin
      Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat+Arredonda(
                    ((DM1.Query5.FieldbyName('VALFRE').AsFloat*100)
                                    /DM1.Query5.FieldByName('TOTLIQ').AsFloat)
                    * DM1.Query5.FieldByName('TOTPROLIQ').AsFloat /100
                    , DM1.Tb_PargerPCASAS.AsInteger);
      end;


   Tb_Custo.Post;

   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        991
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=991;

      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;

      Tb_CustoNOMENC.AsString :='Icms Retido';
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat+DM1.Query5.FieldbyName('P2ICMSR').AsFloat;
   Tb_Custo.Post;

// TERMINO ICMS RETIDO



   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        992
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=992;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoNOMENC.AsString :='Valor do IPI';
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat+DM1.Query5.FieldbyName('P2VALIPI').AsFloat;
   Tb_Custo.Post;

// TERMINO do ipi



   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        993
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=993;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoNOMENC.AsString :='Vlr do Icms';
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat+DM1.Query5.FieldbyName('P2ICMSN').AsFloat
                            +DM1.Query5.FieldbyName('P2ICMSNR').AsFloat;
   Tb_Custo.Post;


// TERMINO do ICMS RETIDO


// TERMINO do ipi



   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        994
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=994;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      Tb_CustoNOMENC.AsString :='Vlr Comissao';
      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat+DM1.Query5.FieldbyName('P2VCOMIS').AsFloat
                            +DM1.Query5.FieldbyName('P2VCOM02').AsFloat
                            +DM1.Query5.FieldbyName('P2VCOM03').AsFloat
                            +DM1.Query5.FieldbyName('P2VCOM04').AsFloat;

// TERMINO DA COMISSAO

   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        995
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=995;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMENC.AsString :='Repas Icms';
      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat-DM1.Query5.FieldbyName('P2REPAS').AsFloat;
   Tb_Custo.Post;


// TERMINO do REPASSE



   if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                        996
                        ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                        ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                        ,DM1.Query5.FieldbyName('TABPV').AsString
                        ,DM1.Query5.FieldbyName('CODPV').AsFloat
                        ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                        ]) then
      begin
      Tb_Custo.Edit;
      end
   else
      begin
      Tb_Custo.Insert;
      Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
      Tb_CustoCODENC.AsFloat  :=996;
      Tb_CustoPCOUCPR.AsFloat :=0;
      Tb_CustoPCOCUS.AsFloat  :=0;
      Tb_CustoPCOVDA.AsFloat  :=0;
      Tb_CustoQTDVDA.AsFloat  :=0;
      Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
      Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
      Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
      Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
      Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
      Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
      Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

      Tb_CustoNOMENC.AsString :='Desc.Fin';
      Tb_CustoVLRENC.AsFloat  :=0;
      Tb_CustoLOCALPCO.AsFloat:=9;

      end;
   Tb_CustoVLRENC.AsFloat  :=Tb_CustoVLRENC.AsFloat-DM1.Query5.FieldbyName('P2VDESCF').AsFloat;

   Tb_Custo.Post;

{
990 - Frete
991 - Icms Retido
992 - Valor do Ipi
993 - Valor do Icms



995 - Repasse
996 - Desconto financeiro
}
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC,PFORMULA from cadpcus,cadcus '
                     +' Where cucodpcu(+)=pccodigo'
                     +' and (CUTIPO(+)=0) '
                     +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                     +' and (CUCODIGO(+)=0'+DM1.Query5.FieldByName('P2CODPRO').AsString+')'
                     +' order by PCOPCIO,PCNOME ');
   DM1.Query4.Open;

   mfator:=0;

   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>0 then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      mfator:=mfator+DM1.Query4.FieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;

   if mFator<>0 then
      begin
      mFator:=(100-mfator)/100;
      end;


// iniciando gerando o preco de compra do produto
   mVlr_Calc :=0;
   mVlr_Acum:=0;
   mValor_ori:=DM1.Query5.FieldbyName('UCPR').AsFloat
              *DM1.Query5.FieldbyName('QTD').AsFloat;
// calculando o valor de origem

   DM1.Query4.first;

   While (not DM1.Query4.Eof)  do
      begin
      if (DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>0) then
         begin
         DM1.Query4.Next;
         Continue;
         end;

      if (DM1.Query4.FieldbyName('CUPERC').AsFloat=0) or (mValor_Ori=0) then
         mVlr_Calc:=0
      else
         begin
         if DM1.Query4.FieldbyName('PCAPLS').AsInteger=2 then
            begin
            if mfator=0 then
               mVlr_Calc:=0
            else
               begin
               mVlr_Calc:=(mValor_Ori/mfator)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100;
               end;
            end
         else if DM1.Query4.FieldbyName('PCAPLS').AsInteger=0 then
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=mValor_Ori*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
            else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=mValor_Ori
            else
                mVlr_Calc := (mValor_Ori/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-mValor_Ori ;
            end
         else
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
           else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)
            else
               mVlr_Calc:=( (mValor_Ori+mVlr_Acum)/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-(mValor_Ori+mVlr_Acum);
            end;
         if (DM1.Query4.FieldbyName('PCFATOR').AsFloat=1) and (mVlr_Calc<>0) then
            mVlr_Calc:=mVlr_Calc*-1;
         mvlr_Calc:=Arredonda(mVlr_Calc,4);
         mVlr_Acum:=mVlr_Acum+mVlr_Calc;
         end;
      DM1.Query4.Next;
      end;

   mValor_ori:=mValor_Ori-mVlr_Acum;

   mValor_ori:=Arredonda(mValor_ori,mQtdCas_arredpu);


   mVlr_Calc :=0;
   mVlr_Acum:=0;


// termino da procura do valor de origem


//   While (not DM1.Query4.Eof) and (mValor_Ori<>0) do
   DM1.Query4.first;

   While (not DM1.Query4.Eof)  do
      begin
      if (DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>0) then
         begin
         DM1.Query4.Next;
         Continue;
         end;

      if (DM1.Query4.FieldbyName('CUPERC').AsFloat=0) or (mValor_Ori=0) then
         mVlr_Calc:=0
      else
         begin
         if DM1.Query4.FieldbyName('PCAPLS').AsInteger=2 then
            begin
            if mfator=0 then
               mVlr_Calc:=0
            else
               begin
               mVlr_Calc:=(mValor_Ori/mfator)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100;
               end;
            end
         else if DM1.Query4.FieldbyName('PCAPLS').AsInteger=0 then
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=mValor_Ori*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
            else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=mValor_Ori
            else
                mVlr_Calc := (mValor_Ori/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-mValor_Ori ;
            end
         else
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
           else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)
            else
               mVlr_Calc:=( (mValor_Ori+mVlr_Acum)/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-(mValor_Ori+mVlr_Acum);
            end;
         if (DM1.Query4.FieldbyName('PCFATOR').AsFloat=1) and (mVlr_Calc<>0) then
            mVlr_Calc:=mVlr_Calc*-1;
         mvlr_Calc:=Arredonda(mVlr_Calc,4);
         mVlr_Acum:=mVlr_Acum+mVlr_Calc;
         end;

      if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                           DM1.Query4.FieldbyName('PCCODIGO').AsFloat
                          ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                          ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                          ,DM1.Query5.FieldbyName('TABPV').AsString
                          ,DM1.Query5.FieldbyName('CODPV').AsFloat
                          ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                          ]) then
         begin
         Tb_Custo.Edit;
         end
      else
         begin
         Tb_Custo.Insert;
         Tb_CustoCODPRO.AsFloat  :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
         Tb_CustoCODENC.AsFloat  :=DM1.Query4.FieldbyName('PCCODIGO').AsFloat;
         Tb_CustoPCOUCPR.AsFloat :=0;
         Tb_CustoPCOCUS.AsFloat  :=0;
         Tb_CustoPCOVDA.AsFloat  :=0;
         Tb_CustoQTDVDA.AsFloat  :=0;
         Tb_CustoNOMENC.AsString :=DM1.Query4.FieldbyName('PCNOME').AsString;
         Tb_CustoLOCALPCO.AsFloat:=DM1.Query4.FieldbyName('PCOPCIO').AsFloat;
         Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
         Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
         Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
         Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
         Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
         Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
         Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;

         Tb_CustoVLRENC.AsFloat :=0;
         end;

      Tb_CustoVLRENC.AsFloat :=Tb_CustoVLRENC.AsFloat+mVlr_Calc;
      Tb_Custo.Post;
      DM1.Query4.Next;
      end;

// terminando o preco de compra do produto


//Valor do Preco de Custo

   mfator:=0;

   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>1 then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      mfator:=mfator+DM1.Query4.FieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;

   if mFator<>0 then
      begin
      mFator:=(100-mfator)/100;
      end;



   mValor_ori:=mValor_Ori+mVlr_Acum;

   mValor_ori:=Arredonda(mValor_ori,mQtdCas_arredpu);


   mVlr_Calc :=0;
   mVlr_Acum:=0;
   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if (DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>1) then
         begin
         DM1.Query4.Next;
         Continue;
         end;


      if (DM1.Query4.FieldbyName('CUPERC').AsFloat=0) or (mValor_Ori=0) then
         mVlr_Calc:=0
      else
         begin
         if DM1.Query4.FieldbyName('PCAPLS').AsInteger=2 then
            begin
            if mfator=0 then
               mVlr_Calc:=0
            else
               begin
               mVlr_Calc:=(mValor_Ori/mfator)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100;
               end;
            end
         else if DM1.Query4.FieldbyName('PCAPLS').AsInteger=0 then
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=mValor_Ori*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
            else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=mValor_Ori
            else
                mVlr_Calc := (mValor_Ori/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-mValor_Ori ;
            end
         else
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
           else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)
            else
               mVlr_Calc:=( (mValor_Ori+mVlr_Acum)/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-(mValor_Ori+mVlr_Acum);
            end;
         if (DM1.Query4.FieldbyName('PCFATOR').AsFloat=1) and (mVlr_Calc<>0) then
            mVlr_Calc:=mVlr_Calc*-1;
         mvlr_Calc:=Arredonda(mVlr_Calc,4);
         mVlr_Acum:=mVlr_Acum+mVlr_Calc;
         end;

      if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                           DM1.Query4.FieldbyName('PCCODIGO').AsFloat
                          ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                          ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                          ,DM1.Query5.FieldbyName('TABPV').AsString
                          ,DM1.Query5.FieldbyName('CODPV').AsFloat
                          ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                          ]) then
         begin
         Tb_Custo.Edit;
         end
      else
         begin
         Tb_Custo.Insert;
         Tb_CustoCODPRO.AsFloat :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
         Tb_CustoCODENC.AsFloat :=DM1.Query4.FieldbyName('PCCODIGO').AsFloat;
         Tb_CustoPCOUCPR.AsFloat :=0;
         Tb_CustoPCOCUS.AsFloat  :=0;
         Tb_CustoPCOVDA.AsFloat  :=0;
         Tb_CustoQTDVDA.AsFloat  :=0;
         Tb_CustoNOMENC.AsString:=DM1.Query4.FieldbyName('PCNOME').AsString;
         Tb_CustoLOCALPCO.AsFloat:=DM1.Query4.FieldbyName('PCOPCIO').AsFloat;
         Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
         Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
         Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
         Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
         Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
         Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
         Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;
         Tb_CustoVLRENC.AsFloat :=0;
         end;

      Tb_CustoVLRENC.AsFloat :=Tb_CustoVLRENC.AsFloat+mVlr_Calc;
      Tb_Custo.Post;
      DM1.Query4.Next;
      end;

// terminando o preco de Custo do produto


//Valor do Preco de Venda

   mfator:=0;

   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>3 then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      mfator:=mfator+DM1.Query4.FieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;

   if mFator<>0 then
      begin
      mFator:=(100-mfator)/100;
      end;


   mValor_ori:=mValor_Ori+mVlr_Acum;

   mValor_ori:=Arredonda(mValor_ori,mQtdCas_arredpu);


   mVlr_Calc :=0;
   mVlr_Acum:=0;
   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>3 then
         begin
         DM1.Query4.Next;
         Continue;
         end;

      if (DM1.Query4.FieldbyName('CUPERC').AsFloat=0) or (mValor_Ori=0) then
         mVlr_Calc:=0
      else
         begin
         if DM1.Query4.FieldbyName('PCAPLS').AsInteger=2 then
            begin
            if mfator=0 then
               mVlr_Calc:=0
            else
               begin
               mVlr_Calc:=(mValor_Ori/mfator)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100;
               end;
            end
         else if DM1.Query4.FieldbyName('PCAPLS').AsInteger=0 then
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=mValor_Ori*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
            else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=mValor_Ori
            else
                mVlr_Calc := (mValor_Ori/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-mValor_Ori ;
            end
         else
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
           else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)
            else
               mVlr_Calc:=( (mValor_Ori+mVlr_Acum)/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-(mValor_Ori+mVlr_Acum);
            end;
         if (DM1.Query4.FieldbyName('PCFATOR').AsFloat=1) and (mVlr_Calc<>0) then
            mVlr_Calc:=mVlr_Calc*-1;
         mvlr_Calc:=Arredonda(mVlr_Calc,4);
         mVlr_Acum:=mVlr_Acum+mVlr_Calc;
         end;
      if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                           DM1.Query4.FieldbyName('PCCODIGO').AsFloat
                          ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                          ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                          ,DM1.Query5.FieldbyName('TABPV').AsString
                          ,DM1.Query5.FieldbyName('CODPV').AsFloat
                          ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                          ]) then
         begin
         Tb_Custo.Edit;
         end
      else
         begin
         Tb_Custo.Insert;
         Tb_CustoCODPRO.AsFloat :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
         Tb_CustoCODENC.AsFloat :=DM1.Query4.FieldbyName('PCCODIGO').AsFloat;
         Tb_CustoPCOUCPR.AsFloat :=0;
         Tb_CustoPCOCUS.AsFloat  :=0;
         Tb_CustoPCOVDA.AsFloat  :=0;
         Tb_CustoQTDVDA.AsFloat  :=0;
         Tb_CustoNOMENC.AsString:=DM1.Query4.FieldbyName('PCNOME').AsString;
         Tb_CustoLOCALPCO.AsFloat:=DM1.Query4.FieldbyName('PCOPCIO').AsFloat;
         Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
         Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
         Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
         Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
         Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
         Tb_CustoVLRENC.AsFloat :=0;
         Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
         Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;
         end;

      Tb_CustoVLRENC.AsFloat :=Tb_CustoVLRENC.AsFloat+mVlr_Calc;
      Tb_Custo.Post;
      DM1.Query4.Next;
      end;

// terminando o preco de Custo do produto



//Valor do Encarcos

   mfator:=0;

   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>2 then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      mfator:=mfator+DM1.Query4.FieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;

   if mFator<>0 then
      begin
      mFator:=(100-mfator)/100;
      end;

   mValor_ori:=mValor_Ori+mVlr_Acum;
   mValor_ori:=Arredonda(mValor_ori,mQtdCas_arredpu);


   mValor_Ori:=Arredonda(mValor_ori,mQtdCas_arredpu);


   mVlr_Calc :=0;
   mVlr_Acum:=0;
   DM1.Query4.First;
   While (not DM1.Query4.Eof)  do
      begin
      if DM1.Query4.FieldbyName('PCOPCIO').AsFloat<>2 then
         begin
         DM1.Query4.Next;
         Continue;
         end;

      if (DM1.Query4.FieldbyName('CUPERC').AsFloat=0) or (mValor_Ori=0) then
         mVlr_Calc:=0
      else
         begin
         if DM1.Query4.FieldbyName('PCAPLS').AsInteger=2 then
            begin
            if mfator=0 then
               mVlr_Calc:=0
            else
               begin
               mVlr_Calc:=(mValor_Ori/mfator)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100;
               end;
            end
         else if DM1.Query4.FieldbyName('PCAPLS').AsInteger=0 then
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=mValor_Ori*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
            else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=mValor_Ori
            else
                mVlr_Calc := (mValor_Ori/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-mValor_Ori ;
            end
         else
            begin
            if (DM1.Query4.FieldbyName('CUPERC').AsFloat>100) or
               (DM1.Query4.FieldbyName('PFORMULA').AsInteger=1) then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)*DM1.Query4.FieldbyName('CUPERC').AsFloat/100
           else if DM1.Query4.FieldbyName('CUPERC').AsFloat=100 then
               mVlr_Calc:=(mValor_Ori+mVlr_Acum)
            else
               mVlr_Calc:=( (mValor_Ori+mVlr_Acum)/( (100-DM1.Query4.FieldbyName('CUPERC').AsFloat) / 100))-(mValor_Ori+mVlr_Acum);
            end;
         if (DM1.Query4.FieldbyName('PCFATOR').AsFloat=1) and (mVlr_Calc<>0) then
            mVlr_Calc:=mVlr_Calc*-1;
         mvlr_Calc:=Arredonda(mVlr_Calc,4);
         mVlr_Acum:=mVlr_Acum+mVlr_Calc;
         end;
      if Tb_Custo.FindKey([DM1.Query5.FieldbyName('P2CODPRO').AsFloat,
                           DM1.Query4.FieldbyName('PCCODIGO').AsFloat
                          ,DM1.Query5.FieldbyName('CODCLI').AsFloat
                          ,DM1.Query5.FieldbyName('CODVEN').AsFloat
                          ,DM1.Query5.FieldbyName('TABPV').AsString
                          ,DM1.Query5.FieldbyName('CODPV').AsFloat
                          ,DM1.Query5.FieldbyName('CODTRA').AsFloat
                          ]) then
         begin
         Tb_Custo.Edit;
         end
      else
         begin
         Tb_Custo.Insert;
         Tb_CustoCODPRO.AsFloat :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
         Tb_CustoCODENC.AsFloat :=DM1.Query4.FieldbyName('PCCODIGO').AsFloat;
         Tb_CustoPCOUCPR.AsFloat :=0;
         Tb_CustoPCOCUS.AsFloat  :=0;
         Tb_CustoPCOVDA.AsFloat  :=0;
         Tb_CustoQTDVDA.AsFloat  :=0;
         Tb_CustoNOMENC.AsString:=DM1.Query4.FieldbyName('PCNOME').AsString;
         Tb_CustoLOCALPCO.AsFloat:=DM1.Query4.FieldbyName('PCOPCIO').AsFloat+2;
         Tb_CustoVLRENC.AsFloat :=0;
         Tb_CustoCODCLI.AsFloat  :=DM1.Query5.FieldbyName('CODCLI').AsFloat;
         Tb_CustoCODVEN.AsFloat  :=DM1.Query5.FieldbyName('CODVEN').AsFloat;
         Tb_CustoCODPV.AsFloat   :=DM1.Query5.FieldbyName('CODPV').AsFloat;
         Tb_CustoCODTRA.AsFloat  :=DM1.Query5.FieldbyName('CODTRA').AsFloat;
         Tb_CustoTABPV.AsString  :=DM1.Query5.FieldbyName('TABPV').AsString;
         Tb_CustoNOMSOM.AsString :=DM1.Query5.FieldbyName('NOMSOM').AsString;
         Tb_CustoCODSOM.AsString :=DM1.Query5.FieldbyName('CODSOM').AsString;
         end;

      Tb_CustoVLRENC.AsFloat :=Tb_CustoVLRENC.AsFloat+mVlr_Calc;
      Tb_Custo.Post;
      DM1.Query4.Next;
      end;

// terminando o Valor do Enccargos

   DM1.Query5.Next;
   end;
//contas as colunas para montar o grid
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('select count(*),PCOPCIO from cadpcus '
                  +' group by PCOPCIO ');
DM1.Query4.Open;
mQtdGrid:=7; // minimo é 7 itens 9
While not DM1.Query4.Eof do
   begin
   if mQtdGrid<DM1.Query4.Fields[0].AsInteger then
      mQtdGrid:=DM1.Query4.fields[0].AsInteger;
   DM1.Query4.Next;
   end;

//termino

Qr_Custo.Close;
Qr_Custo.SQL.Clear;
Qr_Custo.SQL.Add('Select CODSOM, NOMSOM,LOCALPCO,CODENC,NOMENC '
                +',sum(QTDVDA) as QTDVDA '
                +',sum(VLRENC) as VLRENC '
                +',sum(PCOCUS)   as PCOCUS '
                +',sum(PCOUCPR)   as PCOUCPR '
                +',sum(PCOVDA)   as PCOVDA ');
Qr_Custo.sql.add(' from '+mRPed_TabTemp
                +' group by NOMSOM,CODSOM,LOCALPCO,NOMENC,CODENC ');
Qr_Custo.Open;
STG_TP00.RowCount:=mQtdGrid;
STG_TP01.RowCount:=mQtdGrid;
STG_TP03.RowCount:=mQtdGrid;
STG_TP04.RowCount:=mQtdGrid;
STG_TP09.RowCount:=mQtdGrid;

testeform := TFrm_RPed_Encargos(FindGlobalComponent('form_Impres_RPed_Encargos'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_RPed_Encargos);

form_Impres_RPed_Encargos.mlin:=0;
form_Impres_RPed_Encargos.mpag:=0;

form_Impres_RPed_Encargos.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

While not Qr_Custo.Eof do
   begin
   for x:=0 to mQtdGrid-1 do
      begin
      STG_TP00.Rows[x].Clear;
      STG_TP01.Rows[x].Clear;
      STG_TP03.Rows[x].Clear;
      STG_TP04.Rows[x].Clear;
      STG_TP09.Rows[x].Clear;
      end;
   mlin01:=0;
   mlin01:=0;
   mlin03:=0;
   mlin04:=0;
   mlin09:=0;
   mTotCpr:=0;
   mTotCus:=0;
   mTotVda:=0;
   mTotPVdaSEnc:=0;
   mTotPcoVda  :=0;

   mCodSom_Ant:=Qr_CustoCODSOM.AsString;
   mNomSom_Ant:=Qr_CustoNOMSOM.AsString;

   While (not Qr_Custo.Eof) and (mCodSom_Ant=Qr_CustoCODSOM.AsString) do
      begin

      if Qr_CustoLOCALPCO.AsInteger=0 then
         begin
         if length(Qr_CustoCODENC.AsString)<3 then
            STG_TP00.Cells[0,mlin01]:=Qr_CustoCODENC.AsString
         else
            STG_TP00.Cells[0,mlin01]:=copy(Qr_CustoCODENC.AsString,2,2);
         STG_TP00.Cells[1,mlin01]:=Qr_CustoNOMENC.AsString;
         STG_TP00.Cells[2,mlin01]:=FormatFloat(mcasas, Qr_CustoVLRENC.AsFloat);
         mlin01:=mlin01+1;
         end
      else if Qr_CustoLOCALPCO.AsInteger=1 then
         begin
         if length(Qr_CustoCODENC.AsString)<3 then
            STG_TP01.Cells[0,mlin01]:=Qr_CustoCODENC.AsString
         else
            STG_TP01.Cells[0,mlin01]:=copy(Qr_CustoCODENC.AsString,2,2);
         STG_TP01.Cells[1,mlin01]:=Qr_CustoNOMENC.AsString;
         STG_TP01.Cells[2,mlin01]:=FormatFloat(mcasas, Qr_CustoVLRENC.AsFloat);
         mlin01:=mlin01+1;
         end
      else if Qr_CustoLOCALPCO.AsInteger=3 then
         begin
         if length(Qr_CustoCODENC.AsString)<3 then
            STG_TP03.Cells[0,mlin03]:=Qr_CustoCODENC.AsString
         else
            STG_TP03.Cells[0,mlin03]:=copy(Qr_CustoCODENC.AsString,2,2);
         STG_TP03.Cells[1,mlin03]:=Qr_CustoNOMENC.AsString;
         STG_TP03.Cells[2,mlin03]:=FormatFloat(mcasas, Qr_CustoVLRENC.AsFloat);
         mlin03:=mlin03+1;
         end
      else if Qr_CustoLOCALPCO.AsInteger=4 then
         begin
         if length(Qr_CustoCODENC.AsString)<3 then
            STG_TP04.Cells[0,mlin04]:=Qr_CustoCODENC.AsString
         else
            STG_TP04.Cells[0,mlin04]:=copy(Qr_CustoCODENC.AsString,2,2);

         STG_TP04.Cells[0,mlin04]:=Qr_CustoCODENC.AsString;
         STG_TP04.Cells[1,mlin04]:=Qr_CustoNOMENC.AsString;
         STG_TP04.Cells[2,mlin04]:=FormatFloat(mcasas, Qr_CustoVLRENC.AsFloat);
         mlin04:=mlin04+1;
         end
      else if Qr_CustoLOCALPCO.AsInteger=9 then
         begin
         if length(Qr_CustoCODENC.AsString)<3 then
            STG_TP04.Cells[0,mlin09]:=Qr_CustoCODENC.AsString
         else
            STG_TP04.Cells[0,mlin09]:=copy(Qr_CustoCODENC.AsString,2,2);

         STG_TP09.Cells[0,mlin09]:=Qr_CustoCODENC.AsString;
         STG_TP09.Cells[1,mlin09]:=Qr_CustoNOMENC.AsString;
         STG_TP09.Cells[2,mlin09]:=FormatFloat(mcasas, Qr_CustoVLRENC.AsFloat);
         mlin09:=mlin09+1;
         end
      else
         begin
         ShowMessage('local não Identificado: '+Qr_CustoLOCALPCO.AsString);
         exit;
         end;
      Qr_Custo.Next;
      end;
   if form_Impres_RPed_Encargos.mlin=0 then
      fRPed_EncImpCab(0);
   form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
   form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,001,'|',mreduz);
   form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,005,Qr_CustoCODSOM.AsString+' - '+Qr_CustoNOMSOM.AsString,mneg);
   form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,136,'|',mreduz);
   for x:=0 to mQtdGrid-1 do
      begin
      form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
      form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,001,'|'
                              +insere(STG_TP00.cells[00,x],' ',2)  +'|'
                              +insere2(STG_TP00.cells[01,x],' ',11)+'|'
                              +insere(STG_TP00.cells[02,x],' ',11) +'|'
                              +insere(STG_TP01.cells[00,x],' ',2)  +'|'
                              +insere2(STG_TP01.cells[01,x],' ',11)+'|'
                              +insere(STG_TP01.cells[02,x],' ',11) +'|'
                              +insere(STG_TP03.cells[00,x],' ',2)  +'|'
                              +insere2(STG_TP03.cells[01,x],' ',11)+'|'
                              +insere(STG_TP03.cells[02,x],' ',11) +'|'
                              +insere(STG_TP04.cells[00,x],' ',2)  +'|'
                              +insere2(STG_TP04.cells[01,x],' ',11)+'|'
                              +insere(STG_TP04.cells[02,x],' ',11) +'|'
                              +insere(STG_TP09.cells[00,x],' ',2)  +'|'
                              +insere2(STG_TP09.cells[01,x],' ',11)+'|'
                              +insere(STG_TP09.cells[02,x],' ',11) +'|',mreduz);
      if form_Impres_RPed_Encargos.mlin>59 then
         begin
         form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
         form_Impres_RPed_Encargos.RDprint1.impf(form_Impres_RPed_Encargos.mlin,01,'+Continua...---+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+',mreduz);
         form_Impres_RPed_Encargos.RDprint1.Novapagina;
         fRPed_EncImpCab(0);
         end;
      end;
   form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
   if (not Qr_Custo.Eof) and (form_Impres_RPed_Encargos.mlin>59) then
      begin
      form_Impres_RPed_Encargos.RDprint1.impf(form_Impres_RPed_Encargos.mlin,01,'+Continua...---+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+',mreduz);
      form_Impres_RPed_Encargos.RDprint1.Novapagina;
      fRPed_EncImpCab(0);
      form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
      end;
   form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,001,'|'
                           +' Totais: Pco.Compra:  '+insere2(Formatfloat(mcasas, mTotCpr),' ',14)
                           +' Pco.Custo: '+insere2(Formatfloat(mcasas, mTotCus),' ',14)
                           +' Pco.Vda.S/Encar: '+insere2(Formatfloat(mcasas, mTotCus),' ',14)

                           +' Pco.Vda.C/Encar: '+insere2(Formatfloat(mcasas, mTotCus),' ',14)
                           +' Preco Vendido: '+insere2(Formatfloat(mcasas, mTotVda),' ',14)
                           +' Difer: '+insere2(Formatfloat(mcasas, mTotVda),' ',14)

                           +insere2(' ',' ',30)+'|',mreduz);
   end;
form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
form_Impres_RPed_Encargos.RDprint1.impf(form_Impres_RPed_Encargos.mlin,01,'+-Fim...-------+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+',mreduz);
if form_Impres_RPed_Encargos.RDprint1.Setup then form_Impres_RPed_Encargos.RDprint1.Fechar;
form_Impres_RPed_Encargos.free;
form_Impres_RPed_Encargos:=nil;
{

+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+
|C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |
|1234567890-0 1234567890123456789012345678901234567890                                                                                 |
|12|12345678901|zzzz.zz9,99|12|12345678901|zzzz.zz9,99|12|12345678901|zzzz.zz9,99|12|12345678901|zzzz.zz9,99|12|12345678901|zzzz.zz9,99|
| Totais: Preco de Compra:  zzz.zzz.zz9,99  Preco de Custo: zzz.zzz.zz9,99  Preco Vendido: zzz.zzz.zz9,99                              |

}
end;

procedure TFrm_RPed_Encargos.CODPROExit(Sender: TObject);
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

procedure TFrm_RPed_Encargos.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_RPed_Encargos.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_RPed_Encargos.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RPed_Encargos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

if Trim(mRPed_TabTemp)<>'' then
   begin
   if Tb_Custo.Active then
      Tb_Custo.Close;
   if Tb_Custo.Exists then
      Tb_Custo.DeleteTable;
   end;

end;

function TFrm_RPed_Encargos.fRPed_EncImpCab(pTipo: Integer): Boolean;
begin
form_Impres_RPed_Encargos.fImprimirCabecalho(136,'Posicao das Vendas x Custos.');
form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,01,'+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+',mreduz);
form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,01,'|Composicao do Preco Compra| Composicao do Preco Custo| Composicao do Preco Venda|    Encargos Previstos    |    Encargos Aplicados    |',mreduz);
form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,01,'+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--+-----------+-----------+--------------+-----------+',mreduz);
form_Impres_RPed_Encargos.mlin:=form_Impres_RPed_Encargos.mlin+1;
form_Impres_RPed_Encargos.RDprint1.ImpF(form_Impres_RPed_Encargos.mlin,01,'|C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |C.| Descricao |   Valor   |',mreduz);
result:=true;
end;
procedure TFrm_RPed_Encargos.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if codusr=1111 then
   begin
   tsOutros.TabVisible:=true;
   TsGrids.TabVisible :=true;
   end
else
   begin
   tsOutros.TabVisible:=false;
   TsGrids.TabVisible :=false;
   end;
MDT1.Text:='01/'+FormatDatetime('mm/yyyy',date);
MDT2.Text:=FormatDateTime(fdt2,date);

end;

procedure TFrm_RPed_Encargos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RPed_Encargos.FormKeyDown(Sender: TObject; var Key: Word;
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
