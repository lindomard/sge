unit s_Contas_por_Competencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ToolEdit, Buttons,lerarq, RLReport,
  RLRichFilter, RLFilters, RLPDFFilter, DB, ADODB,JPEG;

type
  TFrm_Contas_por_Competencia = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsrelatorio: TTabSheet;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    cb_separado: TComboBox;
    Label3: TLabel;
    Label25: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label11: TLabel;
    edt_codbco_cob: TEdit;
    lbx_codbco_cob: TListBox;
    OMITIR_BCO_COB: TCheckBox;
    Label22: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    StaticText5: TStaticText;
    edt_coddep: TEdit;
    sbn_coddep: TSpeedButton;
    lbx_coddep: TListBox;
    OMITIR_DEP: TCheckBox;
    StaticText6: TStaticText;
    edt_CODCCU: TEdit;
    sbn_codccu: TSpeedButton;
    lbx_codccu: TListBox;
    OMITIR_CCU: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    RLWord: TRLRichFilter;
    strProc_contas: TADOStoredProc;
    srcProc_contas: TDataSource;
    strProc_contasDATACOMP: TStringField;
    strProc_contasVALOR: TFloatField;
    strProc_contasPARC: TStringField;
    strProc_contasNUMDOC: TFloatField;
    strProc_contasDTEMIS: TDateTimeField;
    strProc_contasCODSAC: TFloatField;
    strProc_contasDESDOB: TStringField;
    strProc_contasTIPOSAC: TStringField;
    strProc_contasDTVCTO: TDateTimeField;
    strProc_contasVALTIT: TFloatField;
    strProc_contasVALDES: TFloatField;
    strProc_contasJUROS: TFloatField;
    strProc_contasDTBX: TDateTimeField;
    strProc_contasDTPAG: TDateTimeField;
    strProc_contasNOMDEP: TStringField;
    strProc_contasCODDEP: TStringField;
    strProc_contasDESCMV: TStringField;
    strProc_contasCODCC: TStringField;
    strProc_contasNOMCC: TStringField;
    strProc_contasGRUPO: TStringField;
    strProc_contasLINHA: TFloatField;
    RLBand_cab: TRLBand;
    RLSintImage1: TRLImage;
    lblcab_emp: TRLLabel;
    lblcab_endereco: TRLLabel;
    lblcab_cidade_uf_cep: TRLLabel;
    lblcab_dathor: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fonefax: TRLLabel;
    lblcab_email_home: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand_nomgrupo: TRLBand;
    txt_grupo: TRLDBText;
    rlcabgru: TRLBand;
    rldetgru: TRLBand;
    rldet_DATACOMP: TRLDBText;
    rldet_NOMSAC: TRLDBText;
    strProc_contasNOMSAC: TStringField;
    strProc_contasVALDEB: TFloatField;
    strProc_contasVALCRED: TFloatField;
    rldet_CODSAC: TRLDBText;
    rldet_VALCRED: TRLDBText;
    rldet_VALDEB: TRLDBText;
    rlcab_DATACOMP: TRLLabel;
    rlcab_NOMSAC: TRLLabel;
    rlcab_CODSAC: TRLLabel;
    rlcab_NUMDOC: TRLLabel;
    rldet_NUMDOC: TRLDBText;
    rlcab_desdob: TRLLabel;
    rldet_DESDOB: TRLDBText;
    rlcab_VALCRED: TRLLabel;
    rlcab_VALDEB: TRLLabel;
    RLBand_cabcrit: TRLBand;
    RLMemo_criterito: TRLMemo;
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure edt_codbco_cobExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure edt_coddepExit(Sender: TObject);
    procedure edt_CODCCUExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codbco_cobKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure sbn_coddepClick(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbco_cobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Contas_por_Competencia: TFrm_Contas_por_Competencia;

implementation

uses Func, S_DM1;

{$R *.dfm}

procedure TFrm_Contas_por_Competencia.edt_datiniExit(Sender: TObject);
begin
if (fsonumero(edt_datfin.Text)>0) and (fsonumero(edt_datini.Text)>0) then
   begin
   if edt_datfin.Date<edt_datini.Date then
      edt_datfin.date:=edt_datini.Date;
   end;

end;

procedure TFrm_Contas_por_Competencia.edt_datfinExit(Sender: TObject);
begin
if (fsonumero(edt_datfin.Text)>0) and (fsonumero(edt_datini.Text)>0) then
   begin
   if edt_datfin.Date<edt_datini.Date then
      edt_datini.date:=edt_datfin.Date;
   end;

end;

procedure TFrm_Contas_por_Competencia.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if fLerGenerico_query('CADCLI','CRAZAO','CCODCLI=0'+CODCLI.Text,query_consulta) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+query_consulta.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_Contas_por_Competencia.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if fLerGenerico_query('CADFOR','FRAZAO','FCODFOR=0'+CODFOR.Text,query_consulta) then
      BEGIN
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+query_consulta.Fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
      END
   else
      begin

      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);


      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Contas_por_Competencia.edt_codbco_cobExit(Sender: TObject);
