unit S_RasPlote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,S_DM1,db,dbtables,func,lerarq,S_Impres,
  func2,S_For,S_Cli,S_Pro, S_SelEmp, CheckLst, ComCtrls,s_lerarq_geral;

type
  TFrm_RasPLote = class(TForm)
    PC1: TPageControl;
    TsRel: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    NOMCLI: TEdit;
    CODCLI: TEdit;
    LOTE: TEdit;
    MDTVCTO: TMaskEdit;
    RG_ORIGEM: TRadioGroup;
    CB_PEDPEN: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_AJUSTE: TCheckBox;
    NOMPRO: TEdit;
    CODPRO: TEdit;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    Qr_Ent: TQuery;
    Qr_EntDATA: TDateTimeField;
    Qr_EntCHAVE: TFloatField;
    Qr_EntORDEM: TFloatField;
    Qr_EntFORCLI: TStringField;
    Qr_EntCODIGO: TFloatField;
    Qr_EntNUMNF: TFloatField;
    Qr_EntCODPRO: TFloatField;
    Qr_EntQTD: TFloatField;
    Qr_EntLOTE: TStringField;
    Qr_EntDTVCTO: TDateTimeField;
    Qr_EntTIPO: TFloatField;
    Qr_Entnomsac: TStringField;
    Qr_Enttipo_mov: TStringField;
    Qr_Entdatavenc: TStringField;
    Qr_Entchavereg: TStringField;
    tsFiltro: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Qr_EntMOTIVO: TMemoField;
    Label10: TLabel;
    cb_tipodata: TComboBox;
    Qr_EntLOCARMAZEN: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Qr_EntCalcFields(DataSet: TDataSet);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClickCheck(Sender: TObject);
  private
  mImprimiu: Boolean;
  function frasploteIC(ptipo: Integer): Boolean;
  function frasploteImprime(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
    form_impres_rasplote: tfrm_impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RasPLote: TFrm_RasPLote;
  mpag,mlin: Integer;

implementation

uses S_DM2, S_DM4;

{$R *.dfm}

procedure TFrm_RasPLote.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RasPLote.bbImprimirClick(Sender: TObject);
var
mqtde, mqtds: Real;
minstrucao: String;
mspa60: String;
mTipoData: String;
//mNomeView: String;
begin
If ValFloat(CODPRO.Text)<=0 then
   begin
   FMensagem('Código do Produto Campo Obrigatório!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
mImprimiu:=false;
if cb_tipodata.itemindex=1 then
   mTipoData:='P1DATDOC'
else
   mTipoData:='P1DATAP';

//mNomeView:=fProcTemp(22);
mspa60:='PEDIDO DE COMPRA                                            ';
LOTE.Text   :=Trim(LOTE.Text);
testeform := TFrm_RaspLote(FindGlobalComponent('form_impres_rasplote'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_rasplote);

form_impres_rasplote.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpag:=0;
mlin:=0;

Qr_Ent.Close;
Qr_Ent.SQL.Clear;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

 fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
//    fInnerJoin4(1,'cadp02' ,'p2codemp','p1codemp' ,'p2lotseq' ,'p1lotseq','p2chave' ,'p1chave','p2ordem' ,'p1ordem');

la_instrucao:=la_instrucao+' and ';
fInnerJoin5(0,'CADPF2_LOTES_ORC','PF2L_CODEMP','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO','PF2L_ITEM','PF2ITEM');

if RG_ORIGEM.ItemIndex<>1 then
   begin
   Qr_Ent.Close;
   Qr_Ent.SQL.Clear;
   Qr_Ent.SQL.Add('Select PF1DATA AS DATA,PF1CHAVE AS CHAVE, '
                 +'       PF1CHAVE-PF1CHAVE AS ORDEM, '
                 +'       PF1CHAVE-PF1CHAVE AS LOCARMAZEN, '
                 +'       '+chr(39)+'FR'+chr(39)+' AS FORCLI,'
                 +'       PF1CODFOR AS CODIGO, '
                 +'       PF1NUMNF AS NUMNF, '
                 +chr(39)+mspa60+chr(39)+'  AS MOTIVO, '
                 +'       (PF1CHAVE-PF1CHAVE)+100 AS TIPO,'
                 +'       PF2CODPRO AS CODPRO, '
                 +'       case when NVL(PF2L_QTD,0)=0 then PF2QTDP else PF2L_QTD end AS QTD, '
                 +'       case when NVL(PF2L_QTD,0)=0 then PF2LOTE else PF2L_LOTE end AS LOTE, '
                 +'       case when NVL(PF2L_QTD,0)=0 then PF2DATAV else PF2L_DTVCTO end AS DTVCTO '

                 +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PF1STATUS=1 ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and PF1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and PF1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   if Trim(CODFOR.Text)<>'' then
      Qr_Ent.SQL.Add(' and PF1CODFOR=0'+Trim(CODFOR.Text));
   if Trim(CODPRO.Text)<>'' then
      Qr_Ent.SQL.Add(' and PF2CODPRO=0'+Trim(CODPRO.Text));
   if Trim(LOTE.Text)<>'' then
      begin
      Qr_Ent.SQL.Add(' and (PF2LOTE=:LOTE or PF2L_LOTE=:LOTE)' ) ;
      Qr_Ent.ParamByName('LOTE').AsString:=LOTE.Text;
      end;
   if Trim(MDTVCTO.Text)<>'/  /' then
      begin
      Qr_Ent.SQL.Add(' and (PF2DATAV=:DATAV or PF2L_DATAV=>DATAV ');
      Qr_Ent.parambyname('DATAV').AsDateTime:=StrToDate(MDTVCTO.Text);
      end;
//   Qr_Ent.SQL.Add(' and substr(to_char(pf2cfo),-3,3)<>'+chr(39)+'902'+chr(39));

   Qr_Ent.SQL.Add(' union all  ');


   la_empresas  :='';
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(0,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_CODPRO','P2CODPRO','P2LM_ITEM','P2ITEM');


   Qr_Ent.SQL.Add('Select '+mTipoData+' AS DATA,P1CHAVE AS CHAVE, '
                 +'       P1ORDEM AS ORDEM, '
                 +'       P1FILIAL AS LOCARMAZEN, '

                 +'       '+chr(39)+'CL'+chr(39)+' AS FORCLI,'
                 +'       P1CODCLI AS CODIGO, '
                 +'       P1NUMNF AS NUMNF, '
                 +'       P1OBS1  AS MOTIVO, '
                 +'       P1TIPO  AS TIPO, '
                 +'       P2CODPRO AS CODPRO, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2QTD else P2LM_QTD end AS QTD, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2LOTE else P2LM_LOTE end AS LOTE, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2DTVCTO else P2LM_DTVCTO end AS DTVCTO '

                 +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+'  and P1TIPO=8 and P1STATUS <8 and ');
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   if Trim(la_empresas)<>'' then
      Qr_Ent.SQL.Add(la_empresas+' and ');
   Qr_ent.SQL.Add(' P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and '+mTipoData+'>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and '+mTipoData+'<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   if Trim(CODCLI.Text)<>'' then
      Qr_Ent.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
   if Trim(CODPRO.Text)<>'' then
      Qr_Ent.SQL.Add(' and P2CODPRO=0'+Trim(CODPRO.Text));
   if Trim(LOTE.Text)<>'' then
      begin
      Qr_Ent.SQL.Add(' and (P2LOTE=:LOTE or P2LM_LOTE=:LOTE )');
      Qr_Ent.ParamByName('LOTE').AsString:=LOTE.Text;
      end;
   if Trim(MDTVCTO.Text)<>'/  /' then
      begin
      Qr_Ent.SQL.Add(' and (P2DTVCTO=:DTVCTO or P2LM_DTVCTO=:DTVCTO )');
      Qr_Ent.ParamByName('DTVCTO').AsDateTime:=StrToDate(MDTVCTO.Text);
      end;
   if not CB_PEDPEN.Checked then
      Qr_Ent.SQL.Add(' and P1EMIDOC>0 ');
    mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
    if trim(mcinst2)<>'' then
      Qr_Ent.SQL.Add(' and  P1TIPO not '+mcinst2);



   mcinst4:=fGerarCondicaoQtd('P2QTD',Form_SelEmp.CLB_EMPRESAS);
   if CB_AJUSTE.Checked then
      begin
      Qr_Ent.SQL.Add(' union all  ');
      Qr_Ent.SQL.Add('Select AJDATA  AS DATA,AJSEQ AS CHAVE, '
                    +'       AJSEQ-AJSEQ AS ORDEM, '
                    +'       AJSEQ-AJSEQ AS LOCARMAZEN, '
                    +'       '+chr(39)+'AJ'+chr(39)+' AS FORCLI,'
                    +'       AJSEQ-AJSEQ AS CODIGO, '
                    +'       AJSEQ-AJSEQ AS NUMNF, '
                    +'       AJMOTIVO  AS MOTIVO, '
                    +'       (AJSEQ-AJSEQ)+111 AS TIPO, '
                    +'       AJCODPRO AS CODPRO, '
                    +'       AJQTD AS QTD, '
                    +'       AJLOTE AS LOTE, '
                    +'       AJDATAV AS DTVCTO '
                    +' from CADAJU where AJTIPOM=0 ');
      la_Empresas:=fEmpresas_Selecionadas('CADEST','CECODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Trim(la_empresas)<>'' then
         Qr_Ent.SQL.Add(la_empresas+' and ');
      if Trim(MDT1.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      if Trim(CODPRO.Text)<>'' then
         Qr_Ent.SQL.Add(' and AJCODPRO=0'+Trim(CODPRO.Text));
      if Trim(LOTE.Text)<>'' then
         Qr_Ent.SQL.Add(' and AJLOTE='+chr(39)+LOTE.Text+chr(39));
      if Trim(MDTVCTO.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATAV='+chr(39)+FormatDateTime(fdt,StrToDate(MDTVCTO.Text))+chr(39));
      end;
   try
      Qr_Ent.Open;
   except
      Qr_Ent.sql.savetofile('c:\sqlamvs.txt');
      end;

   Qr_Ent.sql.savetofile('c:\sqlamvs.txt');

   frasploteImprime(0)
   end;

if RG_ORIGEM.ItemIndex<>0 then
   begin
   //if RG_ORIGEM.ItemIndex=2 then
   //   Qr_Ent.SQL.Add(' union  ');
   Qr_Ent.Close;
   Qr_Ent.SQL.Clear;


   la_empresas  :='';
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(0,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_CODPRO','P2CODPRO','P2LM_ITEM','P2ITEM');


   Qr_Ent.SQL.Add('Select '+mTipoData+' AS DATA,P1CHAVE AS CHAVE, '
                 +'       P1ORDEM AS ORDEM, '
                 +'       P1FILIAL AS LOCARMAZEN, '

                 +'       '+chr(39)+'CL'+chr(39)+' AS FORCLI,'
                 +'       P1CODCLI AS CODIGO, '
                 +'       P1NUMNF AS NUMNF, '
                 +'       P1OBS1  AS MOTIVO, '
                 +'       P1TIPO  AS TIPO, '
                 +'       P2CODPRO AS CODPRO, '
//                 +'       P2QTD AS QTD, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2QTD else P2LM_QTD end AS QTD, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2LOTE else P2LM_LOTE end AS LOTE, '
                 +'       case when NVL(P2LM_QTD,0)=0 then P2DTVCTO else P2LM_DTVCTO end AS DTVCTO '

                 +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' AND P1TIPO<>8 and P1STATUS <8 and ');
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   if Trim(la_empresas)<>'' then
      Qr_Ent.SQL.Add(la_empresas+' and ');
   Qr_ent.SQL.Add(' P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and '+mTipoData+'>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Ent.SQL.Add(' and '+mTipoData+'<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   if Trim(CODCLI.Text)<>'' then
      Qr_Ent.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
   if Trim(CODPRO.Text)<>'' then
      Qr_Ent.SQL.Add(' and P2CODPRO=0'+Trim(CODPRO.Text));
   if Trim(LOTE.Text)<>'' then
      begin
      Qr_Ent.SQL.Add(' and (P2LOTE=:LOTE or P2LM_LOTE=:LOTE )');
      Qr_Ent.ParamByName('LOTE').AsString:=LOTE.Text;
      end;
   if Trim(MDTVCTO.Text)<>'/  /' then
      begin
      Qr_Ent.SQL.Add(' and (P2DTVCTO=:DTVCTO or P2LM_DTVCTO=:DTVCTO )');
      Qr_Ent.ParamByName('DTVCTO').AsDateTime:=StrToDate(MDTVCTO.Text);
      end;
   if not CB_PEDPEN.Checked then
      Qr_Ent.SQL.Add(' and P1EMIDOC>0 ');
    mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
    if trim(mcinst2)<>'' then
      Qr_Ent.SQL.Add(' and  P1TIPO not '+mcinst2);



   if CB_AJUSTE.Checked then
      begin
      Qr_Ent.SQL.Add(' union all  ');
      Qr_Ent.SQL.Add('Select AJDATA  AS DATA,AJSEQ AS CHAVE, '
                    +'       AJSEQ-AJSEQ AS ORDEM, '
                    +'       AJSEQ-AJSEQ AS LOCARMAZEN, '
                    +'       '+chr(39)+'AJ'+chr(39)+' AS FORCLI,'
                    +'       AJSEQ-AJSEQ AS CODIGO, '
                    +'       AJSEQ-AJSEQ AS NUMNF, '
                    +'       AJMOTIVO  AS MOTIVO, '
                    +'       (AJSEQ-AJSEQ)+112 AS TIPO, '
                    +'       AJCODPRO AS CODPRO, '
                    +'       AJQTD AS QTD, '
                    +'       AJLOTE AS LOTE, '
                    +'       AJDATAV AS DTVCTO '
                    +' from CADAJU where AJTIPOM=1 ');
      la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Trim(la_empresas)<>'' then
         Qr_Ent.SQL.Add(la_empresas+' and ');
      if Trim(MDT1.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      if Trim(CODPRO.Text)<>'' then
         Qr_Ent.SQL.Add(' and AJCODPRO=0'+Trim(CODPRO.Text));
      if Trim(LOTE.Text)<>'' then
         Qr_Ent.SQL.Add(' and AJLOTE='+chr(39)+LOTE.Text+chr(39));
      if Trim(MDTVCTO.Text)<>'/  /' then
         Qr_Ent.SQL.Add(' and AJDATAV='+chr(39)+FormatDateTime(fdt,StrToDate(MDTVCTO.Text))+chr(39));
      end;
   try
      Qr_Ent.sql.Add('  order by data ');
      Qr_Ent.Open;
//      Qr_Ent.sql.savetofile('c:\sqlamvs.txt');
   except
      Qr_Ent.sql.savetofile('c:\sqlamvs.txt');
      end;
//    Qr_Ent.sql.savetofile('c:\sqlamvs.txt');

   if (mlin>0) and (mlin<50) then
      begin
      frasploteIC(1);
      end
   else
      mlin:=0;
   frasploteImprime(1);
   end;

if mImprimiu=true then
  begin
  if form_impres_rasplote.RdPrint1.Setup then form_impres_rasplote.RDprint1.Fechar;
  form_impres_rasplote.free;
  form_impres_rasplote:=nil;
  end
else
  fmensagem('Não a nada a ser impresso na condição solicitada!',0,['0'],0)

{
Select PF1DATA,PF1CHAVE,PF1NUMNF,PF2CODPRO,PF2QTD,PF2LOTE,PF2DATAV
from CADPF1,CADPF2
where PF2CHAVE=PF1CHAVE
                                                                                             12345678901234567890
| d a t a| Sacado                                      | Quantidade|Lote Mercadoria|Dt.Vcto.|Tipo do Movimento   | Cod.Mov. |Num.NF|
+--------+---------------------------------------------+-----------+---------------+--------+--------------------+----------+------+
|10/09/02|12345-123456789012345678901234567890123456789|1234567.123|123456789012345|10/09/20|DEVOLUCAO FORNECEDOR|1234567/01|123456|
}
end;

procedure TFrm_RasPLote.LOTEKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['''','"'] then key :=#0;
end;

procedure TFrm_RasPLote.FormCreate(Sender: TObject);
var
  x: Integer;
begin
{if DM1.Tb_EmpCGC.AsFloat=5960774000188 then
   begin
   RG_ORIGEM.Items.Clear;
   RG_ORIGEM.Items.Add('Origem');
   RG_ORIGEM.ItemIndex:=0;
   CB_PEDPEN.Visible:=false;
   CB_AJUSTE.Visible:=false;
   end;}
PC1.ActivePageIndex:=0;
tsFiltro.TabVisible:=False;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
   RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
if flfilpad(0,'_RasPlote','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
    begin
    mcinst:='';
    for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
        begin
        RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
        mcinst:='';
        end
      else
        mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
    if trim(mcinst)<>'' then
      RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
    end;
  end;
end;

function TFrm_RasPLote.frasploteImprime(ptipo: Integer): Boolean;
var
mQtdTot: Real;
begin
mQtdTot:=0;
While not Qr_Ent.Eof do
   begin
   mImprimiu:=true;

   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_rasplote.RDprint1.impf(01,01,DM1.Tb_EmpRAZAO.Value,mreduz);
      form_impres_rasplote.RDprint1.ImpF(01,116,'Pagina: '+FormatFloat('0000',mpag),mreduz);
      form_impres_rasplote.RDprint1.ImpF(02,01,'Rastreamento de Produto. '+fperiodo(0,Trim(MDT1.Text),Trim(MDT2.Text))+'.',mreduz);
      form_impres_rasplote.RDprint1.ImpF(02,116,'Data: '+FormatDateTime(fdt2, pdatasis),mreduz);
      mlin:=3;
      form_impres_rasplote.RDprint1.ImpF(mlin,01,insere2('-','-',132),mreduz);
      fRasPloteIc(ptipo);
      end;
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,'|'+FormatDateTime(fdt3, Qr_EntDATA.Value)+'|'
                           +insere2(Qr_Entnomsac.Value,' ',45)+'|'
                           +insere(FormatFloat(mcasqtd, Qr_EntQTD.Value),' ',11)+'|'
                           +insere2(Qr_EntLOTE.Value,' ',15)+'|'
                           +insere2(Qr_Entdatavenc.Value,' ',8)+'|'
                           +insere2(Qr_Enttipo_mov.Value,' ',20)+'|'
                           +insere(Qr_Entchavereg.Value,' ',10)+'|'
                           +Insere(Qr_EntNUMNF.AsString,' ',6)+'|',mreduz);
   mQtdTot:=mQtdTot+Qr_EntQTD.AsFloat;
   Qr_Ent.Next;
   if Qr_Ent.eof then
      begin
      mlin:=mlin+1;
      form_impres_rasplote.RDprint1.ImpF(mlin,01,'|'+insere2(' ',' ',08)+'|'
                           +insere2('Total','.',45)+'|'
                           +insere(FormatFloat(mcasqtd,mQtdTot),' ',11)+'|'
                           +insere2(' ',' ',15)+'|'
                           +insere2(' ',' ',8)+'|'
                           +insere2(' ',' ',20)+'|'
                           +insere(' ',' ',10)+'|'
                           +Insere(' ',' ',6)+'|',mreduz);

      mlin:=mlin+1;
      form_impres_rasplote.RDprint1.ImpF(mlin,01,'+--------+---------------------------------------------+-----------+---------------+--------+--------------------+----------+------+',mreduz);
      end
   else if (mlin>58) then
      begin
      mlin:=mlin+1;
      form_impres_rasplote.RDprint1.ImpF(mlin,01,'+--------+---------------------------------------------+-----------+---------------+--------+--------------------+----------+------+',mreduz);
      form_impres_rasplote.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
result:=True;
end;
function TFrm_RasPLote.frasploteIC(ptipo: Integer): Boolean;
begin

mlin:=mlin+1;
form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra('Produto: '+Trim(CODPRO.Text)+'-'+Trim(NOMPRO.Text),' ',80),mneg);
if (ptipo=0) and (Trim(CODFOR.Text)<>'') then
   begin
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra('Fornecedor: '+Trim(CODFOR.Text)+'-'+Trim(NOMFOR.Text),' ',80),mneg);
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra('Cliente: '+Trim(CODCLI.Text)+'-'+Trim(NOMCLI.Text),' ',80),mneg);
   end;
if (LOTE.Text<>'') or (Trim(MDTVCTO.Text)<>'/  /') then
   begin
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra(iif(LOTE.Text='','','LOTE: '+LOTE.Text+' ')+iif(MDTVCTO.Text='  /  /  ','','VENCIMENTO: '+MDTVCTO.Text),' ',80),mneg);
   end;
if RG_ORIGEM.ItemIndex=0 then
   begin
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra('SOMENTE ORIGEM',' ',80),mneg);
   end
else if RG_ORIGEM.ItemIndex=1 then
   begin
   mlin:=mlin+1;
   form_impres_rasplote.RDprint1.ImpF(mlin,01,Centra('SOMENTE DESTINO',' ',80),mneg);
   end;
mlin:=mlin+1;
form_impres_rasplote.RDprint1.ImpF(mlin,01,insere2('-','-',132),mreduz);
mlin:=mlin+1;
if ptipo=0 then
   form_impres_rasplote.RDprint1.ImpF(mlin,01,'ORIGEM DA MERCADORIA',mneg)
else
   form_impres_rasplote.RDprint1.ImpF(mlin,01,'DESTINO DA MERCADORIA',mneg);
mlin:=mlin+1;
form_impres_rasplote.RDprint1.ImpF(mlin,01,'+--------+---------------------------------------------+-----------+---------------+--------+--------------------+----------+------+',mreduz);
mlin:=mlin+1;
form_impres_rasplote.RDprint1.ImpF(mlin,01,'| d a t a| Sacado                                      | Quantidade|Lote Mercadoria|Dt.Vcto.|Tipo do Movimento   | Cod.Mov. |Num.NF|',mreduz);
mlin:=mlin+1;
form_impres_rasplote.RDprint1.ImpF(mlin,01,'+--------+---------------------------------------------+-----------+---------------+--------+--------------------+----------+------+',mreduz);
Result:=True;
end;
procedure TFrm_RasPLote.Qr_EntCalcFields(DataSet: TDataSet);
begin
if (Qr_EntTIPO.AsInteger>=0) and (Qr_EntTIPO.AsInteger<=29) then
   Qr_Enttipo_mov.Value:=tab_tped[Qr_EntTIPO.asinteger]
else if Qr_EntTIPO.Value=100 then
   Qr_Enttipo_mov.Value:='Compra de Mercadoria'
else if Qr_EntTIPO.Value=101 then
   Qr_Enttipo_mov.Value:='Entrada Bonificiacao'
else if Qr_EntTIPO.Value=102 then
   Qr_Enttipo_mov.Value:='Entrada Complementar'
else if Qr_EntTIPO.Value=111 then
   Qr_Enttipo_mov.Value:='Ajuste Entradas'
else if Qr_EntTIPO.Value=112 then
   Qr_Enttipo_mov.Value:='Ajuste Saidas'
else
   Qr_Enttipo_mov.Value:='Desconhecido';

Qr_Enttipo_mov.Value:=Qr_Enttipo_mov.Value+'['+Qr_EntLOCARMAZEN.AsString+']';
if Qr_EntFORCLI.Value='FR' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_EntCODIGO.AsString) then
      Qr_Entnomsac.Value:=FormatFloat('00000',Qr_EntCODIGO.Value)+'-'+DM1.Query1.Fields[0].AsString
   else
      Qr_Entnomsac.Value:=Insere2(Qr_EntMOTIVO.Value,' ',45);
   end
else if Qr_EntFORCLI.Value='CL' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_EntCODIGO.AsString) then
      Qr_Entnomsac.Value:=FormatFloat('00000',Qr_EntCODIGO.Value)+'-'+DM1.Query1.Fields[0].AsString
   else
      Qr_Entnomsac.Value:=Insere2(Qr_EntMOTIVO.Value,' ',45);
   end
else
   Qr_Entnomsac.Value:=Insere2(Qr_EntMOTIVO.Value,' ',45);
if (Qr_EntDTVCTO.IsNull) or (Qr_EntDTVCTO.Value<=pdatanula) then
   Qr_Entdatavenc.Value:='  /  /'
else
   Qr_Entdatavenc.Value:=FormatDateTime(fdt3, Qr_EntDTVCTO.Value);
Qr_Entchavereg.Value:=Qr_EntCHAVE.AsString;

if Qr_EntORDEM.Value>0 then
   Qr_Entchavereg.Value:=Qr_Entchavereg.Value+'/'+FormatFloat('00',Qr_EntORDEM.Value);

end;

procedure TFrm_RasPLote.CODFORExit(Sender: TObject);
begin
if ValFloat(CODFOR.Text)<=0 then
   begin
   CODFOR.Text:='';
   NOMFOR.Text:='Todos...'
   end
else
   begin
   CODFOR.Text:=FloatToStr(ValFloat(CODFOR.Text));
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      FMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;   
   end;

end;

procedure TFrm_RasPLote.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text :=fChamaFor(0,'frm_RasPlote',Key);
   if trim(CODFOR.Text)<>'' then
   CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RasPLote.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RasPLote',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RasPLote.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)<=0 then
   begin
   CODCLI.Text:='';
   NOMCLI.Text:='Todos...'
   end
else
   begin
   CODCLI.Text:=FloatToStr(ValFloat(CODCLI.Text));
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      FMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_RasPLote.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_RasPLote',key);
if trim(CODPRO.Text)<>'' then
   CODPROExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RasPLote.CODPROExit(Sender: TObject);
begin
if ValFloat(CODPRO.Text)<=0 then
   begin
   CODPRO.Text:='';
   exit;
   end
else
   begin
   CODPRO.Text:=FloatToStr(ValFloat(CODPRO.Text));
   if not flqr1('PDNOME,PDMARCA','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end
   else
      NOMPRO.Text:=Trim(DM1.Query1.Fields[0].Asstring)+' '+DM1.Query1.Fields[1].AsString;
   end;


end;

procedure TFrm_RasPLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RasPLote.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
  begin
  if tsFiltro.TabVisible then
     tsFiltro.TabVisible:=false
  else
     tsFiltro.TabVisible:=true;
  end
else
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
end;

procedure TFrm_RasPLote.RG_TIPOPEDClickCheck(Sender: TObject);
var
  x: Integer;

begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

mcinst2:='';
fDeletaPadroes(0,'_RasPlote','');
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_RasPlote',mcinst2);
end;

end.
