unit s_manos_relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RLReport, DB,  RLRichText,
   func, jpeg, RLBarcode, DBTables, RxMemDS, RLFilters, RLPDFFilter;

type
  Tfrm_manos_relatorio = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsImpressao: TTabSheet;
    RLReport_os_modelo01: TRLReport;
    RLBand_cab: TRLBand;
    RLSintImage1: TRLImage;
    lblcab_emp: TRLLabel;
    lblcab_endereco: TRLLabel;
    lblcab_cidade_uf_cep: TRLLabel;
    lblcab_dathor: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    src_os01: TDataSource;
    lblcab_fonefax: TRLLabel;
    lblcab_email_home: TRLLabel;
    rlband_cab_cli: TRLBand;
    lbl_cabcli: TRLLabel;
    edt_codcli_nome: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    edt_fone: TRLDBText;
    edt_fax: TRLDBText;
    RLLabel4: TRLLabel;
    edt_endereco: TRLDBText;
    RLLabel5: TRLLabel;
    edt_cidade: TRLDBText;
    edt_uf: TRLDBText;
    edt_cnpj: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand_cab_obs: TRLBand;
    RLLabel8: TRLLabel;
    edt_chave: TRLDBText;
    RLBand_defrec: TRLBand;
    lblcab_defrec: TRLLabel;
    rlsubdet_servexec: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLBand_cabos05_servexec: TRLBand;
    lbl_cabos05_item: TRLLabel;
    lbl_cabos05_qtd: TRLLabel;
    lbl_cabos05_codigo: TRLLabel;
    lbl_cabos05_descricao: TRLLabel;
    lbl_cabos05_pcouni: TRLLabel;
    lbl_cabos05_valortotal: TRLLabel;
    RLBand_detos05_servexec: TRLBand;
    det_cabos05_valortotal: TRLDBText;
    src_os05_servexec: TDataSource;
    det_cabos05_item: TRLDBText;
    det_cabos05_qtd: TRLDBText;
    det_cabos05_codigo: TRLDBText;
    det_cabos05_pcouni: TRLDBText;
    edt_tipo_doc_cnpj_cpf: TRLDBText;
    edt_tipo_doc_ie_rg: TRLDBText;
    lbl_cabos05_obs: TRLLabel;
    RLSubDetail_os02_equipentregues: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel6: TRLLabel;
    RLBand_cabos02_equipentregues: TRLBand;
    cab_OS2ITEM: TRLLabel;
    cab_OS2MODELO: TRLLabel;
    cab_OS2CODPRO: TRLLabel;
    cab_OS2NOME: TRLLabel;
    cab_OS2NUMPAT: TRLLabel;
    cab_OS2OBS: TRLLabel;
    RLBand_detos02_equipentregues: TRLBand;
    det_OS2ITEM: TRLDBText;
    det_OS2MODELO: TRLDBText;
    det_OS2CODPRO: TRLDBText;
    det_OS2NOME: TRLDBText;
    det_OS2NUMPAT: TRLDBText;
    src_os02_equip_entregue: TDataSource;
    cab_OS2SERIE: TRLLabel;
    det_OS2SERIE: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLSubDetail_OS4: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLBand_cabos04_pecasutilizadas: TRLBand;
    cab_OS4ITEM: TRLLabel;
    cab_OS4CODPRO: TRLLabel;
    cab_OS4NOME: TRLLabel;
    cab_VALOR_TOTAL: TRLLabel;
    cab_OS4QTD: TRLLabel;
    cab_OS4PU: TRLLabel;
    RLBand_detos04_pecasutilizadas: TRLBand;
    det_OS4ITEM: TRLDBText;
    det_OS4CODPRO: TRLDBText;
    det_OS4NOME: TRLDBText;
    det_VALOR_TOTAL: TRLDBText;
    det_OS4PU: TRLDBText;
    src_os04_pecas_utilizadas: TDataSource;
    src_os03_acessorios: TDataSource;
    RLSubDetail_os03: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLBand_cabos03_acessorios: TRLBand;
    cab_OS3ITEM: TRLLabel;
    cab_OS3CODPRO: TRLLabel;
    cab_OS3NOME: TRLLabel;
    cab_OS3OBS: TRLLabel;
    RLBand_detos03_acessorios: TRLBand;
    det_OS3ITEM: TRLDBText;
    det_OS3CODPRO: TRLDBText;
    det_OS3NOME: TRLDBText;
    det_OS3QTD: TRLDBText;
    cab_OS3QTD: TRLLabel;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    lbl_dataentrada: TRLLabel;
    lbl_dataentrega: TRLLabel;
    RLLabel16: TRLLabel;
    tsEtiqueta_Identificacao: TTabSheet;
    src_etiq_impres: TDataSource;
    RLReport_etiqueta_idetificacao: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    det_codbar: TRLDBBarcode;
    RLDBBarcode1: TRLDBBarcode;
    det_nompro_codpro: TRLDBMemo;
    Tb_os01: TQuery;
    Tb_os01OS1CODEMP: TFloatField;
    Tb_os01OS1CHAVE_ANO: TFloatField;
    Tb_os01OS1CHAVE: TFloatField;
    Tb_os01OS1DATA: TDateTimeField;
    Tb_os01OS1DATAAUT: TDateTimeField;
    Tb_os01OS1NOMEAUT: TStringField;
    Tb_os01OS1NOMSOL: TStringField;
    Tb_os01OS1FONSOL: TStringField;
    Tb_os01OS1CODCLI: TFloatField;
    Tb_os01OS1NOMCLI: TStringField;
    Tb_os01OS1END_LOG: TStringField;
    Tb_os01OS1END_NUM: TStringField;
    Tb_os01OS1END_COMPL: TStringField;
    Tb_os01OS1END_BAIRRO: TStringField;
    Tb_os01OS1END_CEP: TStringField;
    Tb_os01OS1CODLOC: TFloatField;
    Tb_os01OS1CODVEN: TFloatField;
    Tb_os01OS1CODTEC: TFloatField;
    Tb_os01OS1TIPOPGTO: TFloatField;
    Tb_os01OS1DEFREC: TMemoField;
    Tb_os01OS1OBS01: TStringField;
    Tb_os01OS1OBS02: TStringField;
    Tb_os01OS1OBS03: TStringField;
    Tb_os01OS1STATUS: TFloatField;
    Tb_os01OS1PED_CHAVE: TFloatField;
    Tb_os01OS1PED_CHAVE_ANO: TFloatField;
    Tb_os01OS1TOTSER: TFloatField;
    Tb_os01OS1DESCSER: TFloatField;
    Tb_os01OS1TOTLIQ_GERAL: TFloatField;
    Tb_os01OS1TOTPEC: TFloatField;
    Tb_os01OS1DESCPEC: TFloatField;
    Tb_os01OS1DATADEV: TDateTimeField;
    Tb_os01OS1DATAENT: TDateTimeField;
    Tb_os01OS1CODUSR: TFloatField;
    Tb_os01endereco_completo: TStringField;
    Tb_os01CDENOM: TStringField;
    Tb_os01CFONE01: TStringField;
    Tb_os01CFAX: TStringField;
    Tb_os01CNPJ_CPF: TFloatField;
    Tb_os01IE_RG: TStringField;
    Tb_os01tipo_doc_ie_rg: TStringField;
    Tb_os01LNOME: TStringField;
    Tb_os01LUF: TStringField;
    Tb_os01CHAVE: TStringField;
    Tb_os01status: TStringField;
    cds_etiq_impres: TRxMemoryData;
    cds_etiq_imprescodbar: TStringField;
    cds_etiq_impresnompro_codpro: TStringField;
    cds_os03_acessorios: TRxMemoryData;
    cds_os03_acessoriosOS3NOME: TStringField;
    cds_os03_acessoriosOS3UND: TStringField;
    cds_os03_acessoriosOS3OBS: TMemoField;
    cds_os04_pecas_utilizadas: TRxMemoryData;
    cds_os04_pecas_utilizadasOS4NOME: TStringField;
    cds_os04_pecas_utilizadasOS4MARCA: TStringField;
    cds_os04_pecas_utilizadasOS4UND: TStringField;
    cds_os04_pecas_utilizadasOS4OBS: TMemoField;
    cds_os02_equip_entregue: TRxMemoryData;
    cds_os02_equip_entregueOS2MODELO: TStringField;
    cds_os02_equip_entregueOS2MARCA: TStringField;
    cds_os02_equip_entregueOS2SERIE: TStringField;
    cds_os02_equip_entregueOS2NUMPAT: TStringField;
    cds_os02_equip_entregueOS2NOME: TStringField;
    cds_os02_equip_entregueOS2UND: TStringField;
    cds_os02_equip_entregueOS2OBS: TMemoField;
    cds_os05_servexec: TRxMemoryData;
    cds_os05_servexecOS5NOME: TStringField;
    cds_os05_servexecOS5OBS: TMemoField;
    cds_os05_servexecOS5ITEM: TStringField;
    cds_os03_acessoriosOS3ITEM: TStringField;
    cds_os03_acessoriosOS3CODPRO: TStringField;
    cds_os03_acessoriosOS3QTD: TStringField;
    cds_os04_pecas_utilizadasOS4ITEM: TStringField;
    cds_os04_pecas_utilizadasOS4CODPRO: TStringField;
    cds_os04_pecas_utilizadasOS4QTD: TStringField;
    cds_os04_pecas_utilizadasOS4PU: TStringField;
    cds_os04_pecas_utilizadasOS4TOTDES: TStringField;
    cds_os04_pecas_utilizadasOS4TOTLIQ: TStringField;
    cds_os04_pecas_utilizadasVALOR_TOTAL: TStringField;
    cds_os02_equip_entregueOS2ITEM: TStringField;
    cds_os02_equip_entregueOS2CODPRO: TStringField;
    cds_os05_servexecOS5QTD: TStringField;
    cds_os05_servexecOS5PU: TStringField;
    cds_os05_servexecVALOR_TOTAL: TStringField;
    cds_os05_servexecOS5CODPRO: TStringField;
    cds_os04_pecas_utilizadasOS4PERCDES: TStringField;
    Tb_os01OS1DESCBAIXA: TMemoField;
    Tb_os01codbar: TStringField;
    Tb_os01tipo_doc_cnpj_cpf: TStringField;
    det_cabos05_descricao: TRLDBText;
    det_OS4QTD: TRLDBText;
    RLSubDetail_BAIXATECNICA: TRLSubDetail;
    mem_bxtecnica: TRxMemoryData;
    src_mem_bxtecnica: TDataSource;
    mem_bxtecnicaBTNOME: TMemoField;
    RLBand5: TRLBand;
    RLLabel17: TRLLabel;
    RLBand7: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    det_OS2OBS: TRLDBMemo;
    det_cabos05_obs: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    cab_OS2MARCA: TRLLabel;
    det_OS2MARCA: TRLDBText;
    RLBand8: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    Tb_os01nomtec: TStringField;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    Tb_os01registrogeral: TStringField;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    Tb_os01OS1PORTPAROVMOD: TStringField;
    Tb_os01OS1NUMIMMETRO: TStringField;
    Tb_os01OS1NUMMARCSELRET: TStringField;
    Tb_os01OS1NUMMARCREPRET: TStringField;
    Tb_os01OS1NUMMARCSELAFIX: TStringField;
    Tb_os01OS1NUMMARCREPAFIX: TStringField;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    Tb_os01cpf: TFloatField;
    Tb_os01OS1NUMRAT: TStringField;
    rldet_nomtec: TRLLabel;
    rldet_tecnico_rg: TRLLabel;
    rldet_tecnico_cpf: TRLLabel;
    rldet_OS1PORTPAROVMOD: TRLLabel;
    rldet_OS1NUMIMMETRO: TRLLabel;
    rldet_OS1NUMMARCSELRET: TRLLabel;
    rldet_OS1NUMMARCREPRET: TRLLabel;
    rldet_OS1NUMMARCSELAFIX: TRLLabel;
    rldet_OS1NUMMARCREPAFIX: TRLLabel;
    rldet_OS1NUMRAT: TRLLabel;
    rlcab_cnpj: TRLLabel;
    Tb_os01OS1HORAENT: TStringField;
    Tb_os01OS1HORADEV: TStringField;
    lbl_datasaida: TRLLabel;
    rlcab_TOTAL_DESCONTOS: TRLLabel;
    rldet_TOTAL_DESCONTOS: TRLDBText;
    cds_os05_servexecTOTAL_DESCONTOS: TStringField;
    cds_os05_servexecTOTAL_LIQUIDO: TStringField;
    cab_OS4TOTDES: TRLLabel;
    det_OS4TOTDES: TRLDBText;
    PDF: TRLPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure src_os01DataChange(Sender: TObject; Field: TField);
    procedure RLReport_os_modelo01AfterPrint(Sender: TObject);
    procedure Tb_os01CalcFields(DataSet: TDataSet);
    procedure rlband_cab_cliBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLReport_os_modelo01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    mQtdImp_os05_servexec: Integer;
    mQtdImp_os02_equipentregue: Integer;
    mQtdImp_os03_acessorios: Integer;
    mQtdImp_os04_pecas_utilizadas: Integer;



    function fCarregarTabelasSecundarias: Boolean;

  public
    { Public declarations }
    mOri_Chave: Integer;
    mOri_Chave_ano: Integer;
    mChave_lida: Integer;
    mChave_ano_Lida: Integer;
    pimpbrancos: Boolean;
    function fAbrirOs01: Boolean;
    function fDefinirEtiquetas(out pObs: string): Boolean;

  end;

    const mqtdlin_os05_servexec = 5;
    const mqtdlin_os02_equipentregue = 5;
    const mqtdlin_os04_pecas_utilizadas = 5;
    const mqtdlin_os03_acessorios = 5;

