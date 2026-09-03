unit S_RelNsCliXNcm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, ToolEdit, Grids, DBGrids,
  RLReport, CheckLst, ExtCtrls, ComCtrls, CurrEdit, RLXLSFilter, RLFilters,
  RLPDFFilter, Buttons;

type
  TFrm_RelNsCliXNcm = class(TForm)
    Qry_Rel: TQuery;
    Src_Rel: TDataSource;
    Qry_RelPDCODNCM: TStringField;
    Qry_RelCRAZAO: TStringField;
    Qry_RelPDNOME: TStringField;
    Qry_RelP2QTD: TFloatField;
    Qry_RelTOTAL: TFloatField;
    Qry_RelNSDTEMIS: TDateTimeField;
    Qry_RelNSNUMERO: TFloatField;
    DtIni: TDateEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    StaticText7: TStaticText;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    tsTipoPed: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    lbx_coduf: TListBox;
    CODUF: TEdit;
    Label12: TLabel;
    OMITIR_UF: TCheckBox;
    OMITIR_LOC: TCheckBox;
    Label10: TLabel;
    Label4: TLabel;
    DtFim: TDateEdit;
    Label6: TLabel;
    TsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    rlPeriodo: TRLLabel;
    Qry_RelCCODCLI: TFloatField;
    RLSystemInfo4: TRLSystemInfo;
    Label2: TLabel;
    CODNCM: TEdit;
    lbx_codncm: TListBox;
    lbx_codcfo: TListBox;
    CODCFO: TEdit;
    OMITIR_CFO: TCheckBox;
    Label3: TLabel;
    OMITIR_NCM: TCheckBox;
    lblNotas: TLabel;
    nfIni: TCurrencyEdit;
    nfFim: TCurrencyEdit;
    Label1: TLabel;
    lblClass: TLabel;
    edt_ncm: TEdit;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    BImprimir: TBitBtn;
    BBnFechar: TBitBtn;
    RG_TIPODOCS: TRadioGroup;
    Qry_RelEMITENTE: TStringField;
    Qry_RelCODRAZAO: TStringField;
    Qry_RelUF: TStringField;
    Qry_RelCODLOC: TFloatField;
    Qry_RelCFOP: TFloatField;
    Qry_RelCIDADE: TStringField;
    Qry_RelCODPRO: TFloatField;
    RLGroup_separado: TRLGroup;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    lbl_cab_PDCODNCM: TRLLabel;
    rlNome: TRLLabel;
    rlQtd: TRLLabel;
    rlValorNF: TRLLabel;
    lbl_CFOP: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    LBL_CODPRO: TRLLabel;
    RLBand3: TRLBand;
    lbl_det_PDCODNCM: TRLDBText;
    RLDBText4: TRLDBText;
    lbl_det_P2QTD: TRLDBText;
    RLDBText6: TRLDBText;
    edt_CFOP: TRLDBText;
    EDT_CODPRO: TRLDBText;
    RLBand_separado: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    lbl_separado: TLabel;
    CB_SEPARADO: TComboBox;
    Qry_RelSEPARADO: TStringField;
    RLBand4: TRLBand;
    lbl_sum_PDCODNCM: TRLLabel;
    lbl_sum_CODPRO: TRLLabel;
    lbl_sum_PDNOME: TRLLabel;
    lbl_sum_P2QTD: TRLLabel;
    lbl_sum_CFOP: TRLLabel;
    lbl_sum_TOTAL: TRLLabel;
    lbl_modelo: TRLLabel;
    lbl_mod: TRLLabel;
    Qry_RelCOD_MOD: TStringField;
    Label7: TLabel;
    RG_DOC: TComboBox;
    Label8: TLabel;
    RG_NFCANC: TComboBox;
    rlcab_P2PRECO: TRLLabel;
    rldet_P2PRECO: TRLDBText;
    Qry_RelP2PRECO: TFloatField;
    Qry_RelP2TOTDES: TFloatField;
    rlrod_P2PRECO: TRLLabel;
    rlcab_P2TOTDES: TRLLabel;
    rldet_P2TOTDES: TRLDBText;
    rlrod_P2TOTDES: TRLLabel;
    RLBand5: TRLBand;
    lbl_gru_PDCODNCM: TRLLabel;
    rlgruL_CODPRO: TRLLabel;
    rlgru_Nome: TRLLabel;
    rlgru_Qtd: TRLLabel;
    rlgru_CFOP: TRLLabel;
    rlgru_ValorNF: TRLLabel;
    rlgru_P2PRECO: TRLLabel;
    rlgru_P2TOTDES: TRLLabel;
    Label9: TLabel;
    cb_ordem: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODNCMExit(Sender: TObject);
    procedure CODCFOExit(Sender: TObject);
    procedure CODNCMKeyPress(Sender: TObject; var Key: Char);
    procedure CODCFOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codncmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcfoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure BImprimirClick(Sender: TObject);
    procedure BBnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    mTotQtd_gru: Real;
    mTotVlr_gru: Real;
    mTotdes_gru: Real;

    mTotQtd_ger: Real;
    mTotVlr_ger: Real;
    mTotdes_ger: Real;

  public

    { Public declarations }
  end;

