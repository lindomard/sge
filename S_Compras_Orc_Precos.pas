unit S_Compras_Orc_Precos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, Grids, DBGrids, StdCtrls, ExtCtrls,dbtables,
  DBCtrls, Buttons, Mask, ComCtrls;

type
  TFrm_Compras_Orc_Precos = class(TForm)
    mem_cadpro: TRxMemoryData;
    mem_cadproCODPRO: TFloatField;
    mem_cadproNOMPRO: TStringField;
    mem_cadproUND: TStringField;
    mem_cadproPRECO_ATU: TFloatField;
    mem_cadproPCOCUS_NOV: TFloatField;
    mem_cadproPCOCPR_NOV: TFloatField;
    mem_cadproPRECO_NOV: TFloatField;
    mem_cadproPCOCUS_ATU: TFloatField;
    mem_cadproPCOCPR_ATU: TFloatField;
    mem_cadproDTULTALT: TDateTimeField;
    src_cadpro: TDataSource;
    mem_custo: TRxMemoryData;
    src_custo: TDataSource;
    mem_compra: TRxMemoryData;
    src_compra: TDataSource;
    mem_venda: TRxMemoryData;
    src_venda: TDataSource;
    mem_compraCODIGO: TIntegerField;
    mem_compraDESCRICAO: TStringField;
    mem_compraPERC: TFloatField;
    mem_compraVALOR: TFloatField;
    mem_compraACUM: TFloatField;
    mem_custoCODIGO: TIntegerField;
    mem_custoDESCRICAO: TStringField;
    mem_custoPERC: TFloatField;
    mem_custoVALOR: TFloatField;
    mem_custoACUM: TFloatField;
    mem_vendaCODIGO: TIntegerField;
    mem_vendaDESCRICAO: TStringField;
    mem_vendaPERC: TFloatField;
    mem_vendaVALOR: TFloatField;
    mem_vendaACUM: TFloatField;
    mem_cadproITEM: TFloatField;
    mem_compraCODPRO: TFloatField;
    mem_custoCODPRO: TFloatField;
    mem_vendaCODPRO: TFloatField;
    mem_cadproPCOPED: TFloatField;
    mem_cadproALTERAR: TIntegerField;
    mem_compraAPLICAR_SOB: TIntegerField;
    mem_compraTIPOFORMULA: TIntegerField;
    mem_compraTIPO: TIntegerField;
    mem_compraFATOR: TFloatField;
    mem_compraVALORREAL: TFloatField;
    mem_cadproPRECO_ORIGEM: TFloatField;
    mem_custoAPLICAR_SOB: TIntegerField;
    mem_custoTIPOFORMULA: TIntegerField;
    mem_custoTIPO: TIntegerField;
    mem_custoVALORREAL: TFloatField;
    mem_vendaAPLICAR_SOB: TIntegerField;
    mem_vendaTIPOFORMULA: TIntegerField;
    mem_vendaTIPO: TIntegerField;
    mem_vendaVALORREAL: TFloatField;
    mem_custoFATOR: TFloatField;
    mem_vendaFATOR: TFloatField;
    mem_cadproATU_PCO01: TIntegerField;
    mem_cadproATU_PCO02: TIntegerField;
    mem_cadproATU_PCO03: TIntegerField;
    mem_cadproCUACPCO2: TIntegerField;
    mem_cadproCUACPCO3: TIntegerField;
    mem_cadproalterar_calc: TStringField;
    mem_cadproPRECO01_DIG: TFloatField;
    mem_cadproPCOCUS_DIG: TFloatField;
    mem_cadproPCOCPR_DIG: TFloatField;
    mem_cadproPRECO01_DIG_USA: TStringField;
    mem_cadproPCOCUS_DIG_USA: TStringField;
    mem_cadproPCOCPR_DIG_USA: TStringField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsConfiguracao: TTabSheet;
    gb_compos_preco: TGroupBox;
    cb_ipi: TCheckBox;
    CB_VII: TCheckBox;
    CB_VIOF: TCheckBox;
    CB_TARBAN: TCheckBox;
    CB_OUTDESP: TCheckBox;
    CB_VALFRE: TCheckBox;
    CB_VALSEG: TCheckBox;
    CB_VALDES: TCheckBox;
    lbl_pcopedcpr: TLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBGrid_itens: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    GroupBox4: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    DBE_PCOCPR_NOV: TDBEdit;
    DBE_PCOCPR_DIG: TDBEdit;
    DBCB_PCOCPR_DIG_USA: TDBCheckBox;
    StaticText11: TStaticText;
    DBE_PCOCUS_NOV: TDBEdit;
    DBE_PCOCUS_DIG: TDBEdit;
    DBCB_PCOCUS_DIG_USA: TDBCheckBox;
    StaticText12: TStaticText;
    DBE_PRECO_NOV: TDBEdit;
    DBE_PRECO01_DIG: TDBEdit;
    DBCB_PRECO01_DIG_USA: TDBCheckBox;
    cb_todos: TCheckBox;
    Panel_precos: TPanel;
    gb_preco_compra: TGroupBox;
    DBE_COMPRA: TDBText;
    DBGrid_compra: TDBGrid;
    gb_preco_custo: TGroupBox;
    dbe_custo: TDBText;
    DBGrid_custo: TDBGrid;
    GroupBox2: TGroupBox;
    DBE_VENDA: TDBText;
    DBGrid_venda: TDBGrid;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    StaticText3: TStaticText;
    DBE_PCOVDA01: TDBEdit;
    DBE_PCOVDA02_NOV: TDBEdit;
    DBE_PCOVDA03_NOV: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    CB_ICMSR: TCheckBox;
    BitBtn1: TBitBtn;
    mem_cadproPCOVDA01_NOV: TFloatField;
    StaticText13: TStaticText;
    DBE_PCOVDA01_NOV: TDBEdit;
    mem_cadproPCOVDA02_NOV: TFloatField;
    mem_cadproPCOVDA03_NOV: TFloatField;
    gb_difal: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_percdial_nacional: TEdit;
    edt_percdial_estrangeira: TEdit;
    Label6: TLabel;
    mem_cadproQTD: TFloatField;
    mem_compraITEM: TIntegerField;
    mem_custoITEM: TIntegerField;
    mem_vendaITEM: TIntegerField;
    CB_ICMS_CREDITO: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure mem_compraFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure mem_custoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure mem_vendaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure src_cadproDataChange(Sender: TObject; Field: TField);
    procedure DBGrid_itensDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure mem_cadproCalcFields(DataSet: TDataSet);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure mem_compraBeforeInsert(DataSet: TDataSet);
    procedure mem_custoBeforeInsert(DataSet: TDataSet);
    procedure mem_vendaBeforeInsert(DataSet: TDataSet);
    procedure mem_compraAfterPost(DataSet: TDataSet);
    procedure mem_custoAfterPost(DataSet: TDataSet);
    procedure mem_vendaAfterPost(DataSet: TDataSet);
    procedure cb_todosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure gb_compos_precoExit(Sender: TObject);
    procedure DBE_PRECO01_DIGExit(Sender: TObject);
    procedure DBE_PCOCPR_DIGKeyPress(Sender: TObject; var Key: Char);
    procedure mem_cadproBeforePost(DataSet: TDataSet);
    procedure edt_percdial_nacionalExit(Sender: TObject);
    procedure edt_percdial_estrangeiraExit(Sender: TObject);
    procedure CB_ICMS_CREDITOClick(Sender: TObject);
  private
    { Private declarations }
    mLocalizando: boolean;
    mReatribuindo: Boolean;


    function fCalcularPrecos(pTodos: boolean): boolean;

    function FPrecosNovos: Boolean;

    function fAtualizarTagDifal:boolean;


  public
    { Public declarations }
    mChave: Real;
    mCodemp: Real;
    mLotSeq: Real;

    Function fCarregarGrid(pChave,pCodemp,pLotSeq: Real): Boolean;



  end;

var
  Frm_Compras_Orc_Precos: TFrm_Compras_Orc_Precos;

implementation

uses S_DM1, flerarq, lerarq, Func, S_Agde, func_excecoes, S_DM4;

{$R *.dfm}

Function tFrm_Compras_Orc_Precos.fCarregarGrid(pChave,pCodemp,pLotSeq: Real): Boolean;
var

mCampoP_TotDes: string;
mCampoP_IPI: string;
mCampoP_VII: string;
mCampoP_VIOF: string;
mCampoP_TARBAN: string;
mCampoP_OutDesp: string;
mCampoP_ValFre: string;
mCampoP_ValSeg: string;
mCampoP_codpfor: string;
mcampoP_icmsr: String;
mCampoP_Siv_OutDesp: String;
Query_PFor: TQuery;
Query_Pcus: tQuery;
Query_Pro_Custo: tQuery;
Query_RatearOutros: tQuery;
Query_cus2: tQuery;

mPco_Compra: Real;
mPco_Custo: Real;
mPco_Venda01: Real;
mPco_Venda02: Real;
mPco_Venda03: Real;

mPco_Compra_Acum: Real;
mPco_Custo_Acum: Real;
mPco_Venda_Acum: Real;

mFator: Real;
mValorReal: Real;
mVlrResult: TArrayCusto;

