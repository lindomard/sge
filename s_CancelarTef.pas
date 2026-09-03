unit s_CancelarTef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,db,dbtables, Grids, DBGrids, Buttons, uPayGoAPI
  ,StrUtils, DBCtrls;

type
  TFrm_CancelarTef = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lbl_cab_ped: TLabel;
    Panel_fp: TPanel;
    Label2: TLabel;
    src_fp: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lbl_excluindo: TLabel;
    Panel_rodape: TPanel;
    lbl_msg_estorno: TLabel;
    sbnTentarNovamente: TSpeedButton;
    sbnDesistir: TSpeedButton;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    u_fp: TUpdateSQL;
    DBMemo2: TDBMemo;
    query_fp: TQuery;
    query_fpORDEM: TFloatField;
    query_fpPFPID_NEW: TFloatField;
    query_fpPFPNOMFOR: TStringField;
    query_fpPFPFORMA: TFloatField;
    query_fpPFPVALOR: TFloatField;
    query_fpVINCULO: TStringField;
    query_fpPFPSTATUS_MOTIVO: TStringField;
    query_fpPFPCOMPROVANTE_VINC: TMemoField;
    query_fpPFPCOMPROVANTE_ESTORNO: TMemoField;
    query_fpOBSERVACOES: TStringField;
    query_fpPFPSTATUS: TFloatField;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure sbnDesistirClick(Sender: TObject);
    procedure sbnTentarNovamenteClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    formPayGoApi: TPayGoAPI;

    procedure fLerDadosDoCabecalho;

    function fEstornarPagamentos: boolean;

    procedure fControlarEstornarPagamentos;

  public
    { Public declarations }
    mPed01Id_new: Integer;
    mConcluiComSucesso: boolean;
    procedure fInicializar;

  end;

var
  Frm_CancelarTef: TFrm_CancelarTef;

const
  mCreditoTef = 'CREDITO TEF';
  mDebitoTef = 'DEBITO TEF';
  mPixTef = 'PIX TEF';

  mCreditoPos = 'CREDITO POS';
  mDebitoPos = 'DEBITO POS';
  mPixPos = 'PIX POS';





implementation

uses S_DM1, func_excecoes, Func, uPayGoTypes, s_impressora_escolher,
  s_NFCE_Impressao, lerarq;

{$R *.dfm}


procedure TFrm_CancelarTef.fInicializar;
begin
fLerDadosDoCabecalho;
end;



procedure TFrm_CancelarTef.fLerDadosDoCabecalho;
var
query_ped: tQuery;
begin

query_ped:=tQuery.create(nil);
query_ped.databasename:=DM1.SG_ASSOC.databaseName;
query_ped.sql.clear;
query_ped.sql.add('SELECT P1CHAVE,P1TOTALL,P1DATAP,P1NFCE_NUMERO,P1NFCE_DATA,  '
                 +' NVL( (CASE WHEN P1CODCLI=1 THEN  (SELECT MAX(CFRAZAO) FROM CADCSF  WHERE CFID_PED01_NEW=P1ID_NEW) '
                 +'       ELSE CRAZAO END),CRAZAO) AS CRAZAO,LNOME,LUF FROM CADP01,CADCLI,CADLOC '
                 +'  WHERE P1ID_NEW='+inttostr(mPed01Id_new)
                 +' AND CCODCLI=P1CODCLI '
                 +' AND LCODLOC=CCODLOC ');
try
   query_ped.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,50,'cancelar_tef:'+e.Message ,'CADP01');
   end;
   end;
lbl_cab_ped.Caption:='Pedido '+query_ped.fieldbyName('P1CHAVE').AsString
                     +' Razão Social '+query_ped.fieldbyname('CRAZAO').AsString
                     +' Cidade: '+query_ped.fieldbyname('LNOME').AsString+'-'+query_ped.fieldbyname('LUF').AsString
                     +'. Valor '+FormatFloat(mcasas,  query_ped.fieldbyname('P1TOTALL').AsFloat)+' Emitido em '
                     +FormatDatetime(fdathor, query_ped.fieldbyname('P1NFCE_DATA').AsDateTime)+'.';



query_fp.close;
query_fp.databasename:=DM1.SG_ASSOC.databaseName;

query_fp.sql.clear;
query_fp.sql.Add('select rownum as ORDEM, PFPID_NEW, PFPNOMFOR,PFPFORMA,PFPVALOR '
                +',CASE WHEN FPVINCULO=23 THEN '+QuotedStr(mCreditoTef)
                +'      WHEN FPVINCULO=24 THEN '+QuotedStr(mDebitoTef)
                +'      WHEN FPVINCULO=24 THEN '+QuotedStr(mPixTef)
                +'      WHEN FPVINCULO=36 THEN '+QuotedStr(mCreditoPos)
                +'      WHEN FPVINCULO=37 THEN '+QuotedStr(mDebitoPos)
                +'      WHEN FPVINCULO=38 THEN '+QuotedStr(mPixPos)
                +'      ELSE '+quotedstr('')+' END AS VINCULO '
                +' ,PFPSTATUS, case when PFPSTATUS=8 THEN '+QuotedStr('TEF Estornado')
                +'                  when PFPSTATUS=9 THEN '+QuotedStr('POS Estornado')
                +'                  else '+QuotedStr('')+' end as PFPSTATUS_MOTIVO '
                +',PFPCOMPROVANTE_VINC '
                +',PFPCOMPROVANTE_ESTORNO '
                +','+quotedstr(' ')+' as OBSERVACOES '
                +' FROM CADPFP,CADFP WHERE PFPID_PED01_NEW =' + IntToStr(mPed01Id_new)
                +' AND FPCODIGO=PFPFORMA ');


