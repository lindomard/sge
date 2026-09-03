unit s_manped02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB,
  DBTables, RxDBComb, Mask, Buttons;

type
  TFrm_ManPed02 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    Button1: TButton;
    edt_chave: TEdit;
    Label1: TLabel;
    cb_tipoPesquisa: TComboBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText24: TStaticText;
    StaticText26: TStaticText;
    StaticText19: TStaticText;
    StaticText23: TStaticText;
    DBE_ICMS_PPRED: TDBEdit;
    DBE_ICMS_PERC: TDBEdit;
    rxdbcb_modbcst: TRxDBComboBox;
    DBE_ST_IVA: TDBEdit;
    DBE_PRECO_MAXCONS: TDBEdit;
    DBE_ST_REDUT: TDBEdit;
    DBEST_ICMSDEB: TDBEdit;
    DBE_ST_ICMSCRED: TDBEdit;
    gb_imp_imp: TGroupBox;
    StaticText3: TStaticText;
    DBE_P2IMP_IMP_VBC: TDBEdit;
    StaticText4: TStaticText;
    DBE_P2IMP_IMP_VDESDPADU: TDBEdit;
    StaticText5: TStaticText;
    DBE_P2IMP_IMP_VII: TDBEdit;
    StaticText6: TStaticText;
    DBE_P2IMP_IMP_VIOF: TDBEdit;
    gb_pis: TGroupBox;
    StaticText7: TStaticText;
    DBE_P2CST_PIS: TDBEdit;
    StaticText8: TStaticText;
    DBE_P2PIS_VBC: TDBEdit;
    StaticText9: TStaticText;
    DBE_P2ALPIS: TDBEdit;
    StaticText12: TStaticText;
    DBE_P2VALPIS: TDBEdit;
    gb_cofins: TGroupBox;
    StaticText14: TStaticText;
    DBE_P2CST_COFINS: TDBEdit;
    StaticText16: TStaticText;
    DBE_P2COFINS_VBC: TDBEdit;
    StaticText20: TStaticText;
    DBE_P2ALCOFINS: TDBEdit;
    StaticText21: TStaticText;
    DBE_P2COFINS: TDBEdit;
    gb_ipi: TGroupBox;
    StaticText22: TStaticText;
    DBE_P2CST_IPI: TDBEdit;
    StaticText25: TStaticText;
    DBE_P2IPI_VBC: TDBEdit;
    StaticText28: TStaticText;
    DBE_P2ALIPI: TDBEdit;
    StaticText29: TStaticText;
    DBE_P2VALIPI: TDBEdit;
    gb_csosn: TGroupBox;
    StaticText15: TStaticText;
    DBE_CSOSN: TDBEdit;
    StaticText10: TStaticText;
    DBE_ICMSSN_PERC: TDBEdit;
    StaticText27: TStaticText;
    StaticText30: TStaticText;
    DBE_P2VLRICMS_SN: TDBEdit;
    gb_comissoes: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBE_PCOMIS: TDBEdit;
    DBE_VCOMIS: TDBEdit;
    GB_ICMS_NORMAL: TGroupBox;
    StaticText31: TStaticText;
    DBE_P2BASEN: TDBEdit;
    StaticText32: TStaticText;
    DBE_P2ALIQ: TDBEdit;
    StaticText33: TStaticText;
    DBE_P2ICMSN: TDBEdit;
    GroupBox2: TGroupBox;
    StaticText34: TStaticText;
    edt_totipi: TEdit;
    StaticText35: TStaticText;
    edt_totii: TEdit;
    StaticText36: TStaticText;
    edt_totpis: TEdit;
    edt_totcofins: TEdit;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    edt_valoricms: TEdit;
    BitBtn1: TBitBtn;
    StaticText39: TStaticText;
    edt_outras_desp: TEdit;
    StaticText40: TStaticText;
    edt_totliq: TEdit;
    Tb_Ped02: TQuery;
    Tb_Ped02nompro: TStringField;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2CODANT: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CODFAB: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2REPAS: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2STATUS: TFloatField;
    Tb_Ped02P2PCOTAB: TFloatField;
    Tb_Ped02P2UCPR: TFloatField;
    Tb_Ped02P2PCOCUS: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2DESCRAT: TFloatField;
    Tb_Ped02P2TABELA: TStringField;
    Tb_Ped02P2ALIPI: TFloatField;
    Tb_Ped02P2VALIPI: TFloatField;
    Tb_Ped02P2BCINR: TFloatField;
    Tb_Ped02P2ICMSNR: TFloatField;
    Tb_Ped02P2ISENTAS: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2ALIQNR: TFloatField;
    Tb_Ped02P2PCOMIS: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2DESCM: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2SEMCOM: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2PDESCF: TFloatField;
    Tb_Ped02P2VDESCF: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02P2VCOM02: TFloatField;
    Tb_Ped02P2VCOM03: TFloatField;
    Tb_Ped02P2TOTOUT: TFloatField;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02P2PCOMAX: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    Tb_Ped02P2PROMOCAO: TStringField;
    Tb_Ped02P2DESC3: TFloatField;
    Tb_Ped02P2CODGRU: TFloatField;
    Tb_Ped02P2VCOM04: TFloatField;
    Tb_Ped02P2ACRERAT: TFloatField;
    Tb_Ped02P2QTD_ENTREGUE: TFloatField;
    Tb_Ped02P2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02P2AMBIENTE: TStringField;
    Tb_Ped02P2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2STATUS_PED1: TFloatField;
    Tb_Ped02P2TIPO: TFloatField;
    Tb_Ped02P2PCOFPG: TFloatField;
    Tb_Ped02P2CFOSUBECF: TFloatField;
    Tb_Ped02P2CODAGRU: TFloatField;
    Tb_Ped02P2CONSIG: TFloatField;
    Tb_Ped02P2PCOM02: TFloatField;
    Tb_Ped02P2PCOM03: TFloatField;
    Tb_Ped02P2ST_IVA: TFloatField;
    Tb_Ped02P2ST_REDUT: TFloatField;
    Tb_Ped02P2ST_ICMCRED: TFloatField;
    Tb_Ped02P2ST_ICMDEB: TFloatField;
    Tb_Ped02P2REDUTICM: TFloatField;
    Tb_Ped02P2PRAZO: TFloatField;
    Tb_Ped02P2QTD_ATEN: TFloatField;
    Tb_Ped02P2ALPIS: TFloatField;
    Tb_Ped02P2VALPIS: TFloatField;
    Tb_Ped02P2ALCOFINS: TFloatField;
    Tb_Ped02P2COFINS: TFloatField;
    Tb_Ped02P2CODVEN: TFloatField;
    Tb_Ped02P2TIPO_PCO: TFloatField;
    Tb_Ped02P2CONS_PROPRIO: TFloatField;
    Tb_Ped02P2COMPLEMENTO: TMemoField;
    Tb_Ped02P2CODPRO_ORI: TStringField;
    Tb_Ped02P2NOMPRO_ORI: TStringField;
    Tb_Ped02P2CHAVE_NIVEL: TFloatField;
    Tb_Ped02P2PCRED_SN: TFloatField;
    Tb_Ped02P2PCREDSN: TFloatField;
    Tb_Ped02P2UND: TStringField;
    Tb_Ped02P2PREPAS: TFloatField;
    Tb_Ped02P2MODBCST: TFloatField;
    Tb_Ped02P2KIT_PRO: TStringField;
    Tb_Ped02P2LOTCT: TFloatField;
    Tb_Ped02P2CST_PIS: TStringField;
    Tb_Ped02P2CST_COFINS: TStringField;
    Tb_Ped02P2CSOSN: TFloatField;
    Tb_Ped02P2CSOSN_ORI: TFloatField;
    Tb_Ped02P2ESTNOR: TStringField;
    Tb_Ped02P2ESTCONS: TStringField;
    Tb_Ped02P2ESTTERC: TStringField;
    Tb_Ped02P2ESTREV: TStringField;
    Tb_Ped02P2VLRICMS_SN: TFloatField;
    Tb_Ped02P2SITUACAO: TFloatField;
    Tb_Ped02P2DESC_CAB: TFloatField;
    Tb_Ped02P2CST_IPI: TStringField;
    Tb_Ped02P2CONTESP: TFloatField;
    Tb_Ped02P2VICMSDES: TFloatField;
    Tb_Ped02P2DESCPR: TFloatField;
    Tb_Ped02P2VSEGRAT: TFloatField;
    Tb_Ped02P2VDESPACESRAT: TFloatField;
    Tb_Ped02P2PERCIMPOSTOS: TFloatField;
    Tb_Ped02P2TIPOPROD: TFloatField;
    Tb_Ped02P2ALIQICMSDES: TFloatField;
    Tb_Ped02P2ALIQAPROXTRIB: TFloatField;
    Tb_Ped02P2VALAPROXTRIB: TFloatField;
    Tb_Ped02P2ICMS_ALIPI: TFloatField;
    Tb_Ped02P2ICMS_BCIPI: TFloatField;
    Tb_Ped02P2ICMS_VLIPI: TFloatField;
    Tb_Ped02P2VSEGRAT_BCICMS: TFloatField;
    Tb_Ped02P2VFRERAT_BCICMS: TFloatField;
    Tb_Ped02P2VFRERAT: TFloatField;
    Tb_Ped02P2VDESPACESRAT_BCICMS: TFloatField;
    Tb_Ped02P2COMPRA_XPED: TStringField;
    Tb_Ped02P2COMPRA_NITEMPED: TFloatField;
    Tb_Ped02P2IMP_IMP_ALIQ: TFloatField;
    Tb_Ped02P2IMP_IMP_VALOR: TFloatField;
    Tb_Ped02P2IMP_IMP_VDESDPADU: TFloatField;
    Tb_Ped02P2IMP_IMP_VII: TFloatField;
    Tb_Ped02P2IMP_IMP_VIOF: TFloatField;
    Tb_Ped02P2IMP_IMP_VBC: TFloatField;
    Tb_Ped02P2IMP_TPVIATRANSP: TFloatField;
    Tb_Ped02P2IMP_VAFRMM: TFloatField;
    Tb_Ped02P2IMP_TPINTERMEDIARIO: TFloatField;
    Tb_Ped02P2IMP_CNPJ: TStringField;
    Tb_Ped02P2IMP_UFTERCEIRO: TStringField;
    Tb_Ped02P2IMP_NDRAW: TFloatField;
    Tb_Ped02P2EXP_NDRAW: TFloatField;
    Tb_Ped02P2EXP_NRE: TFloatField;
    Tb_Ped02P2EXP_CHNFE: TStringField;
    Tb_Ped02P2EXP_QEXPORT: TFloatField;
    Tb_Ped02P2IPI_VBC: TFloatField;
    Tb_Ped02P2PIS_VBC: TFloatField;
    Tb_Ped02P2COFINS_VBC: TFloatField;
    Src_Ped02: TDataSource;
    CB_NF_IMP: TCheckBox;
    Tb_Ped02total_liquido: TFloatField;
    U_Ped02: TUpdateSQL;
    Tb_Ped02P2IMP_PU_DOLLAR: TFloatField;
    StaticText41: TStaticText;
    edt_basen: TEdit;
    StaticText42: TStaticText;
    edt_cofins_base: TEdit;
    StaticText43: TStaticText;
    edt_baseipi: TEdit;
    StaticText44: TStaticText;
    edt_base_II: TEdit;
    StaticText45: TStaticText;
    edt_pis_base: TEdit;
    bbArredondar: TBitBtn;
    StaticText46: TStaticText;
    edt_basen_imp: TEdit;
    edt_valoricms_imp: TEdit;
    StaticText47: TStaticText;
    gb_difal: TGroupBox;
    StaticText48: TStaticText;
    DBE_P2VBCUFDEST: TDBEdit;
    Tb_Ped02P2VBCUFDEST: TFloatField;
    StaticText49: TStaticText;
    DBE_P2CPUFDEST: TDBEdit;
    StaticText50: TStaticText;
    DBE_P2ICMSUFDEST: TDBEdit;
    StaticText51: TStaticText;
    DBE_P2ICMSINTER: TDBEdit;
    StaticText52: TStaticText;
    DBE_P2ICMSINTERPART: TDBEdit;
    StaticText53: TStaticText;
    DBE_P2VFCPUDEST: TDBEdit;
    StaticText54: TStaticText;
    DBE_P2VICMSUFDEST: TDBEdit;
    StaticText55: TStaticText;
    DBE_P2VICMSUFREMET: TDBEdit;
    Tb_Ped02P2CPUFDEST: TFloatField;
    Tb_Ped02P2ICMSUFDEST: TFloatField;
    Tb_Ped02P2ICMSINTER: TFloatField;
    Tb_Ped02P2ICMSINTERPART: TFloatField;
    Tb_Ped02P2VFCPUDEST: TFloatField;
    Tb_Ped02P2VICMSUFDEST: TFloatField;
    Tb_Ped02P2VICMSUFREMET: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBE_PCOMISEnter(Sender: TObject);
    procedure DBE_VCOMISEnter(Sender: TObject);
    procedure DBE_PCOMISExit(Sender: TObject);
    procedure DBE_VCOMISExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Tb_Ped02CalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_Ped02BeforePost(DataSet: TDataSet);
    procedure Tb_Ped02AfterPost(DataSet: TDataSet);
    procedure bbArredondarClick(Sender: TObject);
  private
    { Private declarations }
    mant_pcomis: real;
    mant_vcomis: real;
  public
    { Public declarations }
  end;

