unit s_CAT52xPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  Gauges, Mask, ToolEdit;

type
  TFrm_CAT52xPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bbSelecionar: TBitBtn;
    bbAjustar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox4: TGroupBox;
    Qr_Div01: TQuery;
    DBGrid_ITENS: TDBGrid;
    src_div01: TDataSource;
    Qr_Div01CT52I_CODEMP: TFloatField;
    Qr_Div01CT52I_SERIE: TStringField;
    Qr_Div01CT52I_CODECF: TFloatField;
    Qr_Div01CT52I_NUMCF: TFloatField;
    Qr_Div01CT52I_DATACF: TDateTimeField;
    Qr_Div01TOTTRIB_CAT52: TFloatField;
    Qr_Div01TOTTRIB_PED02: TFloatField;
    Qr_Div01TOTRET_CAT52: TFloatField;
    Qr_Div01TOTRET_PED02: TFloatField;
    Label1: TLabel;
    edt_dataini: TDateEdit;
    Label2: TLabel;
    edt_datafin: TDateEdit;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_ITENSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbAjustarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function fMapaResumoxCat52(pDataIni,pDataFin: tDateTime): Boolean;
    function fIncluirPED52(pNumCF,pCodECF: Integer; pSerieECF: String; pDataCF: Tdatetime): Boolean;


  private
    { Private declarations }





  public
    { Public declarations }
  end;

var
  Frm_CAT52xPedido: TFrm_CAT52xPedido;

implementation

uses Func, S_DM1, S_DM4, func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_CAT52xPedido.bbSairClick(Sender: TObject);
begin

close;
end;

function TFrm_CAT52xPedido.fIncluirPED52(pNumCF,pCodECF: Integer; pSerieECF: String; pDataCF: Tdatetime): Boolean;
var
Query_Cat52: tQuery;
Query_Ped: tQuery;
Query_exe: tQuery;
Query_Pro: tQuery;
mChave: Real;
mLotseq: Real;
mCodemp: Real;
mOrdem: Real;
mcforet: string;
mcfonor: string;
mcfosubecf: string;
mCodVen: Real;
   function fCriarNovaChave: boolean;
   begin
   Query_Ped.Close;
   Query_Ped.SQL.Clear;
   Query_Ped.SQL.Add('Select * from  ('
                   +'  Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1CODVEN,P1CODCLI,P1CODECF '
                  +' FROM CADP01 '
                  +' WHERE P1DATACF<=:DATCUP '
                  +' AND P1ECF_SERIE=:SERIE_ECF '
                  +' order by P1DATACF DESC '
                  +') where ROWNUM<2 ');
   Query_Ped.ParamByName('DATCUP').value:=pDataCF;
   Query_Ped.ParamByName('SERIE_ECF').value:=pSerieECF;
   try
      Query_Ped.Open;
   except
      end;

  fCriarPed_de_Outro(Query_Ped.FieldByName('P1CHAVE').asfloat
                    ,Query_Ped.FieldByName('P1LOTSEQ').asfloat
                    ,Query_Ped.FieldByName('P1CODEMP').asfloat
                    ,pNumCF
                    ,Query_Ped.FieldByName('P1CODECF').asfloat
                    ,pSerieECF
                    ,pDataCF
                    ,mChave
                    ,mLotseq
                    ,mCodEmp);

  end;
begin
Query_exe:=tQuery.Create(nil);
Query_exe.DatabaseName:='SG_ASSOC';

Query_Pro:=tQuery.Create(nil);
Query_Pro.DatabaseName:='SG_ASSOC';
Query_Cat52:=tQuery.Create(nil);
Query_Cat52.DatabaseName:='SG_ASSOC';

Query_Cat52.SQL.Clear;



Query_Ped:=tQuery.Create(nil);
Query_Ped.DatabaseName:='SG_ASSOC';
Query_Ped.SQL.Clear;
Query_Ped.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1CODVEN '
                  +' FROM CADP01 '
                  +' WHERE P1NUMCF=:NUMCUP '
                  +' AND P1DATACF=:DATCUP '
                  +' AND P1ECF_SERIE=:SERIE_ECF ');
Query_Ped.ParamByName('NUMCUP').value:=pNumCF;
Query_Ped.ParamByName('DATCUP').value:=pDataCF;
Query_Ped.ParamByName('SERIE_ECF').value:=pSerieECF;
try
   Query_Ped.Open;
   except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,140,'_cat52xpedido'+e.Message,'CADP01');
   freeandnil(Query_exe);
   freeandnil(Query_ped);
   freeandnil(Query_Pro);
   freeandnil(Query_cat52);
   result:=false;
   exit;
   end;
   end;
if Query_ped.IsEmpty then
   begin
   fCriarNovaChave;
   Query_Ped.SQL.Clear;
   Query_Ped.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1CODVEN '
                     +' FROM CADP01 '
                     +' WHERE P1NUMCF=:NUMCUP '
                     +' AND P1DATACF=:DATCUP '
                     +' AND P1ECF_SERIE=:SERIE_ECF ');
   Query_Ped.ParamByName('NUMCUP').value:=pNumCF;
   Query_Ped.ParamByName('DATCUP').value:=pDataCF;
   Query_Ped.ParamByName('SERIE_ECF').value:=pSerieECF;
   Query_Ped.open;

   end;
mCodVen:=Query_Ped.FieldbyName('P1CODVEN').asfloat;
if Query_Ped.IsEmpty then
   begin
   freeandnil(Query_exe);
   freeandnil(Query_ped);
   freeandnil(Query_Pro);
   freeandnil(Query_cat52);
   result:=false;
   exit;
   end;


mChave :=Query_Ped.fieldbyName('P1CHAVE').AsFloat;
mLotseq:=Query_Ped.fieldbyName('P1LOTSEQ').AsFloat;
mCodemp:=Query_Ped.fieldbyName('P1CODEMP').AsFloat;
mOrdem :=Query_Ped.fieldbyName('P1ORDEM').AsFloat;



Query_Ped.Close;
Query_Ped.SQL.Clear;
Query_Ped.SQL.Add('Select P2ITEM,P2CFO from CADP02 '
                  +' WHERE P2CHAVE=:CHAVE '
                  +' AND P2LOTSEQ=:LOTSEQ '
                  +' AND P2ORDEM=:ORDEM '
                  +' AND P2CODEMP=:CODEMP ');
