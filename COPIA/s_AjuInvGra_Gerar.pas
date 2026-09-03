unit s_AjuInvGra_Gerar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RXDBCtrl, Buttons,db,dbtables;

type
  TFrm_AjuInvGra_Gerar = class(TForm)
    Label1: TLabel;
    edt_nominv: TEdit;
    Label2: TLabel;
    bbGerarNovo: TBitBtn;
    bbSair: TBitBtn;
    edt_datainv: TDateEdit;
    cbAjustes: TCheckBox;
    Label3: TLabel;
    CB_TIPOPRECO: TComboBox;
    Label4: TLabel;
    edt_datainv_oriigem: TDateEdit;
    Label5: TLabel;
    edt_nominv_origem: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cb_locais: TComboBox;
    bbNovoHistorico: TBitBtn;
    cb_manter_se_negativo: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbGerarNovoClick(Sender: TObject);
    procedure bbNovoHistoricoClick(Sender: TObject);
  private
    { Private declarations }
    mcodemp_filial_logado: integer;

    procedure fGerarNovoNormal;

    procedure fGerarNovoGrade;


    function fRetornarFiltros: String;


    function fGerarInvGraGD03(pOrigem,pDestino: String): Boolean;

  public
    { Public declarations }
    mcomgrade: boolean;
  end;

var
  Frm_AjuInvGra_Gerar: TFrm_AjuInvGra_Gerar;

implementation

uses S_DM1, Func, func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_AjuInvGra_Gerar.FormCreate(Sender: TObject);
begin
edt_nominv.Text:='';

edt_datainv.Date:=Date;
    mcomgrade:=false;