begin

edt_codbco_cob.Text:=fdeixanum2(edt_codbco_cob.Text);
if Trim(edt_codbco_cob.Text)<>'' then
   begin
   if not fLerGenerico_query('CADBCO','BCBANCO','BCCODBCO=0'+edt_codbco_cob.Text,query_consulta) then
      begin
      fmensagem('Banco '+edt_codbco_cob.Text+' não cadastrada!',0,['0'],0);
      edt_codbco_cob.SetFocus;
      end
   else
      begin
      lbx_codbco_cob.Items.Add(FormatFloat('0000000', fsonumero(edt_codbco_cob.Text) )
                                    +' - '+query_consulta.Fieldbyname('BCBANCO').AsString);
      edt_codbco_cob.text := '';
      edt_codbco_cob.SetFocus;
      end;
   end;

end;

procedure TFrm_Contas_por_Competencia.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not fLerGenerico_query('CADBCO','BCBANCO','BCCODBCO=0'+codbco.Text,query_consulta) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+query_consulta.fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_Contas_por_Competencia.edt_coddepExit(Sender: TObject);
begin
if Trim(edt_coddep.Text)<>'' then
   begin
   if fLerGenerico_query('CADDEP','DNOME','DCODDEP=0'+QuotedStr(edt_coddep.Text),query_consulta) then

   if flqr1('DNOME','D','CADDEP','C','DCODDEP',edt_coddep.Text) then
      begin
      lbx_coddep.Items.Add(edt_coddep.Text
                                    +'-'+query_consulta.Fields[0].AsString);
      edt_coddep.Text := '';
      if (edt_coddep.Visible=true) and (edt_coddep.Enabled=true) then
         edt_coddep.SetFocus;
      end
   else
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      edt_coddep.Text := '';
      if (edt_coddep.Visible=true) and (edt_coddep.Enabled=true) then
         edt_coddep.SetFocus;
      end;
   end;

end;

procedure TFrm_Contas_por_Competencia.edt_CODCCUExit(Sender: TObject);
begin
if Trim(edt_CODCCU.Text)<>'' then
   begin
   if fLerGenerico_query('CADCCU','CCNAT,CCNOME','CCCODCCU='+QuotedStr(edt_codccu.Text),query_consulta) then
      begin
      lbx_codccu.Items.Add(edt_CODCCU.TEXT
                                    +'-'+query_consulta.Fields[1].AsString);
      edt_CODCCU.text := '';
      edt_CODCCU.SetFocus;
      end
   else
      begin
      fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      edt_CODCCU.text := '';
      edt_CODCCU.SetFocus;
      end;
   end;


end;

procedure TFrm_Contas_por_Competencia.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Contas_por_Competencia.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_RCpag',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Contas_por_Competencia.edt_codbco_cobKeyPress(
  Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco_cob.Text:=fChamaBco(0,'frm_RCpag',Key);
   if trim(edt_codbco_cob.Text)<>'' then
      edt_codbco_cobExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Contas_por_Competencia.CODBCOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCpag',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Contas_por_Competencia.sbn_coddepClick(Sender: TObject);
begin
edt_CODDEP.Text :=fChamaDeptoCX(0,'frm_RCpag','');
if trim(edt_CODDEP.Text)<>'' then
   edt_CODDEPExit(Self);

end;

procedure TFrm_Contas_por_Competencia.sbn_codccuClick(Sender: TObject);
begin
edt_CODCCU.Text:=fChamaCCU(0,'frm_RCpag','');
if trim(edt_CODCCU.Text)<>'' then
   edt_CODCCUExit(Self);

end;

procedure TFrm_Contas_por_Competencia.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;

end;

procedure TFrm_Contas_por_Competencia.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Contas_por_Competencia.lbx_codbco_cobKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco_cob.ItemIndex>=0 then
      lbx_codbco_cob.Items.Delete(lbx_codbco_cob.ItemIndex);