Query_Ped.ParamByName('CHAVE').value  :=mChave;
Query_Ped.ParamByName('LOTSEQ').value :=mLotseq;
Query_Ped.ParamByName('ORDEM').value  :=mOrdem;
Query_Ped.ParamByName('CODEMP').value :=mCodemp;
try
   Query_Ped.Open;
except
   end;
if Query_ped.IsEmpty then
   begin
   Query_Ped.Close;
   Query_Ped.SQL.Clear;
   Query_Ped.SQL.Add('Select * from  ('
                   +'  Select P2ITEM,P2CFO,P1DATACF'
                  +' FROM CADP01,CADP02 '
                  +' WHERE P1DATACF<=:DATCUP '
                  +' AND P1ECF_SERIE=:SERIE_ECF '
                  +' AND P2CODEMP=P1CODEMP '
                  +' AND P2CHAVE=P1CHAVE '
                  +' AND P2LOTSEQ=P1LOTSEQ '
                  +' AND P2ORDEM=P1ORDEM '
                  +' order by P1DATACF DESC '
                  +') where ROWNUM<2 ');
   Query_Ped.ParamByName('DATCUP').value:=pDataCF;
   Query_Ped.ParamByName('SERIE_ECF').value:=pSerieECF;
   try
      Query_Ped.Open;
   except
      end;


   end;


mcforet:=FormatFloat('0000', Query_Ped.fieldbyName('P2CFO').AsInteger);
mcfonor:=mcforet[1]+'1'+copy(mcforet,3,2);
mcforet:=mcforet[1]+'4'+copy(mcforet,3,2);
mcfosubecf:=mcforet[1]+'929';



Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP02 set P2CODEMP=-1 '
                  +' WHERE P2CODEMP=:CODEMP '
                  +' AND P2CHAVE=:CHAVE '
                  +' AND P2LOTSEQ=:LOTSEQ '
                  +' AND P2ORDEM=:ORDEM ');
Query_Exe.ParamByName('CODEMP').value:=mCodemp;
Query_Exe.ParamByName('CHAVE').value :=mChave;
Query_Exe.ParamByName('LOTSEQ').value :=mLotseq;
Query_Exe.ParamByName('ORDEM').value  :=mOrdem;

try
   Query_Exe.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_Exe,249,'_cat52xpedido'+e.Message,'CADP02');
   freeandnil(Query_exe);
   freeandnil(Query_ped);
   freeandnil(Query_Pro);
   freeandnil(Query_cat52);
   result:=false;
   exit;
   end;
   end;


Query_Ped.Close;
Query_Ped.SQL.Clear;
Query_Ped.SQL.Add('Select P2ITEM,P2CFO from CADP02 '
                  +' WHERE P2CHAVE=:CHAVE '
                  +' AND P2LOTSEQ=:LOTSEQ '
                  +' AND P2ORDEM=:ORDEM '
                  +' AND P2CODEMP=:CODEMP ');
Query_Ped.ParamByName('CHAVE').value  :=mChave;
Query_Ped.ParamByName('LOTSEQ').value :=mLotseq;
Query_Ped.ParamByName('ORDEM').value  :=mOrdem;
Query_Ped.ParamByName('CODEMP').value :=mCodemp;
try
   Query_Ped.Open;
except
   end;


Query_Cat52.Close;
Query_Cat52.SQL.Clear;
Query_Cat52.SQL.Add('Select * from CADECF_CAT52_ITENS '
                   +' where CT52I_NUMCF=:NUMCUP '
                   +' and CT52I_DATACF=:DATCUP '
                   +' and SUBSTR(CT52I_SERIE,1,15)=:SERIE_ECF ');

Query_Cat52.ParamByName('NUMCUP').value:=pNumCF;
Query_Cat52.ParamByName('DATCUP').value:=pDataCF;
Query_Cat52.ParamByName('SERIE_ECF').value:=pSerieECF;
try
   Query_Cat52.Open;