cb_locais.items.clear;
if fLerGenerico_query('CADPRO_FILIAL','CFNOME,CFFILIAL','CFCODEMP=0'+inttostr(codemp)+' ORDER BY CFFILIAL',query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      cb_locais.Items.Add(query_consulta.fieldbyname('CFNOME').AsString+' ['+query_consulta.FieldbyName('CFFILIAL').AsString+']');
      query_consulta.Next;
      end;
   end;

if cb_locais.Items.Count>0 then
   cb_locais.itemindex:=0;
end;

procedure TFrm_AjuInvGra_Gerar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuInvGra_Gerar.bbGerarNovoClick(Sender: TObject);
begin
if trim(edt_nominv.Text)='' then
   begin
   MessageDlg('Nome do inventario é obrigatorio!',mtWarning,[mbOk],0);
   edt_nominv.Text;
   exit;
   end;
mcodemp_filial_logado:=valint(fExtraiCodigoEntreChaves(cb_locais.Text));
if mcodemp_filial_logado<1 then
   begin
   MessageDlg('Local de Armazenagem '+cb_locais.Text+' não é um local valido!',mtWarning,[mbOk],0);
   exit;
   end;

if mcomgrade=true then
   fGerarNovoGrade
else
   fGerarNovoNormal;


end;


procedure TFrm_AjuInvGra_Gerar.fGerarNovoNormal;

var
query_temp: tQuery;
mCampo_Preco: String;

mCampoP2QTD: String;
mCampoPF2QTDP: String;
mCampoAJQTD: String;


begin
try
   edt_datainv.Text:=FormatDateTime(fdt2, StrtoDate(edt_datainv.Text));
except
   edt_datainv.Date:=Date;
   end;
if edt_datainv_oriigem.Date>edt_datainv.Date then
   begin
   mCampoP2QTD  :='(P2QTD*-1)';
   mCampoPF2QTDP:= '(PF2QTDP*-1)';
   mCampoAJQTD  := '(AJQTD*-1)';
   end
else
   begin
   mCampoP2QTD  :='P2QTD';
   mCampoPF2QTDP:='PF2QTDP';
   mCampoAJQTD  :='AJQTD';
   end;

if CB_TIPOPRECO.ItemIndex=6 then
   mCampo_Preco:='PDPCOFAB'
else if CB_TIPOPRECO.ItemIndex=5 then
   mCampo_Preco:='PDUCPR'
else if CB_TIPOPRECO.ItemIndex=4 then
   mCampo_Preco:='PDPCOMC'
else if CB_TIPOPRECO.ItemIndex=3 then
   mCampo_Preco:='PDPRECOC'
else if CB_TIPOPRECO.ItemIndex=2 then
   mCampo_Preco:='PDPRECO3'
else if CB_TIPOPRECO.ItemIndex=1 then
   mCampo_Preco:='PDPRECO2'
else
   mCampo_Preco:='PDPRECO1';

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('select UNIQUE IGNOMEINV,IGDATAEMI from INVGRA where '
                  +' IGCODEMP=:CODEMP and IGNOMEINV=:NOMEINV ');
query_temp.ParamByName('CODEMP').AsInteger:=codemp;
query_temp.ParamByName('NOMEINV').AsString:=edt_nominv.Text;
query_temp.Open;
if not query_temp.IsEmpty then
  begin
  MessageDlg('Inventario '+edt_nominv.Text+' ja existente data '+FormatDateTime(fdt2, query_temp.fieldbyname('IGDATAEMI').AsDateTime ),mtInformation,[mbOk],0);
  FreeAndNil(query_temp);
  Exit;
  end;
//if edt_datainv.Date>=Date then
   begin
   if not fLerGenerico_query('INVGRA','IGNOMEINV','IGCODEMP=0'+IntToStr(codemp)+' and IGNOMEINV='+QuotedStr(edt_nominv_origem.text),query_consulta) then
      begin
      MessageDlg('Inventario de Origem Inexistente!',mtWarning,[mbOk],0);
      exit;
      end;
   query_temp.close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Insert into INVGRA ('
                    +'IGCODEMP, '
                    +'IGNOMEINV, '
                    +'IGCODPRO, '
                    +'IGSIT, '
                    +'IGCODTIP, '
                    +'IGPRECO, '
                    +'IGQTD, '
                    +'IGVALOR_TRANSP, '
                    +'IGDATAEMI '
                    +') select '
                    +IntToStr(codemp)
                    +',:NOMEINV_NOVO '
                    +',IGCODPRO,PDSIT,PDCODTIP,PDPRECO1'
                    +',sum(IGQTD) AS QTD,0,:DATAINVENTARIO '
                    +' from ( '
                    +' select IGCODPRO,IGQTD,'+QuotedStr('INVINI')+' AS ORIGEM '
                    +'  from invgra where IGNOMEINV=:NOMEINV_ORIGEM'
                    +' union all'
                    +' select  p2codpro as CODPRO '
                    +'        , sum(decode(p1tipo_entsai,1,'+mCampoP2QTD+','+mCampoP2QTD+'*-1)) as QTD '
                    +'        , '+QuotedStr('PEDVEN')+' AS ORI '
                    +'       from cadp02, cadp01 '
                    +'  where p1datap>:DATAINV_ORIGEM '
                    +'  and P1DATAP<:DATAINV_NOVO'
                    +'   and p1tipo>0 and p1status<'+mstatus_excluido+' and p1tipo<>10 and P1FILIAL='+inttostr(mcodemp_filial_logado)
                    +' and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq and p1ordem=p2ordem '
                    +' group by  p2codpro '
                    +' union all '
                    +' select  pf2codpro as CODPRO, sum('+mCampoPF2QTDP+') as QTD '
                    +'  , '+QuotedStr('PEDCPR')+' as ori '
                    +'  from cadpf2, cadpf1 '
                    +'  where pf1codemp=pf2codemp and pf1chave=pf2chave and pf1lotseq=pf2lotseq '
                    +'  and PF1STATUS>0 and PF1STATUS<8 and PF1TIPO<2 and PF1DATAENT>:DATAINV_ORIGEM '
                    +'  and PF1DATAENT<=:DATAINV_NOVO '
                    +'  and PF1FILIAL='+inttostr(mcodemp_filial_logado)
                    +'  group by  pf2codpro ');
  if not cbAjustes.Checked then
     begin
     query_temp.SQL.Add('  union all '
                    +' select  ajcodpro as COD, sum(decode(ajtipom,1,'+mCampoAJQTD+'*-1,'+mCampoAJQTD+')) as QTD , '+QuotedStr('AJUSTES')+' as oriGEM '
                    +' from cadaju where ajdata>:DATAINV_ORIGEM  and AJDATA<=:DATAINV_NOVO'
                    +'  and AJFILIAL='+inttostr(mcodemp_filial_logado)
                    +'  group by ajcodpro ');
     end;
  query_temp.SQL.Add('  ),CADPRO ');

  query_temp.SQL.Add('  where PDCODPRO=IGCODPRO '
                    +'  group by IGCODPRO,PDSIT,PDPRECO1,PDCODTIP '
                    +' ORDER BY IGCODPRO ');
   Query_temp.ParamByName('NOMEINV_ORIGEM').Value :=edt_nominv_origem.Text;
   query_temp.ParamByName('NOMEINV_NOVO').Value   :=edt_nominv.Text;
   if edt_datainv_oriigem.Date>edt_datainv.Date then
      begin
      query_temp.ParamByName('DATAINV_ORIGEM').AsDateTime:=edt_datainv.Date;
      query_temp.ParamByName('DATAINV_NOVO').AsDateTime:=edt_datainv_oriigem.Date;


      end
   else
      begin
      query_temp.ParamByName('DATAINV_ORIGEM').AsDateTime:=edt_datainv_oriigem.Date;
      query_temp.ParamByName('DATAINV_NOVO').AsDateTime:=edt_datainv.Date;
      end;
   query_temp.ParamByName('DATAINVENTARIO').AsDateTime:=edt_datainv.Date;

   try
     query_temp.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
     ex_erroSql_Novo(query_temp,111,'func Erro:'+e.Message ,'INVGRA');
     end;
   end;
{
else
   begin
   query_temp.close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Insert into INVGRA ('
                    +'IGCODEMP, '
                    +'IGNOMEINV, '
                    +'IGCODPRO, '
                    +'IGSIT, '
                    +'IGCODTIP, '
                    +'IGPRECO, '
                    +'IGQTD,  '
                    +'IGVALOR_TRANSP, '
                    +'IGDATAEMI '
                    +') select '
                    +IntToStr(codemp)
                    +',:NOMEINV '
                    +',PDCODPRO'
                    +',PDSIT'
                    +',PDCODTIP'
                    +','+mCampo_Preco
                    +', PDSALDO  + NVL(QTD,0) SALDO_ANT '
                    +',0 '
                    +',:DATAEMI '
                    +' from ( '
                    +' select COD, sum(QTD) as QTD from ( '
//                    +' select 0 as chave, pdcodpro as cod, pdSALDO as qtd, '+QuotedStr('CADPRO')+' AS ORI  from cadpro union '
                    +' select  p2codpro as COD, sum(decode(p1tipo_entsai,1,'+mCampoP2QTD)+'*-1,p2qtd)) as QTD, '+QuotedStr('PEDVEN')+' as ori '
                    +' from cadp02, cadp01 '
                    +' where p1datap>=:DATAEMI  and p1tipo>0 and p1status<'+mstatus_excluido+' and p1tipo<>10 '
                    +' and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq and p1ordem=p2ordem '
                    +' group by  p2codpro '
                    +' union all '
                    +' select  pf2codpro as COD, sum(pf2qtdp*-1) as QTD , '+QuotedStr('PEDCPR')+' as ori '
                    +' from cadpf2, cadpf1 '
                    +' where pf1codemp=pf2codemp and pf1chave=pf2chave and pf1lotseq=pf2lotseq '
                    +' and PF1STATUS>0 and PF1STATUS<8 and PF1TIPO<2 and PF1DATA>=:DATAEMI '
                    +' group by  pf2codpro ');
  if not cbAjustes.Checked then
     begin
     query_temp.SQL.Add(' union all  '
                      +' select  ajcodpro as COD, sum(decode(ajtipom,1,ajqtd*-1,ajqtd)*-1) as QTD , '+QuotedStr('AJUSTES')+' as ori '
                      +' from cadaju where ajdata>=:DATAEMI '
                      +' group by ajcodpro ');
     end;
  query_temp.SQL.Add(' ) group by cod), cadpro where cod(+)=pdcodpro ');
  query_temp.ParamByName('NOMEINV').Value     :=edt_nominv.Text;
  query_temp.ParamByName('DATAEMI').AsDateTime:=edt_datainv.Date;
  try
    query_temp.ExecSQL;
    fdm1StartCommit;
  except on e : exception do
    ex_erroSql_Novo(query_temp,111,'func Erro:'+e.Message ,'INVGRA');
    end;
  end;

}