var
  Frm_ManPed02: TFrm_ManPed02;

implementation

uses S_DM2, S_DM4, S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ManPed02.Button1Click(Sender: TObject);
begin
IF ValInt(edt_chave.Text)>0 then
  begin
  Tb_Ped02.Close;
  Tb_Ped02.SQL.Clear;
  Tb_Ped02.SQL.Add('select * from cadp02 ');
  if cb_tipoPesquisa.ItemIndex=0 then
     Tb_Ped02.Sql.Add(' WHERE P2CHAVE='+IntToStr(ValInt(edt_chave.Text))+' and P2CODEMP='+IntToStr(codemp))
  else
     begin
     Tb_Ped02.Sql.Add(',CADP01 WHERE P2CODEMP='+IntToStr(codemp)
                         +' and P1LOTSEQ=P2LOTSEQ AND P1CHAVE=P2CHAVE AND P1CODEMP=P2CODEMP ');
    if cb_tipoPesquisa.ItemIndex=2 then
       Tb_Ped02.Sql.Add(' and P1NUMCF='+IntToStr(ValInt(edt_chave.Text)))
    else
       Tb_Ped02.Sql.Add(' and P1NUMNF='+IntToStr(ValInt(edt_chave.Text)));
     end;

  Tb_Ped02.Sql.Add(' order by P2CHAVE DESC,P2ITEM ');

  Tb_Ped02.Open;
  BitBtn1Click(self);
  end;