except
   end;


Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Insert into CADP02 ('
         +'P2CODEMP'
         +',P2LOTSEQ'
         +',P2CHAVE'
         +',P2ORDEM'
         +',P2ITEM'
         +',P2CODPRO'
         +',P2QTD'
         +',P2QTDDEV'
         +',P2DESC1'
         +',P2DESC2'
         +',P2DESC3'
         +',P2VALDES'
         +',P2PRECO'
         +',P2SIT'
         +',P2CODFAB'
         +',P2BASEN'
         +',P2ICMSN'
         +',P2REPAS'
         +',P2BASER'
         +',P2ICMSR'
         +',P2LISTA'
         +',P2STATUS'
         +',P2PCOTAB'
         +',P2UCPR'
         +',P2PCOCUS'
         +',P2PCOMAX'
         +',P2TOTDES'
         +',P2DESCRAT'
         +',P2TABELA'
         +',P2ALIPI'
         +',P2VALIPI'
         +',P2BCINR'
         +',P2ICMSNR'
         +',P2ISENTAS'
         +',P2TOTOUT'
         +',P2ALIQ'
         +',P2ALIQNR'
         +',P2PCOMIS'
         +',P2VCOMIS'
         +',P2VCOM02'
         +',P2VCOM03'
         +',P2DESCM'
         +',P2CFO'
         +',P2SEMCOM'
         +',P2TOTLIQ'
         +',P2PDESCF'
         +',P2VDESCF'
         +',P2ACRECONV'
         +',P2ACREGER'
         +',P2CODGRU'
         +',P2VCOM04'
         +',P2ACRERAT'
         +',P2QTD_ENTREGUE'
         +',P2QTD_ENTREGANDO'
         +',P2AMBIENTE'
         +',P2PCOMIS_EXTRA'
         +',P2VCOMIS_EXTRA'
         +',P2STATUS_PED1'
         +',P2TIPO'
         +',P2PCOFPG'
         +',P2CODAGRU'
         +',P2CONSIG'
         +',P2PCOM02'
         +',P2PCOM03'
         +',P2CFOSUBECF'
         +',P2ST_IVA'
         +',P2ST_REDUT'
         +',P2ST_ICMCRED'
         +',P2ST_ICMDEB'
         +',P2REDUTICM'
         +',P2PRAZO'
         +',P2QTD_ATEN'
         +',P2ALPIS'
         +',P2VALPIS'
         +',P2ALCOFINS'
         +',P2COFINS'
         +',P2CODVEN'
         +',P2COMPLEMENTO'
         +',P2TIPO_PCO'
         +',P2CONS_PROPRIO'
         +',P2CODPRO_ORI'
         +',P2NOMPRO_ORI'
         +',P2CHAVE_NIVEL'
         +',P2PCRED_SN'
         +',P2PCREDSN'
         +',P2UND'
         +',P2PREPAS'
         +',P2MODBCST'
         +',P2KIT_PRO'
         +',P2LOTCT'
         +',P2CST_PIS'
         +',P2CST_COFINS'
         +',P2CSOSN'
         +',P2CSOSN_ORI'
         +',P2ESTNOR'
         +',P2ESTCONS'
         +',P2ESTTERC'
         +',P2ESTREV'
         +',P2VLRICMS_SN'
         +',P2SITUACAO'
         +',P2DESC_CAB'
         +',P2CST_IPI'
         +',P2VSEGRAT'
         +',P2VDESPACESRAT'
         +',P2CONTESP'
         +',P2VICMSDES'
         +',P2DESCPR'
         +',P2ICMS_ALIPI'
         +',P2ICMS_BCIPI'
         +',P2ICMS_VLIPI'
         +',P2VSEGRAT_BCICMS'
         +',P2VFRERAT_BCICMS'
         +',P2VFRERAT'
         +',P2VDESPACESRAT_BCICMS'
         +') Values  ('
         +':P2CODEMP'
         +',:P2LOTSEQ'
         +',:P2CHAVE'
         +',:P2ORDEM'
         +',:P2ITEM'
         +',:P2CODPRO'
         +',:P2QTD'
         +',:P2QTDDEV'
         +',:P2DESC1'
         +',:P2DESC2'
         +',:P2DESC3'
         +',:P2VALDES'
         +',:P2PRECO'
         +',:P2SIT'
         +',:P2CODFAB'
         +',:P2BASEN'
         +',:P2ICMSN'
         +',:P2REPAS'
         +',:P2BASER'
         +',:P2ICMSR'
         +',:P2LISTA'
         +',:P2STATUS'
         +',:P2PCOTAB'
         +',:P2UCPR'
         +',:P2PCOCUS'
         +',:P2PCOMAX'
         +',:P2TOTDES'
         +',:P2DESCRAT'
         +',:P2TABELA'
         +',:P2ALIPI'
         +',:P2VALIPI'
         +',:P2BCINR'
         +',:P2ICMSNR'
         +',:P2ISENTAS'
         +',:P2TOTOUT'
         +',:P2ALIQ'
         +',:P2ALIQNR'
         +',:P2PCOMIS'
         +',:P2VCOMIS'
         +',:P2VCOM02'
         +',:P2VCOM03'
         +',:P2DESCM'
         +',:P2CFO'
         +',:P2SEMCOM'
         +',:P2TOTLIQ'
         +',:P2PDESCF'
         +',:P2VDESCF'
         +',:P2ACRECONV'
         +',:P2ACREGER'
         +',:P2CODGRU'
         +',:P2VCOM04'
         +',:P2ACRERAT'
         +',:P2QTD_ENTREGUE'
         +',:P2QTD_ENTREGANDO'
         +',:P2AMBIENTE'
         +',:P2PCOMIS_EXTRA'
         +',:P2VCOMIS_EXTRA'
         +',:P2STATUS_PED1'
         +',:P2TIPO'
         +',:P2PCOFPG'
         +',:P2CODAGRU'
         +',:P2CONSIG'
         +',:P2PCOM02'
         +',:P2PCOM03'
         +',:P2CFOSUBECF'
         +',:P2ST_IVA'
         +',:P2ST_REDUT'
         +',:P2ST_ICMCRED'
         +',:P2ST_ICMDEB'
         +',:P2REDUTICM'
         +',:P2PRAZO'
         +',:P2QTD_ATEN'
         +',:P2ALPIS'
         +',:P2VALPIS'
         +',:P2ALCOFINS'
         +',:P2COFINS'
         +',:P2CODVEN'
         +',:P2COMPLEMENTO'
         +',:P2TIPO_PCO'
         +',:P2CONS_PROPRIO'
         +',:P2CODPRO_ORI'
         +',:P2NOMPRO_ORI'
         +',:P2CHAVE_NIVEL'
         +',:P2PCRED_SN'
         +',:P2PCREDSN'
         +',:P2UND'
         +',:P2PREPAS'
         +',:P2MODBCST'
         +',:P2KIT_PRO'
         +',:P2LOTCT'
         +',:P2CST_PIS'
         +',:P2CST_COFINS'
         +',:P2CSOSN'
         +',:P2CSOSN_ORI'
         +',:P2ESTNOR'
         +',:P2ESTCONS'
         +',:P2ESTTERC'
         +',:P2ESTREV'
         +',:P2VLRICMS_SN'
         +',:P2SITUACAO'
         +',:P2DESC_CAB'
         +',:P2CST_IPI'
         +',:P2VSEGRAT'
         +',:P2VDESPACESRAT'
         +',:P2CONTESP'
         +',:P2VICMSDES'
         +',:P2DESCPR'
         +',:P2ICMS_ALIPI'
         +',:P2ICMS_BCIPI'
         +',:P2ICMS_VLIPI'
         +',:P2VSEGRAT_BCICMS'
         +',:P2VFRERAT_BCICMS'
         +',:P2VFRERAT'
         +',:P2VDESPACESRAT_BCICMS'
         +')'
         );