//  ex_erroSql_Novo(query_temp,111,'func Erro:' ,'INVGRA');

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('select UNIQUE IGNOMEINV,IGDATAEMI from INVGRA where '
                  +' IGCODEMP=:CODEMP and IGNOMEINV=:NOMEINV ');
query_temp.ParamByName('CODEMP').AsInteger:=codemp;
query_temp.ParamByName('NOMEINV').AsString:=edt_nominv.Text;
query_temp.Open;
if query_temp.IsEmpty then
    MessageDlg('ERRO AO GRAVAR Inventario '+edt_nominv.Text+'!' ,mtError,[mbOk],0)
else
    MessageDlg('Inventario '+edt_nominv.Text+' Gravado!' ,mtInformation,[mbOk],0);

FreeAndNil(query_temp);


end;




procedure TFrm_AjuInvGra_Gerar.fGerarNovoGrade;

var
query_temp: tQuery;
mCampo_Preco: String;

mFiltros: String;
mchave_inv_orig: string;
mFatorEntra: String;
mFatorSaida: String;
mDataInicio: Tdatetime;
mDataFinal: TDatetime;

mCampoP2QTD: String;
mCampoPF2QTDP: String;
mCampoAJQTD: String;


begin
try
   edt_datainv.Text:=FormatDateTime(fdt2, StrtoDate(edt_datainv.Text));
except
   edt_datainv.Date:=Date;
   end;
if edt_datainv_oriigem.Date>edt_datainv.Date then
   begin
   mFatorEntra:='-1';
   mFatorSaida:='1';
   mDataInicio:=edt_datainv.Date;
   mDataFinal :=edt_datainv_oriigem.Date;
   end
else
   begin
   mFatorEntra:='1';
   mFatorSaida:='-1';
   mDataInicio:=edt_datainv_oriigem.Date;
   mDataFinal :=edt_datainv.Date;
   end;


if edt_datainv_oriigem.Date>edt_datainv.Date then
   begin
   mCampoP2QTD  :='(P2QTD*-1)';
   mCampoPF2QTDP:= '(PF2QTDP*-1)';
   mCampoAJQTD  := '(AJQTD*-1)';
   end
else
   begin
   mCampoP2QTD  :='P2QTD';
   mCampoPF2QTDP:='PF2QTDP';
   mCampoAJQTD  :='AJQTD';
   end;
   