mAplicSob   :Integer;
mTipoformula:Integer;
mTipo       :Integer;
mPreco_Origem: Real;
custo_adicional_unitario : Real;
mcsticms: string;
mcsosn: string;

morigem_produto: string;

mnomecampo: string;
begin

mLocalizando:=true;
mReatribuindo:=true;

Query_RatearOutros:=TQuery.Create(nil);
Query_RatearOutros.DatabaseName:='SG_ASSOC';




Query_RatearOutros.Close;
Query_RatearOutros.SQL.Clear;
Query_RatearOutros.SQL.Add(' select round( sum( ((NVL(PF1SIV_DARE,0)+NVL(PF1SIV_FRETE,0))*100)/ '
                  +'( '
                  +' select sum('
                  +'ROUND( (((PF2QTDP*PF2PU)+(NVL(PF2ICMSR,0)+NVL(PF2OUTRAS,0)+nvl(PF2SIV_OUTROS,0) '
                  +'+NVL(PF2FRERAT,0)+NVL(PF2IPI,0))-NVL(PF2TOTDES,0))),2) ) from CADPF2 where PF2CODEMP=PF1CODEMP '
                  +' and PF2CHAVE=PF1CHAVE and PF2LOTSEQ=PF1LOTSEQ       '
                  +')'
                  +' ) ,6)  AS PERCUND FROM CADPF1 '
                  +'  where PF1CODEMP=:CODEMP  and  '
                 +'   PF1CHAVE=:CHAVE and PF1LOTSEQ=:CHAVE_ANO ');
Query_RatearOutros.ParamByName('CODEMP').AsFloat   :=pCodemp;
Query_RatearOutros.ParamByName('CHAVE').AsFloat    :=pChave;
Query_RatearOutros.ParamByName('CHAVE_ANO').AsFloat:=pLotSeq;
try
   Query_RatearOutros.Open;
except
   Query_RatearOutros.sql.savetofile(mpastatemp +'sqlsiv.txt');
   end;
//Query_RatearOutros.sql.savetofile(mpastatemp +'sqlsiv.txt');

custo_adicional_unitario := Query_RatearOutros.FieldByName('PERCUND').AsFloat;

freeandnil(Query_RatearOutros);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');


Query_cus2:=TQuery.Create(nil);
Query_cus2.DatabaseName:='SG_ASSOC';



Query_Pro_Custo:=TQuery.Create(nil);
Query_Pro_Custo.DatabaseName:='SG_ASSOC';



Query_PCus:=TQuery.Create(nil);
Query_PCus.DatabaseName:='SG_ASSOC';
Query_PCus.Close;
Query_PCus.SQL.Clear;
Query_PCus.SQL.Add('SELECT * FROM CADPCUS order by PCAPLS,PCCODIGO ');
try
   Query_Pcus.open;
except
   Query_Pcus.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
   end;


if CB_VALDES.Checked=true then
   mCampoP_TotDes:='NVL(PF2TOTDES,0)'
else
   mCampoP_TotDes:='0';


if CB_VII.Checked=true then
   mCampoP_VII:='0'
else
   mCampoP_VII:='0';

if CB_IPI.Checked=true then
   mCampoP_IPI:='NVL(PF2IPI,0)'
else
   mCampoP_IPI:='0';


if CB_VIOF.Checked=true then
   mCampoP_VIOF:='0'
else
   mCampoP_VIOF:='0';


if CB_TARBAN.Checked=true then
   mCampoP_TARBAN:='0'
else
   mCampoP_TARBAN:='0';


if CB_OUTDESP.Checked=true then
   mCampoP_OutDesp:=' NVL(PF2OUTRAS,0)'
else
   mCampoP_OutDesp:='0';

mCampoP_Siv_OutDesp:=' NVL(PF2SIV_OUTROS,0)';


if CB_VALSEG.Checked=true then
   mCampoP_ValSeg:='0'
else
   mCampoP_ValSeg:='0';


if CB_VALFRE.Checked=true then
   mCampoP_ValFre:=' NVL(PF2FRERAT,0)'
else
   mCampoP_ValFre:='0';

if CB_ICMSR.Checked=true then
   mCampoP_icmsr:=' NVL(PF2ICMSR,0)'
else
   mCampoP_icmsr:='0';

la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR','FCODEMP','CACODEMP','FCODFOR','PF1CODFOR');

la_instrucao:=la_instrucao+' and ';

fInnerJoin3(0,'CADPF1','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');


Query_PFor:=TQuery.Create(nil);
Query_PFor.DatabaseName:='SG_ASSOC';
Query_PFor.Close;
Query_PFor.SQL.Clear;
Query_PFor.SQL.Add('Select PF2CODEMP,PF2QTDP,PF2CODPRO,PF2CSOSN_ORI,PF2ITEM,PF2PU,PDNOME,PDUND,PDPRECO1,PDPRECOC,PDUCPR,FUF,FCRT,PDNIVEL,PF2CSOSN,PF2SIT  '
                  +',PDPRECO1_DIG,PDPCOCUS_DIG,PDPCOCPR_DIG,PF2ALIQ,PF2ICMSN '
                  +',PDPRECO1_DIG_USA,PDPCOCUS_DIG_USA,PDPCOCPR_DIG_USA '
                  +',ROUND( (((PF2QTDP*PF2PU)+('+mCampoP_icmsr+'+'+mCampoP_OutDesp+'+'+mCampoP_Siv_OutDesp
                  +'+'+mCampoP_ValSeg+'+'+mCampoP_TARBAN+'+'+mCampoP_VIOF+'+'+mCampoP_VII
                  +'+'+mCampoP_ValFre+'+'+mCampoP_IPI+')-'+mCampoP_TotDes+')/PF2QTDP),2) AS PF2PU_CUSTO '
                  +',PF2QTDP '
                  +' FROM CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (PF2CODEMP=:CODEMP ) '
                 +' and PF2CHAVE=:CHAVE '
                 +' and PF2LOTSEQ=:CHAVE_ANO ');
Query_PFor.ParamByName('CODEMP').AsFloat   :=pCodemp;
Query_PFor.ParamByName('CHAVE').AsFloat    :=pChave;
Query_PFor.ParamByName('CHAVE_ANO').AsFloat:=pLotSeq;
try
   Query_PFor.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_pfor,409,'SGE'+E.Message,'CADPF2');
   end;
   end;
if not mem_cadpro.Active then  mem_cadpro.Open;
mem_cadpro.EmptyTable;

if not mem_compra.Active then  mem_compra.Open;
mem_compra.EmptyTable;

if not mem_custo.Active then  mem_custo.Open;
mem_custo.EmptyTable;

if not mem_venda.Active then  mem_venda.Open;
mem_venda.EmptyTable;
Query_cus2.close;
Query_cus2.Sql.clear;
Query_cus2.Sql.Add('Select * from CADCUS2 where CUCODEMP=:CODEMP '
                  +' and CUTIPO=0 '
                  +' and CUCODIGO=:CODPRO ');

try
While not Query_Pfor.Eof do
   begin
   mnomecampo:='PF2CODPRO';
//   Showmessage('0446-vai criar preco de custo');

   fCriarPcusPadrao(Query_PFor.FieldbyName('PF2CODPRO').AsFloat);
//   fAjustarCustoDeProdutos(DM1.Tb_ProPDCODPRO.AsFloat);

   mPco_Compra :=0;
   mPco_Custo  :=0;
   mPco_Venda01 :=0;
   mPco_Compra_Acum:=0;
   mPco_Custo_Acum :=0;
   mPco_Venda_Acum :=0;

   Query_Pro_Custo.Close;
   Query_Pro_Custo.SQL.Clear;
   Query_Pro_Custo.SQL.Add('SELECT * FROM CADCUS where (CUCODEMP=:CODEMP or CUCODEMP=:CODEMP + 100 OR CUCODEMP=:CODEMP - 100) and CUCODIGO=:CODPRO order by CUCODPCU');
   Query_Pro_Custo.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
   Query_Pro_Custo.ParamByName('CODPRO').Value := Query_PFor.FieldbyName('PF2CODPRO').AsFloat;


   try
      Query_Pro_Custo.open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_pro_custo,465,'SGE','CADCUS');
       end;
       end;
   Query_Cus2.close;
   Query_cus2.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
   Query_cus2.ParamByName('CODPRO').Value := Query_PFor.FieldbyName('PF2CODPRO').AsFloat;
   Query_Cus2.Open;





   mem_cadpro.Append;
   mem_cadproCODPRO.Value      :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
   mnomecampo:='PF2ITEM';

   mem_cadproITEM.Value        :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;
   mem_cadproNOMPRO.Value      :=Query_PFor.fieldbyName('PDNOME').AsString;
   mem_cadproQTD.Value      :=Query_PFor.fieldbyName('PF2QTDP').AsFloat;

   mem_cadproUND.Value         :=Query_PFor.fieldbyName('PDUND').AsString;
   mem_cadproPRECO_ATU.Value   :=Query_PFor.fieldbyName('PDPRECO1').AsFloat;
   mem_cadproPCOCUS_ATU.Value  :=Query_PFor.fieldbyName('PDPRECOC').AsFloat;
   mem_cadproPCOCPR_ATU.Value  :=Query_PFor.fieldbyName('PDUCPR').AsFloat;
   mem_cadproPRECO01_DIG.Value :=Query_PFor.fieldbyName('PDPRECO1_DIG').AsFloat;
   mem_cadproPCOCUS_DIG.Value  :=Query_PFor.fieldbyName('PDPCOCUS_DIG').AsFloat;
   mem_cadproPCOCPR_DIG.Value  :=Query_PFor.fieldbyName('PDPCOCPR_DIG').AsFloat;
   mem_cadproPRECO01_DIG_USA.Value :=Query_PFor.fieldbyName('PDPRECO1_DIG_USA').AsString;
   mem_cadproPCOCUS_DIG_USA.Value  :=Query_PFor.fieldbyName('PDPCOCUS_DIG_USA').AsString;
   mem_cadproPCOCPR_DIG_USA.Value  :=Query_PFor.fieldbyName('PDPCOCPR_DIG_USA').AsString;

   mem_cadproALTERAR.Value     :=0;
   mem_cadproPCOPED.Value      :=Query_PFor.fieldbyName('PF2PU').AsFloat;

   mPreco_Origem               := Query_PFor.fieldbyName('PF2PU_CUSTO').AsFloat;