try
   query_fp.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_fp,94,'cancelar_tef:'+e.Message ,'CADPFP');
   end;
   end;


end;

procedure TFrm_CancelarTef.FormCreate(Sender: TObject);
begin
Query_fpPFPVALOR.DisplayFormat := mcasas;
formPayGoApi := TPayGoAPI.create();
mConcluiComSucesso:=false;
timer1.Enabled:=true;

end;

procedure TFrm_CancelarTef.sbnDesistirClick(Sender: TObject);
begin
close;
end;




function tFrm_CancelarTef.fEstornarPagamentos: boolean;
var
  mVinculo: string;
  mRetornoPayGo:  TRetornoPayGo;

  mIdentificacao: String;
  mItens: tStrings;
  mQtdErro: integer;
  procedure fAtualizarCadpfp;
  var
  query_atu_pfp: tQuery;
  begin
  query_atu_pfp := tQuery.create(nil);
  query_atu_pfp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
  query_atu_pfp.SQL.ADD('Update CADPFP set PFPSTATUS=8, PFPCOMPROVANTE_ESTORNO = :PFPCOMPROVANTE_ESTORNO '
                       +' WHERE PFPID_NEW = '+Query_fpPFPID_NEW.AsString);
  query_atu_pfp.ParamByName('PFPCOMPROVANTE_ESTORNO').AsMemo := mRetornoPayGo.Itens.Text;

  try

     query_atu_pfp.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_atu_pfp,168,'SGE','CADPFP');
      mQtdErro:=mQtdErro+1;
      end;
      end;
  query_atu_pfp.close;
  FreeAndNil(query_atu_pfp);
  Query_fp.Edit;
  Query_fpPFPSTATUS.Value:=8;
  Query_fpPFPCOMPROVANTE_ESTORNO.Value := mRetornoPayGo.Itens.Text;
  Query_fp.Post;


  end;

  procedure fImprimirComprovante;
  var
  mImpressora: String;
  begin
  mImpressora := fRetornaImpressoraOnline('NFCE');
  if mImpressora='' then
     begin
     Application.createform(Tfrm_impressora_escolher, frm_impressora_escolher);
     frm_impressora_escolher.showmodal;
     mImpressora:=frm_impressora_escolher.mimpressora_selecionada;
     freeandnil(frm_impressora_escolher);
     end;
  IF mImpressora<>'' then
     begin
     Application.createform(Tfrm_nfce_impressao, frm_nfce_impressao);
     Frm_NFCE_Impressao.fImprimirGeralComprovante(mRetornoPaygo.Itens,mImpressora,'Administrativas');
     freeandnil(Frm_NFCE_Impressao);
     end
  end;


  procedure fConfirmarEstorno(pComprovante: tStrings);
  begin
  formPayGoApi.ConfirmarTransacao(pComprovante,true);

  end;


begin
mQtdErro :=0;

mItens:=TStringList.Create;
Query_fp.First;

While not Query_fp.Eof do
   begin
   lbl_excluindo.Caption:='Verificando a forma de Pagamento ordem '+Query_fpORDEM.AsString+' Nome '+Query_fpPFPNOMFOR.AsString+' valor '
    +Formatfloat(mcasas, Query_fpPFPVALOR.AsFloat);
    verteclado(0);
   mVinculo := Query_fpVINCULO.AsString;
   if AnsiIndexStr(mVinculo, [mCreditoTef, mDebitoTef, mPixTef]) >= 0 then
      begin
      if not Query_fpPFPCOMPROVANTE_VINC.IsNull then
         begin
         mIdentificacao := Formatfloat('000', formPaygoApi.fPegarSeqTef);
         mItens.Text:=Query_fpPFPCOMPROVANTE_VINC.AsString;
         mRetornoPayGo := formPayGoApi.CancelarVenda(mIdentificacao,mItens );
         if mRetornoPayGo.Aprovado=true then
            begin
            fConfirmarEstorno(mRetornoPayGo.Itens);
            fImprimirComprovante;

            fAtualizarCadpfp;
            end
         else
            begin
            mQtdErro := mQtdErro +1;
            Query_fp.Edit;
            Query_fpOBSERVACOES.value := 'Não Foi Possivel Estorar';
            Query_fp.Post;

            end;
         end;

      end;
   Query_fp.Next;
   end;
freeandNil(mItens);   
result:=mQtdErro=0;

end;


procedure TFrm_CancelarTef.fControlarEstornarPagamentos;
begin
if not fEstornarPagamentos then
   begin
   Panel_rodape.Visible:=true;
   end
else
   begin
   close;
   mConcluiComSucesso:=true;
   end;

end;


procedure TFrm_CancelarTef.sbnTentarNovamenteClick(Sender: TObject);
begin
fControlarEstornarPagamentos;
Panel_rodape.Visible:=false;
verteclado(0);

end;

procedure TFrm_CancelarTef.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=false;;

fControlarEstornarPagamentos;
end;

end.
