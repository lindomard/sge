unit s_FormaPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxMemDS, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,dbtables;

type
  TFrm_FormaPgto = class(TForm)
    mem_fpag: TRxMemoryData;
    Panel1: TPanel;
    mem_fpagseq_lote: TIntegerField;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    src_fpag: TDataSource;
    DBGrid1: TDBGrid;
    mem_fpagtit_numero: TStringField;
    mem_fpagtit_dtvcto: TStringField;
    mem_fpagtit_dtpgto: TStringField;
    mem_fpagtit_juros: TStringField;
    mem_fpagtit_desc: TStringField;
    mem_fpagtit_valor: TStringField;
    mem_fpagtit_vlrrec: TStringField;
    mem_fpagfp_tipo: TStringField;
    mem_fpagfp_valor: TStringField;
    mem_fpagfp_data: TStringField;
    lbl_obs: TLabel;
    mem_fpagfp_lote: TStringField;
    Panel4: TPanel;
    bbSair: TBitBtn;
    sbt_emitirrecibo: TSpeedButton;
    mem_fpagfp_numchq: TFloatField;
    mem_fpagfp_vinculo: TIntegerField;
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sbt_emitirreciboClick(Sender: TObject);
  private
    { Private declarations }

     mOri_pTabela: Integer;
     mOri_Lote: Integer;
     mOri_pNumdup: real;
     mOri_pCodSac: Real;
     mOri_pDesd: String;
     mOri_pTipo: Integer;
     mOri_pCodEmp_Dup: Integer;
     mOri_pDtemis: TDatetime;

     mTot_Ger_FP: Real;

  public
    { Public declarations }

    function fCarregarFormas(pTabela: Integer;pNumdup,pCodSac: Real; pDesd: String; pTipo,pCodEmp_Dup,pLote:Integer; pDtemis: TDatetime): Boolean;


  end;

var
  Frm_FormaPgto: TFrm_FormaPgto;

implementation

uses S_DM1, Func, func_excecoes, S_Recibo, lerarq;

{$R *.dfm}
//pTabela 0-Receber 1-Pagar
function TFrm_FormaPgto.fCarregarFormas(pTabela: Integer;pNumdup,pCodSac: Real; pDesd: String; pTipo,pCodEmp_Dup,pLote:Integer; pDtemis: TDatetime): Boolean;
var




query_lote: tQuery;
qr_tit: tQuery;
qr_FP: tQuery;
mLote_teste: Integer;

mTot_Lote_Juros: Real;
mTot_Lote_Desc: Real;
mTot_Lote_Dup: Real;
mTot_Lote_Rec: Real;
mTot_Lote_FP: Real;

mTot_Ger_Juros: Real;
mTot_Ger_Desc: Real;
mTot_Ger_Dup: Real;
mTot_Ger_Rec: Real;


begin

mOri_pTabela    :=pTabela;
mOri_pNumdup    :=pNumdup;
mOri_pCodSac    :=pCodSac;
mOri_pDesd      :=pDesd;
mOri_pTipo      :=pTipo;
mOri_pCodEmp_Dup:=pCodEmp_Dup;
mOri_pDtemis    :=pDtemis;



qr_tit:=tQuery.create(nil);
qr_tit.DatabaseName:='SG_ASSOC';
qr_fp:=tQuery.create(nil);
qr_fp.DatabaseName:='SG_ASSOC';

query_lote:=tQuery.create(nil);
query_lote.DatabaseName:='SG_ASSOC';
query_lote.sql.clear;
query_lote.sql.Add(' select FPLOTE,FPCODEMP,FPLOTSEQ from ');
if pTabela=0 then
   query_lote.sql.Add(' FPCRDUP where FPCODCLI=:CODSAC ')
else
   query_lote.sql.Add(' FPCPDUP where FPCODFOR=:CODSAC ');

//query_lote.sql.Add(' AND (FPDUP_CODEMP=:CODEMP_DUP OR FPDUP_CODEMP=0)');
query_lote.ParambyName('CODSAC').AsFloat      :=pCodSac;
//query_lote.ParambyName('CODEMP_DUP').AsInteger:=pCodEmp_Dup;

if pLote=0 then
   begin
   Query_lote.Sql.add(' and  FPNUMERO=:NUMDUP AND FPDESD=:DESD  AND FPTIPO=:TIPO '
                  +' and FPDTEMIS=:DTEMIS');
   query_lote.ParambyName('NUMDUP').AsFloat      :=pNumdup;
   query_lote.ParambyName('DESD').AsString       :=pDesd;
   query_lote.ParambyName('TIPO').AsInteger      :=pTipo;
   query_lote.ParambyName('DTEMIS').AsDateTime   :=pDtemis;

   end
else
   begin
   Query_lote.Sql.add(' and  FPLOTE=:LOTE ');
   query_lote.ParambyName('LOTE').AsInteger      :=pLote;
   end;