//                                * Query_PFor.fieldbyName('PF2QTDP').AsFloat;
   if custo_adicional_unitario<>0 then
      begin
      mPreco_Origem:=mPreco_Origem+(mPreco_Origem*custo_adicional_unitario/100);
      end;
   mnomecampo:='PCASAS';

   mPreco_Origem:=Arredonda(mPreco_Origem, DM1.Tb_PargerPCASASPU.AsInteger);


   mem_cadproPRECO_ORIGEM.Value:=mPreco_Origem;
   if query_cus2.IsEmpty then
      begin
         mnomecampo:='CUAPCO02';

      mem_cadproCUACPCO2.AsInteger:=0;
         mnomecampo:='CUAPCO03';

      mem_cadproCUACPCO3.AsInteger:=0;

         mnomecampo:='ATU_PCO01';

      mem_cadproATU_PCO01.AsInteger:=0;
         mnomecampo:='ATU_PCO02';
      mem_cadproATU_PCO02.AsInteger:=0;
         mnomecampo:='ATU_PCO03';
      mem_cadproATU_PCO03.AsInteger:=0;
      end
   else
      begin
      mem_cadproCUACPCO2.AsFloat   :=Query_Cus2.FieldbyName('CUACPCO2').AsFloat;
      mem_cadproCUACPCO3.AsFloat   :=Query_Cus2.FieldbyName('CUACPCO3').AsFloat;
         mnomecampo:='523ATU_PCO01';

      mem_cadproATU_PCO01.AsInteger:=Query_Cus2.FieldbyName('CUATUP01').AsInteger;
         mnomecampo:='526ATU_PCO02';
      mem_cadproATU_PCO02.AsInteger:=Query_Cus2.FieldbyName('CUATUP02').AsInteger;
         mnomecampo:='528ATU_PCO03';
      mem_cadproATU_PCO03.AsInteger:=Query_Cus2.FieldbyName('CUATUP03').AsInteger;
      end;


   Query_Pcus.First;
   While not Query_Pcus.Eof do
      begin
         mnomecampo:='538';

      if Query_Pcus.FieldByName('PCOPCIO').AsInteger<>0 then
         begin
         Query_Pcus.Next;
         Continue;
         end;
      mem_compra.Append;
      mem_compraCODPRO.Value   :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
      mem_compraITEM.Value   :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;

         mnomecampo:='546';

      mem_compraCODIGO.Value   :=query_pcus.fieldbyName('PCCODIGO').AsInteger;
      mem_compraDESCRICAO.Value:=query_pcus.fieldbyName('PCNOME').AsString;
      mem_compraPERC.Value     :=0;
      mem_compraVALOR.Value    :=0;
      mem_compraACUM.Value     :=0;
      if Query_Pro_Custo.Locate('CUCODPCU',query_pcus.fieldbyName('PCCODIGO').AsFloat,[]) then
         begin
         mnomecampo:='555';

         mAplicSob   :=query_pcus.fieldbyName('PCAPLS').AsInteger;
         mTipoformula:=query_pcus.fieldbyName('PFORMULA').AsInteger;
         if (mTipoformula=0) and (mFator<0) then
             begin
             mFator:=99;
             mFator:=(100-mfator)/100;
             end;
         mnomecampo:='564';

         mTipo       :=query_pcus.fieldbyName('PTIPO').AsInteger;
         mem_compraPERC.Value        := Query_Pro_Custo.fieldbyName('CUPERC').AsFloat;
         mem_compraAPLICAR_SOB.Value := mAplicSob;
         mem_compraTIPOFORMULA.Value := mTipoformula;
         mem_compraTIPO.Value        := mTipo;
         mem_compraFATOR.Value       := Query_Pro_Custo.fieldbyName('CUFATOR').AsFloat;
         mem_compraVALORREAL.Value   := mValorReal;
         end;
      mem_compra.Post;
      Query_Pcus.Next;
      end;



   // INICIO DO CUSTO

   mPreco_Origem               :=mem_cadproPCOCPR_NOV.AsFloat;
   Query_Pcus.First;


   While not Query_Pcus.Eof do
      begin
      mnomecampo:='586';
      if Query_Pcus.FieldByName('PCOPCIO').AsInteger<>1 then
         begin
         Query_Pcus.Next;
         Continue;
         end;
      mem_custo.Append;
      mem_custoCODPRO.Value   :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
      mem_custoITEM.Value   :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;

      mnomecampo:='595';

      mem_custoCODIGO.Value   :=query_pcus.fieldbyName('PCCODIGO').AsInteger;
      mem_custoDESCRICAO.Value:=query_pcus.fieldbyName('PCNOME').AsString;
      mem_custoPERC.Value     :=0;
      mem_custoVALOR.Value    :=0;
      mem_custoACUM.Value     :=0;

      if Query_Pro_Custo.Locate('CUCODPCU',query_pcus.fieldbyName('PCCODIGO').AsFloat,[]) then
         begin
         mnomecampo:='606';
         mAplicSob   :=query_pcus.fieldbyName('PCAPLS').AsInteger;
         mTipoformula:=query_pcus.fieldbyName('PFORMULA').AsInteger;
         if (mTipoformula=0) and (mFator<0) then
            begin
            mFator:=99;
            mFator:=(100-mfator)/100;
            end;
         mnomecampo:='614';

         mTipo       :=query_pcus.fieldbyName('PTIPO').AsInteger;
         mem_CustoPERC.Value     := Query_Pro_Custo.fieldbyName('CUPERC').AsFloat;

         mem_CustoPERC.Value        := Query_Pro_Custo.fieldbyName('CUPERC').AsFloat;
         mem_CustoAPLICAR_SOB.Value := mAplicSob;
         mem_CustoTIPOFORMULA.Value := mTipoformula;
         mem_CustoTIPO.Value        := mTipo;
         mem_custoFATOR.Value       := Query_Pro_Custo.fieldbyName('CUFATOR').AsFloat;

         mem_CustoVALORREAL.Value   := mValorReal;

         end;
      mem_custo.Post;
      Query_Pcus.Next;
      end;
// inicio custo
   mnomecampo:='632';
   if (valfloat(edt_percdial_estrangeira.Text)>0) and (valfloat(edt_percdial_nacional.Text)>0)
       and
      (
      (Query_PFor.fieldbyname('PDNIVEL').AsInteger=0) or
      (Query_PFor.fieldbyname('PDNIVEL').AsInteger=7) or
      (Query_PFor.fieldbyname('PDNIVEL').AsInteger=8)
        )                 then
      begin
      mnomecampo:='643';

      mcsticms:=copy(formatfloat('0000', Query_PFor.fieldbyname('PF2SIT').AsInteger),3,2);
      mnomecampo:='646';

      mcsosn  :=copy(formatfloat('0000', valint(Query_PFor.fieldbyname('PF2CSOSN').asstring)),2,3);

      mnomecampo:='650';

      if ( (Query_PFor.FieldByName('FCRT').AsInteger=3) and
           (
         (mcsticms<>'10')
         and (mcsticms<>'30')
         and (mcsticms<>'60')
         and (mcsticms<>'70')
          )
         ) or
         ( (Query_PFor.FieldByName('FCRT').AsInteger<>3)
         and (  (mcsosn <>'201')
         and (mcsosn <>'202')
         and (mcsosn <>'203')
         and (mcsosn <>'500')
         ) ) then
           begin
           if Query_PFor.fieldbyname('FUF').asstring<>DM1.Tb_EmpUF.AsString then
              begin
              if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger<>3 then
                 begin
                 mnomecampo:='670';
                 if valint(Query_PFor.fieldbyName('PF2CSOSN_ORI').Asstring)<8 then
                    begin
                    mem_custo.Append;
                    mem_custoCODPRO.Value   :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
                    mem_CUSTOITEM.Value   :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;

                    mem_custoCODIGO.Value   :=-1;
                    mem_custoDESCRICAO.Value:='DIFAL ORIGEM '+Query_PFor.fieldbyName('PF2CSOSN_ORI').AsString;
                          mnomecampo:='678';

                    if Query_PFor.FieldByName('FCRT').AsInteger=3 then
                       begin
                       if length(Query_PFor.fieldbyName('PF2SIT').AsString)>0 then
                          morigem_produto:=Query_PFor.fieldbyName('PF2SIT').AsString[1]
                       else
                          morigem_produto:='0';
                       end
                    else
                       morigem_produto:=Query_PFor.fieldbyName('PF2CSOSN_ORI').Asstring;

                    if morigem_produto[1] in ['0','3','4','5'] then
                       mem_custoPERC.Value     :=valfloat(edt_percdial_nacional.Text)
                    else
                       mem_custoPERC.Value     :=valfloat(edt_percdial_estrangeira.Text);

                    mem_custoVALOR.Value    :=0;
                    mem_custoACUM.Value     :=0;
                    mAplicSob   :=0;
                    mTipoformula:=0;
                    if (mTipoformula=0) and (mFator<0) then
                       begin
                       mFator:=99;
                       mFator:=(100-mfator)/100;
                       end;
                    mTipo       :=0;
                    mem_CustoAPLICAR_SOB.Value := mAplicSob;
                    mem_CustoTIPOFORMULA.Value := mTipoformula;
                    mem_CustoTIPO.Value        := mTipo;
                    mem_custoFATOR.Value       := mFator;
                    mem_CustoVALORREAL.Value   := 0;
                    mem_custo.Post;
                    end;
                 end
              else
                 begin
                 if CB_ICMS_CREDITO.Checked then
                    begin