var
  frm_manos_relatorio: Tfrm_manos_relatorio;

implementation

uses lerarq, func_excecoes, S_DM1;


{$R *.dfm}


function Tfrm_manos_relatorio.fAbrirOs01: Boolean;
begin
tb_os01.Close;
tb_os01.SQL.Clear;
tb_os01.SQL.Add('Select OS1CODEMP,OS1LOTSEQ AS OS1CHAVE_ANO,OS1CHAVE,OS1DATA,OS1DATAAUT,'
               +'OS1NOMEAUT,OS1NOMSOL,CFONE01 AS OS1FONSOL,OS1CODCLI,CRAZAO AS OS1NOMCLI,'
               +'CLOG AS OS1END_LOG,CNUM AS OS1END_NUM,CLOG AS OS1END_COMPL,CBAIRRO AS OS1END_BAIRRO, '
               +'CCEP AS OS1END_CEP,CCODLOC AS OS1CODLOC,OS1CODVEN,OS1CODTEC,OS1OPER AS OS1TIPOPGTO, '
               +'OS1DEFREC,OS1OBS01,OS1OBS02,OS1OBS03,OS1DESCBAIXA,OS1STATUS,OS1CHAVEPED AS OS1PED_CHAVE,OS1LOTSEQ_CP AS OS1PED_CHAVE_ANO,'
               +'OS1TOTSER,OS1DESCSER,OS1TOTSER+OS1TOTPEC AS OS1TOTLIQ_GERAL,OS1TOTPEC,OS1DESCPEC, '
               +'OS1HORAENT,OS1HORADEV,'
               +'OS1DATADEV,OS1DATAAUT,OS1DATAENT,OS1CODUSR,CLOG ||  case when LENGTH(CNUM)> 2 then  '+QuotedStr(' No. ')+' else '+quotedstr('')+' end ||  CNUM   || '+QuotedStr(' ')+' || CBAIRRO  '
               +' || '+Quotedstr(' CEP: ')+' || CCEP as endereco_completo,CDENOM '
               +',CFONE01,CFAX AS CFAX,case when CCNPJ>0 THEN CCNPJ ELSE CCPF END AS CNPJ_CPF,case when CCNPJ>0 THEN CIE ELSE CRG END AS IE_RG '
               +',case when CCNPJ>0 THEN '+QuotedStr(' CNPJ:')+' ELSE '+QuotedStr('RG:')+' END AS tipo_doc_cnpj_cpf,case when CCNPJ>0 THEN '
               +QuotedStr('Inscrição:')+' ELSE '+QuotedStr('RG:')+' END AS tipo_doc_ie_rg '
               +',LNOME,LUF, '+QuotedStr('O.S: ')+' || OS1CHAVE '
               +' || case when OS1CHAVEPED>0 THEN '+QuotedStr(' Pedido: ')+' || OS1CHAVEPED else '+QuotedStr('')+' end  AS CHAVE,case when OS1STATUS=0 then '+QuotedStr('pendente ')
               +'       when OS1STATUS=1 then '+QuotedStr('Autorizada ')
               +'      when OS1STATUS=2 then '+QuotedStr('Faturado ')+'      end as status '
               +' ,OS1NUMRAT '
               +' ,OS1PORTPAROVMOD '
               +' ,OS1NUMIMMETRO'
               +' ,OS1NUMMARCSELRET '
               +' ,OS1NUMMARCREPRET '
               +' ,OS1NUMMARCSELAFIX '
               +' ,OS1NUMMARCREPAFIX '
               +', CFNOMFUN as nomtec '
               +',CFCNPF as cpf '
               +', CFRG as registrogeral'
               +' from cados01,cadcli,cadloc,cadfun '
               +' where CCODCLI=OS1CODCLI and LCODLOC(+)=CCODLOC '
               +' and CFCODFUN(+)=OS1CODTEC '
               +' and OS1CODEMP=:CODEMP '
               +' and OS1CHAVE=:CHAVE '
               +' and OS1LOTSEQ=:CHAVE_ANO ');
