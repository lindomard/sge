unit s_BDev_For;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,db,dbtables,func,lerarq,func2, Mask,
  Grids, DBGrids, ToolEdit, CurrEdit, S_SelEmp;

type
  TFrm_BDev_For = class(TForm)
    Label1: TLabel;
    NUMERO: TEdit;
    edt_nomfor: TEdit;
    bbBaixar: TBitBtn;
    bbSair: TBitBtn;
    Label2: TLabel;
    DESD: TEdit;
    NR: TEdit;
    Label22: TLabel;
    Label3: TLabel;
    edt_codfor: TEdit;
    Label4: TLabel;
    edt_dtemis: TMaskEdit;
    gb_nc: TGroupBox;
    src_nc: TDataSource;
    DBGrid_nc: TDBGrid;
    Query_nc: TQuery;
    Query_ncCANUMERO: TFloatField;
    Query_ncCADESD: TStringField;
    Query_ncCAVALOR: TFloatField;
    Query_ncCACODFOR: TFloatField;
    Query_ncCADTEMIS: TDateTimeField;
    Query_ncCADTVCTO: TDateTimeField;
    Query_ncCAVALPAG: TFloatField;
    Query_ncEMABERTO: TFloatField;
    Query_ncCACODEMP: TFloatField;
    Query_ncCADUP: TFloatField;
    Label5: TLabel;
    edt_valor: TCurrencyEdit;
    procedure bbSairClick(Sender: TObject);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROExit(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DESDExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_dtemisEnter(Sender: TObject);
    procedure DBGrid_ncDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codforEnter(Sender: TObject);
  private
    { Private declarations }
   function fDevForLerAtualiza(pCodfor:Real): Boolean;
   function fProcuraTitulo(pTipo: Integer): Boolean;

  public
    { Public declarations }
  end;

function fBaixarDevolucao(pValDes,pValJur,pValRec: Real;pCodCai: Integer;pDataPag,pDataBai:TDateTime): Boolean;


var
  Frm_BDev_For: TFrm_BDev_For;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_BDev_For.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BDev_For.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_BDev_For.NUMEROExit(Sender: TObject);
begin
NUMERO.Text:=FloatToStr(fsonumero(NUMERO.Text));
if fsonumero(NUMERO.Text)<>0 then
   fProcuraTitulo(0);
end;

procedure TFrm_BDev_For.bbBaixarClick(Sender: TObject);
begin
if not DM1.Qr_FP.Locate('FPVINCULO',7,[]) then
   begin
   fMensagem('Não Foi possível encontrar a Forma de Pagamento(7-Dev.Mercadorias)',0,['0'],0);
   exit;
   end;

if fsonumero(NUMERO.Text)=0 then
   begin
   edt_codfor.SetFocus;
   exit;
   end;
if not fProcuraTitulo(0) then
   begin
   fmensagem('Título Não encontrado!',0,['0'],0);
   edt_codfor.SetFocus;
   exit;
   end;

if not flcaddap(6,Query_ncCACODEMP.AsInteger//codigo da empresa
              ,0
              ,Query_ncCANUMERO.AsString
              ,Query_ncCADESD.AsString
              ,Query_ncCACODFOR.AsString
              ,FormatDatetime(fdt2, Query_ncCADTEMIS.AsDateTime)
              ,'5','' //
              ) then


   begin
   fMensagem('Título não Encontrado!',0,['0'],0);
   exit;
   end;
pldr_nome:=edt_nomfor.Text;

if DM1.Tb_CPCASTATUS.Value>1 then
   begin
   fMensagem('Este título ja foi Baixado!',0,['0'],0);
   exit;
   end;
if DM1.Tb_CPCADUP.Value<>5 then
   begin
   fMensagem('Este título não é de devolução!',0,['0'],0);
   exit;
   end;


if fmensagem('Confirma a Baixa da Devolução?',0,['1','2'],2)<>mryes then
   exit;

if fBaixarDevolucao(0,0,0,codcai,pdatasis,pdatasis)  then
   fMensagem('Devolução Baixada!',0,['0'],0);


end;


function fBaixarDevolucao(pValDes,pValJur,pValRec: Real;pCodCai: Integer;pDataPag,pDataBai:TDateTime): Boolean;
var
mSeq,mLote: Real;
mndup: Real;
mdup: string;
begin
if pValRec=0 then
   pValRec:=(DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCAVALPAG.Value);

mlote:=fbuscaLoteBaixaCP(0);

mseq:=fbuscacodigofpcpdup(0);
if length(DM1.Tb_CPCANUMERO.AsString)>10 then
   mndup:=ValFloat(copy(DM1.Tb_CPCANUMERO.AsString,1,10))
else
   mndup:=DM1.Tb_CPCANUMERO.AsFloat;
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Insert into FPCPDUP ('
                  +' FPCODEMP,'
                  +' FPLOTSEQ, '
                  +' FPSEQ, '
                  +' FPLOTE,'
                  +' FPNUMERO,'
                  +' FPDESD,'
                  +' FPCODFOR,'
                  +' FPDTEMIS,'
                  +' FPTIPO,'
                  +' FPCAIXA,'
                  +' FPCODUSR,'
                  +' FPVALOR,'
                  +' FPDESC,'
                  +' FPJUROS,'
                  +' FPLEMAT,'
                  +' FPDUP_CODEMP,'
                  +' FPDUP_VALOR,'
                  +' FPNR,'
                  +' FPDUP_DTVCTO'
                  +' ) Values ('
                  +IntToStr(codemp)+','
                  +IntToStr(ls_lotbcp)+','
                  +FloatToStr(mseq)+','
                  +FloatToStr(mlote)+','
                  +FloatToStr(mndup)+','
                  +chr(39)+DM1.Tb_CPCADESD.AsString+chr(39)+','
                  +DM1.Tb_CPCACODFOR.AsString+','
                  +chr(39)+FormatDateTime(fdt,DM1.Tb_CPCADTEMIS.AsdateTime)+chr(39)+','
                  +'5'+',' // TIPO DO DOCUMENTO
                  +IntToStr(pcodcai)+','
                  +intTostr(codusr)+','
                  +mudavp(FloatToStr(pValRec))+',' // valor
                  +mudavp(FloatToStr(pValDes))+',' // desconto
                  +mudavp(FloatToStr(pValJur))+',' // juros
                  +'0' // LOTE DE envio
                  +','+DM1.Tb_CPCACODEMP.asstring // codigo da empresa duip
                  +','+mudavp('0'+DM1.Tb_CPCAVALOR.Asstring) // valor do titulo
                  +','+FormatDatetime('ddmmyyyy', pDataBai) // numero da nota de recebimento
                  +','+chr(39)+FormatDateTime(fdt,DM1.Tb_CPCADTVCTO.AsDateTime)+chr(39) // DAATA DE VENCIMENTO
                  +')');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,605,'Frm_AcCp','FPCPDUP');
   end;