//inicio
                    mnomecampo:='670';
                    if valint(Query_PFor.fieldbyName('PF2CSOSN_ORI').Asstring)<8 then
                    begin
                    mem_custo.Append;
                    mem_custoCODPRO.Value   :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
                    mem_CUSTOITEM.Value   :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;

                    mem_custoCODIGO.Value   :=-2;
                    mem_custoDESCRICAO.Value:='ICMS CREDITO '+Query_PFor.fieldbyName('PF2CSOSN_ORI').AsString;
                    mnomecampo:='678';

                    if Query_PFor.FieldByName('FCRT').AsInteger=3 then
                       begin
                       if length(Query_PFor.fieldbyName('PF2SIT').AsString)>0 then
                          morigem_produto:=Query_PFor.fieldbyName('PF2SIT').AsString[1]
                       else
                          morigem_produto:='0';
                       end
                    else
                       morigem_produto:=Query_PFor.fieldbyName('PF2CSOSN_ORI').Asstring;

                    mem_custoPERC.Value     :=Query_PFor.fieldbyName('PF2ALIQ').AsFloat*-1;

                    mem_custoVALOR.Value    :=0;
                    mem_custoACUM.Value     :=0;
                    mAplicSob   :=0;
                    mTipoformula:=0;
                    if (mTipoformula=0) and (mFator<0) then
                       begin
                       mFator:=99;
                       mFator:=(100-mfator)/100;
                       end;
                    mTipo       :=0;
                    mem_CustoAPLICAR_SOB.Value := mAplicSob;
                    mem_CustoTIPOFORMULA.Value := mTipoformula;
                    mem_CustoTIPO.Value        := mTipo;
                    mem_custoFATOR.Value       := mFator;
                    mem_CustoVALORREAL.Value   := 0;
                    mem_cadproPRECO_NOV.Value:=mPreco_Origem + mPco_Venda_Acum;

                    mem_custo.Post;

                    end;

// termino
                 end;
              end;
           end;
        end;
     end;

// termino custo

// preco



// TERMINO DO CUSTO

   mem_cadproPCOCUS_NOV.Value:=mPreco_Origem + mPco_Custo_Acum;

// INICIO DO VENDA

   mPreco_Origem               :=mem_cadproPCOCUS_NOV.AsFloat;
   Query_Pcus.First;
   While not Query_Pcus.Eof do
      begin
         mnomecampo:='734';

      if (Query_Pcus.FieldByName('PCOPCIO').AsInteger<>2) and  (Query_Pcus.FieldByName('PCOPCIO').AsInteger<>3) then
         begin
         Query_Pcus.Next;
         Continue;
         end;
      mem_Venda.Append;
      mem_VendaCODPRO.Value   :=Query_PFor.fieldbyName('PF2CODPRO').AsFloat;
      mem_VendaITEM.Value   :=Query_PFor.fieldbyName('PF2ITEM').AsInteger;

               mnomecampo:='743';

      mem_VendaCODIGO.Value   :=query_pcus.fieldbyName('PCCODIGO').AsInteger;
      mem_VendaDESCRICAO.Value:=query_pcus.fieldbyName('PCNOME').AsString;
      mem_VendaPERC.Value     :=0;
      mem_VendaVALOR.Value    :=0;
      mem_VendaACUM.Value     :=0;

      if Query_Pro_Custo.Locate('CUCODPCU',query_pcus.fieldbyName('PCCODIGO').AsFloat,[]) then
         begin
         mnomecampo:='753';

         mAplicSob   :=query_pcus.fieldbyName('PCAPLS').AsInteger;
         mTipoformula:=query_pcus.fieldbyName('PFORMULA').AsInteger;
         if (mTipoformula=0) and (mFator<0) then
             begin
             mFator:=99;
             mFator:=(100-mfator)/100;
             end;
         mnomecampo:='762';

         mTipo       :=query_pcus.fieldbyName('PTIPO').AsInteger;
         mem_VendaPERC.Value     := Query_Pro_Custo.fieldbyName('CUPERC').AsFloat;

         mem_vendaPERC.Value        := Query_Pro_Custo.fieldbyName('CUPERC').AsFloat;
         mem_vendaAPLICAR_SOB.Value := mAplicSob;
         mem_vendaTIPOFORMULA.Value := mTipoformula;
         mem_vendaTIPO.Value        := mTipo;
         mem_VendaFATOR.Value       := Query_Pro_Custo.fieldbyName('CUFATOR').AsFloat;
         mem_vendaVALORREAL.Value   := mValorReal;

         end;
      mem_cadproPRECO_NOV.Value:=mPreco_Origem + mPco_Venda_Acum;

      mem_Venda.Post;
      Query_Pcus.Next;
      end;



// TERMINO DO VENDA


   Query_PFor.Next;
   end;

except on e : exception do
   begin
   MessageDlg('Erro 735 Mensagem '+mnomecampo+' '+ e.message,mtError,[mbok],0);

   end;
   end;



fCalcularPrecos(true);

FreeAndNil(Query_Pro_Custo);
FreeAndNil(Query_PCus);
FreeAndNil(Query_PFor);

mem_venda.Filtered:=true;
mem_custo.Filtered:=true;
mem_compra.Filtered:=true;
mLocalizando:=false;

result:=true;
end;

function tFrm_Compras_orc_precos.FPrecosNovos: Boolean;
begin
if mem_cadpro.state in [dsedit,dsinsert] then
   begin
   if mem_cadproPRECO01_DIG.AsFloat=0 then
      mem_cadproPCOVDA01_NOV.AsFloat:=mem_cadproPRECO_NOV.AsFloat
   else
      mem_cadproPCOVDA01_NOV.AsFloat:=mem_cadproPRECO01_DIG.AsFloat;
   if (mem_cadproCUACPCO2.AsFloat<>0) and (mem_cadproPCOVDA01_NOV.AsFloat<>0) then
      mem_cadproPCOVDA02_NOV.AsFloat:=arredonda( mem_cadproPCOVDA01_NOV.AsFloat+(mem_cadproPCOVDA01_NOV.AsFloat*mem_cadproCUACPCO2.AsFloat/100) , DM1.Tb_PargerPCASASPU.AsInteger)
   else
      mem_cadproPCOVDA02_NOV.AsFloat:=0;

   if (mem_cadproCUACPCO3.AsFloat<>0) and (mem_cadproPCOVDA01_NOV.AsFloat<>0) then
      mem_cadproPCOVDA03_NOV.AsFloat:=arredonda( mem_cadproPCOVDA01_NOV.AsFloat+(mem_cadproPCOVDA01_NOV.AsFloat*mem_cadproCUACPCO3.AsFloat/100) , DM1.Tb_PargerPCASASPU.AsInteger)
   else
      mem_cadproPCOVDA03_NOV.AsFloat:=0;
   end;
result:=true;
end;


function TFrm_Compras_Orc_Precos.fCalcularPrecos(pTodos: boolean): boolean;

var
mPosicao: TBookmark;
mPco_Compra_Acum: Real;
mPco_Custo_Acum: Real;
mPco_Venda_Acum: Real;
mValorReal: Real;
mVlrResult: TArrayCusto;

begin
if mem_cadpro.IsEmpty then
   begin
   result:=true;
   exit;
   end;



mReatribuindo:=true;
if ptodos then
   mem_cadpro.first;
mem_venda.Filtered:=true;
mem_custo.Filtered:=true;
mem_compra.Filtered:=true;

