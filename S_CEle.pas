unit S_CEle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, func, S_DM1, db, dbtables, DBCtrls, Grids,
  DBGrids,lerarq,S_PedCli,S_Usr,s_DM4,S_SelEmp, ComCtrls;

type
  TFrm_CEle = class(TForm)
    panel_rod: TPanel;
    panel_navgator: TPanel;
    dbg_mercad: TDBGrid;
    DBNavigator1: TDBNavigator;
    Tb_CEleLei: TQuery;
    Tb_CEleLeiCEITEM: TFloatField;
    Tb_CEleLeiCECODPRO: TFloatField;
    Tb_CEleLeiCEQTD: TFloatField;
    U_EleLei: TUpdateSQL;
    Src_EleLei: TDataSource;
    bbApurar: TBitBtn;
    bbSair2: TBitBtn;
    Tb_CeleRes: TQuery;
    U_CeleRes: TUpdateSQL;
    Src_CeleRes: TDataSource;
    Tb_CeleResCEQTDL: TFloatField;
    Tb_CeleResCEQTDP: TFloatField;
    Tb_CeleResPDNOME: TStringField;
    Tb_CEleLeiPDNOME: TStringField;
    Tb_CeleResCECODPRO: TFloatField;
    Tb_CeleResCEDIFER: TFloatField;
    Tb_CeleResCECODBARN: TStringField;
    Tb_CEleLeiCECODBARN: TStringField;
    Tb_CeleResCELOTE: TStringField;
    Tb_CeleResCEDTVCTO: TDateTimeField;
    Tb_CEleLeiCELOTE: TStringField;
    Tb_CEleLeiCEDTVCTO: TDateTimeField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsConfiguracoes: TTabSheet;
    Panel_cab: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SBn_Pesq: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    CHAVE: TEdit;
    bbConferir: TBitBtn;
    bbSair: TBitBtn;
    DATAP: TEdit;
    VALOR: TEdit;
    DATAE: TEdit;
    razsoc: TEdit;
    fantasia: TEdit;
    endereco: TEdit;
    bairro: TEdit;
    CODCON: TEdit;
    NOMCON: TEdit;
    cb_barrar: TCheckBox;
    CB_REEIMPRESSAO: TCheckBox;
    CODSEP: TEdit;
    NOMSEP: TEdit;
    edt_valor_frete: TEdit;
    Label14: TLabel;
    edt_var_perc_menor: TEdit;
    Label15: TLabel;
    edt_var_menor_unid: TEdit;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    Tb_CeleResVAR_MENOR_ACEITA: TFloatField;
    Tb_CeleResVAR_PERC_CALCULADA: TFloatField;
    Tb_CeleResPDUND: TStringField;
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure bbConferirClick(Sender: TObject);
    procedure Tb_CEleLeiAfterInsert(DataSet: TDataSet);
    procedure bbSair2Click(Sender: TObject);
    procedure bbApurarClick(Sender: TObject);
    procedure dbg_mercadColEnter(Sender: TObject);
    procedure SBn_PesqClick(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure Tb_CEleLeiAfterCancel(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforeEdit(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforeInsert(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforePost(DataSet: TDataSet);
    procedure Tb_CEleLeiAfterPost(DataSet: TDataSet);
    procedure Tb_CEleLeiAfterDelete(DataSet: TDataSet);
    procedure dbg_mercadColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg_mercadExit(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_mercadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_var_perc_menorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private


    { Private declarations }

    VariacaoMenorUnidades : Array of String;

    function fVerificaCodigoGrande(pCodigo: String): String;

    procedure fLerVariacoesPadrao;

    procedure fCalcularVariacaoMenor;

    procedure fVerificaBloqueioSeparador;


  public
    { Public declarations }

    mVarPercMenor: Real;
    mVarMenorUnid: Real;



      mitem: Integer;
      mqtdant: Real;
      mCodAnt: Real;
      mDtVcto: TDateTime;
      mQtdCaixa: Real;
      mLoteProd: String;
      mCodSep_Ant: Real;
      mCodLido: String;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CEle: TFrm_CEle;
implementation

uses S_CEleR,S_CeleOk, StrUtils, func_excecoes;

{$R *.DFM}

procedure TFrm_CEle.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CEle.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CEle.CHAVEExit(Sender: TObject);
var
query_ped: tQuery;
begin

if bbSair.Focused then
   exit;
if Trim(CHAVE.Text)='' then
   exit;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


query_ped:=tQuery.create(nil);
query_ped.DatabaseName := DM1.SG_ASSOC.DatabaseName;

query_ped.SQL.Clear;
query_ped.Close;
query_ped.SQL.Clear;
query_ped.SQL.Add('Select P1CONF,P1DATCON,P1DATAP,P1DATENT,sum(P1TOTALL) as P1TOTALL,MAX(P1CODSEP) AS P1CODSEP,max(P1DATASEP) AS P1DATASEP ,max(P1HORSEP) AS  P1HORSEP'
                   +', P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO,min(P1CODEMP) AS EMPMIN,sum(P1VALFRE) AS P1VALFRE, '
                   +'max(P1BLOQPEND) as P1BLOQPEND,   max(P1CODEMP) as EMPMAX from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' ');
query_ped.Sql.Add('  and P1LOTSEQ=0'+InttoStr(ls_numped));
query_ped.Sql.Add(' and P1CHAVE='+fdeixanum(CHAVE.Text));
query_ped.SQL.Add(' group by P1CONF,P1DATCON,P1DATAP,P1DATENT,P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO ');
try
   query_ped.Open;
except
   query_ped.sql.SavetoFile(mpastatemp + 'sql.txt');
   end;
if query_ped.FieldByName('EMPMIN').AsInteger=codemp then
   mEmpMin:=true
else
   mEmpMin:=false;

if query_ped.FieldByName('EMPMIN').AsInteger=codemp then
   mEmpMax:=false
else
   mEmpMax:=true;
if query_ped.Eof then
   begin

   fmensagem('Chave não Encontrada!',0,['0'],0);

   CHAVE.SetFocus;
   exit;
   end;

if query_ped.FieldByName('P1BLOQPEND').AsInteger=2 then
   begin
   AvisoSonoro(3);
   Fmensagem('Este Pedido é Possui Restrições, verifique!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;


DATAP.Text:=FormatDateTime(fdt2,query_ped.FieldbyName('P1DATAP').AsDateTime);
DATAE.Text:=FormatDateTime(fdt2,query_ped.FieldbyName('P1DATENT').AsDateTime);
VALOR.Text:=FormatFloat(mcasas, query_ped.FieldbyName('P1TOTALL').AsFloat);
edt_valor_frete.Text:=FormatFloat(mcasas, query_ped.FieldbyName('P1VALFRE').AsFloat);


if query_ped.FieldByName('P1CONF').AsString='S' then
   begin
{
   if fmensagem(Pchar('Pedido Conferido em: '+FormatDateTime( fdt2 ,query_ped.FieldbyName('P1DATCON').AsDateTime)+' as '
                            +FormatDateTime('hh:nn:ss',query_ped.FieldbyName('P1DATCON').AsDateTime)+'.'+#13
                            +'Quer Conferi-lo Novamente?'),0,['1','2'],2)=mrNO then
}
   fmensagem('Pedido Conferido em: '+FormatDateTime( fdt2 ,query_ped.FieldbyName('P1DATCON').AsDateTime)+' as '
                            +FormatDateTime('hh:nn:ss',query_ped.FieldbyName('P1DATCON').AsDateTime)+'.',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;

razsoc.Text     :=query_ped.fieldByName('CRAZAO').AsString;
endereco.Text   :=query_ped.fieldByName('CLOG').AsString;
fantasia.Text   :=query_ped.fieldByName('CDENOM').AsString;
bairro.Text     :=query_ped.fieldByName('CBAIRRO').AsString;
CODSEP.Text:=query_ped.fieldbyname('P1CODSEP').AsString;
CODSEPExit(self);


CODCON.Text:=IntToStr(codusr);
CODCONExit(self);
query_ped.close;
freeandnil(query_ped);
fVerificaBloqueioSeparador;

end;

procedure TFrm_CEle.fVerificaBloqueioSeparador;
begin
CODSEP.Enabled:=(fsonumero(CODSEP.Text)=0) or (length(trim(NOMSEP.Text))<1);
end;


procedure TFrm_CEle.bbConferirClick(Sender: TObject);
begin

if codemp>100 then
   begin
   AvisoSonoro(3);
   fmensagem('Não é uma empresa válida para este tipo de operação!',1,['0'],0);
   exit;
   end;
if Trim(CODSEP.Text)='' then
   begin
   fmensagemSom('Codigo do Separador Campo Obrigatorio!',0,['0'],0);
   CODSEP.SetFocus;
   exit;
   end;
if Trim(CODCON.Text)='' then
   begin
   fmensagemSom('Codigo do Conferidor Campo Obrigatorio!',0,['0'],0);
   CODCON.SetFocus;
   exit;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);



DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select P1CONF,P1DATCON,P1DATAP,P1DATENT,sum(P1TOTALL) as P1TOTALL '
                   +', P1CODCLI, P1TIPO,P1EMITENTE,CRAZAO,CDENOM,CLOG,CCNPJ,CCPF,CIE,CRG,CBAIRRO,P1SUBMOD,MIN(P1CODEMP) AS P1CODEMP from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query2.Sql.Add('  and P1LOTSEQ=0'+InttoStr(ls_numped));
DM1.Query2.Sql.Add(' and P1CHAVE='+fdeixanum(CHAVE.Text));
DM1.Query2.SQL.Add(' group by P1CONF,P1DATCON,P1DATAP,P1DATENT,P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO ,CCNPJ,CCPF,CIE,CRG,CBAIRRO,P1SUBMOD,P1TIPO,P1EMITENTE');

try
   DM1.Query2.Open;
except
   DM1.Query2.sql.SavetoFile(mpastatemp + 'sql.txt');
   end;

if DM1.Query2.eof then
   begin
   fmensagem('Chave não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   exit;
   end;
{
while not DM1.Query2.Eof do
   begin
   if (fsonumero(DM1.Query2.fieldbyName('CCNPJ').AsString)=0) AND
      (fsonumero(DM1.Query2.fieldbyName('CCPF').AsString)=0) then
       begin
       if ((fsonumero(PalNum_Sis(DM1.Query2.fieldbyName('P1SUBMOD').AsString))<100) AND (DM1.query2.fieldbyName('P1CODEMP').aSfLOAT<100))  then
          begin
          fmensagem('Cliente Sem o CNPJ!, favor Corrigir',0,['0'],0);
          exit;
          end;
       end;
   DM1.Query2.Next;
   end;
}
if DM1.Query2.fieldbyName('P1EMITENTE').AsString='T' then
   begin
   fmensagem('Nota de Devolução com Emissão de Terceiros, Invalido!',0,['0'],0);
   exit;
   end;
DM1.Query2.First;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);



DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select P2CODPRO,sum(P2QTD) as P2QTD from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P2LOTSEQ=0'+InttoStr(ls_numped));
DM1.Query5.Sql.Add(' and P2CHAVE='+fdeixanum(CHAVE.Text));
DM1.Query5.Sql.Add(' group by P2CODPRO');

try
   DM1.Query5.Open;
except
   DM1.Query5.sql.SavetoFile(mpastatemp + 'sql.txt');
   end;


if cb_barrar.Checked then
   begin
   Tb_CeleRes.close;
   Tb_CeleRes.Open;
   DM1.Query5.First;
   While not DM1.Query5.Eof do
      begin
      if Tb_CeleRes.Locate('CECODPRO',DM1.Query5.FieldbyName('P2CODPRO').AsFloat,[]) then
         begin
         Tb_CeleRes.Edit;
         Tb_CeleResCEQTDP.Value :=Tb_CeleResCEQTDP.Value+DM1.Query5.FieldbyName('P2QTD').AsFloat;
         Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value+DM1.Query5.FieldbyName('P2QTD').AsFloat;
         end
      else
         begin
         Tb_CeleRes.Append;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select PDNOME,PDCODBAR,PDUND from CADPRO where ');
         if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
            DM1.Query1.SQL.Add(' PDCODPRO=0'+DM1.Query5.FieldbyName('P2CODPRO').AsString)
         else
           DM1.Query1.SQL.Add(' PDCODEMP=0'+IntTostr(codemp)
                           +' and PDCODPRO=0'+DM1.Query5.FieldbyName('P2CODPRO').AsString);
         DM1.Query1.Open;
         Tb_CeleResPDNOME.Value:=DM1.Query1.Fields[0].AsString;
         Tb_CeleResPDUND.Value:=DM1.Query1.FieldByName('PDUND').AsString;
         Tb_CeleResCECODBARN.Value:=DM1.Query1.FieldbyName('PDCODBAR').AsString;
         Tb_CeleResCECODPRO.Value :=DM1.Query5.FieldbyName('P2CODPRO').AsFloat;
         Tb_CeleResCEQTDP.Value   :=DM1.Query5.FieldbyName('P2QTD').AsFloat;
         Tb_CeleResCEQTDL.Value   :=0;
         Tb_CeleResCEDIFER.Value  :=DM1.Query5.FieldbyName('P2QTD').AsFloat;

         end;
      Tb_CeleRes.Post;
      DM1.Query5.Next;
      end;
   end;
Tb_CEleLei.Close;
Tb_CEleLei.Open;

mitem:=0;
Tb_CElelei.Insert;
dbg_mercad.SetFocus;
end;

procedure TFrm_CEle.Tb_CEleLeiAfterInsert(DataSet: TDataSet);
begin
mitem:=mitem+1;
Tb_CEleLeiCEITEM.Value:=mitem;
Tb_CEleLeiCEQTD.Value :=1;
end;

procedure TFrm_CEle.bbSair2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CEle.bbApurarClick(Sender: TObject);
var
query_ped_apur: tQuery;
query_exe: tQuery;
begin
if Tb_CEleLeiCECODPRO.IsNull then
   Tb_CEleLei.Cancel;
if Tb_CEleLei.IsEmpty then
   begin
   AvisoSonoro(3);
   fmensagem('Favor Passar os produtos no Checkout!',0,['0'],0);
   dbg_mercad.SetFocus;
   exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

query_ped_apur:=tQuery.Create(nil);
query_ped_apur.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_ped_apur.Close;
query_ped_apur.SQL.Clear;
query_ped_apur.SQL.Add('Select P2CODPRO,'
                +' sum(P2QTD) as P2QTD from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P2LOTSEQ=0'+InttoStr(ls_numped));
query_ped_apur.Sql.Add(' and P2CHAVE='+fdeixanum(CHAVE.Text));
query_ped_apur.Sql.Add(' group by P2CODPRO');

query_ped_apur.SQL.Text := 'select T1.*,PDNOME,PDCODBAR,PDUND from ( '
                         + query_ped_apur.SQL.Text
                         +' ) T1,CADPRO where PDCODPRO=P2CODPRO  ';

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   query_ped_apur.SQL.Add(' PDCODEMP=0'+IntTostr(codemp));

//   ex_erroSql_Novo(query_ped_apur,469,' SGE','AJUSTAR QUANTIDADES ');


try
   query_ped_apur.Open;
except on e : exception do
   ex_erroSql_Novo(query_ped_apur,469,' SGE'+E.Message,'AJUSTAR QUANTIDADES ');

   end;

if not cb_barrar.Checked then
   begin
   Tb_CeleRes.close;
   Tb_CeleRes.Open;
   end
else
   begin
   Tb_CeleRes.First;
   While not Tb_CeleRes.Eof do
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDP.Value :=0;
      Tb_CeleResCEDIFER.Value:=0;
      Tb_CeleResCEQTDL.Value :=0;
      Tb_CeleRes.Post;
      Tb_CeleRes.Next;
      end;
   end;


query_ped_apur.First;
While not query_ped_apur.Eof do
   begin
   if Tb_CeleRes.Locate('CECODPRO',query_ped_apur.FieldbyName('P2CODPRO').AsFloat,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDP.Value :=Tb_CeleResCEQTDP.Value+query_ped_apur.FieldbyName('P2QTD').AsFloat;
      Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value+query_ped_apur.FieldbyName('P2QTD').AsFloat;

      end
   else
      begin
      Tb_CeleRes.Append;



      Tb_CeleResCECODBARN.Value:=query_ped_apur.FieldbyName('PDCODBAR').AsString;
      Tb_CeleResCECODPRO.Value :=query_ped_apur.FieldbyName('P2CODPRO').AsFloat;
      Tb_CeleResCEQTDP.Value   :=query_ped_apur.FieldbyName('P2QTD').AsFloat;
      Tb_CeleResCEQTDL.Value   :=0;
      Tb_CeleResCEDIFER.Value :=query_ped_apur.FieldbyName('P2QTD').AsFloat;

      end;
   Tb_CeleResPDNOME.Value   :=query_ped_apur.FieldbyName('PDNOME').AsString;
   Tb_CeleResPDUND.Value   :=query_ped_apur.FieldByName('PDUND').AsString;

   Tb_CeleRes.Post;
   query_ped_apur.Next;
   end;
Tb_CEleLei.First;
While not Tb_CEleLei.Eof do
   begin
   if Tb_Celeres.Locate('CECODPRO',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDL.Value  :=Tb_CeleResCEQTDL.Value+Tb_CEleLeiCEQTD.Value;
      Tb_CeleResCEDIFER.Value :=Tb_CeleResCEDIFER.Value-Tb_CEleLeiCEQTD.Value;
      end
   else
      Begin
      Tb_CeleRes.Append;

      Tb_CeleResCECODBARN.Value:=Tb_CEleLeiCECODBARN.Value;
      Tb_CeleResCECODPRO.Value :=Tb_CEleLeiCECODPRO.Value;
      Tb_CeleResCEQTDP.Value   :=0;
      Tb_CeleResCEQTDL.Value   :=Tb_CEleLeiCEQTD.Value;
      Tb_CeleResCEDIFER.Value  :=Tb_CEleLeiCEQTD.Value*-1;
      end;
    Tb_CeleRes.Post;
   Tb_CeleLei.Next;
   end;

fCalcularVariacaoMenor;
Frm_Cele.Tb_CeleRes.Filter  :='(CEDIFER<>0) ';


Frm_Cele.Tb_CeleRes.Filtered:=true;
if Frm_CEle.Tb_CeleRes.IsEmpty then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   query_exe:=tQuery.Create(nil);
   query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Update CADP01 set P1CODCON='+fdeixanum(Frm_CEle.CODCON.Text)
                     +', P1CODSEP=CASE WHEN P1CODSEP <=0 THEN  '+fdeixanum(Frm_CEle.CODSEP.Text)+' ELSE P1CODSEP END '
                     +', P1CONF='+chr(39)+'S'+chr(39)
                     +',P1DATCON=SYSDATE '
                     +',P1HORCON=:HORCON '
                     +',P1DATASEP=case when P1DATASEP <=:PDATANULA THEN SYSDATE ELSE P1DATASEP END  '
                     +',P1HORSEP=case when P1DATASEP <=:PDATANULA THEN :HORSEP ELSE P1HORSEP END   '
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
   query_exe.Sql.Add('  P1LOTSEQ=0'+InttoStr(ls_numped));
   query_exe.Sql.Add(' and P1CHAVE='+fdeixanum(Frm_CEle.CHAVE.Text));

//   query_exe.ParamByName('DATCON').AsDateTime:=Now;
//   query_exe.ParamByName('DATSEP').AsDateTime:=Now;
   query_exe.ParamByName('HORSEP').AsString:=FormatDateTime(fhr, Now);
   query_exe.ParamByName('HORCON').AsString:=FormatDateTime(fhr, Now);
   query_exe.ParamByName('PDATANULA').AsDateTime:=pDataNula;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_exe,592,'_stru '+e.message,'user');
      end;
      end;



   query_exe.close;
   freeandnil(query_exe);
   if Frm_CeleOK=nil  then
      Application.CreateForm(TFrm_CeleOk, Frm_CeleOk)
   else
      begin
      freeandnil(frm_celeOk);
      Application.CreateForm(TFrm_CeleOk, Frm_CeleOk)
      end;
   Frm_CEleOK.CHAVE.Text    :=CHAVE.Text;
   Frm_CEleOK.DATAP.Text    :=DATAP.Text;
   Frm_CEleOK.VALOR.Text    :=VALOR.Text;
   Frm_CEleOK.edt_totliq.Text:=VALOR.Text;
   Frm_CEleOK.razsoc.Text   :=razsoc.Text;
   Frm_CEleOK.fantasia.Text :=fantasia.Text;
   Frm_CEleOK.endereco.Text :=endereco.Text;
   Frm_CEleOK.bairro.Text   :=bairro.Text;
   Frm_CEleOK.edt_valor_frete.Text   :=edt_valor_frete.Text;
   Frm_CEleOK.mValorFreteAnt := valfloat(edt_valor_frete.Text);
   Frm_CEleOK.edt_valor_frete.Text   :=edt_valor_frete.Text;
   Frm_CEleOK.edt_valor_freteExit(self);





   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


   query_ped_apur.Close;
   query_ped_apur.SQL.Clear;
   query_ped_apur.SQL.Add('Select P1CODEMP,P1STATUS,P1CODTRA,P1FRETEPC,P1PLACAV,P1UFPV,'
                      +' P1ESPECIE, P1PREVENT, '
                      +' P1HPREVENT, P1CODSEP, P1DATASEP, P1HORSEP, P1CODCON, '
                      +' P1HORCON, P1CODEMB, P1DATAEMB, P1HOREMB, '
                      +' P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO, '
                      +' P1CONF,P1DATCON,P1DATAP,P1DATENT,sum(P1QTDVOL) AS P1QTDVOL, '
                      +' sum(P1PESOB) as P1PESOB, '
                      +' sum(P1PESOL) as P1PESOL, '
                      +'  sum(P1TOTALL) as P1TOTALL'
                      +' ,max(p1valfre) as p1valfre '
                      +'  from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1STATUS<'+mstatus_excluido+' ');
   query_ped_apur.Sql.Add('  and P1LOTSEQ=0'+InttoStr(ls_numped));
   query_ped_apur.Sql.Add(' and P1CHAVE='+fdeixanum(CHAVE.Text));

   query_ped_apur.SQL.Add(' group by P1CODEMP,P1STATUS,P1CODTRA,P1FRETEPC,P1PLACAV,P1UFPV,'
                     +' P1ESPECIE, P1PREVENT, '
                     +' P1HPREVENT, P1CODSEP, P1DATASEP, P1HORSEP, P1CODCON, '
                     +' P1HORCON, P1CODEMB, P1DATAEMB, '
                     +' P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO, '
                     +' P1CONF,P1DATCON,P1DATAP,P1DATENT,P1HOREMB ');
   try
      query_ped_apur.Open;
   except
      query_ped_apur.sql.SavetoFile(mpastatemp + 'sql.txt');
      end;


   mPreFatur:=false;
   mNf      :=false;



   While not query_ped_apur.Eof do
      begin
      if query_ped_apur.FieldByName('P1STATUS').AsInteger=2 then
         begin
         query_ped_apur.Next;
         Continue;
         end;
       if query_ped_apur.FieldByName('P1CODEMP').AsInteger<100 then
          mnf:=true
       else
          mPreFatur:=true;
      query_ped_apur.Next;
      end;
   query_ped_apur.First;
   Frm_CEleOK.CODTRA.Text        :='';
   Frm_CEleOK.NOMTRA.Text        :='';
   if query_ped_apur.FieldByName('P1CODTRA').AsFloat>0 then
      begin
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',query_ped_apur.FieldByName('P1CODTRA').AsString) then
         begin
         Frm_CEleOK.CODTRA.Text        :=query_ped_apur.FieldByName('P1CODTRA').AsString;
         Frm_CEleOK.NOMTRA.Text        :=DM1.Query1.Fields[0].AsString;
         end;
      end;
//   mcinst:=trim(query_ped_apur.FieldByName('P1FRETEPC').AsString);
//   Frm_CEleOK.cb_tipo_frete.ItemIndex := Frm_CEleOK.cb_tipo_frete.Items.IndexOf(mcinst);

       with Frm_CEleOK.cb_tipo_frete do
         ItemIndex := Items.IndexOf(query_ped_apur.FieldByName('P1FRETEPC').AsString);

   Frm_CEleOK.PLACAV.Text        :=query_ped_apur.FieldByName('P1PLACAV').AsString;
   Frm_CEleOK.UFPV.Text          :=query_ped_apur.FieldByName('P1UFPV').AsString;
   Frm_CEleOK.QTDVOL.Text        :=query_ped_apur.FieldByName('P1QTDVOL').AsString;
   Frm_CEleOK.mValorFreteAnt     :=query_ped_apur.FieldByName('P1VALFRE').Asfloat;

   Frm_CEleOK.ESPECIE.Text       :=query_ped_apur.FieldByName('P1ESPECIE').AsString;
   Frm_CEleOK.PESOB.Text         :=FormatFloat('#,##0.00', query_ped_apur.FieldByName('P1PESOB').AsFloat);
   Frm_CEleOK.PESOL.Text         :=FormatFloat('#,##0.00', query_ped_apur.FieldByName('P1PESOL').AsFloat);

   if query_ped_apur.FieldByName('P1PREVENT').AsDateTime<=pdatanula then
      Frm_CEleOK.PREVENT.Text     :='/  /'
   else
      Frm_CEleOK.PREVENT.Text     :=FormatDateTime(fdt2, query_ped_apur.FieldByName('P1PREVENT').AsDateTime);
   Frm_CEleOK.HPREVENT.Text       :=query_ped_apur.FieldByName('P1HPREVENT').AsString;
   Frm_CEleOK.CODSEP.Text        :='';
   Frm_CEleOK.NOMSEP.Text        :='';
   Frm_CEleOK.DATSEP.Text        :='/  /';
   if query_ped_apur.FieldByName('P1CODSEP').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',query_ped_apur.FieldByName('P1CODSEP').AsString) then
         begin
         Frm_CEleOK.CODSEP.Text:=query_ped_apur.FieldByName('P1CODSEP').AsString;
         Frm_CEleOK.NOMSEP.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if query_ped_apur.FieldByName('P1DATASEP').AsDateTime>pdatanula then
      Frm_CEleOK.DATSEP.Text        :=FormatDateTime(fdt2, query_ped_apur.FieldByName('P1DATASEP').AsDateTime);
   Frm_CEleOK.HORSEP.Text        :=query_ped_apur.FieldByName('P1HORSEP').AsString;
   Frm_CEleOK.CODCON.Text        :='';
   Frm_CEleOK.NOMCON.Text        :='';
   Frm_CEleOK.CODEMB.Text        :='';
   Frm_CEleOK.NOMEMB.Text        :='';

   if query_ped_apur.FieldByName('P1CODCON').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',query_ped_apur.FieldByName('P1CODCON').AsString) then
         begin
         Frm_CEleOK.CODCON.Text:=query_ped_apur.FieldByName('P1CODCON').AsString;
         Frm_CEleOK.NOMCON.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   Frm_CEleOK.HORCON.Text        :=query_ped_apur.FieldByName('P1HORCON').AsString;
   if query_ped_apur.FieldByName('P1DATCON').AsDateTime<=pdatanula then
      Frm_CEleOK.DATCON.Text        :='/  /'
   else
      Frm_CEleOK.DATCON.Text        :=FormatDateTime(fdt2, query_ped_apur.FieldByName('P1DATCON').AsDateTime);
   Frm_CEleOK.CODEMB.Text        :='';
   Frm_CEleOK.NOMEMB.Text        :='';
   if query_ped_apur.FieldByName('P1CODEMB').AsFloat>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',query_ped_apur.FieldByName('P1CODEMB').AsString) then
         begin
         Frm_CEleOK.CODEMB.Text:=query_ped_apur.FieldByName('P1CODEMB').AsString;
         Frm_CEleOK.NOMEMB.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if query_ped_apur.FieldByName('P1DATAEMB').AsDateTime<=pdatanula then
      Frm_CEleOK.DATEMB.Text     :='/  /'
   else
      Frm_CEleOK.DATEMB.Text     :=FormatDateTime(fdt2, query_ped_apur.FieldByName('P1DATAEMB').AsDateTime);
   Frm_CEleOK.HOREMB.Text        :=query_ped_apur.FieldByName('P1HOREMB').AsString;


   Frm_CEleOK.ShowModal;
   freeandnil(frm_celeOk);


   Frm_Cele.Tb_CeleRes.Filtered:=false;
   Tb_Celelei.close;
   razsoc.Text     :='';
   endereco.Text   :='';
   fantasia.Text   :='';
   bairro.Text     :='';
   CODCON.Text     :='';
   NOMCON.Text     :='';
   DATAP.Text      :='';
   DATAE.Text      :='';
   VALOR.Text      :='';
   CHAVE.Text      :='';
   Frm_CeleOk.Free;
   Frm_CeleOk:=nil;
   CHAVE.SetFocus;
   end
else
   begin
   if Frm_CeleR=nil  then
      Application.CreateForm(TFrm_CeleR, Frm_CeleR)
   else
      begin
      Frm_celer.Free;
      Frm_Celer:=nil;
      application.CreateForm(TFrm_CeleR, Frm_CeleR);
      end;

   Frm_CeleR.ShowModal;
   Frm_Cele.Tb_CeleRes.Filtered:=false;
   Tb_CEleLei.Last;
   Tb_CEleLei.Append;
   dbg_mercad.SetFocus;
   Frm_Celer.Free;
   Frm_Celer:=nil;
   end;
query_ped_apur.close;
freeandnil(query_ped_apur);

end;


procedure TFrm_CEle.dbg_mercadColEnter(Sender: TObject);
begin
If (dbg_mercad.SelectedField=Tb_CEleLeiCEQTD) and (Tb_CEleLei.State in [dsInsert, dsEdit]) then
   begin
   if trim(Tb_CEleLeiCECODBARN.AsString)<>'' then
      begin
      dbg_mercad.SelectedField:=Tb_CEleLeiCECODBARN;
      Tb_CEleLei.Append;
      end
   else
      dbg_mercad.SelectedField:=Tb_CEleLeiCECODBARN;

   end;

end;

procedure TFrm_CEle.SBn_PesqClick(Sender: TObject);
begin
Application.CreateForm(TFrm_PedCli, Frm_PedCli);
Frm_PedCli.Visible :=False;
Frm_PedCli.FormStyle:=fsNormal;
Frm_PedCli.ori_pedcli:='frm_Cele';
Frm_PedCli.ShowModal;
CHAVE.Text:=Frm_PedCli.chave.Text;
CHAVE.SetFocus;      
FreeAndNil(Frm_PedCli);
end;

procedure TFrm_CEle.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaUsr(0,'frm_CEle',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CEle.CODCONExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODCON.Text:=fdeixanum2(CODCON.Text);
if trim(CODCON.Text)<>'' then
   begin
   if flcadusr(1,0,CODCON.Text) then
      NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value
   else
      begin

      fmensagem('Usuário não Cadastrado!',0,['0'],0);

      CODCON.SetFocus;
      end;
   end
else
   NOMCON.Text:='';

end;

procedure TFrm_CEle.Tb_CEleLeiAfterCancel(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;


end;

procedure TFrm_CEle.Tb_CEleLeiBeforeEdit(DataSet: TDataSet);
begin
mqtdant:=Tb_CEleLeiCEQTD.Value;
mCodAnt:=Tb_CEleLeiCECODPRO.Value;

end;

procedure TFrm_CEle.Tb_CEleLeiBeforeInsert(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;

end;

procedure TFrm_CEle.Tb_CEleLeiBeforePost(DataSet: TDataSet);
begin

if Tb_CELELEICECODPRO.isnull then
   begin
   Tb_CELELEI.Cancel;
   abort;
   exit;
   end;
if Tb_CEleLeiCEQTD.AsFloat=0 then
   Tb_CEleLeiCEQTD.AsFloat:=1;


if cb_barrar.Checked then
   begin
   if not Tb_CeleRes.Locate('CECODPRO',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      fmensagem_Barrar('Produto: '+Tb_CEleLeiCECODBARN.AsString+' - '+Tb_CEleLeiPDNOME.AsString
                      +#13+'Produto não Encontrado no Pedido de Origem!'
                      +#13
                      +'Codigo lido: '+Tb_CEleLeiCECODBARN.AsString,0);
//      AvisoSonoro(3);
//      fmensagem('Produto não Encontrado no Pedido de Origem!',0,['0'],0);
      Tb_Celelei.Cancel;
      Tb_Celelei.Append;
      Abort;
      end
   else
      begin
      if mCodAnt<>Tb_CEleLeiCECODPRO.Value then
         begin
         if (Tb_CeleResCEQTDL.AsFloat+Tb_CEleLeiCEQTD.AsFloat)>Tb_CeleResCEQTDP.AsFloat then
            begin
            fmensagem_Barrar('Produto: '+Tb_CEleLeiCECODBARN.AsString+' - '+Tb_CEleLeiPDNOME.AsString+#13
                           +'Quantidade do Pedido: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDP.Value)+#13
                   +'Quantidade ja Lidas.: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDL.Value)+#13
                   +'inválido!',0);
{            fmensagem('Quantidade do Pedido: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDP.Value)+#13
                   +'Quantidade ja Lidas.: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDL.Value)+#13
                   +'inválido!',0,['0'],0);
}
            Tb_Celelei.Cancel;
            Tb_Celelei.Append;
            Abort;
            exit;
            end
         end
      else
         begin
         if (Tb_CeleResCEQTDL.AsFloat+Tb_CEleLeiCEQTD.AsFloat-mqtdant)>Tb_CeleResCEQTDP.AsFloat then
            begin
            fmensagem_Barrar('Produto: '+Tb_CEleLeiCECODBARN.AsString+' - '+Tb_CEleLeiPDNOME.AsString+#13
                            +'Quantidade do Pedido: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDP.Value)+#13
                   +'Quantidade ja Lidas.: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDL.Value)+#13
                   +'inválido!',0);
{
            AvisoSonoro(3);
            fmensagem('Quantidade do Pedido: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDP.Value)+#13
                   +'Quantidade ja Lidas.: '+FormatFloat(mcasqtd, Tb_CeleResCEQTDL.Value)+#13
                   +'inválido!',0,['0'],0);
}
            Tb_Celelei.Cancel;
            Tb_Celelei.Append;
            Abort;
            exit;
            end
         end;
      if (mcodant<>0) and (mCodAnt<>Tb_CEleLeiCECODPRO.Value) then
         begin
         Tb_CeleRes.Edit;
         Tb_CeleResCEQTDL.Value :=Tb_CeleResCEQTDL.Value+Tb_CEleLeiCEQTD.Value;
         Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value-Tb_CEleLeiCEQTD.Value;
         Tb_CeleRes.Post;
         if not Tb_CeleRes.Locate('CECODPRO',mCodAnt,[]) then
            begin
            Tb_CeleRes.Edit;
            Tb_CeleResCEQTDL.Value :=Tb_CeleResCEQTDL.Value-mqtdant;
            Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value+mqtdant;

            Tb_CeleRes.Post;
            end;
         end
      else
         begin
         Tb_CeleRes.Edit;
         Tb_CeleResCEQTDL.Value :=Tb_CeleResCEQTDL.Value+Tb_CEleLeiCEQTD.Value-mqtdant;
         Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value-Tb_CEleLeiCEQTD.Value+mqtdant;
         Tb_CeleRes.Post;
         end

      end;

   end;
end;

procedure TFrm_CEle.Tb_CEleLeiAfterPost(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;
end;

procedure TFrm_CEle.Tb_CEleLeiAfterDelete(DataSet: TDataSet);
begin
if cb_barrar.Checked then
   begin
   if Tb_CeleRes.Locate('CECODPRO',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      tb_CeleResCEQTDL.Value:=Tb_CeleResCEQTDL.Value-Tb_CEleLeiCEQTD.Value;
      Tb_CeleResCEDIFER.Value:=Tb_CeleResCEDIFER.Value+Tb_CEleLeiCEQTD.Value;
      Tb_CeleRes.Post;
      end;
   end;

end;

procedure TFrm_CEle.dbg_mercadColExit(Sender: TObject);
var
  pCodPro: String;
  mQtdRet:  tQtdCodPro;
begin
if Tb_CEleLei.State in [dsEdit,dsInsert] then
   begin

   if (dbg_mercad.SelectedField=Tb_CEleLeiCEQTD) and
       ( (trim(Tb_CEleLeiCECODBARN.AsString)='')
         or (Tb_CEleLeiCECODBARN.IsNull))  then
      dbg_mercad.SelectedField:=Tb_CEleLeiCECODBARN
   else if dbg_mercad.SelectedField=Tb_CEleLeiCECODBARN then
      begin
      mQtdRet:=fSeparaQtdCodproNovo(Tb_CEleLeiCECODBARN.AsString);
      Tb_CEleLeiCECODBARN.AsString:=FloatToStr(mQtdRet.codigo);
      mCodLido:=Tb_CEleLeiCECODBARN.AsString;
      if not Tb_CEleLeiCECODBARN.IsNull then
         begin
         if length(Tb_CEleLeiCECODBARN.AsString)>13 then
            begin
            Tb_CEleLeiCECODBARN.Value:=fVerificaCodigoGrande(Tb_CEleLeiCECODBARN.AsString);
            if mDtVcto>pdatanula then
               Tb_CEleLeiCEDTVCTO.AsDateTime:=mDtVcto;
            if trim(mLoteProd)<>''  then
               Tb_CEleLeiCELOTE.AsString:=mLoteProd;
            if mQtdCaixa<>0 then
               Tb_CEleLeiCEQTD.Value:=mQtdCaixa;
            end;
         if (trim(Tb_CeleleiCECODBARN.asstring)='') or (length(Tb_CEleLeiCECODBARN.AsString)<=13)  then
           begin
           if not flcadpro(3,0,0,mCodLido) then
             begin
             if not flcadpro(1,0,0,mCodLido) then
                begin
                pCodPro:=FloatToStr(fAchaCodigoOri(mCodLido));
                end
             else
                begin
                pCodPro:=DM1.Tb_ProPDCODPRO.AsString;
                end;
             end
           else
             begin
             pCodPro:=DM1.Tb_ProPDCODPRO.AsString;             
             end;
           end;
         Tb_CEleLeiCECODBARN.AsString:=mCodLido;
         Tb_CEleLeiCECODPRO.asstring:=pCodPro;
         Tb_CEleLeiCEQTD.AsFloat:=pRet_Qtd;

         if trim(Tb_CEleLeiCECODPRO.asstring)='' then
            begin
            fmensagem_Barrar('Codigo Inexistente'+#13
                         +'Codigo lido: '+mCodLido,0);
            if dbg_mercad.SelectedField=Tb_CEleLeiCECODBARN then
               begin
               Tb_Celelei.Cancel;
               Tb_Celelei.Append;
               abort;
               end;
            end;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select PDNOME,PDCODBAR,PDCODPRO from CADPRO where ');
         if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
            DM1.Query1.SQL.Add(' PDCODBAR=0'+Tb_CEleLeiCECODBARN.AsString)
         else
            DM1.Query1.SQL.Add(' PDCODEMP=0'+IntTostr(codemp)
                           +' and PDCODBAR=0'+Tb_CEleLeiCECODBARN.AsString);
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select PDNOME,PDCODBAR,PDCODPRO from CADPRO where ');
            if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
               DM1.Query1.SQL.Add(' PDCODPRO=0'+Tb_CEleLeiCECODPRO.AsString)
            else
              DM1.Query1.SQL.Add(' PDCODEMP=0'+IntTostr(codemp)
                              +' and PDCODPRO=0'+Tb_CEleLeiCECODPRO.AsString);
            DM1.Query1.Open;
            end;
         Tb_CEleLeiPDNOME.Value:=DM1.Query1.Fields[0].AsString;
         Tb_CEleLeiCECODPRO.Value:=DM1.Query1.Fields[2].AsFloat;
         Tb_CEleLeiCEQTD.Value:=iif(Tb_CEleLeiCEQTD.Value<=0,1,Tb_CEleLeiCEQTD.Value)*iif(mQtdRet.qtde<=0,1,mQtdRet.qtde);

//         Tb_CEleLei.Post;
         end;
      end;
   end;

end;

procedure TFrm_CEle.FormCreate(Sender: TObject);
begin
tsConfiguracoes.TabVisible:=codusr=1111;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Tb_CeleResVAR_PERC_CALCULADA.DisplayFormat := mcasccus;
end;

procedure TFrm_CEle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CEle.dbg_mercadExit(Sender: TObject);
begin
if Tb_CEleLei.State in [dsEdit,dsInsert] then
   Tb_CEleLei.Post;
end;

procedure TFrm_CEle.CODSEPExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODSEP.Text:=fdeixanum2(CODSEP.Text);
if trim(CODSEP.Text)<>'' then
   begin
   if flcadusr(1,0,CODSEP.Text) then
      begin
      NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;
      mCodSep_Ant:=DM4.Tb_UsrCODUSR.Value;
      end
   else
      begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      CODSEP.SetFocus;
      end;
   end
else
   NOMSEP.Text:='';



end;

procedure TFrm_CEle.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSEP.Text:=fChamaUsr(0,'frm_CEle',Key);
   if trim(CODSEP.Text)<>'' then
      CODSEPExit(Self);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

function TFrm_CEle.fVerificaCodigoGrande(pCodigo: String): String;
begin
mDtVcto  :=pdatanula;
mQtdCaixa:=0;
mLoteProd:='';

if length(pCodigo)<15 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDNOME,PDCODBAR,PDEMBPAD,PDCODPRO from CADPRO where ');
   if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      DM1.Query1.SQL.Add(' PDCODBAR_EMBPAD='+chr(39)+pCodigo+chr(39))
   else
      DM1.Query1.SQL.Add(' PDCODEMP=0'+IntTostr(codemp)
                     +' and PDCODBAR_EMBPAD=0'+chr(39)+pCodigo+chr(39));
   DM1.Query1.Open;
   Result:=DM1.Query1.fieldbyName('PDCODBAR').AsString;
   mQtdCaixa:=DM1.Query1.fieldByName('PDEMBPAD').AsFloat;
   if mQtdCaixa<=0 then
      mQtdCaixa:=1;
   exit;
   end;
mcinst2:=IntToStr(length(pCodigo));
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.SQL.add('SELECT fcodfor, '
                  +' fcb_tam,fcb_poscod,fcb_tamcod,fcb_posvct,fcb_tamvct,fcb_tamqtd,fcb_posqtd '
                  +' ,fcb_tamlot,fcb_poslot from cadfor where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP=0'+IntTostr(codemp)+' and ')
                  +' FCB_TAM=0'+mcinst2);
DM1.Query2.Open;
if DM1.Query2.Eof then
   result   :=''
else
   begin
   While not DM1.Query2.Eof do
      begin
      if (DM1.Query2.FieldByName('FCB_POSCOD').AsFloat=0) or (DM1.Query2.FieldByName('FCB_TAMCOD').AsFloat=0) then
         begin
         DM1.Query2.Next;
         Continue;
         end
      else
         begin
         mcinst4:=copy(pCodigo,DM1.Query2.fieldbyName('FCB_POSCOD').AsInteger
                              ,DM1.Query2.fieldbyName('FCB_TAMCOD').AsInteger);
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select PDNOME,PDCODBAR,PDCODPRO from CADPRO where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                           +' PDCODBAR=0'+mcinst4
                           +' and PDCODFOR=0'+DM1.Query2.fieldbyName('FCODFOR').AsString);
         DM1.Query1.Open;
         if not DM1.Query1.Eof then
            begin
            if (DM1.Query2.FieldByName('FCB_POSVCT').AsFloat<>0) and
               (DM1.Query2.FieldByName('FCB_TAMVCT').AsFloat<>0) then
               begin
               mcinst:=copy(pCodigo,DM1.Query2.fieldByName('FCB_POSVCT').AsInteger,02);
               mcinst:=mcinst+'/'+copy(pCodigo,DM1.Query2.fieldByName('FCB_POSVCT').AsInteger+2,02);
               mcinst:=mcinst+'/'+copy(pCodigo,DM1.Query2.fieldByName('FCB_POSVCT').AsInteger+4,02);
               try
                  mDtVcto:=StrToDate(mcinst)
               except
                  mDtVcto:=pdatanula;
                  end;
               end;
            if (DM1.Query2.FieldByName('FCB_POSQTD').AsFloat<>0) and
               (DM1.Query2.FieldByName('FCB_TAMQTD').AsFloat<>0) then
               begin
               mQtdCaixa:=valFloat(copy(pCodigo,DM1.Query2.fieldByName('FCB_POSQTD').AsInteger
                                      ,DM1.Query2.fieldByName('FCB_TAMQTD').AsInteger));
               end;
            if (DM1.Query2.FieldByName('FCB_POSLOT').AsFloat<>0) and
               (DM1.Query2.FieldByName('FCB_TAMLOT').AsFloat<>0) then
               begin
               mLoteProd:=copy(pCodigo,DM1.Query2.fieldByName('FCB_POSLOT').AsInteger
                                      ,DM1.Query2.fieldByName('FCB_TAMLOT').AsInteger);
               end;
            Result:=DM1.Query1.fieldbyName('PDCODBAR').AsString;
            break;
            exit;
            end
         else
            begin
            DM1.Query2.Next;
            end;
         end;
      end;
   end;
end;
procedure TFrm_CEle.dbg_mercadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
qtdstring: String;
begin
if key=120 then
   begin

   qtdstring:=InputBox('Quantidade do Item', 'Informe a Quantidade:','');
   if valfloat(qtdstring)<0 then
      qtdstring:='1';
   if not (Tb_CEleLei.State in [dsEdit,dsInsert]) then
      Tb_CEleLei.Append;
   Tb_CEleLeiCEQTD.Value:=ValFloat(qtdstring);
   end;
end;

procedure TFrm_CEle.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CEle.BitBtn1Click(Sender: TObject);
begin
fDeletaPadroes(0,'_CELE_VARMENOR','EDT_VAR_PERC_MENOR');
fGravaPadroes(0,'EDT_VAR_PERC_MENOR'   ,'itemindex',  '_CELE_VARMENOR',edt_var_perc_menor.Text);

fDeletaPadroes(0,'_CELE_VARMENORUNID','EDT_VARMENORUNID');
fGravaPadroes(0,'EDT_VARMENORUNID'   ,'itemindex',  '_CELE_VARMENORUNID',edt_var_menor_unid.Text);
MessageDlg('Dados Padrao Gravado!',mtInformation,[mbOk],0);


mVarPercMenor := valfloat(edt_var_perc_menor.Text);
mVarMenorUnid := valfloat(edt_var_menor_unid.Text);

end;

procedure TFrm_CEle.edt_var_perc_menorExit(Sender: TObject);
begin
edt_var_perc_menor.Text:=FormatFloat(mcasas_pct, valfloat(edt_var_perc_menor.Text) );

end;


procedure TFrm_CEle.fLerVariacoesPadrao;
var
mQtdDelPv: integer;
x_var: integer;
begin
/// inicio
if flfilpad(0,'_CELE_VARMENOR','EDT_VAR_PERC_MENOR') then
  begin
  edt_var_perc_menor.Text := DM4.Tb_FilPad2FPVALOR.AsString;
  mVarPercMenor := valfloat(edt_var_perc_menor.Text);
  end;

   
if flfilpad(0,'_CELE_VARMENORUNID','EDT_VARMENORUNID') then
  begin
  edt_var_menor_unid.Text := DM4.Tb_FilPad2FPVALOR.AsString;
  mVarMenorUnid:= valfloat(edt_var_menor_unid.Text);
  end;

if ((valfloat(edt_var_perc_menor.Text)>0) and (trim(edt_var_menor_unid.Text)<>'')) then
   begin
   mQtdDelPv:=fQtd_PV(edt_var_menor_unid.text);
   SetLength(VariacaoMenorUnidades,mQtdDelPv);
   for x_var:=0 to mQtdDelPv-1 do
      begin
      VariacaoMenorUnidades[x_var] :=  trim(fBuscarValor_delpv(x_var+1,edt_var_menor_unid.text));
      end;
   end;   

end;

/// termino

procedure TFrm_CEle.FormShow(Sender: TObject);
begin
pagecontrol1.activepageindex:=0;
fLerVariacoesPadrao;
end;
procedure TFrm_CEle.fCalcularVariacaoMenor();
var
mBookMarck: TBookmark;
begin


if mVarPercMenor<>0 then
   begin

    mBookMarck:=Tb_CeleRes.GetBookmark;
    Tb_CeleRes.DisableControls;
    Tb_CeleRes.First;
    While not Tb_CeleRes.Eof do
       begin
       Tb_CeleRes.edit;
       Tb_CeleResVAR_MENOR_ACEITA.AsFloat :=0;
       Tb_CeleResVAR_PERC_CALCULADA.AsFloat :=0;

      if AnsiIndexText(trim(Tb_CeleResPDUND.AsString), VariacaoMenorUnidades)>-1 then
         begin
         Tb_CeleResVAR_MENOR_ACEITA.AsFloat := (Tb_CeleResCEQTDP.AsFloat * mVarPercMenor) / 100;
         Tb_CeleResVAR_PERC_CALCULADA.AsFloat := ((Tb_CeleResCEQTDL.AsFloat*100) /  Tb_CeleResCEQTDP.AsFloat);
         end;


      if Tb_CeleResCEDIFER.AsFloat<>0 then
         begin
         if (Tb_CeleResVAR_MENOR_ACEITA.AsFloat>0) and
            (Tb_CeleResCEQTDL.AsFloat>=Tb_CeleResVAR_MENOR_ACEITA.AsFloat)
            and (Tb_CeleResCEQTDL.AsFloat<=Tb_CeleResCEQTDP.AsFloat)

             then
            Tb_CeleResCEDIFER.value:=0;
         end;
      Tb_CeleRes.Post;
      Tb_CeleRes.Next;
      end;
    Tb_CeleRes.GotoBookmark(mBookMarck);
    Tb_CeleRes.EnableControls;

   end;

end;
end.
