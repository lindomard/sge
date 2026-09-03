  unit S_BDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,db,dbtables,func,lerarq,func2;

type
  TFrm_BDev = class(TForm)
    Label1: TLabel;
    NUMERO: TEdit;
    NOMCLI: TEdit;
    bbBaixar: TBitBtn;
    bbSair: TBitBtn;
    Label2: TLabel;
    DESD: TEdit;
    NR: TEdit;
    Label22: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROExit(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DESDExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fBaixarDevolucao_bdev(pValDes,pValJur,pValRec: Real;pCodCai: Integer;pDataPag,pDataBai:TDateTime;pDataCx:TDateTime; pTarBan: Real; out pCodldr_Tarban:tChaveIdLdr; out pCodLdr_local: tChaveIdLdr): Boolean;




var
  Frm_BDev: TFrm_BDev;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_BDev.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BDev.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_BDev.NUMEROExit(Sender: TObject);
begin
NUMERO.Text:=FloatToStr(fsonumero(NUMERO.Text));
end;

procedure TFrm_BDev.bbBaixarClick(Sender: TObject);
var
mCodLdr_tarban: tChaveIdLdr;
mCodLdr_local: tChaveIdLdr;
begin
if not DM1.Qr_FP.Locate('FPVINCULO',7,[]) then
   begin
   fMensagem('Não Foi possível encontrar a Forma de Pagamento(7-Dev.Mercadorias)',0,['0'],0);
   exit;
   end;

if not flcaddar(8,0,0,0,0,Trim(NUMERO.Text),Trim(DESD.Text),'5',pdatanula,'') then
   begin
   fMensagem('Título não Encontrado!',0,['0'],0);
   exit;
   end
else
   begin
   if flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString) then
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      end
   else
      NOMCLI.Text:='Não Cadastrado.';
   end;
pldr_nome:=NOMCLI.Text;

if DM1.Tb_DarCRSTATUS.Value>1 then
   begin
   fMensagem('Este título ja foi Baixado!',0,['0'],0);
   exit;
   end;
if DM1.Tb_DarCRDUP.Value<>5 then
   begin
   fMensagem('Este título não é de devolução!',0,['0'],0);
   exit;
   end;


if fmensagem('Confirma a Baixa da Devolução?',0,['1','2'],2)<>mryes then
   exit;

if fBaixarDevolucao_bdev(0,0,0,codcai,pdatasis,pdatasis,pdatasis,0,mCodLdr_tarban,mCodLdr_local)  then
   fMensagem('Devolução Baixada!',0,['0'],0);


end;


// lindomar

{

   if not fBaixarDevolucao_bdev(Tb_Retorno.fieldbyName('VALDESC').AsFloat,
                              Tb_Retorno.fieldbyName('VALJURMOR').AsFloat,
                           Tb_Retorno.fieldbyName('VALREC').AsFloat+ Tb_Retorno.fieldbyName('VALTAR').AsFloat,
                           mCodCai_Cele,
                           Tb_Retorno.fieldbyName('DATALIQ').AsDateTime,
                           date,
                           Tb_Retorno.fieldbyName('DATACRED').AsDateTime
                           ,Tb_Retorno.fieldbyName('VALTAR').AsFloat) then

}
function fBaixarDevolucao_bdev(pValDes,pValJur,pValRec: Real;pCodCai: Integer;pDataPag,pDataBai:TDateTime;pDataCx:TDateTime; pTarBan: Real; out pCodldr_Tarban: tChaveIdLdr; out pCodLdr_local: tChaveIdLdr): Boolean;