end;

procedure TFrm_Contas_por_Competencia.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Contas_por_Competencia.lbx_coddepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_Contas_por_Competencia.lbx_codccuKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_Contas_por_Competencia.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Contas_por_Competencia.bbImprimirClick(Sender: TObject);
var
mCondicao_pagar: string;
mCondicao_receber: string;
mCampoGrupo: string;
mCampoOrdem: String;
begin

mCondicao_pagar     :='';
mCondicao_receber   :='';
mCampoGrupo         :='';
mCampoOrdem         :='';
if cb_separado.Text='Ano' then
   begin
   mCampoOrdem := 'ANOMES';
   mCampoGrupo:='DATACOMP';
   end
else if cb_separado.Text='Banco' then
   begin
   mCampoOrdem := 'NOMBCO';
   mCampoGrupo:='NOMBCO';
   end
else if cb_separado.Text='Cidade' then
   begin
   mCampoOrdem := 'UF,CIDADE';
   mCampoGrupo:='UF || CIDADE';
   end
else if cb_separado.Text='Estado' then
   begin
   mCampoOrdem := 'UF';
   mCampoGrupo:='UF';
   end
else if cb_separado.Text='Sacado' then
   begin
   mCampoOrdem := 'NOMSAC';
   mCampoGrupo:='NOMSAC';
   end;


RLMemo_criterito.Lines.Clear;
RLMemo_criterito.Lines.Add('CRITERITOS DO RELATORIO');
RLMemo_criterito.Lines.Add(fperiodo(0,edt_datini.Text,edt_datfin.Text));

if edt_datini.Date>pdatanula then
   begin
   mCondicao_pagar:=mCondicao_pagar+iif(mCondicao_pagar='','',' and ')+' CACOMPETENCIA_DTINICIO>='+QuotedStr(FormatDateTime(fdt, edt_datini.Date));
   mCondicao_receber:=mCondicao_receber+iif(mCondicao_receber='','',' and ')+' CRCOMPETENCIA_DTINICIO>='+QuotedStr(FormatDateTime(fdt, edt_datini.Date));
   end;

if edt_datfin.Date>pdatanula then
   begin
   mCondicao_pagar:=mCondicao_pagar+iif(mCondicao_pagar='','',' and ')+' CACOMPETENCIA_DTINICIO<='+QuotedStr(FormatDateTime(fdt, edt_datfin.Date));
   mCondicao_receber:=mCondicao_receber+iif(mCondicao_receber='','',' and ')+' CRCOMPETENCIA_DTINICIO<='+QuotedStr(FormatDateTime(fdt, edt_datfin.Date));
   end;




 {
strProc_contas.ProcedureName:= 'titulos_por_competencia';
strProc_contas.Parameters.CreateParameter('pCondicoes_pagar',ftString,pdInput,5000,mCondicao_pagar);
strProc_contas.Parameters.CreateParameter('pCampoGrupo_pagar',ftString,pdInput,5000, mCampoGrupo);
strProc_contas.Parameters.CreateParameter('pCondicoes_receber',ftString,pdInput,5000,mCondicao_pagar);
strProc_contas.Parameters.CreateParameter('pCampoGrupo_receber',ftString,pdInput,5000, mCampoGrupo_receber);
strProc_contas.Parameters.CreateParameter('pOrdem',ftString,pdInput,5000, '');
strProc_contas.Open; //<--Error: Parameter 'Abbr' not found.
}

strProc_contas.Close;
strProc_contas.Parameters.Clear;

strProc_contas.ProcedureName:= 'titulos_por_competencia';


strProc_contas.ProcedureName:= 'titulos_por_competencia';
strProc_contas.Parameters.CreateParameter('pCondicoes_pagar',ftString,pdInput,5000,mCondicao_pagar);
strProc_contas.Parameters.CreateParameter('pCondicoes_receber',ftString,pdInput,5000,mCondicao_receber);
strProc_contas.Parameters.CreateParameter('pCampoGrupo',ftString,pdInput,5000, mCampoGrupo);

strProc_contas.Parameters.CreateParameter('pOrdem',ftString,pdInput,5000, '');
strProc_contas.Open; //<--Error: Parameter 'Abbr' not found.