if CB_TIPOPRECO.ItemIndex=6 then
   mCampo_Preco:='PDPCOFAB'
else if CB_TIPOPRECO.ItemIndex=5 then
   mCampo_Preco:='PDUCPR'
else if CB_TIPOPRECO.ItemIndex=4 then
   mCampo_Preco:='PDPCOMC'
else if CB_TIPOPRECO.ItemIndex=3 then
   mCampo_Preco:='PDPRECOC'
else if CB_TIPOPRECO.ItemIndex=2 then
   mCampo_Preco:='PDPRECO3'
else if CB_TIPOPRECO.ItemIndex=1 then
   mCampo_Preco:='PDPRECO2'
else
   mCampo_Preco:='PDPRECO1';




query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('select UNIQUE IGNOMEINV,IGDATAEMI from INVGRA_GD where '
                  +' IGCODEMP=:CODEMP and IGNOMEINV=:NOMEINV ');
query_temp.ParamByName('CODEMP').AsInteger:=codemp;
query_temp.ParamByName('NOMEINV').AsString:=edt_nominv.Text;
query_temp.Open;
if not query_temp.IsEmpty then
  begin
  MessageDlg('Inventario '+edt_nominv.Text+' ja existente data '+FormatDateTime(fdt2, query_temp.fieldbyname('IGDATAEMI').AsDateTime ),mtInformation,[mbOk],0);
  FreeAndNil(query_temp);
  Exit;
  end;
//if edt_datainv.Date>=Date then
   begin
   if not fLerGenerico_query('INVGRA_GD','IGNOMEINV','IGCODEMP=0'+IntToStr(codemp)+' and IGNOMEINV='+QuotedStr(edt_nominv_origem.text),query_consulta) then
      begin
      MessageDlg('Inventario de Origem Inexistente!',mtWarning,[mbOk],0);
      exit;
      end;


   mchave_inv_orig:=edt_nominv_origem.text;


   mFiltros:=fRetornarFiltros;

   query_temp.close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Insert into INVGRA_GD ('
                    +'IGCODEMP '
                    +',IGNOMEINV '
                    +',IGSIT '
                    +',IGCODTIP '
                    +',IGVALOR_TRANSP '
                    +',IGDATAEMI '
                    +',IGPRECO '
                    +',IGCODPRO '

                    +',IGQTD '
                    +',IGGRADE '
                    +',IGDTVCTO '
                    +',IGFILIAL '

                    +') select '
                    +IntToStr(codemp)
                    +',:NOMEINV_NOVO '
                    +',PDSIT,PDCODTIP,0 as valor_transporte '
                    +',:DATAINV_NOVO '
                    +',PDPRECO1'
                    +',IGCODPRO '
                    +',sum(IGQTD) as qtd '
                    +',IGGRADE as lote '
                    +',IGDTVCTO as dtvcto '
                    +','+inttostr(mcodemp_filial_logado)+' as IGFILIAL '
                    +' from ('

                    +' select IGCODPRO, '
                    +' IGQTD,'+QuotedStr('INVINI')+' AS ORIGEM '
                    +',IGGRADE,IGDTVCTO '
                    +' FROM INVGRA_GD'+iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=IGCODPRO and '+mFiltros+' and ')
                      +' IGNOMEINV=:NOMEINV_ORIGEM '
                    +' union all '


                    +' select  p2lm_codpro as CODPRO '
                    +'        , sum(decode(p1tipo_entsai,1,p2lm_qtd*'+mFatorEntra+',p2lm_qtd*'+mFatorSaida+')) as QTD '
                    +'        , '+QuotedStr('PEDVEN')+' AS ORI '
                    +'        ,p2lm_lote,p2lm_dtvcto '
                    +'       from cadp02_lotes, cadp01,CADP02 '

                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=P2LM_CODPRO and '+mFiltros+' and ')

                    +'  p1datap>=:DATAINV_ORIGEM '
                    +'  and P1DATAP<=:DATAINV_NOVO'
                    +'   and p1tipo>0 and p1status<'+mstatus_excluido+' and p1tipo<>10 '
                    +' and p1chave=p2lm_chave and p1codemp=p2lm_codemp and p1lotseq=p2lm_lotseq  '
                    +' and p2chave=p2lm_chave and p2codemp=p2lm_codemp and p2lotseq=p2lm_lotseq  AND P2CODPRO=P2LM_CODPRO AND P2ITEM=P2LM_ITEM '

                    +' and P1FILIAL='+Inttostr(mcodemp_filial_logado)
                    +' group by  p2lm_codpro,p2lm_lote,p2lm_dtvcto '
// devolver mercdorias que foram excluidos pedidos excluidos


                    +' union all '


                    +' select  p2lm_codpro as CODPRO '
                    +'        , sum(decode(p1tipo_entsai,1,p2lm_qtd*'+mFatorEntra+',p2lm_qtd*'+mFatorEntra+' )) as QTD '
                    +'        , '+QuotedStr('PEDVEN')+' AS ORI '
                    +'        ,p2lm_lote,p2lm_dtvcto '
                    +'       from cadp02_lotes, cadp01,CADP02 '

                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=P2LM_CODPRO and '+mFiltros+' and ')

                    +'  (p1datap<=:DATAINV_ORIGEM and P1DTMOD>=:DATAINV_ORIGEM) '
                    +'  and P1DTMOD<=:DATAINV_NOVO'
                    +'   and p1tipo>0 and p1status>='+mstatus_excluido+' and p1tipo<>10 '
                    +' and p1chave=p2lm_chave and p1codemp=p2lm_codemp and p1lotseq=p2lm_lotseq  '
                    +' and p2chave=p2lm_chave and p2codemp=p2lm_codemp and p2lotseq=p2lm_lotseq  AND P2CODPRO=P2LM_CODPRO AND P2ITEM=P2LM_ITEM '

                    +' and P1FILIAL='+Inttostr(mcodemp_filial_logado)
                    +' group by  p2lm_codpro,p2lm_lote,p2lm_dtvcto '

// termino dos pedidos excluidos


                    +' union all '
                    +' select  pf2l_codpro as CODPRO, sum(pf2l_qtd*'+mFatorEntra+') as QTD '
                    +'  , '+QuotedStr('PEDCPR')+' as ori '
                    +',pf2l_lote,pf2l_dtvcto '
                    +'  from cadpf2_lotes_orc, cadpf1 '
                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=PF2L_CODPRO and '+mFiltros+' and ')



                    +'   pf1codemp=pf2l_codemp and pf1chave=pf2l_chave and pf1lotseq=pf2l_lotseq '
                    +'  and PF1STATUS>0 and PF1STATUS<8 and PF1TIPO<2 and PF1DATAENT>=:DATAINV_ORIGEM '
                    +'  and PF1DATAENT<=:DATAINV_NOVO '
                    +' and PF1FILIAL='+Inttostr(mcodemp_filial_logado)

                    +'  group by  pf2l_codpro,pf2l_lote,pf2l_dtvcto ');