end;

procedure TFrm_ManPed02.FormShow(Sender: TObject);
begin
Tb_Ped02.Close;
end;

procedure TFrm_ManPed02.Button2Click(Sender: TObject);
var
query_exe: tQuery;
mPerc_Dif: Real;
mValorPed01: Real;
mValorPfp: Real;
begin
query_exe:=tQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('update cadp01 set ( '
                 +'p1basen,p1icmsn,p1basenri,p1icmsnri,p1baser,p1icmsr,p1totdes '
                 +',p1ipiina,p1comis,P1TOTALL,P1TOTALB,P1DESPACES)=(select sum(p2basen) as basen, '
                 +'sum(p2icmsn)as icmsn,sum(p2bcinr) as basenr,sum(p2icmsnr) as icmsnr, '
                 +'sum(p2baser) as baser, sum(p2icmsr) as icmsr, sum(p2totdes) as totdes, '
                 +' sum(p2valipi) as totipi ,sum(P2VCOMIS) as COMIS '
                 +',sum( (round((P2QTD*P2PRECO),2)+NVL(P2ICMSR,0)+NVL(P2VDESPACESRAT,0)+NVL(P2VSEGRAT,0)+NVL(P2VFRERAT,0) '
                 +' +nvl(P2IMP_IMP_VII,0)+nvl(P2IMP_IMP_VDESDPADU,0)+nvl(P2IMP_IMP_VIOF,0) '
                 +' +nvl(p2valipi,0) '

                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2ICMSN,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2VALPIS,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2COFINS,0) else 0 end  '

                 +') - P2TOTDES )'
                 +',sum(Round((P2QTD*P2PRECO),2))  '
                 +',sum(NVL(P2VDESPACESRAT,0) '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2VALPIS,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2COFINS,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2IMP_IMP_VII,0) else 0 end  '


                 +' ) '


                 +' from cadp02 '
                 +' where p2chave=P1CHAVE and P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ) '
                 +' WHERE P1CHAVE='+IntToStr(ValInt(edt_chave.text))+' and P1CODEMP='+IntToStr(codemp));