query_lote.SQL.Add(' Group by FPLOTE,FPCODEMP,FPLOTSEQ ');

Query_lote.open;
//      ex_erroSql_Novo(Query_lote,117,'SGE','CADVER');


mLote_teste:=0;

mTot_Lote_Juros:=0;
mTot_Lote_Desc :=0;
mTot_Lote_Dup  :=0;
mTot_Lote_Rec  :=0;
mTot_Lote_FP   :=0;

mTot_Ger_Juros :=0;
mTot_Ger_Desc  :=0;
mTot_Ger_Dup   :=0;
mTot_Ger_Rec   :=0;
mTot_ger_FP    :=0;
mem_fpag.Open;
mOri_Lote       :=query_lote.fieldbyName('FPLOTE').Asinteger;

While not query_lote.Eof do
   begin
   mLote_teste:=mLote_teste+1;

   qr_tit.Close;
   Qr_Tit.Sql.Clear;

   if pTabela=0 then
       Qr_Tit.SQl.add('Select FPNUMERO,FPDUP_CODEMP AS FPDUP,FPDTVCTO,FPDATPAG,FPJUROS,FPDESD,FPVALOR AS FPVALPAG,FPVALDUP,FPDESC,FPVALOR,FPVALOR,FPLOTE from FPCRDUP ')
   else
      Qr_Tit.SQl.add('Select FPNUMERO,FPTIPO AS FPDUP,FPDUP_DTVCTO AS FPDTVCTO,FPDUP_DTVCTO AS FPDATPAG,FPJUROS,FPDESC,FPDESD,FPVALOR AS FPVALDUP,FPVALOR AS FPVALPAG,FPVALOR,FPLOTE from FPCPDUP ');
   Qr_Tit.SQl.add('  where '
                 +' FPCODEMP=:CODEMP '
                 +' and FPLOTSEQ=:LOTSEQ '
                 +' and FPLOTE=:LOTE');
   qr_tit.ParamByName('CODEMP').AsInteger:=query_lote.fieldbyName('FPCODEMP').AsInteger;
   qr_tit.ParamByName('LOTSEQ').AsInteger:=query_lote.fieldbyName('FPLOTSEQ').AsInteger;
   qr_tit.ParamByName('LOTE').AsFloat    :=query_lote.fieldbyName('FPLOTE').AsFloat;
   try
      Qr_Tit.Open;
   except
      Qr_Tit.sql.savetofile('c:\sql.txt');
      end;
   Qr_FP.Close;
   Qr_Fp.Sql.Clear;
   Qr_Fp.SQl.Add(' Select CADFP.FPVINCULO AS VINCULO,FPDESC,FPDATA,FPVALOR,FPLOTE,FPDATDEP,FPNUMERO,FPNATUREZA From ');
   if pTabela=0 then
      Qr_Fp.SQl.add(' FPCR ')
   else
      Qr_Fp.SQl.add(' FPCP ');
   Qr_Fp.SQl.add(',CADFP where '
                 +' FPCODIGO=FPFORMA '
                 +' and FPCODEMP=:CODEMP '
                 +' and FPLOTSEQ=:LOTSEQ '
                 +' and FPLOTE=:LOTE');
   qr_FP.ParamByName('CODEMP').AsInteger:=query_lote.fieldbyName('FPCODEMP').AsInteger;
   qr_FP.ParamByName('LOTSEQ').AsInteger:=query_lote.fieldbyName('FPLOTSEQ').AsInteger;
   qr_FP.ParamByName('LOTE').AsFloat    :=query_lote.fieldbyName('FPLOTE').AsFloat;
   try
      Qr_FP.Open;
   except
      Qr_FP.sql.savetofile('c:\sql.txt');
      end;
   While not ((Qr_Tit.Eof) and (Qr_FP.Eof)) do
      begin
      mem_fpag.Append;
      if not Qr_Tit.eof then
         begin
         mem_fpagtit_numero.Value  :=FormatFloat('000000',Qr_Tit.Fieldbyname('FPNUMERO').Value)+'-'
                                   +insere2(Qr_Tit.Fieldbyname('FPDESD').Value,' ',2);
         mem_fpagseq_lote.value    :=mLote_teste;
         mem_fpagtit_dtvcto.value  :=FormatDatetime(fdt2, Qr_Tit.FieldbyName('FPDTVCTO').asDateTime);
         mem_fpagtit_dtpgto.value  :=FormatDatetime(fdt2, Qr_Tit.FieldbyName('FPDATPAG').asDateTime);
         mem_fpagtit_juros.value   :=FormatFloat(mcasas,  Qr_Tit.FieldbyName('FPJUROS').asFloat);
         mem_fpagtit_desc.value    :=FormatFloat(mcasas,  Qr_Tit.FieldbyName('FPDESC').asFloat);
         mem_fpagtit_valor.value   :=FormatFloat(mcasas,  Qr_Tit.FieldbyName('FPVALDUP').asFloat);
         mem_fpagtit_vlrrec.value  :=FormatFloat(mcasas,  Qr_Tit.FieldbyName('FPVALOR').asFloat);
         mem_fpagfp_lote.value     :=Qr_Tit.FieldbyName('FPLOTE').asString;

         mTot_Lote_Juros:=mTot_Lote_Juros+Qr_Tit.FieldbyName('FPJUROS').asFloat;
         mTot_Lote_Desc :=mTot_Lote_Desc+Qr_Tit.FieldbyName('FPDESC').asFloat;
         mTot_Lote_Dup  :=mTot_Lote_Dup+Qr_Tit.FieldbyName('FPVALDUP').asFloat;
         mTot_Lote_Rec  :=mTot_Lote_Rec+Qr_Tit.FieldbyName('FPVALOR').asFloat;

         mTot_Ger_Juros:=mTot_Ger_Juros+Qr_Tit.FieldbyName('FPJUROS').asFloat;
         mTot_Ger_Desc :=mTot_Ger_Desc+Qr_Tit.FieldbyName('FPDESC').asFloat;
         mTot_Ger_Dup  :=mTot_Ger_Dup+Qr_Tit.FieldbyName('FPVALDUP').asFloat;
         mTot_Ger_Rec  :=mTot_Ger_Rec+Qr_Tit.FieldbyName('FPVALOR').asFloat;

         Qr_Tit.Next;
         end;
      if not Qr_Fp.eof then
         begin
         mem_fpagfp_vinculo.Value     :=Qr_fp.fieldbyName('VINCULO').AsInteger;

         mem_fpagfp_tipo.Value     :=Qr_fp.fieldbyName('FPDESC').AsString;
         if Qr_fp.fieldbyName('FPNATUREZA').AsInteger=1 then
            mem_fpagfp_valor.Value    :=FormatFloat(mcasas, Qr_fp.fieldbyName('FPVALOR').AsFloat*-1)
         else
            mem_fpagfp_valor.Value    :=FormatFloat(mcasas, Qr_fp.fieldbyName('FPVALOR').AsFloat);
         mem_fpagfp_lote.value     :=Qr_fp.FieldbyName('FPLOTE').asString;
         mem_fpagfp_numchq.value   :=Qr_fp.FieldbyName('FPNUMERO').AsFloat;

         if Qr_fp.fieldbyName('FPDATDEP').AsDateTime>pdatanula then
            mem_fpagfp_data.Value   :=FormatDatetime(fdt2, Qr_fp.fieldbyName('FPDATDEP').AsDateTime)
         else  if Qr_fp.fieldbyName('FPDATA').AsDateTime>pdatanula then
            mem_fpagfp_data.Value   :=FormatDatetime(fdt2, Qr_fp.fieldbyName('FPDATA').AsDateTime)
         else
            mem_fpagfp_data.Value   :='';
         if Qr_fp.fieldbyName('FPNATUREZA').AsInteger=1 then
            begin
            mTot_Lote_FP            :=mTot_Lote_FP+qr_FP.FieldbyName('FPVALOR').asFloat*-1;
            mTot_Ger_FP             :=mTot_Ger_FP+qr_FP.FieldbyName('FPVALOR').asFloat*-1;
            end
         else
            begin
            mTot_Lote_FP            :=mTot_Lote_FP+qr_FP.FieldbyName('FPVALOR').asFloat;
            mTot_Ger_FP             :=mTot_Ger_FP+qr_FP.FieldbyName('FPVALOR').asFloat;
            end;

         Qr_FP.Next;
         end;
      end;
   Query_lote.Next;
   end;