var
  Frm_RelNsCliXNcm: TFrm_RelNsCliXNcm;

implementation

uses Func, func_excecoes, S_DM1, lerarq, S_DM6;

{$R *.dfm}

procedure TFrm_RelNsCliXNcm.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCLI.Text:=fChamaCli(0,'Frm_RelNsCliXNcm',key);
  CODCLIExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_RelNsCliXNcm.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
  begin
  if not flcadcli(1,0,CODCLI.Text) then
    begin
    fmensagem('Cliente não Cadastrado!',0,['0'],0);
    CODCLI.Text := '';
    CODCLI.SetFocus;
    end
  else
    begin
    Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                  +' - '+DM1.Tb_CliCRAZAO.Value);
    codcli.text := '';
    CODCLI.SetFocus;
    end;
  end;

end;

procedure TFrm_RelNsCliXNcm.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
  begin
  if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
    begin
    lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

    CODRED.text := '';
    CODRED.SetFocus;
    end
  else
    begin
    fmensagem('Rede não Cadastrado!',0,['0'],0);
    CODRED.text := '';
    CODRED.SetFocus;
    end;
  end;
end;

procedure TFrm_RelNsCliXNcm.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODRED.Text:=fChamaRedCli(0,'Frm_RelNsCliXNcm',key);
  CODREDExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;


end;

procedure TFrm_RelNsCliXNcm.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
  begin
  if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
    begin
    fmensagem('Estado não cadastrado!',0,['0'],0);
    CODUF.SetFocus;
    end
  else
    begin
    lbx_coduf.Items.Add(CODUF.Text
                                  +'-'+DM1.Query1.Fields[0].AsString);
    CODUF.text := '';
    CODUF.SetFocus;
    end;
  end;

end;

procedure TFrm_RelNsCliXNcm.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
  begin
  mcinst2:=fChamaUF(0,'frm_cabc','');
  if trim(mcinst2)<>'' then
    begin
    lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                  +'-'+DM1.Tb_UFPNOM.AsString);
    CODUFExit(self);
    coduf.SetFocus;
    end;
  end;

end;

procedure TFrm_RelNsCliXNcm.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
  begin
  if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
    begin
    fmensagem('Cidade não cadastrado!',0,['0'],0);
    CODLOC.SetFocus;
    end
  else
    begin
    lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODLOC.text := '';
    CODLOC.SetFocus;
    end;
  end;

end;

procedure TFrm_RelNsCliXNcm.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODLOC.Text:=fChamaLoc(0,'Frm_RelNsCliXNcm',Key);
  if trim(CODLOC.Text)<>'' then
    CODLOCExit(self);
  key:=#0;
  end;

end;