While not mem_cadpro.eof do
   begin
   if mem_compra.Active then
      mem_compra.Refresh;
   if mem_compra.Active then
      mem_custo.Refresh;
   if mem_compra.Active then
      mem_venda.Refresh;

    mPco_Compra_Acum:=0;
    mPco_Custo_Acum :=0;
    mPco_Venda_Acum :=0;

    if  not (mem_cadpro.state in [dsEdit,dsInsert]) then
        mem_cadpro.edit;


    if (mem_compra.Active) and (not mem_compra.IsEmpty) then
       begin
       mPosicao:=mem_compra.GetBookmark;
       mem_compra.First;
       While not mem_compra.Eof do
          begin
          if not (mem_compra.State in [dsEdit,dsInsert]) then
             mem_compra.Edit;
          mVlrResult:=fCalcularCusto(mem_compraAPLICAR_SOB.AsInteger,mem_compraTIPOFORMULA.AsInteger,
                                     mem_compraTIPO.AsInteger
                                     ,mem_compraFATOR.AsFloat
                                     ,mem_compraPERC.AsFloat
                                     ,mem_cadproPRECO_ORIGEM.AsFloat
                                     ,mPco_Compra_Acum
                                     ,0 // mpmin
                                     ,mem_compraVALORREAL.AsFloat);


          if mem_compraFATOR.AsInteger=1 then
             begin
             mPco_Compra_Acum:=mPco_Compra_Acum-mvlrResult[0];
             mem_cadproPCOCPR_NOV.Value:=mem_cadproPRECO_ORIGEM.AsFloat + mPco_Compra_Acum;
             end
          else
             begin
             mPco_Compra_Acum:=mPco_Compra_Acum+mvlrResult[0];
             mem_cadproPCOCPR_NOV.Value:=mem_cadproPRECO_ORIGEM.AsFloat + mPco_Compra_Acum;
             end;
         if not (mem_compra.State in [dsEdit,dsInsert]) then
              mem_compra.Edit;
          mem_compraVALOR.Value    :=mvlrResult[0];
          mem_compraACUM.Value     :=mPco_Compra_Acum;
          mem_compra.Post;
          mem_compra.Next;
          end;
       mem_compra.GotoBookmark(mPosicao);
       end;

    if not (mem_cadpro.state in [dsEdit,dsInsert]) then
       mem_cadpro.Edit;

    mem_cadproPCOCPR_NOV.Value:=mem_cadproPRECO_ORIGEM.AsFloat + mPco_Compra_Acum;

    // custo


    if (mem_custo.Active) and (not mem_custo.IsEmpty) then
       begin
       mPosicao:=mem_custo.GetBookmark;
       mem_custo.First;
       While not mem_custo.Eof do
          begin
          if not (mem_custo.State in [dsEdit,dsInsert]) then
             mem_custo.Edit;
          mVlrResult:=fCalcularCusto(mem_custoAPLICAR_SOB.AsInteger,mem_custoTIPOFORMULA.AsInteger,
                                     mem_custoTIPO.AsInteger
                                     ,mem_custoFATOR.AsFloat
                                     ,mem_custoPERC.AsFloat
                                     ,mem_cadproPCOCPR_NOV.Value
                                     ,mPco_Custo_Acum
                                     ,0 // mpmin
                                     ,mem_custoVALORREAL.AsFloat);

          if mem_custoFATOR.AsInteger=1 then
             begin
             mPco_Custo_Acum:=mPco_Custo_Acum-mvlrResult[0];
             mem_cadproPCOCUS_NOV.Value:=mem_cadproPCOCPR_NOV.Value + mPco_Custo_Acum;
             end
          else
             begin
             mPco_Custo_Acum:=mPco_Custo_Acum+mvlrResult[0];
             mem_cadproPCOCUS_NOV.Value:=mem_cadproPCOCPR_NOV.Value + mPco_Custo_Acum;
             end;
          if not (mem_custo.State in [dsEdit,dsInsert]) then
             mem_custo.Edit;
          mem_custoVALOR.Value    :=mvlrResult[0];
          mem_custoACUM.Value     :=mPco_Custo_Acum;
          mem_custo.Post;
          mem_custo.Next;
          end;
       end;
    if not (mem_cadpro.state in [dsEdit,dsInsert]) then
       mem_cadpro.Edit;

    mem_cadproPCOCUS_NOV.Value:=mem_cadproPCOCPR_NOV.AsFloat + mPco_Custo_Acum;


    // termino custo





    // venda


    if (mem_venda.Active) and (not mem_venda.IsEmpty) then
       begin
       mPosicao:=mem_venda.GetBookmark;
       mem_venda.First;
       While not mem_venda.Eof do
          begin
          if not (mem_venda.State in [dsEdit,dsInsert]) then
             mem_venda.Edit;
          mVlrResult:=fCalcularCusto(mem_vendaAPLICAR_SOB.AsInteger,mem_vendaTIPOFORMULA.AsInteger,
                                     mem_vendaTIPO.AsInteger
                                     ,mem_vendaFATOR.AsFloat
                                     ,mem_vendaPERC.AsFloat
                                     ,mem_cadproPCOCUS_NOV.Value
                                     ,mPco_Venda_Acum
                                     ,0 // mpmin
                                     ,mem_vendaVALORREAL.AsFloat);

          if mem_vendaFATOR.AsInteger=1 then
             begin
             mPco_Venda_Acum:=mPco_Venda_Acum-mvlrResult[0];
             mem_cadproPRECO_NOV.Value:=mem_cadproPCOCUS_NOV.Value + mPco_Venda_Acum;

             end
          else
             begin
             mPco_Venda_Acum:=mPco_Venda_Acum+mvlrResult[0];
             mem_cadproPRECO_NOV.Value:=mem_cadproPCOCUS_NOV.Value + mPco_Venda_Acum;
             end;

          if not (mem_venda.State in [dsEdit,dsInsert]) then
             mem_venda.Edit;

          mem_vendaVALOR.Value    :=mvlrResult[0];
          mem_vendaACUM.Value     :=mPco_Venda_Acum;
          mem_venda.Post;
          mem_venda.Next;
          end;
       end;
    if not (mem_cadpro.state in [dsEdit,dsInsert]) then
       mem_cadpro.Edit;

    mem_cadproPRECO_NOV.Value:=mem_cadproPCOCUS_NOV.AsFloat + mPco_Venda_Acum;

    if not ptodos then
       break;
    mem_cadpro.next;
    end;

// termino venda

mReatribuindo:=false;


result:=true;
end;


procedure TFrm_Compras_Orc_Precos.FormCreate(Sender: TObject);
const
  mCasasValor: String='##0.00000';
begin
PageControl1.ActivePageIndex:=0;
if codusr=1111 then
   tsConfiguracao.TabVisible:=true
else
   tsConfiguracao.TabVisible:=false;

mReatribuindo:=false;
mem_cadproPRECO01_DIG.DisplayFormat:=mcasaspu;

mem_cadproPCOPED.DisplayFormat:=mcasaspu;
mem_cadproPRECO_ORIGEM.DisplayFormat:=mcasaspu;

mem_cadproPCOCPR_DIG.DisplayFormat:=mcasaspu;
mem_cadproPCOCUS_DIG.DisplayFormat:=mcasaspu;

mem_cadproPRECO_ATU.DisplayFormat:=mcasaspu;
mem_cadproPRECO_NOV.DisplayFormat:=mcasaspu;

mem_cadproPCOVDA01_NOV.DisplayFormat:=mcasaspu;
mem_cadproPCOVDA02_NOV.DisplayFormat:=mcasaspu;
mem_cadproPCOVDA03_NOV.DisplayFormat:=mcasaspu;


mem_cadproPCOCUS_NOV.DisplayFormat:=mcasaspu;
mem_cadproPCOCUS_ATU.DisplayFormat:=mcasaspu;

mem_cadproPCOCPR_NOV.DisplayFormat:=mcasaspu;
mem_cadproPCOCPR_ATU.DisplayFormat:=mcasaspu;

mem_compraPERC.DisplayFormat:=mcasas_pct;
mem_compraVALOR.DisplayFormat:=mCasasValor;
mem_compraACUM.DisplayFormat:=mcasas;

mem_vendaPERC.DisplayFormat:=mcasas_pct;
mem_vendaVALOR.DisplayFormat:=mCasasValor;
mem_vendaACUM.DisplayFormat:=mcasas;

mem_custoPERC.DisplayFormat:=mcasas_pct;
mem_custoVALOR.DisplayFormat:=mCasasValor;
mem_custoACUM.DisplayFormat:=mcasas;

if flfilpad(-1,'_compras_orc_precos','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IPI',[]) then
      cb_ipi.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VII',[]) then
      CB_VII.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VIOF',[]) then
      CB_VIOF.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TARBAN',[]) then
      CB_TARBAN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OUTDESP',[]) then
      CB_OUTDESP.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALFRE',[]) then
      CB_VALFRE.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALSEG',[]) then
      CB_VALSEG.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALDES',[]) then
      CB_VALDES.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ICMSR',[]) then
      CB_ICMSR.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

   end;

if flfilpad(-2,'_compras_orc_precos','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','percdial_nacional',[]) then
      edt_percdial_nacional.text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','percdial_estrangeira',[]) then
      edt_percdial_estrangeira.text:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;

if flfilpad(-3,'_compras_orc_precos','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ICMS_CREDITO',[]) then
      CB_ICMS_CREDITO.Checked  := DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;


end;

procedure TFrm_Compras_Orc_Precos.edt_percdial_estrangeiraExit(
  Sender: TObject);
var
mform: string;
begin
edt_percdial_estrangeira.Text:=formatfloat(mcasas_pct, valfloat(edt_percdial_estrangeira.Text));
mform:='_compras_orc_precos';
fDeletaPadroes(-2,mform,'percdial_estrangeira');
fGravaPadroes(-2,'percdial_estrangeira'    ,'text' ,mform,edt_percdial_estrangeira.Text);