try
  Query_exe.ExecSQL;
  fdm1StartCommit;
except
  Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
  showmessage('Erro ao atualizar totalizadores CADP01');
  end;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('select P1TOTALL '
                 +' from cadp01 '
                 +' where P1CHAVE='+IntToStr(ValInt(edt_chave.text))+' and P1CODEMP='+IntToStr(codemp));
try
  Query_exe.open;
except
  Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
  showmessage('Erro ao atualizar totalizadores CADP01');
  end;



mValorPed01:=query_exe.fieldbyname('P1TOTALL').asfloat;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.add('select sum(PFPVALOR)  '
                 +' from cadpfp '
                 +' where PFPchave='+IntToStr(ValInt(edt_chave.text))+' and PFPCODEMP='+IntToStr(codemp));
try
  Query_exe.open;
except
  Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
  showmessage('Erro ao atualizar totalizadores CADP01');
  end;

mValorPfp  :=query_exe.fields[0].asfloat;


mPerc_Dif :=Arredonda( (mValorPed01-mValorPfp),2);
if mPerc_Dif<>0 then
   begin
   mPerc_Dif:=Truncar( ((mPerc_Dif*100) / mValorPed01) ,2);

   query_exe.Close;
   query_exe.SQL.clear;
   query_exe.SQL.add('update cadpfp set PFPVALOR=PFPVALOR+round( (PFPVALOR * '+mudavp(FloatToStr(mPerc_Dif))+'/100),2) '
                    +' where PFPchave='+IntToStr(ValInt(edt_chave.text))+' and PFPCODEMP='+IntToStr(codemp));
   try
     Query_exe.ExecSQL;
     fdm1StartCommit;
   except
     Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
     showmessage('Erro ao atualizar totalizadores CADP01');
     end;

   query_exe.Close;
   query_exe.SQL.clear;
   query_exe.SQL.add('select sum(PFPVALOR)  '
                    +' from cadpfp '
                    +' where PFPchave='+IntToStr(ValInt(edt_chave.text))+' and PFPCODEMP='+IntToStr(codemp));
   try
     Query_exe.open;
   except
     Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
     showmessage('Erro ao atualizar totalizadores CADP01');
     end;

   mValorPfp  :=mValorPed01-query_exe.fields[0].asfloat;
   if mValorPfp<>0 then
      begin
      query_exe.Close;
      query_exe.SQL.clear;
      query_exe.SQL.add('update cadpfp set PFPVALOR=PFPVALOR-'+mudavp(FloatToStr(mPerc_Dif))+' '
                       +' where PFPchave='+IntToStr(ValInt(edt_chave.text))+' and PFPCODEMP='+IntToStr(codemp)
                       +' and PFPSEQ<2 '
                       );
      try
        Query_exe.ExecSQL;
        fdm1StartCommit;
      except
        Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
        showmessage('Erro ao atualizar totalizadores CADP01');
        end;

      end;
   end;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add(' update caddar set crCOMVEN= '
                 +' (select round( ( sum(P2VCOMIS/ case when nvl(CRQTDPARC,0)<1 THEN 1 ELSE CRQTDPARC END '
                 +')),2) from cadp02 where p2chave=crnped and p2ordem=crordem '
                 +'and p2lotseq=crlotseq_cp) '
                 +' WHERE CRNPED='+IntToStr(ValInt(edt_chave.text))+' and CRCODEMP='+IntToStr(codemp));