result:=true;

end;

procedure TFrm_FormaPgto.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FormaPgto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (DBGrid1.SelectedField=mem_fpagfp_tipo) or (DBGrid1.SelectedField=mem_fpagfp_valor)
   or (DBGrid1.SelectedField=mem_fpagfp_data) then
   begin
   DBGrid1.Canvas.Brush.Color := Label2.Color;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_FormaPgto.sbt_emitirreciboClick(Sender: TObject);
var
form_Recibo: tFrm_Recibo;
begin
  inherited;

if mOri_pTabela=0 then // contas a receber
   begin
   fLerGenerico_query('CADDAR,CADCLI','CRDTBX as DATABX,CRDTEMIS as DTEMIS,CRDTVCTO AS DTVCTO,'
                        +' CRAZAO as RAZSOC,case when CCNPJ>0 THEN CCNPJ ELSE CCPF END AS CNPJCPF'
                        +',case when length(CROBS)>1 then CROBS else CRINST01 end as OBS'
                        ,' CRCODEMP='+inttostr(mOri_pCodEmp_Dup)
                        +' and CRNUMERO='+Floattostr(mOri_pNumdup)
                        +' and CRCODCLI='+FloatToStr(mOri_pCodSac)
                        +' and CRDESD='+Quotedstr(mOri_pDesd)
                        +' and CRDUP='+IntToStr(mOri_pTipo)
                        +' and CRDTEMIS='+QuotedStr(FormatDatetime(fdt, mOri_pDtemis))
                        +' and CCODCLI=CRCODCLI '
                        ,query_consulta);
    end