While not Query_Cat52.Eof do
   begin
   if Query_Cat52.fieldbyName('CT52I_INDCANC').AsString='S' then
      begin
      Query_Cat52.next;
      Continue;
      end;

   if not Query_Ped.Locate('P2ITEM',Query_Cat52.fieldbyName('CT52I_ITEM').AsInteger,[]) then
      begin
      Query_Pro.Close;
      Query_Pro.SQL.Clear;
      Query_Pro.SQL.Add('Select PDCODFOR,PDFIS_CST_ICMS_EST_CF,PDFIS_CSOSN_EST_CF,PDPCOFAB,PDPRECO1,PDCODGRU, '
                        +'PDFIS_PIS_ALIQ_SAIDA,PDFIS_COFINS_ALIQ_SAIDA,PDFIS_CST_PISCOF_SAIDA,PDUCPR,PDPRECOC,PDPMC '
                        +',PDFIS_ORIGEM from CADPRO '
                       +' where PDCODPRO=:CODPRO ');
      Query_Pro.ParambyName('CODPRO').Value := fSonumero(Query_Cat52.fieldbyName('CT52I_CODPRO').AsString);
      Query_Pro.Open;


      query_exe.close;
      Query_Exe.ParambyName('P2CODEMP').AsFloat             :=mCodemp;
      Query_Exe.ParambyName('P2LOTSEQ').AsFloat             :=mLotSeq;
      Query_Exe.ParambyName('P2CHAVE').AsFloat              :=mChave;
      Query_Exe.ParambyName('P2ORDEM').AsFloat              :=mOrdem;
      Query_Exe.ParambyName('P2ITEM').AsFloat               :=Query_Cat52.fieldbyName('CT52I_ITEM').AsInteger;
      Query_Exe.ParambyName('P2CODPRO').AsFloat             :=fsonumero(Query_Cat52.fieldbyName('CT52I_CODPRO').AsString);
      Query_Exe.ParambyName('P2QTD').AsFloat                :=Query_Cat52.fieldbyName('CT52I_QTD').AsFloat;
      Query_Exe.ParambyName('P2QTDDEV').AsFloat             :=0;
      Query_Exe.ParambyName('P2DESC1').AsFloat              :=0;
      Query_Exe.ParambyName('P2DESC2').AsFloat              :=0;
      Query_Exe.ParambyName('P2DESC3').AsFloat              :=0;
      Query_Exe.ParambyName('P2VALDES').AsFloat             :=0;
      Query_Exe.ParambyName('P2PRECO').AsFloat              :=Query_Cat52.fieldbyName('CT52I_PU').AsFloat;
      Query_Exe.ParambyName('P2SIT').AsString               :=FormatFloat('0', fSonumero(Query_Pro.fieldbyName('PDFIS_ORIGEM').AsString))+
                                                              Query_Pro.fieldbyName('PDFIS_CST_ICMS_EST_CF').AsString;
      Query_Exe.ParambyName('P2CODFAB').AsFloat             :=Query_Pro.fieldbyName('PDCODFOR').AsFloat;
      if Query_Cat52.fieldbyName('CT52I_ALIQ').AsFloat>0 then
         begin
         if (copy(Query_Exe.ParambyName('P2SIT').AsString,2,2)<>'00') then
             Query_Exe.ParambyName('P2SIT').AsString:=copy(Query_Exe.ParambyName('P2SIT').AsString,1,1)+'00';





         Query_Exe.ParambyName('P2BASEN').AsFloat              :=(Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat)
                                                                +Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat;

         Query_Exe.ParambyName('P2ICMSN').AsFloat              :=Arredonda(
                                                                (

                                                                (
                                                                (
                                                                 Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat
                                                                )
                                                                -Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat
                                                                )

                                                                *Query_Cat52.fieldbyName('CT52I_ALIQ').AsFloat / 100
                                                                )
                                                                ,2
                                                                );
         Query_Exe.ParambyName('P2CFO').AsFloat                :=valint(mcfoNor);
         end
      else
         begin
         Query_Exe.ParambyName('P2BASEN').AsFloat              :=0;
         Query_Exe.ParambyName('P2ICMSN').AsFloat              :=0;
         Query_Exe.ParambyName('P2CFO').AsFloat                :=valint(mcforet);
         if (copy(Query_Exe.ParambyName('P2SIT').AsString,2,2)<>'10') and
            (copy(Query_Exe.ParambyName('P2SIT').AsString,2,2)<>'30') and
            (copy(Query_Exe.ParambyName('P2SIT').AsString,2,2)<>'70') and
            (copy(Query_Exe.ParambyName('P2SIT').AsString,2,2)<>'60') then
             Query_Exe.ParambyName('P2SIT').AsString:=copy(Query_Exe.ParambyName('P2SIT').AsString,1,1)+'60';
         end;

      Query_Exe.ParambyName('P2REPAS').AsFloat              :=0;
      Query_Exe.ParambyName('P2BASER').AsFloat              :=0;
      Query_Exe.ParambyName('P2ICMSR').AsFloat              :=0;
      Query_Exe.ParambyName('P2LISTA').AsFloat              :=0;
      Query_Exe.ParambyName('P2STATUS').AsFloat             :=0;
      Query_Exe.ParambyName('P2PCOTAB').AsFloat             :=Query_Pro.fieldbyName('PDPRECO1').AsFloat;
      Query_Exe.ParambyName('P2UCPR').AsFloat               :=Query_Pro.fieldbyName('PDUCPR').AsFloat;
      Query_Exe.ParambyName('P2PCOCUS').AsFloat             :=Query_Pro.fieldbyName('PDPRECOC').AsFloat;
      Query_Exe.ParambyName('P2PCOMAX').AsFloat             :=Query_Pro.fieldbyName('PDPMC').AsFloat;
      Query_Exe.ParambyName('P2TOTDES').AsFloat             :=(Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat
                                                              +Query_Cat52.fieldbyName('CT52I_VALDES_ITEM').AsFloat);

      Query_Exe.ParambyName('P2DESCRAT').AsFloat            :=Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat;
      Query_Exe.ParambyName('P2TABELA').AsString            :='A';
      Query_Exe.ParambyName('P2ALIPI').AsFloat              :=0;
      Query_Exe.ParambyName('P2VALIPI').AsFloat             :=0;
      Query_Exe.ParambyName('P2BCINR').AsFloat              :=0;
      Query_Exe.ParambyName('P2ICMSNR').AsFloat             :=0;
      Query_Exe.ParambyName('P2ISENTAS').AsFloat            :=0;
      Query_Exe.ParambyName('P2TOTOUT').AsFloat             :=0;
      Query_Exe.ParambyName('P2ALIQ').AsFloat               :=Query_Cat52.fieldbyName('CT52I_ALIQ').AsFloat;
      Query_Exe.ParambyName('P2ALIQNR').AsFloat             :=0;
      Query_Exe.ParambyName('P2PCOMIS').AsFloat             :=0;
      Query_Exe.ParambyName('P2VCOMIS').AsFloat             :=0;
      Query_Exe.ParambyName('P2VCOM02').AsFloat             :=0;
      Query_Exe.ParambyName('P2VCOM03').AsFloat             :=0;
      Query_Exe.ParambyName('P2DESCM').AsFloat              :=0;
      Query_Exe.ParambyName('P2SEMCOM').AsFloat             :=0;
      Query_Exe.ParambyName('P2TOTLIQ').AsFloat             :=(Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat)
                                                                -(Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALDES_ITEM').AsFloat);

      Query_Exe.ParambyName('P2PDESCF').AsFloat             :=0;
      Query_Exe.ParambyName('P2VDESCF').AsFloat             :=0;
      Query_Exe.ParambyName('P2ACRECONV').AsFloat           :=0;
      Query_Exe.ParambyName('P2ACREGER').AsFloat            :=0;
      Query_Exe.ParambyName('P2CODGRU').AsFloat             :=Query_Pro.fieldbyName('PDCODGRU').AsFloat;
      Query_Exe.ParambyName('P2VCOM04').AsFloat             :=0;
      Query_Exe.ParambyName('P2ACRERAT').AsFloat            :=0;
      Query_Exe.ParambyName('P2QTD_ENTREGUE').AsFloat       :=0;
      Query_Exe.ParambyName('P2QTD_ENTREGANDO').AsFloat     :=0;
      Query_Exe.ParambyName('P2AMBIENTE').AsString          :='';
      Query_Exe.ParambyName('P2PCOMIS_EXTRA').AsFloat       :=0;
      Query_Exe.ParambyName('P2VCOMIS_EXTRA').AsFloat       :=0;
      Query_Exe.ParambyName('P2STATUS_PED1').AsFloat        :=0;
      Query_Exe.ParambyName('P2TIPO').AsFloat               :=1;
      Query_Exe.ParambyName('P2PCOFPG').AsFloat             :=Query_Pro.fieldbyName('PDPRECO1').AsFloat;
      Query_Exe.ParambyName('P2CODAGRU').AsFloat            :=0;
      Query_Exe.ParambyName('P2CONSIG').AsFloat             :=0;
      Query_Exe.ParambyName('P2PCOM02').AsFloat             :=0;
      Query_Exe.ParambyName('P2PCOM03').AsFloat             :=0;
      Query_Exe.ParambyName('P2CFOSUBECF').AsFloat          :=valint(mcfosubecf);
      Query_Exe.ParambyName('P2ST_IVA').AsFloat             :=0;
      Query_Exe.ParambyName('P2ST_REDUT').AsFloat           :=0;
      Query_Exe.ParambyName('P2ST_ICMCRED').AsFloat         :=0;
      Query_Exe.ParambyName('P2ST_ICMDEB').AsFloat          :=0;
      Query_Exe.ParambyName('P2REDUTICM').AsFloat           :=0;
      Query_Exe.ParambyName('P2PRAZO').AsFloat              :=0;
      Query_Exe.ParambyName('P2QTD_ATEN').AsFloat           :=Query_Cat52.fieldbyName('CT52I_QTD').AsFloat;
      Query_Exe.ParambyName('P2ALPIS').AsFloat              :=Query_Pro.fieldbyName('PDFIS_PIS_ALIQ_SAIDA').AsFloat;
      if Query_Pro.fieldbyName('PDFIS_PIS_ALIQ_SAIDA').AsFloat>0 then
         Query_Exe.ParambyName('P2VALPIS').AsFloat             :=Arredonda(  (( (Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat)
                                                                -(Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALDES_ITEM').AsFloat))
                                                                *Query_Pro.fieldbyName('PDFIS_PIS_ALIQ_SAIDA').AsFloat / 100) ,2)


      else
         Query_Exe.ParambyName('P2VALPIS').AsFloat             :=0;


      Query_Exe.ParambyName('P2ALCOFINS').AsFloat           :=Query_Pro.fieldbyName('PDFIS_PIS_ALIQ_SAIDA').AsFloat;


      if Query_Pro.fieldbyName('PDFIS_COFINS_ALIQ_SAIDA').AsFloat>0 then
         Query_Exe.ParambyName('P2COFINS').AsFloat             :=Arredonda(  (( (Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat)
                                                                +Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat)
                                                                *Query_Pro.fieldbyName('PDFIS_COFINS_ALIQ_SAIDA').AsFloat / 100) ,2)


      else
         Query_Exe.ParambyName('P2COFINS').AsFloat             :=0;
      Query_Exe.ParambyName('P2CODVEN').AsFloat             :=mcodven;
      Query_Exe.ParambyName('P2COMPLEMENTO').AsString       :='';
      Query_Exe.ParambyName('P2TIPO_PCO').AsFloat           :=0;
      Query_Exe.ParambyName('P2CONS_PROPRIO').AsFloat       :=0;
      Query_Exe.ParambyName('P2CODPRO_ORI').AsString        :='';
      Query_Exe.ParambyName('P2NOMPRO_ORI').AsString        :='';
      Query_Exe.ParambyName('P2CHAVE_NIVEL').AsFloat        :=0;
      Query_Exe.ParambyName('P2PCRED_SN').AsFloat           :=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;
      Query_Exe.ParambyName('P2PCREDSN').AsFloat            :=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;
      Query_Exe.ParambyName('P2UND').AsString               :=' ';
      Query_Exe.ParambyName('P2PREPAS').AsFloat             :=0;
      Query_Exe.ParambyName('P2MODBCST').AsFloat            :=0;
      Query_Exe.ParambyName('P2KIT_PRO').AsString           :=' ';
      Query_Exe.ParambyName('P2LOTCT').AsFloat              :=0;
      Query_Exe.ParambyName('P2CST_PIS').AsString           :=FormatFloat('00', fSonumero(Query_Pro.fieldbyName('PDFIS_CST_PISCOF_SAIDA').AsString));
      Query_Exe.ParambyName('P2CST_COFINS').AsString        :=FormatFloat('00', fSonumero(Query_Pro.fieldbyName('PDFIS_CST_PISCOF_SAIDA').AsString));
      Query_Exe.ParambyName('P2CSOSN').AsString             :=FormatFloat('000', fSonumero(Query_Pro.fieldbyName('PDFIS_CSOSN_EST_CF').AsString));
      Query_Exe.ParambyName('P2CSOSN_ORI').AsString         :=FormatFloat('0', fSonumero(Query_Pro.fieldbyName('PDFIS_ORIGEM').AsString));
      Query_Exe.ParambyName('P2ESTNOR').AsString            :='S';
      Query_Exe.ParambyName('P2ESTCONS').AsString           :='N';
      Query_Exe.ParambyName('P2ESTTERC').AsString           :='N';
      Query_Exe.ParambyName('P2ESTREV').AsString            :='N';
      Query_Exe.ParambyName('P2VLRICMS_SN').AsFloat         :=Arredonda(  (( (Query_Cat52.fieldbyName('CT52I_TOTLIQ').AsFloat
                                                                +Query_Cat52.fieldbyName('CT52I_VALACRE_GER').AsFloat)
                                                                +Query_Cat52.fieldbyName('CT52I_VALDES_GER').AsFloat)
                                                                *DM4.Tb_ParGer02PG2PACREDICMS.AsFloat / 100) ,2);
      Query_Exe.ParambyName('P2SITUACAO').AsFloat           :=0;
      Query_Exe.ParambyName('P2DESC_CAB').AsFloat           :=0;
      Query_Exe.ParambyName('P2CST_IPI').AsString           :='99';
      Query_Exe.ParambyName('P2VSEGRAT').AsFloat            :=0;
      Query_Exe.ParambyName('P2VDESPACESRAT').AsFloat       :=0;
      Query_Exe.ParambyName('P2CONTESP').AsFloat            :=0;
      Query_Exe.ParambyName('P2VICMSDES').AsFloat           :=0;
      Query_Exe.ParambyName('P2DESCPR').AsFloat             :=0;
      Query_Exe.ParambyName('P2ICMS_ALIPI').AsFloat         :=0;
      Query_Exe.ParambyName('P2ICMS_BCIPI').AsFloat         :=0;
      Query_Exe.ParambyName('P2ICMS_VLIPI').AsFloat         :=0;
      Query_Exe.ParambyName('P2VSEGRAT_BCICMS').AsFloat     :=0;
      Query_Exe.ParambyName('P2VFRERAT_BCICMS').AsFloat     :=0;
      Query_Exe.ParambyName('P2VFRERAT').AsFloat            :=0;
      Query_Exe.ParambyName('P2VDESPACESRAT_BCICMS').AsFloat:=0;
      try
         query_exe.execsql;
         fdm1StartCommit;
      except
         end;
      end;
   Query_Cat52.Next;
   end;

Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Delete from CADP02 '
                  +' WHERE P2CODEMP=:CODEMP '
                  +' AND P2CHAVE=:CHAVE '
                  +' AND P2LOTSEQ=:LOTSEQ '
                  +' AND P2ORDEM=:ORDEM ');
Query_Exe.ParamByName('CODEMP').value:=-1;
Query_Exe.ParamByName('CHAVE').value :=mChave;
Query_Exe.ParamByName('LOTSEQ').value :=mLotseq;
Query_Exe.ParamByName('ORDEM').value  :=mOrdem;

try
   Query_Exe.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_Exe,249,'_cat52xpedido'+e.Message,'CADP02');
   freeandnil(Query_exe);
   freeandnil(Query_ped);
   freeandnil(Query_Pro);
   freeandnil(Query_cat52);
   result:=false;
   exit;
   end;
   end;
// INICIO SOMA
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('update CADP01 set P1TOTALL= '
                 +'nvl( (select sum(P2VSEGRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +'+nvl( (select sum(P2VDESPACESRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +'+nvl( (select sum(P2VFRERAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +'+nvl( (select sum(P2TOTLIQ) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +'+nvl( (select sum(P2VALIPI) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTALB= '
                 +'nvl( (select sum( (ROUND((P2QTD*P2PRECO),2))) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTVICMSDES= '
                 +'nvl( (select sum(P2VICMSDES) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTVALAPROXTRIB= '
                 +'nvl( (select sum(P2VALAPROXTRIB) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1COMIS= '
                 +'nvl( (select sum(P2VCOMIS) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1BASEN= '
                 +'nvl( (select sum(P2BASEN) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',p1ICMSN= '
                 +'nvl( (select sum(P2ICMSN) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTDES= '
                 +'nvl( (select sum(P2TOTDES) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1BASER= '
                 +'nvl( (select sum(P2BASER) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTPIS= '
                 +'nvl( (select sum(P2VALPIS) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TOTCOFINS= '
                 +'nvl( (select sum(P2COFINS) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0)'
                 +',P1ICMSR= '
                 +'nvl( (select sum(P2ICMSR) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1VLRDES= '
                 +'nvl( (select sum(P2DESCRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1IPIINA= '
                 +'nvl( (select sum(P2VALIPI) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1VALSEG= '
                 +'nvl( (select sum(P2VSEGRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1TARBAN= '
                 +'nvl( (select sum(P2VDESPACESRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1DESPACES= '
                 +'nvl( (select sum(P2VDESPACESRAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1VALFRE= '
                 +'nvl( (select sum(P2VFRERAT) from CADP02 where P2CODEMP=P1CODEMP and P2CHAVE=P1CHAVE and P2LOTSEQ=P1LOTSEQ and P2ORDEM=P1ORDEM) ,0) '
                 +',P1CODECF=:CODECF '
                 +',P1CUPOM=1'
                 +' where P1CODEMP=:CODEMP AND P1CHAVE=:CHAVE AND '
                 +'                P1LOTSEQ=:LOTSEQ ');
Query_Exe.ParamByName('CODECF').value:= pCodECF;
Query_Exe.ParamByName('CODEMP').value:=mCodemp;
Query_Exe.ParamByName('CHAVE').value :=mChave;
Query_Exe.ParamByName('LOTSEQ').value :=mLotseq;

try
   Query_Exe.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_Exe,249,'_cat52xpedido'+e.Message,'CADP02');
   freeandnil(Query_exe);
   freeandnil(Query_ped);
   freeandnil(Query_Pro);
   freeandnil(Query_cat52);
   result:=false;
   exit;
   end;
   end;


// TERMINO SOMA


freeandnil(Query_exe);
freeandnil(Query_Cat52);
freeandnil(Query_Ped);
freeandnil(Query_Pro);

result:=true;

end;





procedure TFrm_CAT52xPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

procedure TFrm_CAT52xPedido.FormShow(Sender: TObject);
var
x_reg: integer;
begin
for x_reg:=0 to Qr_Div01.Fields.Count-1 do
   begin
   if Qr_Div01.Fields[x_reg].DataType=ftFloat then
      begin
      if (Qr_Div01.Fields[x_reg].FieldName<>'CT52I_NUMCF') and
         (Qr_Div01.Fields[x_reg].FieldName<>'CT52I_CODECF') and
         (Qr_Div01.Fields[x_reg].FieldName<>'CT52I_CODEMP')  then
        (Qr_Div01.Fields[x_reg] as TFloatField).DisplayFormat:=mcasas;
      end;
   end;

end;

procedure TFrm_CAT52xPedido.DBGrid_ITENSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (Column.Field.FieldName='TOTTRIB_PED02') or (column.FieldName='TOTRET_PED02') then
   begin
   DBGrid_ITENS.Canvas.Font.Color:=clRed;
   DBGrid_ITENS.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end

end;

procedure TFrm_CAT52xPedido.bbSelecionarClick(Sender: TObject);
begin
Qr_Div01.Close;
Qr_Div01.ParamByName('DATAINI').Value:=edt_dataini.Date;
Qr_Div01.ParamByName('DATAFIN').Value:=edt_datafin.Date;
try
   Qr_Div01.Open;
except
   Qr_Div01.sql.SaveToFile(mpastatemp +'sqldiv01.txt');
   end;

end;

procedure TFrm_CAT52xPedido.bbAjustarClick(Sender: TObject);
begin
if not Qr_Div01.Active then
  Qr_Div01.Open;

if not fMapaResumoxCat52(edt_dataini.Date,edt_datafin.Date) then
   begin
   MessageDlg('O Mapa Resumo não confere com o CAT52. Faça o Download do Cat52 e/ou Confere os Mapas Resumos!',mtWarning,[mbOk],0);
   exit;
   end;
While not Qr_Div01.Eof do
   begin
   fIncluirPED52(Qr_Div01CT52I_NUMCF.AsInteger,Qr_Div01CT52I_CODECF.AsInteger, Qr_Div01CT52I_SERIE.AsString,Qr_Div01CT52I_DATACF.AsDateTime);
   Qr_Div01.Next;
   end;
MessageDlg('Concluido!',mtInformation,[mbOk],0);

end;


function tFrm_CAT52xPedido.fMapaResumoxCat52(pDataIni,pDataFin: tDateTime): Boolean;
var
qr_cat52: tQuery;
begin
qr_cat52:=tQuery.Create(nil);
qr_cat52.DatabaseName:='SG_ASSOC';
qr_cat52.close;
qr_cat52.SQL.Clear;
qr_cat52.SQL.Add('Select * from (');
qr_cat52.SQL.Add('SELECT CM2CODEMP,CM2CODIMP,CM2DATA '
                  +'       ,sum(MP_VDALIQ)  AS MP_VDALIQ '
                  +'       ,SUM(MP_CANCELADOS) AS MP_CANCELADOS '
                  +'       ,sum(MP_ACREC) AS MP_ACREC '
                  +'       ,sum(MP_DESC)  AS MP_DESC'
                  +'       ,sum(MP_ISENTAS) AS MP_ISENTAS '
                  +'       ,sum(MP_NAOINC) AS MP_NAOINC '
                  +'       ,sum(MP_SUBTRI)  AS MP_SUBTRI '
                  +'       ,SUM(MP_TOTTRIB) AS MP_TOTTRIB '
                  +'       ,max(ORIGEMINF) AS ORIGEMINF '
                  +'       ,sum(CAT52_VDALIQ) AS CAT52_VDALIQ'
                  +'       ,sum(MP_VDALIQ-CAT52_VDALIQ) AS DIFMP_CAT52_VDALIQ '
                  +'       ,sum(CAT52_CANCELADOS) AS CAT52_CANCELADOS '
                  +'       ,sum(CAT52_ACREC) AS CAT52_ACREC '
                  +'       ,sum(CAT52_DESC) AS CAT52_DESC '
                  +'       ,sum(CAT52_ISENTAS) AS CAT52_ISENTAS '
                  +'       ,sum(MP_ISENTAS-CAT52_ISENTAS) AS DIFMP_CAT52_ISENTAS '
                  +'       ,sum(CAT52_NAOINC) AS CAT52_NAOINC '
                  +'       ,sum(MP_NAOINC-CAT52_NAOINC) AS DIFMP_CAT52_NAOINC '
                  +'       ,sum(CAT52_SUBTRI) AS CAT52_SUBTRI '
                  +'       ,sum(MP_SUBTRI-CAT52_SUBTRI) AS DIFMP_CAT52_SUBTRI '
                  +'       ,sum(CAT52_TOTTRIB) AS CAT52_TOTTRIB '
                  +'       ,sum(MP_TOTTRIB-CAT52_TOTTRIB) AS DIFMP_CAT52_TOTTRIB '
                  +'       ,sum(PED2_VDALIQ) AS PED2_VDALIQ '
                  +'       ,sum(MP_VDALIQ-PED2_VDALIQ) AS DIFMP_PED2_VDALIQ '
                  +'       ,sum(PED2_CANCELADOS) AS PED2_CANCELADOS '
                  +'       ,sum(PED2_ACREC) AS PED2_ACREC '
                  +'       ,sum(PED2_DESC) AS PED2_DESC '
                  +'       ,sum(PED2_ISENTAS) AS PED2_ISENTAS '
                  +'       ,sum(MP_ISENTAS-PED2_ISENTAS) AS DIFMP_PED2_ISENTAS '
                  +'       ,sum(PED2_NAOINC) AS PED2_NAOINC '
                  +'       ,sum(MP_NAOINC-PED2_NAOINC) AS DIFMP_PED2_NAOINC '
                  +'       ,sum(PED2_SUBTRI) AS PED2_SUBTRI '
                  +'       ,sum(MP_SUBTRI-PED2_SUBTRI) AS DIFMP_PED2_SUBTRI '
                  +'       ,sum(PED2_TOTTRIB) AS PED2_TOTTRIB '
                  +'       ,sum(MP_TOTTRIB-PED2_TOTTRIB) AS DIFMP_PED2_TOTTRIB '
                  +' from ( ');

qr_cat52.SQL.Add('SELECT CM2CODEMP,CM2CODIMP,CM2DATA '
                  +'       ,CMVDALIQ AS MP_VDALIQ '
                  +'       ,CMCUPCAN AS MP_CANCELADOS '
                  +'       ,CMACRECUP AS MP_ACREC '
                  +'       ,CMDESCUP AS MP_DESC'
                  +'       ,CMISENTAS AS MP_ISENTAS '
                  +'       ,CMNAOINC AS MP_NAOINC '
                  +'       ,CMSUBTRI AS MP_SUBTRI '
                  +'       ,SUM(CM2VALOR) AS MP_TOTTRIB '
                  +'       ,'+QuotedStr('MP')+' AS ORIGEMINF '
                  +'       ,0 AS CAT52_VDALIQ'
                  +'       ,0 AS CAT52_CANCELADOS '
                  +'       ,0 AS CAT52_ACREC '
                  +'       ,0 AS CAT52_DESC '
                  +'       ,0 AS CAT52_ISENTAS '
                  +'       ,0 AS CAT52_NAOINC '
                  +'       ,0 AS CAT52_SUBTRI '
                  +'       ,0 AS CAT52_TOTTRIB '
                  +'       ,0 AS PED2_VDALIQ '
                  +'       ,0 AS PED2_CANCELADOS '
                  +'       ,0 AS PED2_ACREC '
                  +'       ,0 AS PED2_DESC '
                  +'       ,0 AS PED2_ISENTAS '
                  +'       ,0 AS PED2_NAOINC '
                  +'       ,0 AS PED2_SUBTRI '
                  +'       ,0 AS PED2_TOTTRIB '
                  +'        FROM CADMI01,CADMI02 '
                  +'       WHERE CM2CODEMP=CMCODEMP AND CM2CODIMP=CMCODIMP AND CM2DATA=CMDATA '
                  +'       AND CMDATA>=:DATAINI and CMDATA<=:DATAFIN '
                  +' AND CMCODEMP=:CODEMP '
                  +' GROUP BY '
                  +' CM2CODEMP,CM2CODIMP,CM2DATA '
                  +'       ,CMVDALIQ '
                  +'       ,CMCUPCAN '
                  +'       ,CMACRECUP '
                  +'       ,CMDESCUP '
                  +'       ,CMISENTAS '
                  +'       ,CMNAOINC '
                  +'       ,CMSUBTRI '
                  +' union '
                  +' SELECT CT52I_CODEMP AS CM2CODEMP '
                  +'       ,CT52I_CODECF AS CM2CODIMP '
                  +'       ,CT52I_DATACF AS CM2DATA '
                  +'       ,0 AS MP_VDALIQ '
                  +'       ,0 AS MP_CANCELADOS '
                  +'       ,0 AS MP_ACREC '
                  +'       ,0 AS MP_DESC '
                  +'       ,0 AS MP_ISENTAS '
                  +'       ,0 AS MP_NAOINC '
                  +'       ,0 AS MP_SUBTRI '
                  +'       ,0 AS MP_TOTTRIB '
                  +'       ,'+QuotedStr('CAT52')+' AS ORIGEMINF '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) END) AS CAT52_VDALIQ '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS CAT52_CANCELADOS '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_VALACRE_GER END) AS  CAT52_ACREC '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_VALDES_GER END) AS  CAT52_DESC '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('I')
                  +' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_ISENTAS '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('N')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_NAOINC '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('F')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_SUBTRI '
                  +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,3,1)='+QuotedStr('T')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_TOTTRIB '
                  +'       ,0 AS PED2_VDALIQ '
                  +'       ,0 AS PED2_CANCELADOS '
                  +'       ,0 AS PED2_ACREC '
                  +'       ,0 AS PED2_DESC '
                  +'       ,0 AS PED2_ISENTAS '
                  +'       ,0 AS PED2_NAOINC '
                  +'       ,0 AS PED2_SUBTRI '
                  +'       ,0 AS PED2_TOTTRIB '
                  +'        FROM CADECF_CAT52_ITENS '
                  +'       WHERE CT52I_CODEMP=:CODEMP  '
                  +'       AND CT52I_DATACF>=:DATAINI AND CT52I_DATACF<=:DATAFIN '


                  +' GROUP BY CT52I_CODEMP '
                  +'       ,CT52I_CODECF '
                  +'       ,CT52I_DATACF ');

qr_cat52.parambyname('CODEMP').asinteger:=codemp;
qr_cat52.parambyname('DATAINI').asDateTime:=pdataIni;
qr_cat52.parambyname('DATAFIN').asDateTime:=pDataFin;
qr_cat52.SQL.add(' ) ');

qr_cat52.SQL.add(' group by CM2CODEMP,CM2CODIMP,CM2DATA ');
qr_cat52.SQL.add(' ) where  (round(MP_VDALIQ,2)<>round(CAT52_VDALIQ,2))');
qr_cat52.SQL.add('      or  (round(MP_ISENTAS,2)<>round(CAT52_ISENTAS,2))');
qr_cat52.SQL.add('      or  (round(MP_NAOINC,2)<>round(CAT52_NAOINC,2))');
qr_cat52.SQL.add('      or  (round(MP_SUBTRI,2)<>round(CAT52_SUBTRI,2))');
qr_cat52.SQL.add('      or  (round(MP_TOTTRIB,2)<>round(CAT52_TOTTRIB,2))');
qr_cat52.SQL.add('  order by CM2DATA,CM2CODIMP ');
try
   qr_cat52.open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_cat52,5958,'frm lrs'+e.Message ,'CADEST');
   result:=false;
   exit;
   end;
   end;
if qr_Cat52.isEmpty then
   result:=true
else
   result:=false;
freeandnil(qr_cat52);   

end;

procedure TFrm_CAT52xPedido.FormCreate(Sender: TObject);
begin
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   edt_dataini.Date:=pdatasis
else
   edt_dataini.Date:=fdatafinal(1,pdatasis-28);
edt_dataini.Date:=StrtodAte('01/'+FormatDatetime('mm/yyyy',edt_dataini.Date));
edt_datafin.Date:=fultdiames(edt_dataini.date);

end;

end.