end;

procedure TFrm_Compras_Orc_Precos.mem_compraFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin

   if ( mem_cadproCODPRO.AsFloat=mem_compraCODPRO.AsFloat) and
      ( mem_cadproITEM.AsInteger=mem_compraITEM.AsInteger) then
      Accept:=true
   else
      Accept:=false;


end;

procedure TFrm_Compras_Orc_Precos.mem_custoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   if ( mem_cadproCODPRO.AsFloat=mem_custoCODPRO.AsFloat) and
      ( mem_cadproITEM.AsInteger=mem_custoITEM.AsInteger) then

      Accept:=true
   else
      Accept:=false;


end;

procedure TFrm_Compras_Orc_Precos.mem_vendaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin

   if ( mem_cadproCODPRO.AsFloat=mem_vendaCODPRO.AsFloat) and
      ( mem_cadproITEM.AsInteger=mem_vendaITEM.AsInteger) then

      Accept:=true
   else
      Accept:=false;

end;



procedure TFrm_Compras_Orc_Precos.src_cadproDataChange(Sender: TObject;
  Field: TField);
begin
if not mLocalizando then
   begin
   if mem_compra.Active then
      mem_compra.Refresh;
   if mem_compra.Active then
      mem_custo.Refresh;
   if mem_compra.Active then
      mem_venda.Refresh;
   end;


end;

procedure TFrm_Compras_Orc_Precos.DBGrid_itensDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);

var
  DrawState: Integer;
  DrawRect: TRect;
begin

if (gdFocused in State) then
   begin
   if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
      DBCheckBox1.Left := Rect.Left + DbGrid_Itens.Left + 2;
      DBCheckBox1.Top := Rect.Top + DbGrid_Itens.top + 2;
      DBCheckBox1.Width := Rect.Right - Rect.Left;
      DBCheckBox1.Height := Rect.Bottom - Rect.Top;
      DBCheckBox1.Visible := True;
      end
   end
else
    begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
       begin
       DrawRect:=Rect;
       InflateRect(DrawRect,-1,-1);
       DrawState := ISChecked[Column.Field.AsInteger=0];
       DbGrid_Itens.Canvas.FillRect(Rect);
       DrawFrameControl(DbGrid_Itens.Canvas.Handle, DrawRect,
                       DFC_BUTTON, DrawState);
      end;
   end;


if (Column.Field=mem_cadproPCOCUS_NOV) and
   (mem_cadproPCOCUS_NOV.AsFloat<mem_cadproPCOCUS_ATU.AsFloat) then
   begin
   DBGrid_itens.Canvas.Font.Color:=clRed;
   DBGrid_itens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Column.Field=mem_cadproPCOCPR_NOV) and
   (mem_cadproPCOCPR_NOV.AsFloat<mem_cadproPCOCPR_ATU.AsFloat) then
   begin
   DBGrid_itens.Canvas.Font.Color:=clRed;
   DBGrid_itens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Column.Field=mem_cadproPRECO_NOV) and
   (mem_cadproPRECO_NOV.AsFloat<mem_cadproPRECO_ATU.AsFloat) then
   begin
   DBGrid_itens.Canvas.Font.Color:=clRed;
   DBGrid_itens.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Compras_Orc_Precos.DBGrid_itensColExit(Sender: TObject);
begin

 if DbGrid_Itens.SelectedField.FieldName = DBCheckBox1.DataField then
    DBCheckBox1.Visible := False

end;

procedure TFrm_Compras_Orc_Precos.DBGrid_itensKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key = Chr(9)) then Exit;

if (DbGrid_Itens.SelectedField.FieldName = DBCheckBox1.DataField) then
   begin
   DBCheckBox1.SetFocus;
   SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);
   end;

end;

procedure TFrm_Compras_Orc_Precos.DBCheckBox1Click(Sender: TObject);
begin


if DBCheckBox1.Checked then
   DBCheckBox1.Caption := 'Sim'
else
   DBCheckBox1.Caption := 'Não';
end;

procedure TFrm_Compras_Orc_Precos.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Compras_Orc_Precos.bbAtualizarClick(Sender: TObject);
var
Query_Atu: tQuery;
form_agde: TFrm_Agde;
begin
Application.CreateForm(TFrm_Agde, form_agde);
form_agde.Label1.Caption    :='Atualizando os Preços dos Produtos Aguarde!';
form_agde.gb_progres.Visible:=true;
if mem_cadpro.State in [dsEdit,dsInsert] then
   mem_cadpro.Post;
form_agde.mag_qtdreg:=mem_cadpro.RecordCount;
if form_agde.mag_qtdreg<1 then
   form_agde.mag_qtdreg:=1;
form_agde.mag_qtdlis:=0;
form_agde.Show;
form_agde.Update;
Query_Atu:=tQuery.Create(nil);
Query_Atu.DatabaseName:='SG_ASSOC';
mem_cadpro.First;
Query_Atu.Close;
Query_Atu.SQL.Clear;