if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',IntToStr(pCodCai)) then
   mnombco:=DM1.Query1.Fields[0].AsString;



flparldr(0,'CADDAPD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   end
else
   begin
   mdesc_mov:=DM1.Par_LDRNOME.Value;
   mcodccu:=DM1.Par_LDRCODCC.Value;
   mcoddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      mnomccu:=DM1.Tb_CCUCCNOME.Value;
      mnatdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;



if DM1.Tb_ForFCODFOR.Value<>DM1.Tb_CPCACODFOR.Value then
   flcadfor(1,0,DM1.Tb_CPCACODFOR.AsString);
if DM1.Tb_CPCADUP.AsInteger=5 then
   begin
   if DM1.Tb_CPCACHAVEP.AsFloat>0 then
      fTestarParCaixaforDap(1,1,'CADDAPD')
   else
      fTestarParCaixaforDap(1,1,'CADDAPN');
   end
else
   fTestarParCaixaforDap(1,0,'CADDAP0');

DM1.Tb_CP.Edit;
DM1.Tb_CPCAVALPAG.Value   :=DM1.Tb_CPCAVALPAG.Value+pValRec;
DM1.Tb_CPCADTBX.Value     :=pdatasis;
DM1.Tb_CPCASTATUS.Value   :=2;
DM1.Tb_CPCAUSRBAI.Value   :=codusr;
DM1.Tb_CPCALOTSEQ_LB.Value:=ls_lotbcp;
DM1.Tb_CPCALOTE.Value     :=mlote;
DM1.Tb_CPCADTPAG.Value    :=pdatasis;
DM1.Tb_CPCACODCTA.Value   :=pcodcai; // codcai;
DM1.Tb_CPCACODCC.Value    :=mcodccu;
DM1.Tb_CPCACODDEP.Value   :=mcoddep;
DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
DM1.Tb_CPCANOMCTA.Value   :=mnombco;
DM1.Tb_CPCANOMCC.Value    :=mnomccu;
DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
DM1.Tb_CPCANATDC.Value    :=mnatdc;
mdup:= Copy(DM1.Tb_CPtipodoc.AsString,1,3)+'-'+FormatFloat('000000',DM1.Tb_CPCANUMERO.Value);
{
if arredonda((DM1.Tb_CPCAVALPAG.Value+DM1.Tb_CPCADESC.Value-DM1.Tb_CPCAJUROS.Value),2)>=arredonda(DM1.Tb_CPCAVALOR.Value,2) then
   begin
   DM1.Tb_CPCASTATUS.Value:=2;
   if DM4.Tb_Par01PCXAUTO.Value<>1 then
      begin

      if DM1.Tb_CPCACODLDR.Value>0 then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQl.Add('Delete from CADLDR ');
         if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
            begin
            DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                              +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString)
            end
         else
            begin
            DM1.Query1.Sql.add(' where CODEMP=0'+DM1.Tb_CPCACODEMP.AsString
                              +' and LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                              +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
            end;
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,605,'Frm_AcCp','CADLDR');
            end;
         DM1.Tb_CPCACODLDR.Value:=0;
         end;

      end;
   end
else
   begin
   DM1.Tb_CPCASTATUS.Value:=1;
   {
   if DM4.Tb_Par01PCXAUTO.Value<>1 then
      begin
      if DM1.Tb_CPCACODLDR.Value>0 then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQl.Add('Update CADLDR set VALORR='+mudavp(FloatTostr(DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCAVALPAG.Value))
                           +' ,VALORP='+mudavp(FloatTostr(DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCAVALPAG.Value)));
         if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
            begin
            DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                              +' and   CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
            end
         else
            DM1.Query1.Sql.add(' where CODEMP=0'+DM1.Tb_CPCACODEMP.AsString
                              +' and LOTSEQ=0'+DM1.Tb_CPCALOTSEQ_FC.AsString
                              +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,605,'Frm_AcCp','CADLDR');
            end;
         end;
      end;

   end;
DM1.Tb_CPCACODLDR.Value:=mcodldr;

}
mcodldr:=fCriarLDR(codemp
                  ,pValRec // Valor previsto
                  ,pValRec // Valor Real
                  ,DM1.Tb_CPCACODFOR.Value        // Codigo do fornecedor
                  ,DM1.Qr_FPFPVINCULO.Value
                  ,DM1.Tb_CPCADTVCTO.Value // data prevista
                  ,pDataPag // data real
                  ,DM1.Tb_CPCADTEMIS.Value // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,mdup
                  ,' '
                  ,'FR'
                  ,pldr_nombco
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,DM1.Tb_CPCAOBS.AsString
                  ,3
                  ,pcodcai
                  ,lotmov
                  ,0 // status
                  ,03); // origem
DM1.Tb_CP.Post;



mseq:=fbuscacodigofpcp(0);
DM1.Query1.SQL.Clear;
DM1.Query1.Params.Clear;

DM1.Query1.Close;
DM1.Query1.SQL.Add('Insert Into FPCP ('
                  +'FPCODEMP,'
                  +'FPLOTSEQ,'
                  +'FPSEQ,'
                  +'FPVALOR,'
                  +'FPLOTE,'
                  +'FPTIPO,'
                  +'FPCAIXA,'
                  +'FPDATA,'
                  +'FPDATDEP,'
                  +'FPSERIE,'
                  +'FPCC,'
                  +'FPFORMA,'
                  +'FPNUMERO,'
                  +'FPBANCO,'
                  +'FPCODLDR,'
                  +'FPLEMAT'
                  +',FPNATUREZA'
                  +',FPVINCULO'
                  +',FPNR'
                  +',FPDEV_CODEMP '
                  +',FPDEV_NUMERO '
                  +',FPDEV_DESD '
                  +',FPDEV_CODFOR '
                  +',DEV_FPDTEMIS '
                  +',DEV_FPTIPO '
                  +') Values ('
                  +IntToStr(codemp)+','
                  +IntToStr(ls_lotbcp)+','
                  +FloatToStr(mseq)+','
                  +mudavp(FloatTostr(pValRec))+',' // valor
                  +FloatToStr(mlote)+',' // lote
                  +'0'+',' // TIPO
                  +IntTostr(pcodcai)+','
                  +':DATA,'
                  +':DATDEP,'
                  +':SERIE,'
                  +':CC,'
                  +':FORMA,'
                  +':NUMERO,'
                  +':BANCO,'
                  +':CODLDR,'
                  +'0 ' //LOTE DE ENVIO
                  +','+DM1.Qr_FPFPTIPO.AsString
                  +','+DM1.Qr_FPFPVINCULO.AsString
                  +','+FormatDatetime('ddmmyyyy', pDataBai)
                  +',0' // CODEMP DEV ORI
                  +',0' // NUMERO FPDEV_NUMERO '
                  +','+chr(39)+''+chr(39) // FPDEV_DESD '
                  +',0' //FPDEV_CODFOR '
                  +',:DEV_DTEMIS' // DEV_FPDTEMIS '
                  +',0' // DEV_FPTIPO '
                  +')');
DM1.Query1.ParambyName('DATA').AsDateTime  :=pdatasis;
DM1.Query1.ParambyName('DATDEP').AsDateTime:=pdatasis;
DM1.Query1.ParambyName('SERIE').AsString   :=''; // SERIE
DM1.Query1.ParambyName('CC').AsString      :=''; // conta corrente
DM1.Query1.ParambyName('FORMA').AsFloat    :=DM1.Qr_FPFPCODIGO.AsFloat; // FORMA
DM1.Query1.ParambyName('NUMERO').AsString  :='0'; // numero
DM1.Query1.ParambyName('BANCO').AsString   :='0'; // banco
DM1.Query1.ParambyName('DEV_DTEMIS').AsString:='';
DM1.Query1.parambyName('CODLDR').AsFloat     :=mcodldr;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,796,'Frm_AcCp','FPCP');
   end;