procedure TFrm_RelNsCliXNcm.CODNCMExit(Sender: TObject);
begin
CODNCM.Text:=fdeixanum2(CODNCM.Text);
if Trim(CODNCM.Text)<>'' then
  begin
  if not flcadCFTabIcm(1,0,CODNCM.Text) then
    begin
    fmensagem('NCM nao Cadastrado!',0,['0'],0);
    if CODNCM.Enabled then
      CODNCM.SetFocus;
    end
  else
    begin
    lbx_codncm.Items.Add(FormatFloat('00000000',StrToFloat(DM6.Tb_CFTabIcmCICLASSIF.AsString))
                                  +' - '+DM6.Tb_CFTabIcmCICLASSIF_NOME.Value);
    CODNCM.text := '';
    if CODNCM.Enabled then
      CODNCM.SetFocus;
    end;
  end;
end;

procedure TFrm_RelNsCliXNcm.CODCFOExit(Sender: TObject);
begin
CODCFO.Text:=fdeixanum2(CODCFO.Text);
if Trim(CODCFO.Text)<>'' then
  begin
  if not flcadcfo(1,0,CODCFO.Text) then
    begin
    fmensagem('CFOP nao Cadastrado!',0,['0'],0);
    if CODCFO.Enabled then
      CODCFO.SetFocus;
    end
  else
    begin
    lbx_codcfo.Items.Add(FormatFloat('0000',StrToFloat(DM1.Tb_CfoCFCODCFO.ASSTRING))
                                  +' - '+DM1.Tb_CfoCFNOME.Value);
    CODCFO.text := '';
    if CODCFO.Enabled then
      CODCFO.SetFocus;
    end;
  end;
end;

procedure TFrm_RelNsCliXNcm.CODNCMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODNCM.Text:=fChamaNCM(0,'Frm_RelNsCliXNcm',Key);
  if trim(CODNCM.Text)<>'' then
    CODNCMExit(self);
  key:=#0;
  end;
end;

procedure TFrm_RelNsCliXNcm.CODCFOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCFO.Text:=fChamacfop(0,'Frm_RelNsCliXNcm',Key);
  if trim(CODCFO.Text)<>'' then
    CODCFOExit(self);
  key:=#0;
  end;
end;

procedure TFrm_RelNsCliXNcm.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_codcli.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.lbx_codredKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_codred.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_coduf.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_codloc.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.lbx_codncmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_codncm.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.lbx_codcfoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = Vk_Delete then
  lbx_codcfo.DeleteSelected;
end;

procedure TFrm_RelNsCliXNcm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (Trim(DtIni.Text)> '/  /') and (Trim(DtFim.Text)> '/  /') then
  rlPeriodo.Caption:='Ref. ao periodo '+DtIni.Text+ ' à '+DtFim.Text+'.'
else if (Trim(DtIni.Text)> '/  /') then
  rlPeriodo.Caption:='Apartir do perido de '+DtIni.Text+ '.'
else if (Trim(DtFim.Text)> '/  /') then
  rlPeriodo.Caption:='Apartir do perido de '+DtIni.Text+ '.'
else
  rlPeriodo.Caption:='Sem periodo selecionado.';


mTotQtd_gru:=0;
mTotVlr_gru:=0;
mTotdes_gru:=0;

mTotQtd_ger:=0;
mTotVlr_ger:=0;
mTotdes_ger:=0;


end;

