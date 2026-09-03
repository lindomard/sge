unit S_AcCPR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Mask, ExtCtrls, S_DM1, func, S_Impres, S_For,
  Lerarq;

type
  TFrm_AcCPR = class(TForm)
    Panel1: TPanel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Qr_FP: TQuery;
    bbImprimir: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_Lote: TQuery;
    Qr_LoteFPLOTE: TFloatField;
    Qr_Tit: TQuery;
    Qr_FPforma: TStringField;
    Qr_TitFPCODEMP: TFloatField;
    Qr_TitFPSEQ: TFloatField;
    Qr_TitFPLOTE: TFloatField;
    Qr_TitFPNUMERO: TFloatField;
    Qr_TitFPDESD: TStringField;
    Qr_TitFPTIPO: TFloatField;
    Qr_TitFPDTEMIS: TDateTimeField;
    Qr_TitFPCAIXA: TFloatField;
    Qr_TitFPCODUSR: TFloatField;
    Qr_TitFPVALOR: TFloatField;
    Qr_TitFPJUROS: TFloatField;
    Qr_TitFPDESC: TFloatField;
    Qr_FPFPCODEMP: TFloatField;
    Qr_FPFPSEQ: TFloatField;
    Qr_FPFPDATA: TDateTimeField;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPNUMERO: TFloatField;
    Qr_FPFPBANCO: TFloatField;
    Qr_FPFPSERIE: TStringField;
    Qr_FPFPVALOR: TFloatField;
    Qr_FPFPLOTE: TFloatField;
    Qr_FPFPCC: TStringField;
    Qr_FPFPTIPO: TFloatField;
    Qr_FPFPCAIXA: TFloatField;
    Qr_FPFPCODLDR: TFloatField;
    Qr_TitFPCODFOR: TFloatField;
    Qr_Titnomfor: TStringField;
    Qr_FPFPDATDEP: TDateTimeField;
    StaticText2: TStaticText;
    edt_codfor: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    StaticText6: TStaticText;
    edt_CODFP: TEdit;
    lbx_codfp: TListBox;
    StaticText3: TStaticText;
    NRI: TEdit;
    StaticText7: TStaticText;
    NRF: TEdit;
    StaticText4: TStaticText;
    LOTEI: TEdit;
    StaticText8: TStaticText;
    LOTEF: TEdit;
    Label24: TLabel;
    edt_codbco: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label6: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    OMITIR_FP: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Qr_FPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Qr_TitCalcFields(DataSet: TDataSet);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codforExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_CODFPExit(Sender: TObject);
    procedure edt_CODFPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NRIExit(Sender: TObject);
    procedure NRFExit(Sender: TObject);
    procedure LOTEIExit(Sender: TObject);
    procedure LOTEFExit(Sender: TObject);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_accpr: TFrm_Impres;
  end;

var
  Frm_AcCPR: TFrm_AcCPR;

implementation

uses S_FPag;

{$R *.DFM}

procedure TFrm_AcCPR.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_AcCPR.bbImprimirClick(Sender: TObject);
var
mobs: String;
mtotped, mtotfp, mtotj, mtotd, mseq, mcodtax: Real;
begin
Qr_Lote.Close;
Qr_Lote.Sql.Clear;
Qr_Lote.SQl.Add('Select FPCP.FPLOTE,FPCP.FPDATA as DATABX '
               +' from FPCP, FPCPDUP ');