tb_os01.ParamByName('CODEMP').AsInteger   :=codemp;
tb_os01.ParamByName('CHAVE').AsInteger    :=mOri_Chave;
tb_os01.ParamByName('CHAVE_ANO').AsInteger:=mOri_Chave_ano;
try
  tb_os01.Open;
except
  end;
//tb_os01.SQL.SAVETOFILE('C:\SQL.TXT');

if mem_bxtecnica.Active=false then
   mem_bxtecnica.Open;
mem_bxtecnica.EmptyTable;
if length(Tb_os01OS1DESCBAIXA.AsString)>2 then
   begin
   mem_bxtecnica.Append;
   mem_bxtecnicaBTNOME.Value:=Tb_os01OS1DESCBAIXA.AsString;
   mem_bxtecnica.Post;
   end;
result:=true;

end;
procedure Tfrm_manos_relatorio.FormCreate(Sender: TObject);
var
mValoresRetorno: TStringList;
mjpeg: TJPEGImage;
begin
Tb_os01cpf.displayformat:=pDFCNPF;


lblcab_dathor.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);

    pimpbrancos:=true;

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLSintImage1.Picture.Bitmap.Assign(mjpeg);
   end;
freeandnil(mjpeg);

mValoresRetorno:=TStringList.Create;
//                                               0           1          2            3                4           5       6    7         8       9           10    11
if fLerGenerico_query('CADEMP,CADLOC','RAZAO,ENDERECO,NUMERO,BAIRRO,CEP,FONE,FAX,E_MAIL,HOMEPAGE,LNOME,LUF,CGC',
       'CODEMP='+IntTostr(codemp)+' and LCODLOC=CODLOC ' ,query_consulta) then
   begin
   lblcab_emp.Caption:=query_consulta.fieldbyname('RAZAO').asstring;
   rlcab_cnpj.Caption:=MaskCPFCNPJ2(query_consulta.fieldbyname('CGC').asstring);
   lblcab_endereco.Caption:=query_consulta.fieldbyname('ENDERECO').asstring;
   if length(trim(query_consulta.fieldbyname('NUMERO').asstring ))>0 then
      lblcab_endereco.Caption:=lblcab_endereco.Caption+' No. '+query_consulta.fieldbyname('NUMERO').asstring;
   lblcab_endereco.Caption:=lblcab_endereco.Caption+' '+query_consulta.fieldbyname('BAIRRO').asstring;
   lblcab_cidade_uf_cep.Caption:=query_consulta.fieldbyname('LNOME').asstring +' '+query_consulta.fieldbyname('LUF').asstring+' '+query_consulta.fieldbyname('CEP').asstring;
   lblcab_fonefax.Caption       :='Telefone: '+query_consulta.fieldbyname('FONE').asstring+'  Fax: '+query_consulta.fieldbyname('FAX').asstring;
   lblcab_email_home.Caption    :='E-Mail: '+query_consulta.fieldbyname('E_MAIL').asstring+'  Home Page: '+query_consulta.fieldbyname('HOMEPAGE').asstring;
   end;