try
  Query_exe.ExecSQL;
  fdm1StartCommit;
except
  showmessage('Erro ao atualizar totalizadores CADP01');
  DM1.Query2.Sql.SaveToFile('c:\sge\errototal.txt');
  end;

freeandnil(query_exe);

{

LUIZ FERNANDO
esquenta nao tinha de mexer de todo jeito, por isso mudei tudo


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select sum(p2valdes) as descc, sum(p2basen) as basen, '
                  +' sum(p2icmsn)as icmsn, sum(p2totdes) as totdes,        '
                  +' sum(p2valipi) as totipi, sum(p2bcinr) as basenr,      '
                  +' sum(p2baser) as baser, sum(p2icmsr) as icmsr,         '
                  +' sum(p2icmsnr) as icmsnr, '
                  +' sum(p2descrat) as descrat from cadp02 '
                  +' where p2chave='+IntToStr(ValInt(edt_chave.text))+' and P2CODEMP='+IntToStr(codemp));
DM1.Query1.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add(' update cadp01 set p1basen='+chr(39)+DM1.Query1.FieldByName('basen').AsString+chr(39)+','
                  +' p1icmsn='+chr(39)+DM1.Query1.FieldByName('icmsn').AsString+chr(39)+','
                  +' p1basenri='+chr(39)+DM1.Query1.FieldByName('basenr').AsString+chr(39)+','
                  +' p1icmsnri='+chr(39)+DM1.Query1.FieldByName('icmsnr').AsString+chr(39)+','
                  +' p1baser='+chr(39)+DM1.Query1.FieldByName('baser').AsString+chr(39)+','
                  +' p1icmsr='+chr(39)+DM1.Query1.FieldByName('icmsr').AsString+chr(39)+','
                  +' p1totdes='+chr(39)+DM1.Query1.FieldByName('totdes').AsString+chr(39)+','
                  +' p1ipiina='+chr(39)+DM1.Query1.FieldByName('totipi').AsString+chr(39));