var
mSeq,mLote: Real;
mnomcai: String;
mChaveIdFPCR : tChaveIdFPCR;
//mcodldr_tarban: Real;
//mcodldr_local: Real;
mDados_fpcrdup: TDados_fpcrdup;
mDadosFPCR: tDadosFPCR;

       function fCriarCADLDRTarBan: boolean;
       var
       mCodLdr_tarban,mCodLdr_local: integer;

       begin
       Result:=true;
       if ptarban=0 then
          exit;
       fTestarParCaixaCliDar(DM1.Tb_Dar, 1,1,'CADDAPB');
       pcodldr_tarban :=fCriarLDR(codemp
                  ,pTarBan // Valor previsto
                  ,pTarBan // Valor Real
                  ,DM1.Tb_DarCRCODCLI.Value        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.Value
                  ,DM1.Tb_DarCRDTVCTO.Value // data prevista
                  ,pDataCx // data real
                  ,DM1.Tb_DarCRDTEMIS.Value // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,DM1.Tb_DarCRNPED.Value,DM1.Tb_DarCRNUMERO.Value))+'-'+DM1.Tb_DarCRDESD.Value
                  ,' '
                  ,'CL'
                  ,mnomcai
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,DM1.Tb_DarCROBS.AsString
                  ,3
                  ,pcodcai
                  ,lotmov
                  ,0 // status
                  ,03
                  ) ; // origem



       end;

begin
pcodldr_tarban.codldr:=0;
pcodldr_tarban.idNew:=0;
pCodLdr_local.codldr:=0;
pCodLdr_local.idNew:=0;

if pValRec=0 then
   pValRec:=(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALPAG.Value);

if pDataCx<=pDatanula then
   pDataCx:=pDataPag;

mlote:=fbuscaLoteBaixaCR(0);

mDados_fpcrdup.pcodemp    :=codemp;
mDados_fpcrdup.pLote      :=trunc(mlote);
mDados_fpcrdup.pnr        :=Valfloat(FormatDatetime('ddmmyyyy', pDataBai));
mDados_fpcrdup.pdup_codemp:=DM1.Tb_DarCRCODEMP.Value;
mDados_fpcrdup.pnumero    :=DM1.Tb_DarCRNUMERO.Value;
mDados_fpcrdup.ptipo      :=DM1.Tb_DarCRDUP.AsInteger;
mDados_fpcrdup.pcodecf    :=DM1.Tb_DarCRCODECF.AsInteger;
mDados_fpcrdup.pcodcli    :=DM1.Tb_DarCRCODCLI.AsFloat;
mDados_fpcrdup.pCodVen    :=DM1.Tb_DarCRCODVEN.Value;
mDados_fpcrdup.pcaixa     :=pCodCai;
mDados_fpcrdup.pcodusr    :=codusr;
mDados_fpcrdup.pvalor     :=pValRec;
mDados_fpcrdup.pjuros     :=pValJur;
mDados_fpcrdup.pdesc      :=pValDes;
mDados_fpcrdup.pVlrSt     :=DM1.Tb_DarCRICMSR.AsFloat;
mDados_fpcrdup.pVlrIPI    :=DM1.Tb_DarCRTOTIPI.AsFloat;
mDados_fpcrdup.pValDup    :=DM1.Tb_DarCRVALOR.AsFloat;
mDados_fpcrdup.pDevol     :=DM1.Tb_DarCRDEVOL.AsFloat;
mDados_fpcrdup.pParcial   :=0;

mDados_fpcrdup.pdtemis    :=DM1.Tb_DarCRDTEMIS.AsDateTime;
mDados_fpcrdup.pdtBx      :=pDataBai;
mDados_fpcrdup.pDtPag     :=pDataPag;
mDados_fpcrdup.pDtVcto    :=DM1.Tb_DarCRDTVCTO.AsDateTime;
mDados_fpcrdup.pdesd      :=DM1.Tb_DarCRDESD.AsString;
mDados_fpcrdup.pchave_id  :=DM1.Tb_DarCRCHAVE_ID.AsInteger;
mDados_fpcrdup.pchave_id_ano  :=DM1.Tb_DarCRCHAVE_ID_ANO.AsInteger;
mDados_fpcrdup.pId_cr_new    :=DM1.Tb_DarCRID_NEW.AsInteger;

fCriarFPCRDUP(mDados_fpcrdup);