// ORDEM DE PRODUCAO MATERIAS PRIMAS

     query_temp.SQL.Add('  union all '

                    +' select  OP3_CODMAT as CODPRO '
                    +'        , sum(OP3_QTDUTIL*'+mFatorSaida+') as QTD '
                    +'        , '+QuotedStr('MP_OP')+' AS ORI '
                    +'        ,OP3_LOTE,OP3_DTVCTO '
                    +'       from cadop03, cadop01 '

                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=OP3_CODMAT and '+mFiltros+' and ')
                    +'  OP1_DATA>=:DATAINV_ORIGEM '
                    +'  and OP1_DATA<=:DATAINV_NOVO'
                    +'   and (OP1_SITMP>0 OR OP1_STATUS=2)  '
                    +' and OP1_CODEMP=OP3_CODEMP AND OP1_CODIGO=OP3_CODIGO  AND OP1_LOTSEQ=OP3_LOTSEQ   '
                    +' and OP1_LOCARMAZENAMENTO='+Inttostr(mcodemp_filial_logado)
                    +' group by  OP3_codMAT,OP3_LOTE,OP3_DTVCTO ');

// ORDEM DE PRODUCAO produtos acabados

     query_temp.SQL.Add('  union all '

                    +' select  OP2_CODPRO as CODPRO '
                    +'        , sum(OP2_QTDPROD*'+mFatorEntra+') as QTD '
                    +'        , '+QuotedStr('PA_OP')+' AS ORI '
                    +'        ,OP1_LOTE,OP1_DATAVEN '
                    +'       from cadop02, cadop01 '

                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=OP2_CODPRO and '+mFiltros+' and ')
                    +'  OP1_DATA>=:DATAINV_ORIGEM '
                    +'  and OP1_DATA<=:DATAINV_NOVO'
                    +'   and (OP1_SITACAB>0 OR OP1_STATUS=2)  '
                    +' and OP1_CODEMP=OP2_CODEMP AND OP1_CODIGO=OP2_CODIGO  AND OP1_LOTSEQ=OP2_LOTSEQ   '
                    +' and OP1_LOCARMAZENAMENTO='+Inttostr(mcodemp_filial_logado)
                    +' group by  OP2_codPRO,OP1_LOTE,OP1_DATAVEN ');


  if not cbAjustes.Checked then
     begin
     query_temp.SQL.Add('  union all '
                    +' select  ajcodpro as COD, sum(decode(ajtipom,1,'+mCampoAJQTD+'*'+mFatorSaida+','+mCampoAJQTD+'*'+mFatorEntra+')) as QTD , '+QuotedStr('AJUSTES')+' as oriGEM '
                    +',ajlote,ajdatav '
                    +' from cadaju '
                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=AJCODPRO and '+mFiltros+' and ')

                    +'  ajdata>=:DATAINV_ORIGEM  and AJDATA<=:DATAINV_NOVO'
                    +' and AJFILIAL='+Inttostr(mcodemp_filial_logado)

                    +'  group by ajcodpro,ajlote,ajdatav ),CADPRO ');
     end;
  query_temp.SQL.Add('  where PDCODPRO=IGCODPRO '
                    +'  group by IGCODPRO,PDSIT,PDPRECO1,PDCODTIP '
                   +',IGGRADE '
                   +',IGDTVCTO '

                    +' ORDER BY IGCODPRO ');
   Query_temp.ParamByName('NOMEINV_ORIGEM').Value :=edt_nominv_origem.Text;
   query_temp.ParamByName('NOMEINV_NOVO').Value   :=edt_nominv.Text;
   query_temp.ParamByName('DATAINV_ORIGEM').AsDateTime:=mDataInicio;
   query_temp.ParamByName('DATAINV_NOVO').AsDateTime:=mDataFinal;
   try
     query_temp.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
     ex_erroSql_Novo(query_temp,111,'func Erro:'+e.Message ,'INVGRA_GD');
     end;
   end;
