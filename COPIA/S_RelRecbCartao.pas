unit S_RelRecbCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,func,lerarq, DB, DBTables,
  RLReport, RLFilters, RLDraftFilter, RLPDFFilter, RLXLSFilter,
  RLHTMLFilter, RLRichFilter;

type
  TFrm_RelRecbCartao = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    cb_seprede: TCheckBox;
    cb_parcelas: TCheckBox;
    bbImprimir: TBitBtn;
    bbFechar: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    Tb_CFFP: TQuery;
    Tb_CFFPCFFPCODEMP: TFloatField;
    Tb_CFFPCFFPLOTSEQ: TFloatField;
    Tb_CFFPCFFPCHAVE: TFloatField;
    Tb_CFFPCFFPCODECF: TFloatField;
    Tb_CFFPCFFPSERIEECF: TStringField;
    Tb_CFFPCFFPNUMCF: TFloatField;
    Tb_CFFPCFFPDATAECF: TDateTimeField;
    Tb_CFFPCFFPSEQ: TFloatField;
    Tb_CFFPCFFPVALOR: TFloatField;
    Tb_CFFPCFFPREDE: TStringField;
    Tb_CFFPCFFPTPTRANS: TFloatField;
    Tb_CFFPCFFPNUMNSU: TStringField;
    Tb_CFFPCFFPCODAUT: TStringField;
    Tb_CFFPCFFPLOTAUT: TStringField;
    Tb_CFFPCFFPDTHRTRANS_HOST: TDateTimeField;
    Tb_CFFPCFFPDTHRTRANS_LOCAL: TDateTimeField;
    Tb_CFFPCFFPDTCOMP: TDateTimeField;
    Tb_CFFPCFFPHRCOMP: TStringField;
    Tb_CFFPCFFPBANCO: TStringField;
    Tb_CFFPCFFPAGENCIA: TStringField;
    Tb_CFFPCFFPDIGAGENCIA: TStringField;
    Tb_CFFPCFFPCC: TStringField;
    Tb_CFFPCFFPDIGCC: TStringField;
    Tb_CFFPCFFPNCHQ: TStringField;
    Tb_CFFPCFFPDIGNCHQ: TStringField;
    Tb_CFFPCFFPCMC7: TStringField;
    Tb_CFFPCFFPSTATUS: TFloatField;
    Tb_CFFPCFFPFINALIZACAO: TStringField;
    Tb_CFFPCFFPQTDPARC: TFloatField;
    Tb_CFFPCFFPTIPOPARC: TFloatField;
    Src_CFFP: TDataSource;
    Src_CFParc: TDataSource;
    Tb_CFParc: TQuery;
    Tb_CFParcCFPCCODEMP: TFloatField;
    Tb_CFParcCFPCLOTSEQ: TFloatField;
    Tb_CFParcCFPCCHAVE: TFloatField;
    Tb_CFParcCFPCCODECF: TFloatField;
    Tb_CFParcCFPCSERIEECF: TStringField;
    Tb_CFParcCFPCNUMCF: TFloatField;
    Tb_CFParcCFPCDATAECF: TDateTimeField;
    Tb_CFParcCFPCSEQ: TFloatField;
    Tb_CFParcCFPCTIPOPARC: TFloatField;
    Tb_CFParcCFPCQTDPARC: TFloatField;
    Tb_CFParcCFPCPARCELA: TFloatField;
    Tb_CFParcCFPCDTVCTO: TDateTimeField;
    Tb_CFParcCFPCVALOR: TFloatField;
    Tb_CFParcCFPCNUMNSU: TStringField;
    Tb_CFParcCFPCSTATUS: TFloatField;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    lbl_periodo: TRLLabel;
    lbl_obs: TRLLabel;
    RLGroup1: TRLGroup;
    Tb_CFFPcampogrupo: TStringField;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    Tb_CFFPobs: TStringField;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText12: TRLDBText;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDraftFilter1: TRLDraftFilter;
    Label24: TLabel;
    edt_codbco: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label3: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    Tb_CFFPREDE: TStringField;
    procedure bbFecharClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Src_CFFPDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure Tb_CFFPCalcFields(DataSet: TDataSet);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codbcoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelRecbCartao: TFrm_RelRecbCartao;
implementation

{$R *.dfm}

procedure TFrm_RelRecbCartao.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelRecbCartao.bbImprimirClick(Sender: TObject);
begin

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      verteclado(0);
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
Tb_CFParc.Close;
Tb_CFFP.Close;
Tb_CFFP.SQL.Clear;
Tb_CFFP.SQL.add('Select CFFPCODEMP, '
               +'  CFFPLOTSEQ,'
               +'  CFFPCHAVE,'
               +'  CFFPCODECF,'
               +'  CFFPSERIEECF,'
               +'  CFFPNUMCF,'
               +'  CFFPDATAECF,'
               +'  CFFPSEQ,    '
               +'  CFFPVALOR,'
               +'  CFFPTPTRANS,'
               +'  CFFPNUMNSU,'
               +'  CFFPCODAUT,'
               +'  CFFPLOTAUT,'
               +'  CFFPDTHRTRANS_HOST,'
               +'  CFFPDTHRTRANS_LOCAL,'
               +'  CFFPDTCOMP,'
               +'  CFFPHRCOMP,'
               +'  CFFPFINALIZACAO,'
               +'  CFFPBANCO,'
               +'  CFFPAGENCIA,'
               +'  CFFPDIGAGENCIA,'
               +'  CFFPCC,'
               +'  CFFPDIGCC,'
               +'  CFFPNCHQ,'
               +'  CFFPDIGNCHQ,'
               +'  CFFPCMC7,'
               +' CFFPREDE, '
               +'  CFFPQTDPARC,'
               +'  CFFPTIPOPARC,'
               +'  CFFPSTATUS,'
               +'  CFFPCODBCO_CX,'
               +'  CFFPCODUSR_CX,'
               +' CFFPREDE || '
               +' CASE WHEN CFFPTPTRANS=20 THEN '+chr(39)+'-Debito'+chr(39)
               +'      when CFFPTPTRANS=12 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xAdm'+chr(39)
               +'       when CFFPTPTRANS=11 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xLoja'+chr(39)
               +'       when CFFPTPTRANS=10 THEN '+chr(39)+'-Credito a Vista'+chr(39)
               +'       when CFFPQTDPARC>0 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'x'+chr(39)
               +'       when CFFPQTDPARC=0 THEN '+chr(39)+'-Debito'+chr(39)
               +'else '+chr(39)+'-Nao Conhecido'+chr(39)
               +' end as REDE '
               +' from CADCFFP where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFFPCODEMP=0'+IntToStr(codemp)+' and '));