result:=true;
end;

procedure TFrm_BDev_For.FormCreate(Sender: TObject);
begin
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
NR.Text:=FormatDateTime('ddmmyyyy',date);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_BDev_For.DESDExit(Sender: TObject);
begin
if Trim(DESD.Text)='' then
   DESD.Text:='A';
if fsonumero(NUMERO.Text)<>0 then
   fProcuraTitulo(0);
end;

procedure TFrm_BDev_For.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_BDev_For.FormActivate(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin

   fmensagem('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;

end;

procedure TFrm_BDev_For.edt_codforKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'frm_bdev_for',Key);
   if trim(edt_codfor.Text)<>'' then
      edt_codforExit(self);
   key:=#0;
   end;

end;

procedure TFrm_BDev_For.edt_codforExit(Sender: TObject);
begin
if bbsair.focused then
   exit;
edt_codfor.Text:=fdeixanum2(edt_codfor.Text);
if Trim(edt_codfor.Text)<>'' then
   begin
   if not flcadfor(1,0,edt_codfor.Text) then
      begin
      fmensagem('Fornecedor não cadastrado!',0,['0'],0);
      edt_codfor.SetFocus;
      exit;
      end
   else
      begin
      edt_nomfor.Text:=DM1.Tb_ForFRAZAO.Value;
      end;
   if not fDevForLerAtualiza(ValFloat(edt_codfor.Text)) then
      begin
      fmensagem('Fornecedor não tem nota de crédito em aberto!',0,['0'],0);
      edt_codfor.SetFocus;
      end;
   end;

end;

function Tfrm_BDev_For.fDevForLerAtualiza(pCodfor:Real): Boolean;
begin
if DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);