fGerarInvGraGD03(edt_nominv_origem.Text,edt_nominv.Text);

{
else
   begin
   query_temp.close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Insert into INVGRA_GD ('
                    +'IGCODEMP '
                    +',IGNOMEINV '
                    +',IGSIT '
                    +',IGCODTIP '
                    +',IGVALOR_TRANSP '
                    +',IGDATAEMI '
                    +',IGPRECO '
                    +',IGCODPRO '

                    +',IGQTD '
                    +',IGGRADE '
                    +',IGDTVCTO '

                    +') select '
                    +IntToStr(codemp)
                    +',:NOMEINV_NOVO '
                    +',PDSIT,PDCODTIP,0 as valor_transporte '
                    +',:DATAINV_NOVO '
                    +',PDPRECO1'
                    +',IGCODPRO '
                    +',sum(IGQTD) as qtd '
                    +',IGGRADE as lote '
                    +',IGDTVCTO as dtvcto '
                    +' from ('

                    +' select IGCODPRO, '
                    +' IGQTD,'+QuotedStr('INVINI')+' AS ORIGEM '
                    +',IGGRADE,IGDTVCTO '
                    +' FROM INVGRA_GD where IGNOMEINV=:NOMEINV_ORIGEM'
                    +' union all '


                    +' select  p2lm_codpro as CODPRO '
                    +'        , sum(decode(p1tipo_entsai,1,p2lm_qtd,p2lm_qtd*-1)) as QTD '
                    +'        , '+QuotedStr('PEDVEN')+' AS ORI '
                    +'        ,p2lm_lote,p2lm_dtvcto '
                    +'       from cadp02_lotes, cadp01 '
                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=P2LM_CODPRO and '+mFiltros+' and ')


                    +'   p1datap>=:DATAINV_ORIGEM '
                    +'   and p1tipo>0 and p1status<'+mstatus_excluido+' and p1tipo<>10 '
                    +' and p1chave=p2lm_chave and p1codemp=p2lm_codemp and p1lotseq=p2lm_lotseq  '
                    +' and P1FILIAL='+Inttostr(mcodemp_filial_logado)

                    +' group by  p2lm_codpro,p2lm_lote,p2lm_dtvcto '
                    +' union all '
                    +' select  pf2l_codpro as CODPRO, sum(pf2l_qtd) as QTD '
                    +'  , '+QuotedStr('PEDCPR')+' as ori '
                    +',pf2l_lote,pf2l_dtvcto '
                    +'  from cadpf2_lotes_orc, cadpf1 '
                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=IGCODPRO and '+mFiltros+' and ')

                    +'  pf1codemp=pf2l_codemp and pf1chave=pf2l_chave and pf1lotseq=pf2l_lotseq '
                    +'  and PF1STATUS>0 and PF1STATUS<8 and PF1TIPO<2 '
                    +' and PF1DATAENT>=:DATAINV_ORIGEM '
                    +' and PF1FILIAL='+Inttostr(mcodemp_filial_logado)

                    +'  group by  pf2l_codpro,pf2l_lote,pf2l_dtvcto ');
  if not cbAjustes.Checked then
     begin
     query_temp.SQL.Add('  union all '
                    +' select  ajcodpro as COD, sum(decode(ajtipom,1,ajqtd,ajqtd)*-1*-1) as QTD , '+QuotedStr('AJUSTES')+' as oriGEM '
                    +',ajlote,ajdatav '
                    +' from cadaju '


                    +iif(mfiltros='',' where '
                                      ,',CADPRO where PDCODPRO=IGCODPRO and '+mFiltros+' and ')
                    +' ajdata>=:DATAINV_ORIGEM '
                    +' and AJFILIAL='+Inttostr(mcodemp_filial_logado)

                    +'  group by ajcodpro,ajlote,ajdatav ),CADPRO ');
     end;
  query_temp.SQL.Add('  where PDCODPRO=IGCODPRO '
                    +'  group by IGCODPRO,PDSIT,PDPRECO1,PDCODTIP '
                   +',IGGRADE '
                   +',IGDTVCTO '

                    +' ORDER BY IGCODPRO ');
   Query_temp.ParamByName('NOMEINV_ORIGEM').Value :=edt_nominv_origem.Text;
   query_temp.ParamByName('NOMEINV_NOVO').Value   :=edt_nominv.Text;
   query_temp.ParamByName('DATAINV_ORIGEM').AsDateTime:=edt_datainv_oriigem.Date;
   query_temp.ParamByName('DATAINV_NOVO').AsDateTime:=edt_datainv.Date;
   try
     query_temp.ExecSQL;
     fdm1StartCommit;
   except on e : exception do
     ex_erroSql_Novo(query_temp,111,'func Erro:'+e.Message ,'INVGRA_GD');
     end;
  end;

}