if trim(MDT1.Text)<>'/  /' then
   Tb_CFFP.SQL.Add(' CFFPDTCOMP>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39)+' and ');
if trim(MDT2.Text)<>'/  /' then
   Tb_CFFP.SQL.Add(' CFFPDTCOMP<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39)+' and ');
Tb_CFFP.SQL.Add(' CFFPSTATUS<9');

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Tb_CFFP.SQL.Add(' and CFFPCODBCO_CX '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   Tb_CFFP.SQL.Add(' and CFFPCODUSR_CX '+mcinst2);

Tb_CFFP.SQL.add(' order by '+iif(cb_seprede.Checked,' REDE, ','')+' CFFPCHAVE ');
try
   Tb_CFFP.Open;
except
   Tb_CFFP.sql.savetofile('c:\sql.txt');
   end;

lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
RLReport1.PreviewModal;
end;

procedure TFrm_RelRecbCartao.Src_CFFPDataChange(Sender: TObject;
  Field: TField);
begin
if cb_parcelas.Checked then
   begin
   if not Tb_CFParc.Active then
      begin
      if Tb_CFFPCFFPQTDPARC.AsInteger>0 then
         begin
         Tb_CFParc.Close;
         Tb_CFParc.SQL.Clear;
         Tb_CFParc.SQL.add('Select * from CADCFParc where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFPCCODEMP=0'+Tb_CFFPCFFPCODEMP.AsString+' and ')
                       +' CFPCLOTSEQ=0'+Tb_CFFPCFFPLOTSEQ.AsString
                       +' and CFPCCHAVE=0'+Tb_CFFPCFFPCHAVE.AsString
                       +' and CFPCSTATUS<>9 '
                       +' order by CFPCQTDPARC');
         Tb_CFParc.Open;
         end
     else
        Tb_CFParc.Close;
     end
   else
      begin
      if (Tb_CFFPCFFPQTDPARC.AsInteger>0) and
         ((Tb_CFFPCFFPLOTSEQ.Value<>Tb_CFParcCFPCLOTSEQ.Value) OR
         (Tb_CFFPCFFPCHAVE.Value<>Tb_CFParcCFPCCHAVE.Value))then
         begin
         Tb_CFParc.Close;
         Tb_CFParc.SQL.Clear;
         Tb_CFParc.SQL.add('Select * from CADCFParc where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFPCCODEMP=0'+Tb_CFFPCFFPCODEMP.AsString+' and ')
                       +' CFPCLOTSEQ=0'+Tb_CFFPCFFPLOTSEQ.AsString
                       +' and CFPCCHAVE=0'+Tb_CFFPCFFPCHAVE.AsString
                       +' and CFPCSTATUS<>9 '
                       +' order by CFPCQTDPARC');
         Tb_CFParc.Open;
        end;
//     else
//        Tb_CFParc.Close;
     end;
  end;
end;

procedure TFrm_RelRecbCartao.FormCreate(Sender: TObject);
begin
Tb_CFFPCFFPDATAECF.DisplayFormat        :=fdt2;
Tb_CFFPCFFPVALOR.DisplayFormat          :=mCasas;
Tb_CFFPCFFPDTHRTRANS_HOST.DisplayFormat :=fdathor;
Tb_CFFPCFFPDTHRTRANS_LOCAL.DisplayFormat:=fdathor;
Tb_CFFPCFFPDTCOMP.DisplayFormat         :=fdt2;
Tb_CFParcCFPCDATAECF.DisplayFormat      :=fdt2;
Tb_CFParcCFPCDTVCTO.DisplayFormat       :=fdt2;
Tb_CFParcCFPCVALOR.DisplayFormat        :=mCasas;

end;

procedure TFrm_RelRecbCartao.Tb_CFFPCalcFields(DataSet: TDataSet);
begin
if cb_seprede.Checked then
   Tb_CFFPcampogrupo.Value:=Tb_CFFPREDE.Value;

end;

procedure TFrm_RelRecbCartao.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      verteclado(0);
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_RelRecbCartao.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      verteclado(0);
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_RelRecbCartao.edt_codusr_cxExit(Sender: TObject);
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

procedure TFrm_RelRecbCartao.edt_codusr_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelRecbCartao.lbx_codusr_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RelRecbCartao.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RelRecbCartao.edt_codbcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco.Text:=fChamaBco(0,'frm_RCRec',Key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelRecbCartao.edt_codbcoExit(Sender: TObject);
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

end.