{
strProc_contas.Parameters.ParamByName('pCondicoes_pagar').Value :=mCondicao_pagar;
strProc_contas.Parameters.ParamByName('pCampoGrupo_pagar').Value := mCampoGrupo;
strProc_contas.Parameters.ParamByName('pCondicoes_receber').Value :=mCondicao_pagar;
strProc_contas.Parameters.ParamByName('pCampoGrupo_receber').Value :=mCampoGrupo_receber;
strProc_contas.Parameters.ParamByName('pOrdem').Value := '';
strProc_contas.Open; //<--Error: Parameter 'Abbr' not found.
}
RLReport1.PreviewModal;



end;

procedure TFrm_Contas_por_Competencia.FormCreate(Sender: TObject);


var
mjpeg: TJPEGImage;
begin
lblcab_dathor.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLSintImage1.Picture.Bitmap.Assign(mjpeg);
   end;
freeandnil(mjpeg);

//                                               0           1          2            3                4           5       6    7         8       9           10    11
if fLerGenerico_query('CADEMP,CADLOC','RAZAO,ENDERECO,NUMERO,BAIRRO,CEP,FONE,FAX,E_MAIL,HOMEPAGE,LNOME,LUF',
       'CODEMP='+IntTostr(codemp)+' and LCODLOC=CODLOC ' ,query_consulta) then
   begin
   lblcab_emp.Caption:=query_consulta.fieldbyname('RAZAO').asstring;
   lblcab_endereco.Caption:=query_consulta.fieldbyname('ENDERECO').asstring;
   if length(trim(query_consulta.fieldbyname('NUMERO').asstring ))>0 then
      lblcab_endereco.Caption:=lblcab_endereco.Caption+' No. '+query_consulta.fieldbyname('NUMERO').asstring;
   lblcab_endereco.Caption:=lblcab_endereco.Caption+' '+query_consulta.fieldbyname('BAIRRO').asstring;
   lblcab_cidade_uf_cep.Caption:=query_consulta.fieldbyname('LNOME').asstring +' '+query_consulta.fieldbyname('LUF').asstring+' '+query_consulta.fieldbyname('CEP').asstring;
   lblcab_fonefax.Caption       :='Telefone: '+query_consulta.fieldbyname('FONE').asstring+'  Fax: '+query_consulta.fieldbyname('FAX').asstring;
   lblcab_email_home.Caption    :='E-Mail: '+query_consulta.fieldbyname('E_MAIL').asstring+'  Home Page: '+query_consulta.fieldbyname('HOMEPAGE').asstring;
   end;



tsrelatorio.TabVisible:=false;
RLBand_cab.Borders.DrawLeft:=true;
RLBand_cab.Borders.DrawRight:=true;
RLBand_cab.Borders.DrawTop:=true;
RLBand_cab.Borders.DrawBottom:=true;

RLBand_cabcrit.Borders.DrawLeft:=true;
RLBand_cabcrit.Borders.DrawRight:=true;
RLBand_cabcrit.Borders.DrawTop:=true;
RLBand_cabcrit.Borders.DrawBottom:=true;

strProc_contasVALOR.DisplayFormat:=mcasas;
strProc_contasVALDEB.DisplayFormat:=mcasas;
strProc_contasVALCRED.DisplayFormat:=mcasas;

strProc_contasVALTIT.DisplayFormat:=mcasas;
strProc_contasVALDES.DisplayFormat:=mcasas;
strProc_contasJUROS.DisplayFormat:=mcasas;

strProc_contasDTEMIS.DisplayFormat:=fdt2;

strProc_contasDTVCTO.DisplayFormat:=fdt2;

RLGroup1.Borders.DrawLeft:=true;
RLGroup1.Borders.DrawRight:=true;
RLGroup1.Borders.DrawTop:=true;
RLGroup1.Borders.DrawBottom:=true;

RLBand_nomgrupo.Borders.DrawBottom:=true;

rlcab_NOMSAC.Borders.DrawLeft:=true;
rlcab_CODSAC.Borders.DrawLeft:=true;
rlcab_NUMDOC.Borders.DrawLeft:=true;
rlcab_desdob.Borders.DrawLeft:=true;
rlcab_VALCRED.Borders.DrawLeft:=true;
rlcab_VALDEB.Borders.DrawLeft:=true;


rldet_NOMSAC.Borders.DrawLeft:=true;
rldet_CODSAC.Borders.DrawLeft:=true;
rldet_NUMDOC.Borders.DrawLeft:=true;
rldet_desdob.Borders.DrawLeft:=true;
rldet_VALCRED.Borders.DrawLeft:=true;
rldet_VALDEB.Borders.DrawLeft:=true;

end;

end.