mChave_lida    :=-1;
mChave_ano_Lida:=-1;

RLBand8.Borders.DrawTop      :=true;
RLBand8.Borders.DrawBottom   :=true;
RLBand8.Borders.DrawLeft     :=true;
RLBand8.Borders.DrawRight    :=true;


RLReport_os_modelo01.Borders.DrawTop   :=true;
RLReport_os_modelo01.Borders.DrawLeft  :=true;
RLReport_os_modelo01.Borders.DrawRight :=true;
RLReport_os_modelo01.Borders.DrawBottom:=true;
RLBand_cab.Borders.DrawBottom          :=true;
RLBand_cab_obs.Borders.DrawBottom      :=true;
rlband_cab_cli.Borders.DrawBottom      :=true;
RLBand_defrec.Borders.DrawBottom       :=true;

lbl_cabos05_qtd.Borders.DrawLeft       :=true;
lbl_cabos05_codigo.Borders.DrawLeft    :=true;
lbl_cabos05_descricao.Borders.DrawLeft :=true;
lbl_cabos05_descricao.Borders.DrawRight :=true;
lbl_cabos05_pcouni.Borders.DrawLeft    :=true;
lbl_cabos05_valortotal.Borders.DrawLeft:=true;

rlcab_TOTAL_DESCONTOS.Borders.DrawLeft:=true;
rldet_TOTAL_DESCONTOS.Borders.DrawLeft:=true;

det_cabos05_qtd.Borders.DrawLeft       :=true;
det_cabos05_codigo.Borders.DrawLeft    :=true;
det_cabos05_descricao.Borders.DrawLeft :=true;
det_cabos05_descricao.Borders.DrawRight:=true;
det_cabos05_pcouni.Borders.DrawLeft    :=true;
det_cabos05_valortotal.Borders.DrawLeft     :=true;
RLBand_cabos05_servexec.Borders.DrawTop     :=true;
RLBand_cabos05_servexec.Borders.DrawBottom  :=true;
RLBand_detos05_servexec.Borders.DrawBottom  :=true;

cab_OS2CODPRO.Borders.DrawLeft    :=true;
cab_OS2MODELO.Borders.DrawLeft    :=true;
cab_OS2MARCA.Borders.DrawLeft    :=true;
cab_OS2NOME.Borders.DrawLeft      :=true;
cab_OS2SERIE.Borders.DrawLeft     :=true;
cab_OS2NUMPAT.Borders.DrawLeft    :=true;
cab_OS2NUMPAT.Borders.DrawRight   :=true;


det_OS2CODPRO.Borders.DrawLeft    :=true;
det_OS2MODELO.Borders.DrawLeft    :=true;
det_OS2MARCA.Borders.DrawLeft     :=true;
det_OS2NOME.Borders.DrawLeft      :=true;
det_OS2SERIE.Borders.DrawLeft     :=true;
det_OS2NUMPAT.Borders.DrawLeft    :=true;
det_OS2NUMPAT.Borders.DrawRight   :=true;


RLBand_cabos02_equipentregues.Borders.DrawTop     :=true;
RLBand_cabos02_equipentregues.Borders.DrawBottom  :=true;
RLBand_detos02_equipentregues.Borders.DrawBottom  :=true;

// acessorios


det_OS3CODPRO.Borders.DrawLeft    :=true;
det_OS3QTD.Borders.DrawLeft       :=true;
det_OS3NOME.Borders.DrawLeft      :=true;
det_OS3NOME.Borders.DrawRight     :=true;

cab_OS3CODPRO.Borders.DrawLeft    :=true;
cab_OS3QTD.Borders.DrawLeft       :=true;
cab_OS3NOME.Borders.DrawLeft      :=true;
cab_OS3NOME.Borders.DrawRight     :=true;

RLBand_cabos03_acessorios.Borders.DrawTop     :=true;
RLBand_cabos03_acessorios.Borders.DrawBottom  :=true;
RLBand_detos03_acessorios.Borders.DrawBottom  :=true;

// PECAS UTILIZADAS

det_OS4CODPRO.Borders.DrawLeft    :=true;
det_OS4QTD.Borders.DrawLeft      :=true;

det_OS4NOME.Borders.DrawLeft      :=true;
cab_OS4QTD.Borders.DrawLeft      :=true;

//det_OS4NOME.Borders.DrawRight     :=true;
det_OS4PU.Borders.DrawLeft        :=true;

det_VALOR_TOTAL.Borders.DrawLeft  :=true;

cab_OS4TOTDES.Borders.DrawLeft        :=true;

det_OS4TOTDES.Borders.DrawLeft        :=true;
cab_OS4CODPRO.Borders.DrawLeft    :=true;
cab_OS4NOME.Borders.DrawLeft      :=true;
//cab_OS4NOME.Borders.DrawRight     :=true;
cab_OS4PU.Borders.Drawleft        :=true;
cab_VALOR_TOTAL.Borders.DrawLeft  :=true;