//  ex_erroSql_Novo(query_temp,111,'func Erro:' ,'INVGRA');

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('select UNIQUE IGNOMEINV,IGDATAEMI from INVGRA_GD where '
                  +' IGCODEMP=:CODEMP and IGNOMEINV=:NOMEINV ');
query_temp.ParamByName('CODEMP').AsInteger:=codemp;
query_temp.ParamByName('NOMEINV').AsString:=edt_nominv.Text;
query_temp.Open;
if query_temp.IsEmpty then
    MessageDlg('ERRO AO GRAVAR Inventario '+edt_nominv.Text+'!' ,mtError,[mbOk],0)
else
    MessageDlg('Inventario '+edt_nominv.Text+' Gravado!' ,mtInformation,[mbOk],0);

FreeAndNil(query_temp);


end;

procedure TFrm_AjuInvGra_Gerar.bbNovoHistoricoClick(Sender: TObject);
var
query_temp: TQuery;
mseq: integer;
mfiltros: string;
mcadpro: string;
mcadlgc: string;
mcadest: string;
mfilial: integer;

begin
if Application.MessageBox('Quer realmente ajustar o estoque de acordo com os calculos?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_temp:=TQuery.create(NIL);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

mseq:=0;
While true do
   begin
   mcadpro:='CADPRO'+formatdatetime('yyyymmdd', date)+Inttostr(mseq);
   mcadest:='CADLGC'+formatdatetime('yyyymmdd', date)+Inttostr(mseq);
   mcadlgc:='CADEST'+formatdatetime('yyyymmdd', date)+Inttostr(mseq);

   if fLerGenerico_query('user_objects','count(*) as qtd',
      '(object_name='+QuotedStr(mcadpro)
      +' or object_name='+QuotedStr(mcadest)
      +' or object_name='+QuotedStr(mcadlgc)+')'
      +' and object_type='+QuotedStr('TABLE'),query_consulta) then
      begin
      if query_consulta.fieldbyname('qtd').asinteger=0 then
         break
      else
         mseq:=mseq+1;
      end;
   end;

mFiltros:=fRetornarFiltros;

query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('Delete from CADMOV_PROD where exists '
                  +' (select PDCODPRO from CADPRO where PDCODPRO=CMP_CODPRO '+iif(mfiltros='','',' and '+mfiltros)+')'
                  +' and CMP_DATHOR>=:DATAINV');
query_temp.parambyname('DATAINV').asdatetime:=edt_datainv_oriigem.Date;
try
  query_temp.ExecSQL;
  fdm1StartCommit;
except on e : exception do
  begin
  ex_erroSql_Novo(query_temp,693,'func Erro:'+e.Message ,'CADMOV_PROD');
  query_temp.close;
  freeandnil(query_temp);
  end;
  end;

fAjustarHistoricoProduto_invgra(5,edt_nominv_origem.Text);


if fLerGenerico_query('INVGRA_GD','IGFILIAL','IGNOMEINV='+QuotedStr(edt_nominv_origem.Text),query_consulta) then
   mfilial:=query_consulta.fieldbyname('IGFILIAL').asinteger;



  // APAGANDO LOTES

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add(' delete from cadlgc where 1=1 and            '
                 +' CLFILIAL ='+IntToStr(mfilial)+' and clcodpro in ( '
                 +' select unique igcodpro from invgra_gd   '
                 +' where 1=1 and  IGNOMEINV='+QuotedStr(edt_nominv_origem.Text)
                     +')');
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(DM1.Query1,725,'func Erro:'+e.Message ,'CADLGC');
   end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');
// INSERIR CADEST
query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('insert into CADEST  (   CECODEMP   ,CEFILIAL   ,CECODPRO   ,CESALDO   ,CESALDO_RESERVADO   ) '
                  +' Select 1  ,'+IntToStr(mfilial)+' as b2filial,IGCODPRO AS CEcodpro,sum(IGqtd) as CESALDO,0 '
                  +'  from INVGRA_GD where 1=1 and  IGNOMEINV='+QuotedStr(edt_nominv_origem.Text)
                  +' and IGQTD>0 '
                  +' and not exists (select CECODPRO from cadest where 1=1 and CECODEMP=1 and CECODPRO=IGCODPRO AND CEFILIAL='+IntToStr(mfilial)+')'
                 +' group by IGcodpro '
                      );
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,742,'func Erro:'+e.Message ,'CADEST');
   end;




   // INSERINDO LOTES

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add(' insert into cadlgc(clcodemp, clcodpro, clnumero,     '
                  +' cldtvcto, clqtd, clfilial) Select IGcodemp, IGcodpro,IGGRADE,'
                  +' IGdtvcto, IGqtd, '+IntToStr(mfilial)+' as b2filial '
                  +' from INVGRA_GD where 1=1 and  IGNOMEINV='+QuotedStr(edt_nominv_origem.Text)
                  +' and IGQTD>0 '
                  );