mcinst:=' where ';
mcinst2:=fla_EmpBaixaAlta(0,'CADDAP','',codemp,'FPCPDUP.FPCODEMP','');
if trim(mcinst2)<>'' then
   begin
   Qr_Lote.Sql.Add(mcinst+' '+mcinst2);
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Lote.Sql.add(mcinst+' FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Lote.Sql.add(mcinst+' FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;


//Qr_Lote.Sql.add(mcinst+' FPCPDUP.FPTIPO=FPCP.FPTIPO '
//               +' and FPCPDUP.FPLOTE=FPCP.FPLOTE ');

Qr_Lote.Sql.add(mcinst+' FPCPDUP.FPLOTE=FPCP.FPLOTE ');
if not  DM1.Qr_TID.Locate('TINOME','CADDAP',[]) then
   Qr_Lote.Sql.Add(' and FPCPDUP.FPCODEMP=FPCP.FPCODEMP');

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Lote.SQL.Add(' and FPCPDUP.FPCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_Lote.SQL.Add(' and FPCP.FPFORMA '+mcinst2);

if fsonumero(NRI.text)>0 then
   Qr_Lote.SQL.Add(' and FPCP.FPNR>='+fdeixanum(NRI.text));

if fsonumero(NRF.text)>0 then
   Qr_Lote.SQL.Add(' and FPCP.FPNR<='+fdeixanum(NRI.text));

if fsonumero(LOTEI.text)>0 then
   Qr_Lote.SQL.Add(' and FPCP.FPLOTE>='+fdeixanum(LOTEI.text));

if fsonumero(LOTEF.text)>0 then
   Qr_Lote.SQL.Add(' and FPCP.FPLOTE<='+fdeixanum(LOTEF.text));

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_Lote.SQL.Add(' and FPCP.FPCAIXA '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   Qr_Lote.SQL.Add(' and FPCPDUP.FPCODUSR '+mcinst2);


Qr_Lote.Sql.add(' Group by FPCP.FPLOTE,FPCP.FPDATA ');
Qr_Lote.SQL.add(' order by DATABX ');
//Qr_Lote.Sql.savetoFile( mpastatemp + 'sql2.txt');

try
   Qr_Lote.Open
except
   Qr_Lote.Sql.savetoFile(mpastatemp + 'sql2.txt');
   end;

if Qr_Lote.Eof then
   begin
   fmensagem('Não ha nada neste Periodo!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
mseq:=0;
mtotped:=0;
mtotfp:=0;
mcodtax:=0;
mtotj:=0;
mtotd:=0;
testeform := TFrm_AcCPR(FindGlobalComponent('form_impres_accpr'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_accpr);
   end;

form_Impres_accpr.mlin:=0;
form_Impres_accpr.mpag:=0;

form_impres_accpr.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Qr_Lote.First;
While not Qr_Lote.Eof do
   begin
   Qr_Tit.Close;
   Qr_Tit.Sql.Clear;
   Qr_Tit.SQl.add('Select * from FPCPDUP where '
                 +fla_EmpBaixaAlta(0,'CADDAR','',CODEMP,'FPCPDUP.FPCODEMP',' and ')
                 +' FPLOTE=0'+Qr_LoteFPLOTE.AsString);

   Qr_Tit.Open;
   Qr_FP.Close;
   Qr_Fp.Sql.Clear;
   Qr_Fp.SQl.Add(' Select * From FPCP where '
                 +fla_EmpBaixaAlta(0,'CADDAR','',codemp,'FPCP.FPCODEMP',' and ')
                 +' FPLOTE=0'+Qr_LoteFPLOTE.AsString);
   Qr_FP.Open;
   While not ((Qr_Tit.Eof) and (Qr_FP.Eof)) do
      begin
      if form_Impres_accpr.mlin=0 then
         begin
         form_Impres_accpr.mpag:=form_Impres_accpr.mpag+1;
         if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
            mobs:='Todos os Periodos'
         else
            if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
               mobs:='ATE '+MDT2.Text
         else
            if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
              mobs:='A PARTIR DE '+MDT1.Text
         else
            mobs:='PERIODO DE '+MDT1.Text+' A '+MDT2.Text;

         form_Impres_accpr.mlin:=form_impres_accpr.fImprimirCabecalho(136,'RELATORIO DE PAGAMENTO DE DUPLICATAS.'+mobs);
         form_Impres_accpr.mlin:=form_Impres_accpr.mlin+1;

         form_impres_accpr.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
 {
Numero       Fornecedor               Valor Duplic       Juros   Descontos    Lote   Forma Pgto      Valor  Numero Bco Serie Conta
123456789-01 1234567890123456789012345ZZZZZ.ZZ9,99ZZZZZ.ZZ9,99ZZZZZ.ZZ9,99 123456789 1234567890ZZZZ.ZZ0.00 1234567 103 12345 1234567

 }

         form_impres_accpr.Rdprint1.Impf(05,01,'Numero       Fornecedor               Valor Pago         Juros   Descontos Dt.Baixa  Forma Pgto      Valor  Numero Dt.Pgto  Bco  Conta',mreduz);
         form_Impres_accpr.mlin:=5;
         end;
      form_Impres_accpr.mlin:=form_Impres_accpr.mlin+1;
      if not Qr_Tit.eof then
         begin
         form_Impres_accpr.RDprint1.ImpF(form_Impres_accpr.mlin,01,FormatFloat('000000000',Qr_TitFPNUMERO.Value)+'-'+insere2(Qr_TitFPDESD.Value,' ',1)+
                                 ' '+insere2(copy(Qr_Titnomfor.Value,1,20)+' '+Qr_FPFPLOTE.AsString,' ',25)
                                 +insere(FormatFloat(mcasas,Qr_TitFPVALOR.Value-Qr_TitFPJUROS.Value+Qr_TitFPDESC.Value),' ',12)
                                 +insere(Formatfloat(mcasas,Qr_TitFPJUROS.Value),' ',12)
                                 +insere(FormatFloat(mcasas,Qr_TitFPDESC.Value),' ',12)
                                 +' '+FormatDateTime(fdt2,Qr_FPFPDATA.Value),mreduz);
         mtotped:=mtotped+(Qr_TitFPVALOR.Value-Qr_TitFPJUROS.Value+Qr_TitFPDESC.Value);
         mtotj:=mtotj+Qr_TitFPJUROS.Value;
         mtotd:=mtotd+Qr_TitFPDESC.Value;
         Qr_Tit.Next;
         end;
      if not Qr_Fp.eof then
         begin
         if Qr_FPFPDATDEP.AsDateTime>pdatanula then
            mcinst4:=FormatDatetime(fdt3, Qr_FPFPDATDEP.AsDateTime)
         else
            mcinst4:='/  /';

         form_Impres_accpr.Rdprint1.ImpF(form_Impres_accpr.mlin,86,' '+insere2(Qr_FPforma.Value,' ',10)
                               +insere(FormatFloat(mcasas,Qr_FPFPVALOR.Value),' ',10)+' '
                               +insere(Qr_FPFPNUMERO.AsString,' ',7)
                               +' '+mcinst4
                               +' '
                               +insere(Qr_FPFPBANCO.AsString,' ',3)+' '
                               +insere(Qr_FPFPCC.Value,' ',7)
                               ,mreduz);
         DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
         if DM1.Qr_FPFPTIPO.Value=1 then
            mtotfp:=mtotfp-Qr_FPFPVALOR.Value
         else
            mtotfp:=mtotfp+Qr_FPFPVALOR.Value;
         Qr_Fp.Next;
         end;
      if form_Impres_accpr.mlin>55 then
         begin
         form_Impres_accpr.mlin:=form_Impres_accpr.mlin+1;
         form_Impres_accpr.Rdprint1.ImpF(form_Impres_accpr.mlin,01,'Continua...'+insere2('-','-',69),mnormal);
         form_Impres_accpr.mlin:=0;
         form_Impres_accpr.RDprint1.Novapagina;
         end;
      end;
   Qr_Lote.Next;
   if Qr_Lote.Eof then
      begin
      if form_Impres_accpr.mlin=0 then
         begin
         form_Impres_accpr.mpag:=form_Impres_accpr.mpag+1;
         if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
            mobs:='Todos os Periodos'
         else
            if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
               mobs:='ATE '+MDT2.Text
         else
            if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
              mobs:='A PARTIR DE '+MDT1.Text
         else
            mobs:='PERIODO DE '+MDT1.Text+' A '+MDT2.Text;
         form_Impres_accpr.Rdprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',64)+'Pagina:     '+FormatFloat('0000',form_Impres_accpr.mpag),mnormal);
         form_Impres_accpr.Rdprint1.Impf(02,01,insere2('RELATORIO DE PAGAMENTO DE DUPLICATAS.   '+mobs,' ',63)+'Data.: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
         form_Impres_accpr.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
         form_Impres_accpr.Rdprint1.Impf(05,01,'Numero       Fornecedor               Valor Pago         Juros   Descontos Dt.Baixa  Forma Pgto      Valor  Numero Bco Serie Conta',mreduz);
         form_Impres_accpr.mlin:=5;
         end;
      form_Impres_accpr.mlin:=form_Impres_accpr.mlin+1;
      form_Impres_accpr.Rdprint1.Impf(form_Impres_accpr.mlin,01,' - Totais............................'
                              +insere(FormatFloat('###,##0.00',mtotped),' ',12)
                              +insere(FormatFloat('###,##0.00',mtotj),' ',12)
                              +insere(FormatFloat('###,##0.00',mtotd),' ',12)
                              +insere(' ',' ',21)
                              +insere(Formatfloat('###,##0.00',mtotfp),' ',12),mreduz);
      form_Impres_accpr.mlin:=form_Impres_accpr.mlin+1;
      form_Impres_accpr.Rdprint1.Impf(form_Impres_accpr.mlin,01,'Fim'+insere2('-','-',77),mnormal);
      if form_Impres_accpr.Rdprint1.Setup then form_Impres_accpr.Rdprint1.Fechar;
      form_impres_accpr.free;
      form_impres_accpr:=nil;
      end;
   end;
end;

procedure TFrm_AcCPR.Qr_FPCalcFields(DataSet: TDataSet);
begin
DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
Qr_FPforma.Value:=DM1.Qr_FPFPDESC.Value;

end;

procedure TFrm_AcCPR.FormCreate(Sender: TObject);
begin
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=FormatDateTime(fdt2, date);
end;

procedure TFrm_AcCPR.Qr_TitCalcFields(DataSet: TDataSet);
begin
if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_TitFPCODFOR.AsString) then
   Qr_Titnomfor.Value:=DM1.Query1.Fields[0].AsString;
end;

procedure TFrm_AcCPR.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_AcCPR.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_AcCPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcCPR.edt_codforKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODFOR.Text:=fChamaFor(0,'frm_AcCPR',Key);
   if trim(edt_CODFOR.Text)<>'' then
      edt_CODFORExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AcCPR.edt_codforExit(Sender: TObject);
begin
edt_codfor.text:=fdeixanum2(edt_codfor.Text);

if edt_codfor.Text<>'' then
   begin
   if fLerGenerico_query('CADFOR','FRAZAO,FCODFOR','FCODFOR=0'+edt_codfor.Text,query_consulta) then
      begin
      Lbx_codfor.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('FCODFOR').AsFloat)
                                    +' - '+query_consulta.fieldbyname('FRAZAO').AsString);
      edt_codfor.clear;
      edt_codfor.SetFocus;
      end
   else
      begin
      MessageDlg('Fornecedor '+edt_codfor.text+' não Cadastrado!',mtWarning,[mbOk],0);
      edt_CODFOR.SetFocus;
      end;
   end;   

end;

procedure TFrm_AcCPR.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if Lbx_codfor.ItemIndex>=0 then
      Lbx_codfor.Items.Delete(Lbx_codfor.ItemIndex);

end;

procedure TFrm_AcCPR.edt_CODFPExit(Sender: TObject);
begin
edt_CODFP.Text:=fdeixanum2(edt_CODFP.Text);
if Trim(edt_CODFP.Text)<>'' then
   begin
   if not fLerGenerico_query('CADFP','FPCODIGO,FPDESC','FPCODIGO='+edt_codfp.Text,query_consulta) then
      begin
      MessageDlg('Forma de Pagamento '+edt_CODFP.text+'  não Cadastrado!',mtWarning,[mbOk],0);
      edt_CODFP.SetFocus;
      end
   else
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('FPCODIGO').AsFloat)
                                    +' - '+query_consulta.fieldbyname('FPDESC').Value);

      edt_codfp.text := '';
      edt_codfp.SetFocus;
      end;
   end;



end;

procedure TFrm_AcCPR.edt_CODFPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if Frm_FPag=nil then
      Application.CreateForm(TFrm_FPag, Frm_FPag)
   else
      begin
      freeandnil(frm_fpag);
      Application.CreateForm(TFrm_FPag, Frm_FPag);
      end;


   Frm_FPag.Edit1.Text:=key;
   Frm_FPag.BBnAtu.Click;
   Frm_FPag.Edit1.SelStart:=1;
   Frm_FPag.Edit1.SelLength:=1;
   Frm_FPag.PC1.ActivePage:=Frm_FPag.tsTab;
   Frm_FPag.mFPagOri:='Frm_RelPed_FPPed';
   if Frm_FPag.ShowModal=mrok then
      begin
      edt_CODFPExit(self);
      end;
   freeandnil(frm_fpag);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_AcCPR.lbx_codfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if Lbx_codfp.ItemIndex>=0 then
      Lbx_codfp.Items.Delete(Lbx_codfp.ItemIndex);

end;

procedure TFrm_AcCPR.NRIExit(Sender: TObject);
begin
NRI.Text:=fdeixanum2(NRI.Text);

end;

procedure TFrm_AcCPR.NRFExit(Sender: TObject);
begin
NRf.Text:=fdeixanum2(NRF.Text);

end;

procedure TFrm_AcCPR.LOTEIExit(Sender: TObject);
begin
LOTEI.Text:=fdeixanum2(LOTEI.Text);

end;

procedure TFrm_AcCPR.LOTEFExit(Sender: TObject);
begin
LOTEF.Text:=fdeixanum2(LOTEF.Text);

end;

procedure TFrm_AcCPR.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text:=fdeixanum2(edt_codbco.Text);
if Trim(edt_codbco.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codbco.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codbco.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbco.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codbco.text := '';
      edt_codbco.SetFocus;
      end;
   end;


end;

procedure TFrm_AcCPR.edt_codbcoKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco.Text:=fChamaBco(0,'frm_RCRec',Key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AcCPR.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_AcCPR.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;


end;

procedure TFrm_AcCPR.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AcCPR.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

end.