RLBand_cabos04_pecasutilizadas.Borders.DrawTop     :=true;
RLBand_cabos04_pecasutilizadas.Borders.DrawBottom  :=true;
RLBand_detos04_pecasutilizadas.Borders.DrawBottom  :=true;



lblcab_defrec.Borders.DrawBottom            :=true;
end;
procedure Tfrm_manos_relatorio.RLReport_os_modelo01AfterPrint(
  Sender: TObject);
begin
det_cabos05_obs.Height:=18;
RLBand_detos05_servexec.Height:=18;
det_cabos05_item.Height:=18;
det_cabos05_qtd.Height:=18;
det_cabos05_codigo.Height:=18;
det_cabos05_descricao.Height:=18;
det_cabos05_descricao.Height:=18;
det_cabos05_pcouni.Height:=18;
det_cabos05_obs.Height:=18;
RLBand_detos05_servexec.Height:=18;

end;

procedure Tfrm_manos_relatorio.src_os01DataChange(Sender: TObject;
  Field: TField);
begin
if (cds_os05_servexec.Active=false) or (mChave_lida<>tb_os01OS1CHAVE.AsInteger)
   or (mChave_ano_Lida<>tb_os01OS1CHAVE_ANO.AsInteger) then
   begin
   fCarregarTabelasSecundarias;
   mChave_lida     :=tb_os01OS1CHAVE.AsInteger;
   mChave_ano_Lida :=tb_os01OS1CHAVE_ANO.AsInteger;
   end;

end;
{
código de barras tamanho 16 sendo:
1 a 2 identificacao do relatorio do sge
tabela de codigos: 01-Pedido de vendas
                   02-Etiquetas de transporte(rotulo caixa)
                   03-Mala direta
                   04-Ordem de Servico
1 a 5 (cinco) para a chave da os
8 a 11 para o ano da os,
12 para o tipo 2-equipamentos 3-acessorios
13 a 16 para identificar o item na os


       1234
  12345    T
1212345201421234
            ITEM

}
function Tfrm_manos_relatorio.fDefinirEtiquetas(out pObs: string): Boolean;

var
query_temp: TQuery;
x_lin: Integer;
mValoresRetorno: TStringList;
mjpeg: TJPEGImage;
begin

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
{
   RLDetailGrid1.Background.Align   :=faClient;
   RLDetailGrid1.Background.Arrange :=baAligned;
   RLDetailGrid1.Background.AutoSize:=true;
   RLDetailGrid1.Background.Stretch :=true;
}


   RLDetailGrid1.Background.Picture.Bitmap.Assign(mjpeg);

   end;
freeandnil(mjpeg);


pObs:='';
result:=true;
cds_etiq_impres.Open;
cds_etiq_impres.EmptyTable;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.SQL.Add('Select OS2ITEM,OS2CODPRO,OS2MODELO,OS2MARCA '
//                  +' ,OS2SERIE,OS2NUMPAT, PDNOME || '+QuotedStr(' ')+'|| OS2MARCA  AS  OS2NOME '
                  +' ,OS2SERIE,OS2NUMPAT, PDNOME as OS2NOME '
                  +'  ,PDUND AS OS2UND '
                  +'  ,OS2OBS01 || '+QuotedStr('  ')+' || OS2OBS02  AS OS2OBS '
                  +'  from CADOS02,CADPRO '
                  +'   where PDCODPRO=OS2CODPRO  '
                  +' and OS2CHAVE=:CHAVE '
                  +' and OS2LOTSEQ=:CHAVE_ANO '
                  +' and OS2CODEMP=:CODEMP '
                  +' order by OS2ITEM ');
query_temp.ParamByName('CHAVE').AsInteger    :=mOri_Chave;
query_temp.ParamByName('CHAVE_ANO').AsInteger:=mOri_Chave_ano;
query_temp.ParamByName('CODEMP').AsInteger    :=codemp;
try
   query_temp.Open;
except on E: exception do
   begin
   pObs:='Erro ao ler equipamentos os02'+e.Message;
   ex_erroSql_Novo(query_temp,441,'pedido','CADOS02'+' '+E.Message);

   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
while not query_temp.eof do
   begin
   cds_etiq_impres.Append;
   cds_etiq_impresnompro_codpro.Value:=query_temp.FieldByName('OS2NOME').AsString+' ['
                                     +query_temp.FieldByName('OS2CODPRO').AsString+']';
   cds_etiq_imprescodbar.Value :='04'+Formatfloat('00000', mOri_Chave)
                                +Formatfloat('0000', mOri_Chave_ano)
                                +'2' // equipamentos entregues
                                +Formatfloat('0000', query_temp.FieldByName('OS2ITEM').AsInteger);
   cds_etiq_impres.Post;
   query_temp.Next;
   end;


query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select OS3ITEM,OS3CODPRO,PDNOME AS OS3NOME,PDUND AS OS3UND '
                  +',OS3QTD,'+QuotedStr('  ')+' AS OS3OBS from CADOS03,CADPRO '
                  +' where PDCODPRO=OS3CODPRO AND '
                  +' and  OS3CHAVE=:CHAVE '
                  +' and OS3LOTSEQ=:CHAVE_ANO '
                  +' and OS3CODEMP=:CODEMP '
                  +' order by OS3ITEM ');
query_temp.ParamByName('CHAVE').AsInteger     :=mOri_Chave;
query_temp.ParamByName('CHAVE_ANO').AsInteger :=mOri_Chave_ano;
query_temp.ParamByName('CODEMP').AsInteger    :=codemp;
try
   query_temp.Open;
except on E: exception do
   begin
   pObs:='Erro ao ler acessorios os03'+e.Message;

   ex_erroSql_Novo(query_temp,562,'pedido','CADOS03'+' '+E.Message);
   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
while not query_temp.eof do
   begin
   cds_etiq_impres.Append;
   cds_etiq_impresnompro_codpro.Value:='04'+query_temp.FieldByName('OS3NOME').AsString+' ['
                                     +query_temp.FieldByName('OS3CODPRO').AsString+']';
   cds_etiq_imprescodbar.Value :=Formatfloat('00000', mOri_Chave)
                                +Formatfloat('0000', mOri_Chave_ano)
                                +'2' // equipamentos entregues
                                +Formatfloat('0000', query_temp.FieldByName('OS3ITEM').AsInteger);
   cds_etiq_impres.Post;
   query_temp.Next;
   end;