DM1.Query2.SQL.Add(' where p1chave='+IntToStr(ValInt(edt_chave.Text))+' and P1CODEMP='+IntToStr(codemp));
try
  DM1.Query2.ExecSQL;
except
  showmessage('Erro ao atualizar totalizadores CADP01');
  DM1.Query2.Sql.SaveToFile('c:\sge\errototal.txt');
  end;
}
end;

procedure TFrm_ManPed02.DBE_PCOMISEnter(Sender: TObject);
begin
    mant_pcomis:=Tb_Ped02P2PCOMIS.AsFloat;

end;

procedure TFrm_ManPed02.DBE_VCOMISEnter(Sender: TObject);
begin
    mant_vcomis:=Tb_Ped02P2VCOMIS.AsFloat;
end;

procedure TFrm_ManPed02.DBE_PCOMISExit(Sender: TObject);
begin
if mant_pcomis<>Tb_Ped02P2PCOMIS.AsFloat then
   begin
   Tb_Ped02P2VCOMIS.AsFloat:=Arredonda( ((Tb_Ped02P2TOTLIQ.AsFloat*Tb_Ped02P2PCOMIS.AsFloat)/100),2);
   end;

end;

procedure TFrm_ManPed02.DBE_VCOMISExit(Sender: TObject);
begin
if mant_vcomis<>Tb_Ped02P2VCOMIS.AsFloat then
   begin
   Tb_Ped02P2PCOMIS.AsFloat:=Arredonda( (Tb_Ped02P2VCOMIS.AsFloat*100), 2);
   end;

end;