procedure TFrm_RelNsCliXNcm.BImprimirClick(Sender: TObject);
var
  Cont : Integer;
  mSeparado: string;
  mTituloFiltros: string;


    function fRetornarFiltros: String;
    begin
    mTituloFiltros:='';
    result:='';
    if lowercase(RG_DOC.Text)='cupom fiscal' then
       begin
       result:=Result+' and NSNUMCUP>0 ';
       mTituloFiltros:= mTituloFiltros+'Cupom Fiscal. ';
       end
    else if lowercase(RG_DOC.Text)='notas fiscais' then
       begin
       result:=Result+' and NSNUMERO>0 ';
       mTituloFiltros:= mTituloFiltros+'Notas Fiscais. ';

       end
    else if lowercase(RG_DOC.Text)='nfce' then
       begin
       result:=Result+' and NSNFCE_NUMERO>0 ';
       mTituloFiltros:= mTituloFiltros+'NFCE. ';
       end;
    if lowercase(RG_NFCANC.Text)='canceladas' then
       begin
       mTituloFiltros:= mTituloFiltros+' Somente os Documentos Cancelados. ';
       result:=result+' and (NSSTATUS=9 or NSNFCE_SITUACAO=9 or NSSITCUP=9) ';
       end
    else  if lowercase(RG_NFCANC.Text)='normais' then
       begin
       mTituloFiltros:= mTituloFiltros+' Somente os documentos validos. ';
       result:=result+' and (NSSTATUS=0 and NSNFCE_SITUACAO=0 and NSSITCUP=0) ';
       end
    else  if lowercase(RG_NFCANC.Text)='inutilizadas' then
       begin
       mTituloFiltros:= mTituloFiltros+' Somente documentos Inutilizados. ';
       result:=result+' and (NSSTATUS=8 or NSNFCE_SITUACAO=8) ';
       end
    else  if lowercase(RG_NFCANC.Text)='denegadas' then

       begin
       mTituloFiltros:= mTituloFiltros+' Somente documentos denegados. ';
       result:=result+' and (NSSTATUS=7 or NSNFCE_SITUACAO=7) ';
       end;

    end;
begin
Qry_Rel.Close;
Qry_Rel.SQL.Clear;
// inicio
if CB_SEPARADO.ItemIndex=0 then
   mSeparado:='CIDADE '
else if CB_SEPARADO.ItemIndex=1 then
   mSeparado:='UF '
else if CB_SEPARADO.ItemIndex=2 then
   mSeparado:='CRAZAO '
else
   mSeparado:=QuotedStr(' ');







if trim(mSeparado)='' then
   RLBand_separado.Visible:=false
else
   RLBand_separado.Visible:=true;

Qry_Rel.SQL.Add(' Select nf.*, CCODCLI || '+QuotedStr(' - ')+' || CRAZAO AS codrazao'
               +','+mSeparado+' as separado '
               +' from ( ');




if RG_TIPODOCS.ItemIndex<>1 then
   begin
   la_tabelas  :='';
   la_Empresas :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin(1,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');
   Qry_Rel.SQL.Add('select pdcodncm, crazao, ccodcli,'
                  +' pdnome||'+QuotedStr(' ')+'||pdund as pdnome, '
                  +' p2qtd, P2CODPRO AS CODPRO,p2totliq as Total, p2totdes, p2preco,nsdtemis, nsnumero,  '
               +QuotedStr('Propria ')+'  as emitente '
               +', LUF as uf '
               +', ccodloc as codloc '
               +', P2CFO as  cfop '
               +', LNOME as cidade '
               +', ccodred '
               +', COD_MOD '



   +' from ( '
   +' select case when nsnumero=0 then nsnfce_numero else nsnumero end as nsnumero, nschavep, nscodcli, '
   +' case when nsnfce_numero=0 then nsnfce_data else nsdtemis end as nsdtemis '
   +',NSORDEMP '
   +',NSLOTSEQ_CP '
   +',NSCODEMP '
   +',NSMODELO AS COD_MOD'

   +' from cadns where '
   +' nscodemp<100  '+fRetornarFiltros+' ) '
   +iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +'  1=1 ');


   end;
if RG_TIPODOCS.ItemIndex<>2 then
   begin
   if RG_TIPODOCS.ItemIndex=0 then
      Qry_Rel.SQL.add(' union all ');

   la_tabelas  :='';
   la_Empresas :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADFOR','FCODEMP','NECODEMP','FCODFOR','NECODFOR');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADLOC','LCODEMP','FCODEMP','LCODLOC','FCODLOC');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO' ,'PF2CODPRO');
   Qry_Rel.SQL.Add('select pdcodncm, frazao as crazao , fcodfor as ccodcli,'
                  +' pdnome||'+QuotedStr(' ')+'||pdund as pdnome, '
                  +' pf2qtdP as P2QTD, PF2CODPRO AS CODPRO,nvl(pf2totliq,0)+nvl(pf2icmsr,0) as Total,pf2totdes as p2totdes, pf2pU as p2preco,'
                  +' nedtemis as nsdtemis, nenumero as nsnumero, '
               +QuotedStr('Terceiros ')+'  as emitente '
               +', LUF as uf '
               +', fcodloc as codloc '
               +', PF2CFO as  cfop '
                +', LNOME as cidade '
                +', 0 as ccodred '
               +', COD_MOD '

   +' from ( '
   +' select nenumero, nechavep, necodfor, nedtemis '
   +',NELOTSEQ_CP '
   +',NECODEMP '
   +',NEMODELO AS COD_MOD'

   +' from cadne where '
   +' necodemp<100 and nenumero>0 ');
   if lowercase(RG_NFCANC.Text)='canceladas' then
       begin
       Qry_Rel.SQL.add(' and NESTATUS= 8');
       end
    else  if lowercase(RG_NFCANC.Text)='normal' then
       begin
       Qry_Rel.SQL.add(' and NESTATUS = 0');
       end
    else  if lowercase(RG_NFCANC.Text)='inutilizadas' then
       begin
       Qry_Rel.SQL.add(' and NESTATUS = 8');
       end
    else  if lowercase(RG_NFCANC.Text)='denegadas' then
       begin
       Qry_Rel.SQL.add(' and NESTATUS = 7');
       end;

   Qry_Rel.SQL.Add(') '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +'  1=1 ');