if cds_etiq_impres.IsEmpty then
   begin
   pObs:='Não a itens para impressao de etiquetas';
   end
else
  result:=true;
FreeAndNil(query_temp);
end;


function Tfrm_manos_relatorio.fCarregarTabelasSecundarias: Boolean;
var
query_temp: TQuery;
x_lin: Integer;
begin
query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select OS5ITEM,OS5CODPRO,OS5QTD '
                  +' ,OS5PU,OS5DESC01 AS OS5PERCDES,OS5TOTDES,(OS5QTD*OS5PU)-OS5TOTDES AS OS5TOTLIQ '
                  +','+Quotedstr('  ')+' AS OS5OBS '
                  +',PDNOME AS OS5NOME '
                  +' ,PDUND AS OS5UND from CADOS05,CADPRO WHERE PDCODPRO=OS5CODPRO '
                  +' and OS5CHAVE=:CHAVE '
                  +' and OS5LOTSEQ=:CHAVE_ANO '
                  +' and OS5CODEMP=:CODEMP '
                  +' order by OS5ITEM ');
query_temp.ParamByName('CHAVE').AsInteger    :=tb_os01OS1CHAVE.AsInteger;
query_temp.ParamByName('CHAVE_ANO').AsInteger:=tb_os01OS1CHAVE_ANO.AsInteger;
query_temp.ParamByName('CODEMP').AsInteger    :=tb_os01OS1CODEMP.AsInteger;
try
   query_temp.Open;
except on E: exception do
   begin
   ex_erroSql_Novo(query_temp,614,'pedido','CADOS05'+' '+E.Message);
   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
mQtdImp_os05_servexec:=0;

if cds_os05_servexec.active=false then
   cds_os05_servexec.Open;
cds_os05_servexec.EmptyTable;
while not query_temp.Eof do
   begin
   cds_os05_servexec.Append;
   cds_os05_servexecOS5ITEM.Value     :=Formatfloat('000', query_temp.FieldByName('OS5ITEM').AsInteger);
   cds_os05_servexecOS5QTD.Value      :=query_temp.FieldByName('OS5QTD').AsString;
   cds_os05_servexecOS5CODPRO.Value   :=query_temp.FieldByName('OS5CODPRO').AsString;
   cds_os05_servexecOS5NOME.Value     :=query_temp.FieldByName('OS5NOME').AsString;
   if query_temp.FieldByName('OS5OBS').IsNull then
      cds_os05_servexecOS5OBS.Value      :=' '
   else
      cds_os05_servexecOS5OBS.Value      := RetiraAcentos(query_temp.FieldByName('OS5OBS').Value);
   cds_os05_servexecOS5PU.Value       :=FormatFloat(mCasas, query_temp.FieldByName('OS5PU').AsFloat);
   cds_os05_servexecVALOR_TOTAL.Value :=FormatFloat(mcasas, query_temp.FieldByName('OS5PU').AsFloat*query_temp.FieldByName('OS5QTD').AsFloat);
   cds_os05_servexecTOTAL_LIQUIDO.Value :=FormatFloat(mcasas, query_temp.FieldByName('OS5TOTLIQ').AsFloat);
   cds_os05_servexecTOTAL_DESCONTOS.Value :=FormatFloat(mcasas, query_temp.FieldByName('OS5TOTDES').AsFloat);
   cds_os05_servexec.Post;
   query_temp.Next;
   mQtdImp_os05_servexec:=mQtdImp_os05_servexec+1;
   end;
if pimpbrancos=true then
   begin
   for x_lin:=mQtdImp_os05_servexec to mqtdlin_os05_servexec do
      begin
      cds_os05_servexec.Append;
      cds_os05_servexecOS5ITEM.Value     :=' ';
      cds_os05_servexecOS5QTD.Value      :=' ';
      cds_os05_servexecOS5CODPRO.Value   :=' ';
      cds_os05_servexecOS5NOME.Value     :=' ';
      cds_os05_servexecOS5PU.Value       :=' ';
      cds_os05_servexecVALOR_TOTAL.Value :=' ';
      cds_os05_servexec.Post;
      end;
   end;
// equipamentos entregues
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select OS2ITEM,OS2CODPRO,OS2MODELO,OS2MARCA '
                  +' ,OS2SERIE,OS2NUMPAT'
                  +' ,PDNOME  AS  OS2NOME '
//                  +' ,PDNOME || '+QuotedStr(' ')+'|| OS2MARCA  AS  OS2NOME '
                  +',PDUND AS OS2UND,'
                  +'  OS2OBS01 || '+QuotedStr('  ')+' || OS2OBS02  AS OS2OBS '
                  +'  from CADOS02,CADPRO '
                  +' where OS2CODPRO=PDCODPRO  '
                  +' and OS2CHAVE=:CHAVE '
                  +' and OS2LOTSEQ=:CHAVE_ANO '
                  +' and OS2CODEMP=:CODEMP '
                  +' order by OS2ITEM ');
query_temp.ParamByName('CHAVE').AsInteger    :=tb_os01OS1CHAVE.AsInteger;
query_temp.ParamByName('CHAVE_ANO').AsInteger:=tb_os01OS1CHAVE_ANO.AsInteger;
query_temp.ParamByName('CODEMP').AsInteger    :=tb_os01OS1CODEMP.AsInteger;
try
   query_temp.Open;
except on E: exception do
   begin
   ex_erroSql_Novo(query_temp,672,'pedido','CADOS02'+' '+E.Message);
   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
mQtdImp_os02_equipentregue:=0;

if cds_os02_equip_entregue.active=false then
   cds_os02_equip_entregue.Open;

cds_os02_equip_entregue.EmptyTable;
while not query_temp.Eof do
   begin
   cds_os02_equip_entregue.Append;
   cds_os02_equip_entregueOS2ITEM.Value     :=Formatfloat('000', query_temp.FieldByName('OS2ITEM').AsInteger);
   cds_os02_equip_entregueOS2CODPRO.Value   :=query_temp.FieldByName('OS2CODPRO').AsString;
   cds_os02_equip_entregueOS2MODELO.Value   :=query_temp.FieldByName('OS2MODELO').AsString;
   cds_os02_equip_entregueOS2MARCA.Value    :=query_temp.FieldByName('OS2MARCA').AsString;
   cds_os02_equip_entregueOS2SERIE.Value    :=query_temp.FieldByName('OS2SERIE').AsString;
   cds_os02_equip_entregueOS2NUMPAT.Value   :=query_temp.FieldByName('OS2NUMPAT').AsString;
   cds_os02_equip_entregueOS2UND.Value      :=query_temp.FieldByName('OS2UND').AsString;
   cds_os02_equip_entregueOS2NOME.Value     :=query_temp.FieldByName('OS2NOME').AsString;
   if query_temp.FieldByName('OS2OBS').IsNull then
      cds_os02_equip_entregueOS2OBS.Value      :=' '
   else
      cds_os02_equip_entregueOS2OBS.Value      :=RetiraAcentos(query_temp.FieldByName('OS2OBS').Value);
   cds_os02_equip_entregue.Post;
   query_temp.Next;
   mQtdImp_os02_equipentregue:=mQtdImp_os02_equipentregue+1;
   end;