Query_nc.Close;
Query_nc.SQL.Clear;
Query_nc.SQL.Add('Select CACODEMP,CANUMERO,CADESD,CAVALOR, ');
Query_nc.SQL.Add(' CACODFOR,CADTEMIS,CADTVCTO,CAVALPAG, ');
Query_nc.SQL.Add(' CAVALOR-CAVALPAG AS EMABERTO,CADUP ');
Query_nc.SQL.Add(' from CADDAP where '
                +la_empresas
                +iif(la_empresas='','',' and ')
                +' CASTATUS < 2 '
                +' AND CADUP=5 '
                +' AND CACODFOR=0'+FloatToStr(pCodfor));
Query_nc.Open;
if Query_nc.IsEmpty then
   result:=false
else
   result:=true;

end;

function tFrm_BDev_For.fProcuraTitulo(pTipo: Integer): Boolean;
begin
if Query_nc.Active then
   begin
   if fsonumero(edt_codfor.Text)=0 then
      begin
      result:=false;
      exit;
      end;
   fDevForLerAtualiza(fSonumero(edt_codfor.text));
   end;
if (fsonumero(NUMERO.Text)>0) then
   begin
   if trim(edt_dtemis.Text)='/  /' then
      begin
      if (trim(DESD.Text)<>'A') and (trim(DESD.Text)<>'') then
         begin
         if not Query_nc.Locate('CANUMERO;CADESD',VarArrayOf([fsonumero(NUMERO.Text),trim(DESD.Text)]),[]) then
            begin
            result:=false;
            exit;
            end;
         end
      else if not Query_nc.Locate('CANUMERO',fsonumero(NUMERO.Text),[]) then
         begin
         result:=false;
         exit;
         end;
      end
   else
      begin
      if (trim(DESD.Text)<>'A') and (trim(DESD.Text)<>'') then
         begin
         if not Query_nc.Locate('CANUMERO;CADTEMIS;CADESD',VarArrayOf([fsonumero(NUMERO.Text),edt_dtemis.text,trim(DESD.Text)]),[]) then
            begin
            result:=false;
            exit;
            end;
         end
      else
         begin
         if not Query_nc.Locate('CANUMERO;CADTEMIS',VarArrayOf([fsonumero(NUMERO.Text),edt_dtemis.text]),[]) then
            begin
            result:=false;
            exit;
            end;
         end;
      end;
   DESD.Text:=Query_ncCADESD.AsString;
   edt_dtemis.Text:=FormatDateTime(fdt2, Query_ncCADTEMIS.AsDateTime);
   edt_valor.Value:=Query_ncEMABERTO.AsFloat;
   end;

result:=true;
end;
procedure TFrm_BDev_For.edt_dtemisEnter(Sender: TObject);
begin
if fsonumero(NUMERO.Text)<>0 then
   fProcuraTitulo(0);

end;

procedure TFrm_BDev_For.DBGrid_ncDblClick(Sender: TObject);
begin
NUMERO.Text:=Query_ncCANUMERO.AsString;
DESD.Text:=Query_ncCADESD.AsString;
edt_dtemis.Text :=FormatDatetime(fdt2, Query_ncCADTEMIS.AsDateTime);
edt_valor.Value :=Query_ncEMABERTO.AsFloat;
bbBaixar.SetFocus;



end;


procedure TFrm_BDev_For.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_BDev_For.edt_codforEnter(Sender: TObject);
begin
NUMERO.Clear;
DESD.Clear;
edt_dtemis.Text:='  /  /    ';
edt_valor.Value:=0;
end;

end.