// inicio

    if lowercase(RG_NFCANC.Text)='canceladas' then
       begin
       mTituloFiltros:= mTituloFiltros+' Somente documentos cancelados. ';


       end
    else  if lowercase(RG_NFCANC.Text)='normal' then
       begin
       mTituloFiltros:= mTituloFiltros+' Somente documentos normais. ';

       end
    else  if lowercase(RG_NFCANC.Text)='inutilizadas' then
       begin

       mTituloFiltros:= mTituloFiltros+' Somente documentos Inutilizados. ';

       end
    else  if lowercase(RG_NFCANC.Text)='denegadas' then
       begin

       mTituloFiltros:= mTituloFiltros+' Somente documentos Denegados  ';
       end


// termino

   end;
// term ino

Qry_Rel.sql.add(' ) NF where 1=1 ');
if trim(dtini.Text)<>'/  /' then
  Qry_Rel.SQL.Add(' and nsdtemis>='+QuotedStr(DtIni.Text));
if trim(DtFim.Text)<>'/  /' then
  Qry_Rel.SQL.Add(' and nsdtemis<='+QuotedStr(DtFim.Text));
if nfIni.Value > 0 then
  Qry_Rel.SQL.Add(' and nsnumero>='+nfIni.Text);
if nfFim.Value > 0 then
  Qry_Rel.SQL.Add(' and nsnumero<='+nfFim.Text);
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  Qry_Rel.sql.Add(' and ccodcli '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
  Qry_Rel.sql.Add(' and ccodred '+mcinst2);

mcinst2:='';
mcinst3:='';
for Cont:=0 to lbx_coduf.Count -1 do
  begin
  mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[Cont],1,fPosCaractere('-',lbx_coduf.items[Cont])-1)+chr(39);
  mcinst3:=',';
  end;

if trim(mcinst2)<>'' then
  begin
  mcinst2:=' in ('+mcinst2+')';
  if OMITIR_UF.Checked then
    mcinst2:=' not '+mcinst2;
  Qry_Rel.sql.Add(' and uf '+mcinst2);
  end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
  Qry_Rel.sql.Add(' and codloc '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcfo,OMITIR_CFO);
if trim(mcinst2)<>'' then
  Qry_Rel.sql.Add(' and cfop '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codncm,OMITIR_NCM);