if pimpbrancos=true then
   begin
   for x_lin:=mQtdImp_os02_equipentregue to mqtdlin_os02_equipentregue do
      begin
      cds_os02_equip_entregue.Append;
      cds_os02_equip_entregueOS2ITEM.Value     :=' ';
      cds_os02_equip_entregueOS2CODPRO.Value   :=' ';
      cds_os02_equip_entregueOS2MODELO.Value   :=' ';
      cds_os02_equip_entregueOS2MARCA.Value    :=' ';
      cds_os02_equip_entregueOS2SERIE.Value    :=' ';
      cds_os02_equip_entregueOS2NUMPAT.Value   :=' ';
      cds_os02_equip_entregueOS2UND.Value      :=' ';
      cds_os02_equip_entregueOS2OBS.Value      :=' ';
      cds_os02_equip_entregue.Post;
      end;
   end;

// peças utilizadas

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select OS4ITEM,OS4CODPRO,PDNOME AS OS4NOME '
                  +',PDMARCA AS  OS4MARCA '
                  +',PDUND AS OS4UND,OS4QTD,OS4PU,OS4DESC01 AS OS4PERCDES,OS4TOTDES '
                  +',(OS4QTD*OS4PU)-OS4TOTDES AS  OS4TOTLIQ '
                  +','+QuotedStr('  ')+' AS OS4OBS from CADOS04,CADPRO WHERE PDCODPRO=OS4CODPRO '
                  +' and OS4CHAVE=:CHAVE '
                  +' and OS4LOTSEQ=:CHAVE_ANO '
                  +' and OS4CODEMP=:CODEMP '
                  +' order by OS4ITEM ');
query_temp.ParamByName('CHAVE').AsInteger     :=tb_os01OS1CHAVE.AsInteger;
query_temp.ParamByName('CHAVE_ANO').AsInteger :=tb_os01OS1CHAVE_ANO.AsInteger;
query_temp.ParamByName('CODEMP').AsInteger    :=tb_os01OS1CODEMP.AsInteger;
try
   query_temp.Open;
except on E: exception do
   begin
   ex_erroSql_Novo(query_temp,737,'pedido','CADOS04'+' '+E.Message);
   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
mQtdImp_os04_pecas_utilizadas:=0;

if cds_os04_pecas_utilizadas.active=false then
   cds_os04_pecas_utilizadas.Open;

cds_os04_pecas_utilizadas.EmptyTable;
while not query_temp.Eof do
   begin
   cds_os04_pecas_utilizadas.Append;
   cds_os04_pecas_utilizadasOS4ITEM.Value    :=Formatfloat('000', query_temp.FieldByName('OS4ITEM').AsInteger);
   cds_os04_pecas_utilizadasOS4CODPRO.Value  :=query_temp.FieldByName('OS4CODPRO').AsString;
   cds_os04_pecas_utilizadasOS4NOME.Value    :=query_temp.FieldByName('OS4NOME').AsString;
   cds_os04_pecas_utilizadasOS4UND.Value     :=query_temp.FieldByName('OS4UND').AsString;
   cds_os04_pecas_utilizadasOS4QTD.Value     :=query_temp.FieldByName('OS4QTD').AsString;
   cds_os04_pecas_utilizadasOS4PU.Value      :=Formatfloat(mCasasPU,  query_temp.FieldByName('OS4PU').AsFloat);
   cds_os04_pecas_utilizadasOS4PERCDES.Value :=query_temp.FieldByName('OS4PERCDES').AsString;
   cds_os04_pecas_utilizadasOS4TOTDES.Value  :=Formatfloat(mCasas,  query_temp.FieldByName('OS4TOTDES').AsFloat);
   cds_os04_pecas_utilizadasOS4TOTLIQ.Value  :=Formatfloat(mCasas,  query_temp.FieldByName('OS4TOTLIQ').AsFloat);
   cds_os04_pecas_utilizadasVALOR_TOTAL.Value:=Formatfloat(mCasas,  query_temp.FieldByName('OS4TOTLIQ').AsFloat+query_temp.FieldByName('OS4TOTDES').AsFloat );

   if query_temp.FieldByName('OS4OBS').IsNull then
      cds_os04_pecas_utilizadasOS4OBS.Value      :=' '
   else
      cds_os04_pecas_utilizadasOS4OBS.Value      :=RetiraAcentos(query_temp.FieldByName('OS4OBS').Value);
   cds_os04_pecas_utilizadas.Post;
   query_temp.Next;
   mQtdImp_os04_pecas_utilizadas:=mQtdImp_os04_pecas_utilizadas+1;
   end;
if pimpbrancos=true then
   begin
   for x_lin:=mQtdImp_os04_pecas_utilizadas to mqtdlin_os04_pecas_utilizadas do
      begin
      cds_os04_pecas_utilizadas.Append;
      cds_os04_pecas_utilizadasOS4ITEM.Value    :=' ';
      cds_os04_pecas_utilizadasOS4CODPRO.Value  :=' ';
      cds_os04_pecas_utilizadasOS4NOME.Value    :=' ';
      cds_os04_pecas_utilizadasOS4UND.Value     :=' ';
      cds_os04_pecas_utilizadasOS4QTD.Value     :=' ';
      cds_os04_pecas_utilizadasOS4PU.Value      :=' ';
      cds_os04_pecas_utilizadasOS4PERCDES.Value :=' ';
      cds_os04_pecas_utilizadasOS4TOTDES.Value  :=' ';
      cds_os04_pecas_utilizadasOS4TOTLIQ.Value  :=' ';
      cds_os04_pecas_utilizadasOS4OBS.Value     :=' ';
      cds_os04_pecas_utilizadas.Post;
      end;
   end;

// acessorio utilizados

// peças utilizadas