else
    begin
    fLerGenerico_query('CADDAP,CADFOR','CADTBX as DATABX,CADTEMIS as DTEMIS,CADTVCTO AS DTVCTO,'
                        +' FRAZAO as RAZSOC,FCGC AS CNPJCPF,CAOBS as OBS'
                        ,' CACODEMP='+inttostr(mOri_pCodEmp_Dup)
                        +' and CANUMERO='+Floattostr(mOri_pNumdup)
                        +' and CACODFOR='+FloatToStr(mOri_pCodSac)
                        +' and CADESD='+Quotedstr(mOri_pDesd)
                        +' and CADUP='+IntToStr(mOri_pTipo)
                        +' and CADTEMIS='+QuotedStr(FormatDatetime(fdt, mOri_pDtemis))
                        +' and FCODFOR=CACODFOR '
                        ,query_consulta);
    end;
if query_consulta.isempty then
   exit;

Application.CreateForm(Tfrm_Recibo, form_Recibo);

with form_Recibo do
   begin
   if mem_det_titulosdoc.Active=false then
      mem_det_titulosdoc.Open;
   FormStyle      :=fsNormal;
   Visible        :=False;
   MDATA.Text     := FormatDateTime(fdt2, Query_consulta.fieldbyname('DATABX').asdatetime);
   VALOR_REC.Text := FormatFloat(mcasas, mTot_Ger_FP);
   if mOri_pTabela=0 then // contas a receber
      begin
      RG_tipo.ItemIndex      :=1;
      RG_TIPOClick(self);
      EMITENTE.Text          :=query_consulta.fieldbyname('RAZSOC').AsString;
      edt_pagador_cpf.Text   :=MaskCPFCNPJ(fdeixanum(query_consulta.Fieldbyname('CNPJCPF').AsString));
      end

   else
      begin
      RG_tipo.ItemIndex:=0;
      RG_TIPOClick(self);
      NOMSACADO.Text          :=query_consulta.fieldbyname('RAZSOC').AsString;
      edt_recebedor_cpf.Text   :=MaskCPFCNPJ(fdeixanum(query_consulta.Fieldbyname('CNPJCPF').AsString));
      end;
   MREFER.Text    :=query_consulta.fieldbyname('OBS').AsString;
   cb_modelo.itemindex:=1;

   mem_fpag.First;
   While not mem_fpag.eof do
      begin
      mem_det_titulosdoc.Append;
      mem_det_titulosdoctitulos_numero.Value     := mem_fpagtit_numero.AsString;
      mem_det_titulosdoctitulos_valor.Value      := mem_fpagtit_vlrrec.AsString;
      mem_det_titulosdoctitulo_vencimento.Value  := mem_fpagtit_dtvcto.AsString;
      mem_det_titulosdoctitulos_obs.Value        := '';
      mem_det_titulosdocdoc_obs.Value        := '';


      if (mem_fpagfp_vinculo.asinteger=1) OR  (mem_fpagfp_vinculo.asinteger=2) or (mem_fpagfp_vinculo.asinteger=14) then
         begin
         if mOri_pTabela=0 then // contas a receber
            fLerGenerico_query('CADCHQ','CHEMIT as EMITENTE',' CHLOTE='+Inttostr(mOri_Lote)+' and CHNUMERO='+mem_fpagfp_numchq.AsString,query_consulta)
         else
            fLerGenerico_query('CADCHQCP','CHEMIT as EMITENTE',' CHLOTE='+Inttostr(mOri_Lote)+' and CHNUMERO='+mem_fpagfp_numchq.AsString,query_consulta);
         if query_consulta.IsEmpty=false then
            mem_det_titulosdocdoc_obs.Value        := query_consulta.fieldbyname('EMITENTE').Asstring;
         end;


      mem_det_titulosdocdoc_tipo.Value       := mem_fpagfp_tipo.AsString;
      mem_det_titulosdocdoc_valor.Value      := mem_fpagfp_valor.AsString;
      mem_det_titulosdocdoc_data.Value       := mem_fpagfp_data.AsString;
      mem_det_titulosdoc.Post;
      mem_fpag.Next;
      end;




   end;
form_Recibo.bbImprimir.Click;
FreeAndNil(form_Recibo);

end;

end.