if trim(mcinst2)<>'' then
  Qry_Rel.sql.Add(' and pdcodncm '+mcinst2);

if trim(edt_ncm.Text)<>'' then
  Qry_Rel.sql.Add(' and pdcodncm like '+QuotedStr(Trim(edt_ncm.Text)+'%'));
//





 Qry_Rel.SQL.Add(' order by '+iif(cb_ordem.ItemIndex=0,'nsdtemis,nsnumero','nsnumero')+','+iif(mSeparado='','',mSeparado+',')+'crazao, pdnome ');

//  ex_erroSql_Novo(Qry_Rel,50,'Frm_RelNsCliXNcm','CADP02');

try
  Qry_Rel.Open;
except
  ex_erroSql_Novo(Qry_Rel,50,'Frm_RelNsCliXNcm','CADP02');
  end;
if not Qry_Rel.IsEmpty then
   begin
   lbl_titulo.Caption:='Re.l. de Notas Sacado x Classificação Fiscal.' +mTituloFiltros;
   RLReport1.PreviewModal;
   end
else
  begin
  fmensagem('Sem Registros para os filtros desejados',0,['0'],0);
  end;
end;

procedure TFrm_RelNsCliXNcm.FormCreate(Sender: TObject);
var
  Count : Integer;
begin
Qry_RelP2PRECO.displayformat:=mcasaspu;

Qry_RelP2TOTDES.displayformat:=mcasas;

DtIni.date:=IncMonth(date,-1);
DtIni.Text:='01/'+copy(dtini.text,04,07);

Dtfim.date:=IncMonth(dtini.date,1)-1;


TsRelatorio.Visible:=false;

RG_TIPOPED.Items.Clear;
for Count:=1 to high(tab_tped) do
  RG_TIPOPED.Items.Add(tab_tped[Count]);
TsRelatorio.TabVisible:=False;
PageControl1.ActivePageIndex:=0;

end;

procedure TFrm_RelNsCliXNcm.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_RelNsCliXNcm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RelNsCliXNcm.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lbl_sum_PDCODNCM.Caption:='';
lbl_sum_CODPRO.Caption:='';

lbl_sum_PDNOME.Caption:='Total';
lbl_sum_P2QTD.Caption:=FloatToStr(mTotQtd_ger);
rlrod_P2TOTDES.Caption:=Formatfloat(mcasas, mTotdes_ger);
lbl_sum_TOTAL.Caption:=Formatfloat(mcasas, mTotVlr_ger);



mTotQtd_ger:=0;
mTotVlr_ger:=0;
mTotdes_ger:=0;



end;

procedure TFrm_RelNsCliXNcm.RLBand3AfterPrint(Sender: TObject);
begin
    mTotQtd_gru:=mTotQtd_gru+Qry_RelP2QTD.AsFloat;
    mTotVlr_gru:=mTotVlr_gru+Qry_RelTOTAL.AsFloat;
    mTotdes_gru:=mTotdes_gru+Qry_RelP2TOTDES.AsFloat;

    mTotQtd_ger:=mTotQtd_ger+Qry_RelP2QTD.AsFloat;
    mTotVlr_ger:=mTotVlr_ger+Qry_RelTOTAL.AsFloat;
    mTotdes_ger:=mTotdes_ger+Qry_RelP2TOTDES.AsFloat;


end;

procedure TFrm_RelNsCliXNcm.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_gru_PDCODNCM.Caption:='';
rlgruL_CODPRO.Caption:='';

rlgru_Nome.Caption:='Total da nota ';
rlgru_Qtd.Caption:=FloatToStr(mTotQtd_gru);
rlgru_P2TOTDES.Caption:=Formatfloat(mcasas, mTotdes_gru);
rlgru_ValorNF.Caption:=Formatfloat(mcasas, mTotVlr_gru);



mTotQtd_gru:=0;
mTotVlr_gru:=0;
mTotdes_gru:=0;


end;

end.