query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select OS3ITEM,OS3CODPRO,PDNOME AS OS3NOME,PDUND AS OS3UND '
                  +',OS3QTD,'+QuotedStr(' ')+' AS OS3OBS '
                  +' from CADOS03,CADPRO '
                  +' where PDCODPRO=OS3CODPRO '
                  +' and OS3CHAVE=:CHAVE '
                  +' and OS3LOTSEQ=:CHAVE_ANO '
                  +' and OS3CODEMP=:CODEMP '
                  +' order by OS3ITEM ');
query_temp.ParamByName('CHAVE').AsInteger     :=tb_os01OS1CHAVE.AsInteger;
query_temp.ParamByName('CHAVE_ANO').AsInteger :=tb_os01OS1CHAVE_ANO.AsInteger;
query_temp.ParamByName('CODEMP').AsInteger    :=tb_os01OS1CODEMP.AsInteger;
try
   query_temp.Open;
except on E: exception do
   begin
   ex_erroSql_Novo(query_temp,807,'pedido','CADOS03'+' '+E.Message);
   result:=false;
   freeandnil(query_temp);
   exit;
   end;
   end;
mQtdImp_os03_acessorios:=0;

if cds_os03_acessorios.active=false then
   cds_os03_acessorios.Open;

cds_os03_acessorios.EmptyTable;
while not query_temp.Eof do
   begin
   cds_os03_acessorios.Append;
   cds_os03_acessoriosOS3ITEM.Value    :=Formatfloat('000', query_temp.FieldByName('OS3ITEM').AsInteger);
   cds_os03_acessoriosOS3CODPRO.Value  :=query_temp.FieldByName('OS3CODPRO').AsString;
   cds_os03_acessoriosOS3NOME.Value    :=query_temp.FieldByName('OS3NOME').AsString;
   cds_os03_acessoriosOS3UND.Value     :=query_temp.FieldByName('OS3UND').AsString;
   cds_os03_acessoriosOS3QTD.Value     :=query_temp.FieldByName('OS3QTD').AsString;
   if query_temp.FieldByName('OS3OBS').IsNull then
      cds_os03_acessoriosOS3OBS.Value      :=' '
   else
      cds_os03_acessoriosOS3OBS.Value      :=RetiraAcentos(query_temp.FieldByName('OS3OBS').Value);
   cds_os03_acessorios.Post;
   query_temp.Next;
   mQtdImp_os03_acessorios:=mQtdImp_os03_acessorios+1;
   end;
if pimpbrancos=true then
   begin
   for x_lin:=mQtdImp_os03_acessorios to mqtdlin_os03_acessorios do
      begin
      cds_os03_acessorios.Append;
      cds_os03_acessoriosOS3ITEM.Value    :=' ';
      cds_os03_acessoriosOS3CODPRO.Value  :=' ';
      cds_os03_acessoriosOS3NOME.Value    :=' ';
      cds_os03_acessoriosOS3UND.Value     :=' ';
      cds_os03_acessoriosOS3QTD.Value     :=' ';
      cds_os03_acessoriosOS3OBS.Value     :=' ';
      cds_os03_acessorios.Post;
      end;
   end;




result:=true;
end;
procedure Tfrm_manos_relatorio.Tb_os01CalcFields(DataSet: TDataSet);
begin
Tb_os01codbar.Value:='04'+FormatFloat('00000',Tb_os01OS1CHAVE.AsInteger);

end;

procedure Tfrm_manos_relatorio.rlband_cab_cliBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rldet_nomtec.Caption     :=Tb_os01nomtec.AsString;
rldet_tecnico_rg.Caption :=Tb_os01registrogeral.AsString;
rldet_tecnico_cpf.Caption:=MaskCPFCNPJ2(Tb_os01cpf.AsString);

rldet_OS1PORTPAROVMOD.Caption:=Tb_os01OS1PORTPAROVMOD.AsString;

rldet_OS1NUMIMMETRO.Caption:=Tb_os01OS1NUMIMMETRO.AsString;

rldet_OS1NUMMARCSELRET.Caption:=Tb_os01OS1NUMMARCSELRET.AsString;
rldet_OS1NUMMARCREPRET.Caption:=Tb_os01OS1NUMMARCREPRET.AsString;
rldet_OS1NUMMARCSELAFIX.Caption:=Tb_os01OS1NUMMARCSELAFIX.AsString;
rldet_OS1NUMMARCREPAFIX.Caption:=Tb_os01OS1NUMMARCREPAFIX.AsString;
rldet_OS1NUMRAT.Caption:=Tb_os01OS1NUMRAT.AsString;

end;

procedure Tfrm_manos_relatorio.RLReport_os_modelo01BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin

 {
 if (tb_Os01OS1DATADEV.IsNull) or (tb_Os01OS1DATADEV.Value<=pdatanula) then
   lbl_dataentrega.caption:='Data Entrega: _____/_____/______      Hora: _____:_____'
else
   lbl_dataentrega.caption:='Data Entrega: '+insere2(FormatDateTime(fdt2, Tb_os01OS1DATADEV.AsDateTime),' ',24)+'Hora: '+Tb_os01OS1HORADEV.asstring;
}


 if (tb_Os01OS1DATAENT.IsNull) or (tb_Os01OS1DATAENT.Value<=pdatanula) then
   lbl_dataentrada.caption:='Data Entrada: _____/_____/______      Hora: _____:_____'
else
   lbl_dataentrada.caption:='Data Entrada: '+insere2(FormatDateTime(fdt2, Tb_os01OS1DATAENT.AsDateTime),' ',24)+'Hora: '+Tb_os01OS1HORAENT.asstring;


{                                           12345/12345/123456
                                           123456789012345678901234     1234567890123



   if (Qr_Os01OS1DATADEV.IsNull) or (Qr_Os01OS1DATADEV.Value<=pdatanula) then
      DATASAI.Text:='/  /'
   else
      DATASAI.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATADEV.Value);
   HORASAI.Text   :=Qr_Os01OS1HORADEV.Value;
   if (Qr_Os01OS1DATAENT.IsNull) or (Qr_Os01OS1DATAENT.Value<=pdatanula) then
      DATAENT.Text:='/  /'
   else
      DATAENT.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATAENT.Value);
   HORAENT.Text     :=Qr_Os01OS1HORAENT.Value;

lbl_dataentrada.caption:='Data Entrada: _____/_____/______      Hora: _____:_____';
lbl_dataentrega.caption:='Data Entrega: _____/_____/______      Hora: _____:_____';
}
end;

end.