try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,763,'func Erro:'+e.Message ,'CADNE');
   end;

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add(' update cadpro set pdsaldo = (select '
                  +'  sum(clqtd) from cadlgc where clcodpro=pdcodpro) ');
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,774,'func Erro:'+e.Message ,'CADPRO');
   end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

   // CORRIGINDO CADEST

query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('update cadest set cesaldo = (select '
                  +' sum(clqtd) from cadlgc where clcodpro=cecodpro '
                  +' and CLFILIAL=CEFILIAL )  '
                  );
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,790,'func Erro:'+e.Message ,'CADNE');
   end;
//   ex_erroSql_Novo(DM1.Query1,111,'func Erro:' ,'CADNE');

fAjustarHistoricoProduto_invgra(3,edt_nominv_origem.Text);



fReprocessarEstoque_cadp02_lotes(edt_datainv_oriigem.Date,edt_datainv.Date,mfilial,mfiltros,iif(cbAjustes.checked=true,false,true));


MessageDlg('Concluido!',mtWarning,[mbOk],0);
end;


function TFrm_AjuInvGra_Gerar.fRetornarFiltros: String;
var
mFiltros: String;
mfiltrotemp: string;
begin


mFiltros:='';
mfiltrotemp:='';

if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(edt_nominv_origem.Text)+' and IG3TIPO='+QuotedStr('GRU')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=mfiltrotemp+' PDCODGRU in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;


mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(edt_nominv_origem.Text)+'  and IG3TIPO='+QuotedStr('RAM')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=mfiltrotemp+' PDCODRAM in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;



mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(edt_nominv_origem.Text)+'  and IG3TIPO='+QuotedStr('TIP')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=mfiltrotemp+' PDCODTIP in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;

mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(edt_nominv_origem.Text)+'  and IG3TIPO='+QuotedStr('CON')
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=mfiltrotemp+' PDCODCON in ('+query_consulta.fieldbyname('IG3CODIGO').asstring;
   query_consulta.Next;

   While not query_consulta.Eof do
      begin
      mfiltrotemp:=mfiltrotemp+','+query_consulta.fieldbyname('IG3CODIGO').asstring;
      query_consulta.Next;
      end;
   mfiltrotemp:=mfiltrotemp+')';
   end;
if trim(mfiltrotemp)<>'' then
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;


mfiltrotemp:='';
if fLerGenerico_query('INVGRA_GD03','IG3CODIGO,IG3TIPO,IG3OMITIR','IG3CHAVE='+QuotedStr(edt_nominv_origem.Text)+'  and IG3TIPO='+QuotedStr('MARC')
                     +' AND LENGTH(IG3CODIGO)>1 '
                     +' order by IG3TIPO,IG3SEQ',query_consulta) then
   begin
   if query_consulta.fieldbyname('IG3OMITIR').asinteger=1 then
      mfiltrotemp:=' not ';
   mfiltrotemp:=mfiltrotemp+' PDMARCA like  in '+QuotedStr(query_consulta.fieldbyname('IG3CODIGO').asstring+'%');
   mfiltros:=mfiltros+iif(trim(mfiltros)='','',' and ')+mfiltrotemp;
   end;
result:=mfiltros;
end;



function TFrm_AjuInvGra_Gerar.fGerarInvGraGD03(pOrigem,pDestino: String): Boolean;
var
query_temp: tquery;
begin
query_temp:=tquery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.add('Insert into INVGRA_GD03 ('
                  +'IG3CODEMP '
                  +',IG3CHAVE '
                  +',IG3SEQ '
                  +',IG3CODIGO '
                  +',IG3TIPO '
                  +',IG3OMITIR '
                  +' ) select '
                  + 'IG3CODEMP '
                  +',:CHAVE_NOVA '
                  +',IG3SEQ '
                  +',IG3CODIGO '
                  +',IG3TIPO '
                  +',IG3OMITIR '
                  +' from INVGRA_GD03 WHERE IG3CHAVE=:CHAVE_ANT '
                  );
query_temp.ParamByName('CHAVE_NOVA').AsString :=pDestino;
query_temp.ParamByName('CHAVE_ANT').AsString  :=pOrigem;

try
   query_temp.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   ex_erroSql_Novo(query_temp,774,'func Erro:'+e.Message ,'CADPRO');
   end;
query_temp.close;
FreeAndNil(query_temp);

result:=false;
end;

end.