while not mem_cadpro.Eof do
   begin
   form_agde.mag_qtdlis:=form_agde.mag_qtdlis+1;
   form_agde.Gauge1.Progress:=form_agde.mag_qtdlis*100 div form_agde.mag_qtdreg;
   verteclado(0);
   if mem_cadproALTERAR.Value=1 then
      begin
      mem_cadpro.Next;
      Continue;
      end;
   Query_Atu.Close;
   Query_Atu.Sql.Clear;
   Query_Atu.Sql.Add('Update CADPRO set PDPCOFAB=:PCOPED ');

   Query_Atu.SQL.Add(',PDPRECO1_DIG=:PDPRECO1_DIG '
                    +',PDPCOCUS_DIG=:PDPCOCUS_DIG '
                    +',PDPCOCPR_DIG=:PDPCOCPR_DIG '
                    +',PDPRECO1_DIG_USA=:PDPRECO1_DIG_USA'
                    +',PDPCOCUS_DIG_USA=:PDPCOCUS_DIG_USA'
                    +',PDPCOCPR_DIG_USA=:PDPCOCPR_DIG_USA');


   if mem_cadproATU_PCO01.AsInteger=0 then
      begin
      Query_Atu.Sql.Add(',PDPRECOA1=PDPRECO1'
                       +',PDPRECO1=:PRECO_NOV01');
      if (mem_cadproPRECO01_DIG.AsFloat>0) and (mem_cadproPRECO01_DIG_USA.AsString='S') then
         Query_Atu.ParamByName('PRECO_NOV01').Value   :=Arredonda( mem_cadproPRECO01_DIG.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger)
      else
         Query_Atu.ParamByName('PRECO_NOV01').Value   :=Arredonda( mem_cadproPCOVDA01_NOV.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;

      end;
   if mem_cadproATU_PCO02.AsInteger=0 then
      begin
      Query_Atu.Sql.Add(',PDPRECOA2=PDPRECO2'
                       +',PDPRECO2=:PRECO_NOV02');
      Query_Atu.ParamByName('PRECO_NOV02').Value   :=Arredonda( mem_cadproPCOVDA02_NOV.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;

      end;
   if mem_cadproATU_PCO03.AsInteger=0 then
      begin
      Query_Atu.Sql.Add(',PDPRECOA3=PDPRECO3'
                       +',PDPRECO3=:PRECO_NOV03');
      Query_Atu.ParamByName('PRECO_NOV03').Value   :=Arredonda( mem_cadproPCOVDA03_NOV.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;
      end;

    Query_Atu.Sql.Add(',PDUCPR=:PCOCPR_NOV,PDPRECOC=:PCOCUS_NOV,PDDTUATP1=SYSDATE '
                 +',PDPCOMC=ROUND( DECODE(NVL(PDPRECOC,0),0,:PCOCUS_NOV, (PDPRECOC+:PCOCUS_NOV) /2) ,'+DM1.Tb_PargerPCASASPU.AsString+')'
                 +' where '
                 +' (PDCODEMP=:CODEMP OR PDCODEMP=:CODEMP +100 OR PDCODEMP=:CODEMP - 100) and PDCODPRO=:CODPRO ');


   if (mem_cadproPCOCUS_DIG.AsFloat>0) and (mem_cadproPCOCUS_DIG_USA.AsString='S') then
      Query_Atu.ParamByName('PCOCUS_NOV').Value  :=Arredonda(mem_cadproPCOCUS_DIG.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger)
   else
      Query_Atu.ParamByName('PCOCUS_NOV').Value  :=Arredonda(mem_cadproPCOCUS_NOV.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;

   if (mem_cadproPCOCPR_DIG.AsFloat>0) and (mem_cadproPCOCPR_DIG_USA.AsString='S') then
      Query_Atu.ParamByName('PCOCPR_NOV').Value  :=Arredonda(mem_cadproPCOCPR_DIG.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger)
   else
      Query_Atu.ParamByName('PCOCPR_NOV').Value  :=Arredonda(mem_cadproPCOCPR_NOV.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;
   Query_Atu.ParamByName('CODEMP').Value      :=codemp;
   Query_Atu.ParamByName('CODPRO').Value      :=mem_cadproCODPRO.AsFloat;
//   Query_Atu.ParamByName('PCOPED').Value      :=Arredonda(mem_cadproPCOCPR_DIG.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;
   Query_Atu.ParamByName('PCOPED').Value      :=Arredonda(mem_cadproPCOPED.AsFloat, DM1.Tb_PargerPCASASPU.AsInteger) ;




   Query_Atu.ParamByName('PDPRECO1_DIG').AsFloat     :=mem_cadproPRECO01_DIG.AsFloat;
   Query_Atu.ParamByName('PDPCOCUS_DIG').AsFloat     :=mem_cadproPCOCUS_DIG.AsFloat;
   Query_Atu.ParamByName('PDPCOCPR_DIG').AsFloat     :=mem_cadproPCOCPR_DIG.AsFloat;
   Query_Atu.ParamByName('PDPRECO1_DIG_USA').AsString:=mem_cadproPRECO01_DIG_USA.Asstring;
   Query_Atu.ParamByName('PDPCOCUS_DIG_USA').AsString:=mem_cadproPCOCUS_DIG_USA.Asstring;
   Query_Atu.ParamByName('PDPCOCPR_DIG_USA').AsString:=mem_cadproPCOCPR_DIG_USA.Asstring;



   try
      Query_Atu.ExecSQL;
      fdm1StartCommit;

   except on e : exception do
      begin
      ex_erroSql_Novo(query_atu,1020,'func Erro:'+e.Message ,'CADEST');
      break;
      end;
      end;

   mem_cadpro.Next;
   end;
FreeAndNil(query_atu);
fAtualizarTagDifal;

if form_agde<>nil then
   FreeAndNil(form_agde);

verteclado(0);
MessageDlg('Novos Preços Aplicados!',mtInformation,[mbOk],0);
end;

function TFrm_Compras_Orc_Precos.fAtualizarTagDifal:boolean;
var
query_atualiza: tQuery;
mSelect_comp: string;
mSelect: string;
mSelect_virg: string;
mupdate: string;
   procedure pfechartudo;
   begin
   query_atualiza.close;
   freeandnil(query_atualiza);

   end;
begin
query_atualiza:=tQuery.create(nil);
query_atualiza.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


mem_cadpro.first;
query_atualiza.sql.Add('MERGE INTO CADPF2 t USING ( ');
mSelect:='';
mSelect_virg:='';
mSelect_comp:='';
while not mem_cadpro.Eof do
   begin
   query_atualiza.sql.Add(mSelect_comp+' Select  ');
   query_atualiza.sql.Add(' '+floattostr(mChave)+' as PF2CHAVE ');
   query_atualiza.sql.Add(','+floattostr(mLotSeq)+' as PF2LOTSEQ ');
   query_atualiza.sql.Add(','+floattostr(mCodemp)+' as PF2CODEMP ');
   query_atualiza.sql.Add(','+mem_cadproITEM.AsString+' as PF2ITEM ');
   if mem_custo.locate('CODIGO',-1,[]) then
      begin
      query_atualiza.sql.Add(','+mudavp(mem_custoPERC.AsString)+' as PF2DIFAL_PERC ');;
      query_atualiza.sql.Add(','+mudavp(floattostr( arredonda( (mem_custoVALOR.AsFloat*mem_cadproQTD.asfloat) ,2)))+' as PF2DIFAL_VALOR ');
      end
   else
      begin
      query_atualiza.sql.Add(',0 as PF2DIFAL_PERC ');
      query_atualiza.sql.Add(',0 as PF2DIFAL_VALOR ');
      end;
   query_atualiza.sql.Add(' from dual ');
                                                            
   mSelect_comp:=' union all ';
   mem_cadpro.Next;
   end;
query_atualiza.SQL.add(' ) d '
                    +' on ('+' t.PF2codemp = d.PF2codemp'                    +' and  t.PF2lotseq = d.PF2lotseq'                    +' and  t.PF2chave = d.PF2chave'                    +' and  t.PF2item = d.PF2item '                    +')'
                    +' WHEN MATCHED THEN UPDATE SET '
                    +'t.PF2DIFAL_PERC = d.PF2DIFAL_PERC '
                    +',t.PF2difal_valor = d.PF2difal_valor '                    +'  ');try   query_atualiza.ExecSQL;
   fdm1StartCommit;
except on E: exception do
   begin
   ex_erroSql_Novo(Query_atualiza,1454,'SGE'+E.Message,'CADPF2');
   end;
   end;
pfechartudo;

end;


procedure TFrm_Compras_Orc_Precos.mem_cadproCalcFields(DataSet: TDataSet);
var
mPrecoRef: Real;
begin
{
if not mLocalizando then
   begin
   mPrecoRef:=0;

   mem_cadproalterar_calc.Value:=mem_cadproALTERAR.AsString;

   if mem_cadproPRECO_NOV.AsFloat>0 then
      mPrecoRef:=mem_cadproPRECO_NOV.AsFloat
   else if mem_cadproPCOCUS_NOV.AsFloat>0 then
      mPrecoRef:=mem_cadproPCOCUS_NOV.AsFloat
   else if mem_cadproPCOCPR_NOV.AsFloat>0 then
      mPrecoRef:=mem_cadproPCOCPR_NOV.AsFloat;

   if (mem_cadproCUACPCO2.AsFloat>0) and (mPrecoRef>0) then
      mem_cadproPCOVDA02_NOV.AsFloat:=mPrecoRef+
                                    Arredonda( (mPrecoRef*mem_cadproCUACPCO2.AsFloat/100), DM1.Tb_PargerPCASASPU.AsInteger)
   else
      mem_cadproPCOVDA02_NOV.AsFloat:=0;

   if (mem_cadproCUACPCO3.AsFloat>0) and (mPrecoRef>0) then
      mem_cadproPCOVDA03_NOV.AsFloat:=mPrecoRef+
                                    Arredonda( (mPrecoRef*mem_cadproCUACPCO3.AsFloat/100), DM1.Tb_PargerPCASASPU.AsInteger)
   else
      mem_cadproPCOVDA03_NOV.AsFloat:=0;
   end;

}
end;

procedure TFrm_Compras_Orc_Precos.DBCheckBox1Exit(Sender: TObject);
begin
DBGrid_itens.SetFocus;
end;

procedure TFrm_Compras_Orc_Precos.mem_compraBeforeInsert(
  DataSet: TDataSet);
begin
if mLocalizando<>true then
   abort;

end;

procedure TFrm_Compras_Orc_Precos.mem_custoBeforeInsert(DataSet: TDataSet);
begin
if mLocalizando<>true then
   abort;

end;

procedure TFrm_Compras_Orc_Precos.mem_vendaBeforeInsert(DataSet: TDataSet);
begin
if mLocalizando<>true then
   abort;

end;

procedure TFrm_Compras_Orc_Precos.mem_compraAfterPost(DataSet: TDataSet);
var
query_gravar: tQuery;
begin

query_gravar:=tQuery.Create(nil);
query_gravar.DatabaseName:='SG_ASSOC';
query_gravar.Close;
query_gravar.SQL.clear;
query_gravar.SQL.Add('Select count(*) from CADCUS '
                    +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                    +' and CUCODPCU=:CODPCU');
query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
query_gravar.ParamByName('CODPRO').Value := mem_compraCODPRO.AsFloat;
query_gravar.ParamByName('CODPCU').Value := mem_compraCODIGO.AsInteger;

query_gravar.Open;
if query_gravar.fields[0].AsInteger<1 then
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Insert into CADCUS (CUCODEMP, '
                       +'CUTIPO,'
                       +'CUCODIGO, '
                       +'CUCODPCU, '
                       +'CUPERC, '
                       +'CUBASECALC, '
                       +'CUVALOR, '
                       +'CUAPLS, '
                       +'CUFATOR, '
                       +'CUOPCIO  '
                       +') values ('
                       +':CUCODEMP, '
                       +':CUTIPO,'
                       +':CUCODIGO, '
                       +':CUCODPCU, '
                       +':CUPERC, '
                       +':CUBASECALC, '
                       +':CUVALOR, '
                       +':CUAPLS, '
                       +':CUFATOR, '
                       +':CUOPCIO  '
                       +')');

   query_gravar.ParamByName('CUCODEMP').AsInteger:=iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CUTIPO').AsInteger  :=0;
   query_gravar.ParamByName('CUCODIGO').AsFloat  :=mem_compraCODPRO.AsFloat;
   query_gravar.ParamByName('CUCODPCU').AsInteger:=mem_compraCODIGO.AsInteger;
   query_gravar.ParamByName('CUPERC').AsFloat    :=mem_compraPERC.AsFloat;
   query_gravar.ParamByName('CUBASECALC').AsFloat:=0;
   query_gravar.ParamByName('CUVALOR').AsFloat   :=mem_compraVALOR.AsFloat;
   query_gravar.ParamByName('CUAPLS').AsFloat    :=0;
   query_gravar.ParamByName('CUFATOR').AsInteger :=0;
   query_gravar.ParamByName('CUOPCIO').AsInteger :=0;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end
else
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Update  CADCUS set CUPERC=:PERC  '
                       +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                       +' and CUCODPCU=:CODPCU');
   query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CODPRO').Value := mem_compraCODPRO.AsFloat;
   query_gravar.ParamByName('CODPCU').Value := mem_compraCODIGO.AsInteger;
   query_gravar.ParamByName('PERC').AsFloat    :=mem_compraPERC.AsFloat;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

freeandnil(query_gravar);
if not mReatribuindo then
   fCalcularPrecos(false);


end;

procedure TFrm_Compras_Orc_Precos.mem_custoAfterPost(DataSet: TDataSet);
var
query_gravar: tQuery;
begin

query_gravar:=tQuery.Create(nil);
query_gravar.DatabaseName:='SG_ASSOC';
query_gravar.Close;
query_gravar.SQL.clear;
query_gravar.SQL.Add('Select count(*) from CADCUS '
                    +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                    +' and CUCODPCU=:CODPCU');
query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
query_gravar.ParamByName('CODPRO').Value := mem_custoCODPRO.AsFloat;
query_gravar.ParamByName('CODPCU').Value := mem_custoCODIGO.AsInteger;

query_gravar.Open;
if query_gravar.fields[0].AsInteger<1 then
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Insert into CADCUS (CUCODEMP, '
                       +'CUTIPO,'
                       +'CUCODIGO, '
                       +'CUCODPCU, '
                       +'CUPERC, '
                       +'CUBASECALC, '
                       +'CUVALOR, '
                       +'CUAPLS, '
                       +'CUFATOR, '
                       +'CUOPCIO  '
                       +') values ('
                       +':CUCODEMP, '
                       +':CUTIPO,'
                       +':CUCODIGO, '
                       +':CUCODPCU, '
                       +':CUPERC, '
                       +':CUBASECALC, '
                       +':CUVALOR, '
                       +':CUAPLS, '
                       +':CUFATOR, '
                       +':CUOPCIO  '
                       +')');

   query_gravar.ParamByName('CUCODEMP').AsInteger:=iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CUTIPO').AsInteger  :=0;
   query_gravar.ParamByName('CUCODIGO').AsFloat  :=mem_custoCODPRO.AsFloat;
   query_gravar.ParamByName('CUCODPCU').AsInteger:=mem_custoCODIGO.AsInteger;
   query_gravar.ParamByName('CUPERC').AsFloat    :=mem_custoPERC.AsFloat;
   query_gravar.ParamByName('CUBASECALC').AsFloat:=0;
   query_gravar.ParamByName('CUVALOR').AsFloat   :=mem_custoVALOR.AsFloat;
   query_gravar.ParamByName('CUAPLS').AsFloat    :=0;
   query_gravar.ParamByName('CUFATOR').AsInteger :=0;
   query_gravar.ParamByName('CUOPCIO').AsInteger :=0;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end
else
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Update  CADCUS set CUPERC=:PERC  '
                       +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                       +' and CUCODPCU=:CODPCU');
   query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CODPRO').Value := mem_custoCODPRO.AsFloat;
   query_gravar.ParamByName('CODPCU').Value := mem_custoCODIGO.AsInteger;
   query_gravar.ParamByName('PERC').AsFloat    :=mem_custoPERC.AsFloat;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

freeandnil(query_gravar);
if not mReatribuindo then
   fCalcularPrecos(false);

end;

procedure TFrm_Compras_Orc_Precos.mem_vendaAfterPost(DataSet: TDataSet);
var
query_gravar: tQuery;
begin

query_gravar:=tQuery.Create(nil);
query_gravar.DatabaseName:='SG_ASSOC';
query_gravar.Close;
query_gravar.SQL.clear;
query_gravar.SQL.Add('Select count(*) from CADCUS '
                    +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                    +' and CUCODPCU=:CODPCU');
query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
query_gravar.ParamByName('CODPRO').Value := mem_vendaCODPRO.AsFloat;
query_gravar.ParamByName('CODPCU').Value := mem_vendaCODIGO.AsInteger;

query_gravar.Open;
if query_gravar.fields[0].AsInteger<1 then
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Insert into CADCUS (CUCODEMP, '
                       +'CUTIPO,'
                       +'CUCODIGO, '
                       +'CUCODPCU, '
                       +'CUPERC, '
                       +'CUBASECALC, '
                       +'CUVALOR, '
                       +'CUAPLS, '
                       +'CUFATOR, '
                       +'CUOPCIO  '
                       +') values ('
                       +':CUCODEMP, '
                       +':CUTIPO,'
                       +':CUCODIGO, '
                       +':CUCODPCU, '
                       +':CUPERC, '
                       +':CUBASECALC, '
                       +':CUVALOR, '
                       +':CUAPLS, '
                       +':CUFATOR, '
                       +':CUOPCIO  '
                       +')');

   query_gravar.ParamByName('CUCODEMP').AsInteger:=iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CUTIPO').AsInteger  :=0;
   query_gravar.ParamByName('CUCODIGO').AsFloat  :=mem_vendaCODPRO.AsFloat;
   query_gravar.ParamByName('CUCODPCU').AsInteger:=mem_vendaCODIGO.AsInteger;
   query_gravar.ParamByName('CUPERC').AsFloat    :=mem_vendaPERC.AsFloat;
   query_gravar.ParamByName('CUBASECALC').AsFloat:=0;
   query_gravar.ParamByName('CUVALOR').AsFloat   :=mem_vendaVALOR.AsFloat;
   query_gravar.ParamByName('CUAPLS').AsFloat    :=0;
   query_gravar.ParamByName('CUFATOR').AsInteger :=0;
   query_gravar.ParamByName('CUOPCIO').AsInteger :=0;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end
else
   begin
   query_gravar.Close;
   query_gravar.SQL.clear;
   query_gravar.SQL.Add('Update  CADCUS set CUPERC=:PERC  '
                       +' where CUCODEMP=:CODEMP and CUCODIGO=:CODPRO '
                       +' and CUCODPCU=:CODPCU');
   query_gravar.ParamByName('CODEMP').Value := iif(codemp>100,codemp-100,codemp);
   query_gravar.ParamByName('CODPRO').Value := mem_vendaCODPRO.AsFloat;
   query_gravar.ParamByName('CODPCU').Value := mem_vendaCODIGO.AsInteger;
   query_gravar.ParamByName('PERC').AsFloat    :=mem_vendaPERC.AsFloat;
   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

freeandnil(query_gravar);
if not mReatribuindo then
   fCalcularPrecos(false);

end;

procedure TFrm_Compras_Orc_Precos.cb_todosClick(Sender: TObject);
begin
if not (mem_cadpro.State in [dsedit,dsinsert]) then
   mem_cadpro.edit;
mem_cadproPRECO01_DIG_USA.Value:=IIF(cb_todos.Checked=TRUE,'S','N');
mem_cadproPCOCUS_DIG_USA.Value :=IIF(cb_todos.Checked=TRUE,'S','N');
mem_cadproPCOCPR_DIG_USA.Value :=IIF(cb_todos.Checked=TRUE,'S','N');
mem_cadpro.Post;

end;

procedure TFrm_Compras_Orc_Precos.BitBtn1Click(Sender: TObject);
begin

fCarregarGrid(mChave,mCodemp,mLotSeq);


end;

procedure TFrm_Compras_Orc_Precos.gb_compos_precoExit(Sender: TObject);
var
mform: string;
begin
mform:='_compras_orc_precos';


fDeletaPadroes(-1,mform,'');
fGravaPadroes(-1,'CB_IPI'    ,'checked' ,mform,iif(cb_ipi.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_VII'    ,'checked' ,mform,iif(CB_VII.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_VIOF'   ,'checked' ,mform,iif(CB_VIOF.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_TARBAN' ,'checked' ,mform,iif(CB_TARBAN.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_OUTDESP','checked' ,mform,iif(CB_OUTDESP.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_VALFRE' ,'checked' ,mform,iif(CB_VALFRE.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_VALSEG' ,'checked' ,mform,iif(CB_VALSEG.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_VALDES' ,'checked' ,mform,iif(CB_VALDES.Checked=true,'true','false'));
fGravaPadroes(-1,'CB_ICMSR'  ,'checked' ,mform,iif(CB_ICMSR.Checked=true,'true','false'));



end;

procedure TFrm_Compras_Orc_Precos.DBE_PRECO01_DIGExit(Sender: TObject);
begin
FPrecosNovos;

end;

procedure TFrm_Compras_Orc_Precos.DBE_PCOCPR_DIGKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator;
end;

procedure TFrm_Compras_Orc_Precos.mem_cadproBeforePost(DataSet: TDataSet);
begin
FPrecosNovos;
end;

procedure TFrm_Compras_Orc_Precos.edt_percdial_nacionalExit(
  Sender: TObject);
var
mform: string;
begin
edt_percdial_nacional.Text:=formatfloat(mcasas_pct, valfloat(edt_percdial_nacional.Text));
mform:='_compras_orc_precos';
fDeletaPadroes(-2,mform,'percdial_nacional');
fGravaPadroes(-2,'percdial_nacional'    ,'text' ,mform,edt_percdial_nacional.Text);


end;

procedure TFrm_Compras_Orc_Precos.CB_ICMS_CREDITOClick(Sender: TObject);
var
mform: string;
begin
mform:='_compras_orc_precos';


fDeletaPadroes(-3,mform,'');
fGravaPadroes(-3,'CB_ICMS_CREDITO'    ,'checked' ,mform,iif(cb_ICMS_CREDITO.Checked=true,'true','false'));

end;

end.