procedure TFrm_ManPed02.BitBtn1Click(Sender: TObject);
var
query_exe: tquery;
begin
query_exe:=tQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Select '
                +'   sum(p2basen) as basen '
                +' ,sum(p2icmsn) as icmsn '
                +' ,sum(p2bcinr) as basenr '
                +' ,sum(p2icmsnr) as icmsnr '
                +' ,sum(p2baser) as baser '
                +' ,sum(p2icmsr) as icmsr '
                +' ,sum(p2totdes) as totdes '
                +' ,sum(p2valipi) as totipi '
                +' ,sum(P2VCOMIS) as COMIS '
                +' ,sum(P2COFINS_VBC) AS VBC_COFINS '
                +' ,sum(P2PIS_VBC) AS VBC_PIS '
                +' ,sum(P2IPI_VBC) AS VBC_IPI '
                +' ,sum( NVL(P2VDESPACESRAT,0)) as totout '
                +'  ,sum(NVL(P2VSEGRAT,0)) as totseg '
                +'   ,sum(NVL(P2VFRERAT,0)) as totgre '
                +'  ,sum(nvl(P2IMP_IMP_VII,0)) as totii '
                +' ,sum(nvl(P2IMP_IMP_VDESDPADU,0)) as despadu '
                +' ,sum(nvl(P2IMP_IMP_VBC,0)) as imp_imp_vbc '


                +' ,sum(nvl(P2IMP_IMP_VIOF,0)) as viof '

                +' ,sum(nvl(P2ICMSN,0)) as icmsn '
                +' ,sum(nvl(P2ICMSN,0)) as icmsn '
                +' ,sum(nvl(P2VALPIS,0)) as totpis '
                +' ,sum(nvl(P2COFINS,0)) as totcofins '

                 +',sum( (round((P2QTD*P2PRECO),2)+NVL(P2ICMSR,0)+NVL(P2VDESPACESRAT,0)+NVL(P2VSEGRAT,0)+NVL(P2VFRERAT,0) '
                 +' +nvl(P2IMP_IMP_VII,0)+nvl(P2IMP_IMP_VDESDPADU,0)+nvl(P2IMP_IMP_VIOF,0) '
                 +' +nvl(p2valipi,0) '

                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2ICMSN,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2VALPIS,0) else 0 end  '
                 +' + case when P1NF_IMP ='+QuotedStr('S')+' then  nvl(P2COFINS,0) else 0 end  '

                 +') - P2TOTDES) as totliq'


                 +' from cadp01,cadp02 '
                 +' where p2chave=P1CHAVE and P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ '
                 +' and P1CHAVE='+IntToStr(ValInt(edt_chave.text))+' and P1CODEMP='+IntToStr(codemp));
try
  Query_exe.Open;
  edt_totipi.Text:=FormatFloat(mcasas, query_exe.fieldbyname('totipi').AsFloat);
  edt_totii.Text :=FormatFloat(mcasas, query_exe.fieldbyname('totii').AsFloat);
  edt_totpis.Text:=FormatFloat(mcasas, query_exe.fieldbyname('totpis').AsFloat);
  edt_totcofins.Text:=FormatFloat(mcasas, query_exe.fieldbyname('totcofins').AsFloat);
  edt_valoricms.Text:=FormatFloat(mcasas, query_exe.fieldbyname('icmsn').AsFloat);
  edt_totliq.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('totliq').AsFloat);
  edt_outras_desp.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('totout').AsFloat);
  edt_basen.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('basen').AsFloat);
  edt_cofins_base.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('VBC_COFINS').AsFloat);
  edt_PIS_base.Text      :=FormatFloat(mcasas, query_exe.fieldbyname('VBC_PIS').AsFloat);
  edt_base_II.Text       :=FormatFloat(mcasas, query_exe.fieldbyname('imp_imp_vbc').AsFloat);
  edt_baseipi.Text       :=FormatFloat(mcasas, query_exe.fieldbyname('VBC_IPI').AsFloat);

  if CB_NF_IMP.Checked=true then
     begin
     edt_basen_imp.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('basen').AsFloat);
     edt_valoricms_imp.Text   :=FormatFloat(mcasas, query_exe.fieldbyname('basen').AsFloat);
     end
  else
     begin
     edt_basen_imp.Clear;
     edt_valoricms_imp.Clear;
     end