//mdesc_mov:=pldr_descmov;
//mcodccu  :=pldr_codccu;
//mcoddep  :=pldr_coddep;
//mnatdc   :=pldr_natdc;
//mnomccu  :=pldr_nomccu;
//mnomdep  :=pldr_nomdep;


if DM1.Tb_CliCCODCLI.Value<>DM1.Tb_DarCRCODCLI.Value then
   flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString);
if DM1.Tb_DarCRDUP.AsInteger=5 then
   begin
   if DM1.Tb_DarCRNPED.AsFloat>0 then
      fTestarParCaixaCliDar(DM1.Tb_Dar, 1,1,'CADDARD')
   else
      fTestarParCaixaCliDar(DM1.Tb_Dar,1,1,'CADDARN');
   end
else
   fTestarParCaixaCliDar(DM1.Tb_Dar,1,0,'CADDAR0');
{
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   fmensagem('Esta Faltando o Parametro de devolucao (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end
else
   begin
   mdesc_mov:=DM1.Par_LDRNOME.Value;
   mcodccu  :=DM1.Par_LDRCODCC.Value;
   mcoddep  :=DM1.Par_LDRCODDEP.Value;

   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      mnomdep  :=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      mnatdc   :=DM1.Tb_CCUCCNAT.Value;
      mnomccu  :=DM1.Tb_CCUCCNOME.Value;
      end;
   end;
}
//COLOCAR UM CADBCO AQUI
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',IntToStr(pCodCai)) then
  begin
  mnomcai:=DM1.Query1.Fields[0].AsString;
  end;


DM1.Tb_Dar.Edit;
DM1.Tb_DarCRCODCTA.Value   :=pCodCai;
DM1.Tb_DarCRNOMCTA.Value   :=mnomcai;
DM1.Tb_DarCRNOMCC.Value    :=mnomccu;
DM1.Tb_DarCRCODCC.Value    :=mcodccu;
DM1.Tb_DarCRNATDC.Value    :=mnatdc;
DM1.Tb_DarCRNOMDEP.Value   :=mnomdep;
DM1.Tb_DarCRCODDEP.Value   :=mcoddep;

DM1.Tb_DarCRVALPAG.Value  :=DM1.Tb_DarCRVALPAG.Value+pValRec;
DM1.Tb_DarCRJUROS.Value   :=pValJur;
DM1.Tb_DarCRDESC.Value    :=pValDes;
DM1.Tb_DarCRDTBX.AsString :=FormatDateTime(fdt, pDataBai);
DM1.Tb_DarCRDTPAG.AsString:=FormatDatetime(fdt,pDataPag);
DM1.Tb_DarCRUSRBX.Value   :=codusr;
DM1.Tb_DarCRLOTE.Value    :=mlote;

if pTarBan>0 then
   DM1.Tb_DarCRTARBAN.Value    :=pTarBan;

if Arredonda(((Arredonda( DM1.Tb_DarCRVALPAG.Value, 2) + Arredonda( DM1.Tb_DarCRDESC.Value,2) + Arredonda( DM1.Tb_DarCRDEVOL.Value,2) )-DM1.Tb_DarCRJUROS.Value),2)>=Arredonda(DM1.Tb_DarCRVALOR.Value,2) then
   DM1.Tb_DarCRSTATUS.Value:=2
else
   dm1.Tb_DarCRSTATUS.Value  :=1;
// RETIRADO POIS A NOTA DE CREDITO JA FOI CREDITADO NA CONTA
{
if DM1.Tb_DarCRCODLDR.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.Add('Delete from CADLDR ');
   DM1.Query1.Sql.add(' where CODEMP=0'+IntTostr(codemp)
                     +' and LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                     +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
  try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
  except
     ex_erroSql(01,118,'Frm_BDev','CADLDR');
     fdm1StartCommit;
     end;
   DM1.Tb_DarCRCODLDR.Value:=0;
   end;
}
pcodldr_local:=fCriarLDR(codemp
                  ,pValRec // Valor previsto
                  ,pValRec // Valor Real
                  ,DM1.Tb_DarCRCODCLI.Value        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.Value
                  ,DM1.Tb_DarCRDTVCTO.Value // data prevista
                  ,pDataCx // data real
                  ,DM1.Tb_DarCRDTEMIS.Value // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,DM1.Tb_DarCRNPED.Value,DM1.Tb_DarCRNUMERO.Value))+'-'+DM1.Tb_DarCRDESD.Value
                  ,' '
                  ,'CL'
                  ,mnomcai
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,DM1.Tb_DarCROBS.AsString+iif(pDataCx<>pDataPag, ' Data Real '+FormatDatetime(fdt2, pDataPag), '')
                  ,3
                  ,pcodcai
                  ,lotmov
                  ,0 // status
                  ,03); // origem

DM1.Tb_DarCRCODLDR.Value    :=pCodLdr_local.codldr;

//DM1.Tb_DarCRCODLDR.Value:=mcodldr;


fCriarCADLDRTarBan;
//    mDados_fpcrdup.pnr        :=Valfloat(FormatDatetime('ddmmyyyy', pDataBai));
//  lindomar
{

function fCriarFPCR(pcodemp,pforma,pnumero,pbanco,pvalor,ptipo,pcaixa,pcodldr,plote,
                    pvinculo,pnatureza,
                    pnr,pcodcli,pdev_codemp,pdev_codecf,pdev_numero,pdev_dup:Real;
                    pdata,pdatdep,pdev_dtemis: TDateTime;
                   pcc,pserie,pdev_desd: String;pCodLdr_TarBan,pTarBan: real): Real;

}


mDadosFPCR.codldr:=mChaveIdLdr.codldr;
mDadosFPCR.idLdrNew:=mChaveIdLdr.idNew;
mDadosFPCR.idDupDevNew:=0;


mChaveIdFPCR:=fCriarFPCR(codemp,
                 DM1.Qr_FPFPCODIGO.AsInteger,
                 0, // numero
                 0, // Banco
                 pValRec, // Valor
                 DM1.Qr_FPFPTIPO.Value, // Tipo
                 pcodcai,
                 mDadosFPCR,
                 mlote,
                 DM1.Qr_FPFPVINCULO.Value,
                 DM1.Qr_FPFPTIPO.Value,
                 Valfloat(FormatDatetime('ddmmyyyy', pDataBai))

                 ,
                 DM1.Tb_DarCRCODCLI.Value,
                 0, // codemp dev
                 0, // codecf dev
                 0, // numero dev
                 0, // dup desd
                 pDataBai, // data
                 pDataPag, // data do deposito
                 pdatanula, // data dev
                 ' ', // conta corrente
                 ' ',
                 ' ' // desd dup
                 ,pCodLdr_local.codldr
                 ,ptarban
                 ); // serie


DM1.Tb_Dar.Post;
result:=true;
end;

procedure TFrm_BDev.FormCreate(Sender: TObject);
begin
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
NR.Text:=FormatDateTime('ddmmyyyy',date);

if not ftestacaixa(0) then exit;
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin

   fmensagem('Esta Faltando o Parametro de devolucao (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end
else
   begin
   mdesc_mov:=DM1.Par_LDRNOME.Value;
   mcodccu  :=DM1.Par_LDRCODCC.Value;
   mcoddep  :=DM1.Par_LDRCODDEP.Value;

   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      mnomdep  :=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      mnatdc   :=DM1.Tb_CCUCCNAT.Value;
      mnomccu  :=DM1.Tb_CCUCCNOME.Value;
      end;
   end;

end;

procedure TFrm_BDev.DESDExit(Sender: TObject);
begin
if Trim(DESD.Text)='' then
   DESD.Text:='A';
if not flcaddar(8,0,0,0,0,Trim(NUMERO.Text),Trim(DESD.Text),'5',pdatanula,'') then
   begin
   fMensagem('Título não Encontrado!',0,['0'],0);
   exit;
   end
else
   begin
   if flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString) then
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      end
   else
      NOMCLI.Text:='Não Cadastrado.';
   end;

end;

procedure TFrm_BDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