except
  Query_exe.Sql.SaveToFile('c:\sge\errototal.txt');
  showmessage('Erro ao atualizar totalizadores CADP01');
  end;

end;

procedure TFrm_ManPed02.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
BitBtn1Click(SELF);
end;

procedure TFrm_ManPed02.Tb_Ped02CalcFields(DataSet: TDataSet);
begin
if fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+Tb_Ped02P2CODPRO.asstring,query_consulta) then
   begin
   Tb_Ped02nompro.Value:=query_consulta.fieldbyname('PDNOME').asstring;
   end;

Tb_Ped02total_liquido.Value:=Arredonda( (Tb_Ped02P2QTD.AsFloat*Tb_Ped02P2PRECO.AsFloat),2)
                            +Tb_Ped02P2ICMSR.AsFloat
                            +Tb_Ped02P2VDESPACESRAT.AsFloat
                            +Tb_Ped02P2VSEGRAT.AsFloat
                            +Tb_Ped02P2VFRERAT.AsFloat
                            +Tb_Ped02P2IMP_IMP_VII.AsFloat
                            +Tb_Ped02P2VALIPI.AsFloat
                            +Tb_Ped02P2IMP_IMP_VIOF.AsFloat
                            +Tb_Ped02P2IMP_IMP_VDESDPADU.AsFloat;



IF CB_NF_IMP.Checked then
   Tb_Ped02total_liquido.Value:=Tb_Ped02total_liquido.Value
                            +Tb_Ped02P2ICMSN.AsFloat
                            +Tb_Ped02P2VALPIS.AsFloat
                            +Tb_Ped02P2COFINS.AsFloat;


  Tb_Ped02total_liquido.Value:=Tb_Ped02total_liquido.Value
                              -
                            Tb_Ped02P2TOTDES.AsFloat;




end;

procedure TFrm_ManPed02.c(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;


end;

procedure TFrm_ManPed02.Tb_Ped02BeforePost(DataSet: TDataSet);
begin
if Tb_Ped02P2DTVCTO.isnull then
   Tb_Ped02P2DTVCTO.value:=0;

end;

procedure TFrm_ManPed02.Tb_Ped02AfterPost(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

BitBtn1Click(SELF);
end;

procedure TFrm_ManPed02.bbArredondarClick(Sender: TObject);
var
query_exe: tquery;

begin



query_exe:=tQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Update CADP02 set P2BASEN=ROUND(P2BASEN,2) '
                 +',P2ICMSN=ROUND(P2ICMSN,2) '
                 +',P2VALIPI=ROUND(P2VALIPI,2) '
                 +',P2COFINS_VBC=ROUND(P2COFINS_VBC,2) '
                 +',P2PIS_VBC=ROUND(P2PIS_VBC,2) '
                 +',P2IPI_VBC=ROUND(P2IPI_VBC,2) '
                 +',P2VDESPACESRAT=ROUND(P2VDESPACESRAT,2) '
                 +',P2VSEGRAT=ROUND(P2VSEGRAT,2) '
                 +',P2VFRERAT=ROUND(P2VFRERAT,2) '
                 +',P2IMP_IMP_VII=ROUND(P2IMP_IMP_VII,2) '
                 +',P2IMP_IMP_VDESDPADU=ROUND(P2IMP_IMP_VDESDPADU,2) '
                 +',P2IMP_IMP_VBC=ROUND(P2IMP_IMP_VBC,2) '
                 +',P2IMP_IMP_VIOF=ROUND(P2IMP_IMP_VIOF,2) '
                 +',P2VALPIS=ROUND(P2VALPIS,2) '
                 +',P2COFINS=ROUND(P2COFINS,2) '
                 +' where P2CHAVE='+IntToStr(ValInt(edt_chave.text))+' and P2CODEMP='+IntToStr(codemp));

try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,111,'func Erro:'+e.Message ,'CADP02');
   end;
freeandnil(query_exe);
button1click(self);

end;

end.
