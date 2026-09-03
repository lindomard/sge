unit S_IndEnv_Fab_Etapas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, ToolEdit, Spin, DB,
  Grids, DBGrids, DBTables, RxMemDS;

type
  TFrm_IndEnv_Fab_Etapas = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBCONFIRMAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel3: TPanel;
    StaticText10: TStaticText;
    st_totmpund: TStaticText;
    StaticText11: TStaticText;
    st_totmpvlr: TStaticText;
    StaticText12: TStaticText;
    st_totmeund: TStaticText;
    StaticText14: TStaticText;
    st_totmevlr: TStaticText;
    StaticText13: TStaticText;
    st_totgerund: TStaticText;
    StaticText16: TStaticText;
    st_totgervlr: TStaticText;
    Panel_chave: TPanel;
    Label1: TLabel;
    edt_chave: TEdit;
    Label2: TLabel;
    status: TStaticText;
    edt_datfab: TDateEdit;
    PageControl1: TPageControl;
    ts_mp: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    cb_qtdetapas: TSpinEdit;
    Label4: TLabel;
    CB_ETAPA_ATIVA: TComboBox;
    tsEmb: TTabSheet;
    tsProcessos: TTabSheet;
    DBGrid_mp: TDBGrid;
    src_mp: TDataSource;
    Qr_Comp_MP: TQuery;
    Qr_Comp_MPCPCODEMP: TFloatField;
    Qr_Comp_MPCPORDEM: TFloatField;
    Qr_Comp_MPCPCODPRO: TFloatField;
    Qr_Comp_MPCPNUMERO: TStringField;
    Qr_Comp_MPCPCODMAT: TFloatField;
    Qr_Comp_MPCPCODPRO_ACAB: TFloatField;
    Qr_Comp_MPCPMPNUM: TStringField;
    Qr_Comp_MPCPQUANT: TFloatField;
    Qr_Comp_MPCPPU: TFloatField;
    Qr_Comp_MPCPVLRINC: TFloatField;
    Qr_Comp_MPCPALIQORI: TFloatField;
    Qr_Comp_MPCPALICMSCRED: TFloatField;
    Qr_Comp_MPCPICMSCRED: TFloatField;
    Qr_Comp_MPCPTIPO: TFloatField;
    Qr_Comp_MPCPQTD_PAD: TFloatField;
    Qr_Comp_MPCPPERCENT: TFloatField;
    Qr_Comp_MPCPPERCENT_REST: TFloatField;
    Qr_Comp_MPPDNOME: TStringField;
    Qr_Comp_MPPDUND: TStringField;
    Qr_Comp_MPPDNOME2: TStringField;
    Qr_Comp_MPOP3_QTDPREV: TFloatField;
    Qr_Comp_MPOP3_QTDUTIL: TFloatField;
    Qr_Comp_MPOP3_PU: TFloatField;
    Qr_Comp_MPOP3_LOTE: TStringField;
    Qr_Comp_MPOP3_DTVCTO: TDateTimeField;
    Qr_Comp_MPOP3_LOTE_RE: TStringField;
    lbl_etapa: TLabel;
    Label6: TLabel;
    edt_CODPRO: TEdit;
    CB_NOMPRO: TComboBox;
    Label7: TLabel;
    edt_QTDPREV: TEdit;
    Label8: TLabel;
    edt_QTDPROD: TEdit;
    Label9: TLabel;
    edt_PRAZOVAL: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    edt_MNUMLOT: TEdit;
    Label12: TLabel;
    edt_dtvcto: TDateEdit;
    mem_op03_mp: TRxMemoryData;
    mem_op03_mpMP_CODEMP: TIntegerField;
    mem_op03_mpMP_NUMERO: TStringField;
    mem_op03_mpMP_CODPRO: TStringField;
    mem_op03_mpMP_CODMAT: TStringField;
    mem_op03_mpMP_CODPRO_ACAB: TStringField;
    mem_op03_mpMP_MPNUM: TStringField;
    mem_op03_mpMP_QUANT: TFloatField;
    mem_op03_mpMP_PU: TFloatField;
    mem_op03_mpMP_VLRINC: TFloatField;
    mem_op03_mpMP_ALIQORI: TFloatField;
    mem_op03_mpMP_ALICMSCRED: TFloatField;
    mem_op03_mpMP_VLR_ICMSCRED: TFloatField;
    mem_op03_mpMP_TIPO: TFloatField;
    mem_op03_mpMP_QTD_PAD: TFloatField;
    mem_op03_mpMP_CPPERCENT: TFloatField;
    mem_op03_mpMP_CPPERCENT_REST: TFloatField;
    mem_op03_mpMP_NOME: TStringField;
    mem_op03_mpMP_UND: TStringField;
    mem_op03_mpMP_NOME2: TStringField;
    mem_op03_mpMP_QTDPREV: TFloatField;
    mem_op03_mpMP_QTDUTIL: TFloatField;
    mem_op03_mpMP_LOTE: TStringField;
    mem_op03_mpMP_DTVCTO: TDateField;
    mem_op03_mpMP_LOTE_RE: TFloatField;
    mem_op03_mpMP_ORDEM: TIntegerField;
    bb_materia_prima: TBitBtn;
    mem_op03_mpMP_CODIGO: TIntegerField;
    mem_op03_mpMP_SEQ: TIntegerField;
    mem_op03_mpMP_LOTSEQ: TIntegerField;
    mem_op03_mpMP_FABENV: TIntegerField;
    mem_op03_mpMP_SITMP: TIntegerField;
    mem_op03_mpMP_ORIGEM: TIntegerField;
    mem_op03_mpMP_CODGRU: TIntegerField;
    mem_op03_mpMP_NOMGRU: TStringField;
    mem_op03_mpMP_MARCA: TStringField;
    Tb_Op03_MP: TQuery;
    Tb_Op03_MPOP3_CODEMP: TFloatField;
    Tb_Op03_MPOP3_CODIGO: TFloatField;
    Tb_Op03_MPOP3_SEQ: TFloatField;
    Tb_Op03_MPOP3_CODMAT: TFloatField;
    Tb_Op03_MPOP3_NUMERO: TStringField;
    Tb_Op03_MPOP3_QTDPREV: TFloatField;
    Tb_Op03_MPOP3_QTDUTIL: TFloatField;
    Tb_Op03_MPOP3_PU: TFloatField;
    Tb_Op03_MPOP3_LOTSEQ: TFloatField;
    Tb_Op03_MPOP3_FABENV: TFloatField;
    Tb_Op03_MPOP3_DTVCTO: TDateTimeField;
    Tb_Op03_MPOP3_LOTE: TStringField;
    Tb_Op03_MPOP3_SITMP: TFloatField;
    Tb_Op03_MPOP3_ORIGEM: TFloatField;
    Tb_Op03_MPPDCODPRO: TFloatField;
    Tb_Op03_MPPDNOME: TStringField;
    Tb_Op03_MPPDUND: TStringField;
    Tb_Op03_MPPDNOME2: TStringField;
    Tb_Op03_MPCODGRU: TFloatField;
    Tb_Op03_MPNOMGRU: TStringField;
    Tb_Op03_MPPDMARCA: TStringField;
    Tb_Op03_MPCPORDEM: TFloatField;
    Tb_Op03_MPCPCODPRO: TFloatField;
    Tb_Op03_MPCPNUMERO: TStringField;
    Tb_Op03_MPCPCODMAT: TFloatField;
    Tb_Op03_MPCPCODPRO_ACAB: TFloatField;
    Tb_Op03_MPCPMPNUM: TStringField;
    Tb_Op03_MPCPQUANT: TFloatField;
    Tb_Op03_MPCPPU: TFloatField;
    Tb_Op03_MPCPVLRINC: TFloatField;
    Tb_Op03_MPCPALIQORI: TFloatField;
    Tb_Op03_MPCPALICMSCRED: TFloatField;
    Tb_Op03_MPCPICMSCRED: TFloatField;
    Tb_Op03_MPCPTIPO: TFloatField;
    Tb_Op03_MPCPQTD_PAD: TFloatField;
    Tb_Op03_MPCPPERCENT: TFloatField;
    Tb_Op03_MPCPPERCENT_REST: TFloatField;
    Tb_Op03_MPobservacao: TStringField;
    Tb_Op03_MPOP3_LOTE_RE: TStringField;
    U_Op03_MP: TUpdateSQL;
    Src_Op03_MP: TDataSource;
    Tb_Op01: TQuery;
    Tb_Op01OP1_CODEMP: TFloatField;
    Tb_Op01OP1_CODIGO: TFloatField;
    Tb_Op01OP1_DATA: TDateTimeField;
    Tb_Op01OP1_DATAPREV: TDateTimeField;
    Tb_Op01OP1_LOTE: TStringField;
    Tb_Op01OP1_DATAVEN: TDateTimeField;
    Tb_Op01OP1_TMPPREV: TFloatField;
    Tb_Op01OP1_TMPUTIL: TFloatField;
    Tb_Op01OP1_TOTPREV: TFloatField;
    Tb_Op01OP1_TOTPROD: TFloatField;
    Tb_Op01OP1_STATUS: TFloatField;
    Tb_Op01OP1_OBS01: TStringField;
    Tb_Op01OP1_OBS02: TStringField;
    Tb_Op01OP1_OBS03: TStringField;
    Tb_Op01OP1_OBS04: TStringField;
    Tb_Op01OP1_OBS05: TStringField;
    Tb_Op01OP1_OBS06: TStringField;
    Tb_Op01OP1_OBS07: TStringField;
    Tb_Op01OP1_OBS08: TStringField;
    Tb_Op01OP1_OBS09: TStringField;
    Tb_Op01OP1_OBS10: TStringField;
    Tb_Op01OP1_NOME: TStringField;
    Tb_Op01OP1_LOTSEQ: TFloatField;
    Tb_Op01OP1_FABENV: TFloatField;
    Tb_Op01OP1_ORIGEM: TFloatField;
    Tb_Op01OP1_SITMP: TFloatField;
    Tb_Op01OP1_SITACAB: TFloatField;
    Tb_Op01OP1_SITUACAO: TFloatField;
    Tb_Op01OP1_QTDMAN: TFloatField;
    U_OP01: TUpdateSQL;
    Src_Op01: TDataSource;
    Tb_Op02: TQuery;
    Tb_Op02OP2_CODEMP: TFloatField;
    Tb_Op02OP2_CODIGO: TFloatField;
    Tb_Op02OP2_SEQ: TFloatField;
    Tb_Op02OP2_CODPRO: TFloatField;
    Tb_Op02OP2_NUMERO: TStringField;
    Tb_Op02OP2_QTDPREV: TFloatField;
    Tb_Op02OP2_QTDPROD: TFloatField;
    Tb_Op02OP2_PU: TFloatField;
    Tb_Op02OP2_LOTSEQ: TFloatField;
    Tb_Op02OP2_FABENV: TFloatField;
    Tb_Op02OP2_DTVCTO: TDateTimeField;
    Tb_Op02OP2_FAB_CHORI: TFloatField;
    Tb_Op02OP2_FAB_CODIGO: TFloatField;
    Tb_Op02OP2_FAB_VCTO: TDateTimeField;
    Tb_Op02OP2_FAB_QTD: TFloatField;
    Tb_Op02OP2_FAB_LOTE: TStringField;
    Tb_Op02OP2_FAB_DTFAB: TDateTimeField;
    Tb_Op02OP2_FAB_PU: TFloatField;
    Tb_Op02OP2_ORIGEM: TFloatField;
    Tb_Op02OP2_SITACAB: TFloatField;
    Tb_Op02PDNOME: TStringField;
    Tb_Op02PDUND: TStringField;
    Tb_Op02PDQTDGRML: TFloatField;
    Tb_Op02PDPRZVAL: TFloatField;
    Tb_Op02PDREGMS: TStringField;
    Tb_Op02CODGRU: TFloatField;
    Tb_Op02NOMGRU: TStringField;
    Tb_Op02PDMARCA: TStringField;
    U_Op02: TUpdateSQL;
    Src_Op02: TDataSource;
    procedure BBINCLUIRClick(Sender: TObject);
    procedure CB_ETAPA_ATIVAClick(Sender: TObject);
    procedure cb_qtdetapasExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_CODPROExit(Sender: TObject);
    procedure edt_PRAZOVALExit(Sender: TObject);
  private
    { Private declarations }
    SITMP: integer;
    mLotSeqIndFab: Integer;
    mOperFab: Integer;
    function fLerOP01(pEtapa: Integer): Boolean;
    function fLerOP02(pEtapa: Integer): Boolean;

    function fLerMP_OP03(pEtapa: Integer): Boolean;


  public
    { Public declarations }
  end;

var
  Frm_IndEnv_Fab_Etapas: TFrm_IndEnv_Fab_Etapas;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_IndEnv_Fab_Etapas.BBINCLUIRClick(Sender: TObject);
begin
edt_MNUMLOT.Text:='';
SITMP:=0;
BBLIMPAR.Click;
edt_datfab.Text:=FormatDateTime(fdt2, date);
CB_ETAPA_ATIVA.SetFocus;
DBGrid_mp.ReadOnly     :=false;

BBINCLUIR.Enabled         := False;
BBLOCALIZAR.Enabled       := False;
BBALTERAR.Enabled         := False;
BBEXCLUIR.Enabled         := False;
BBCONFIRMAR.Enabled       := False;
bb_materia_prima.Enabled  := False;
BBIMPRIMIR.Enabled        := False;
BBGRAVAR.Enabled          := True;
mLotSeqIndFab             :=ls_lotfab;

edt_datfab.ReadOnly       := False;
cb_qtdetapas.ReadOnly     := False;
CB_ETAPA_ATIVA.Enabled    := true;

edt_CODPRO.ReadOnly       :=false;
edt_QTDPREV.ReadOnly      := False;
edt_QTDPROD.ReadOnly      := False;
edt_PRAZOVAL.ReadOnly     := False;
edt_MNUMLOT.ReadOnly      := False;
edt_dtvcto.ReadOnly       := False;

status.Caption            :='Incluindo';
mOperFab:=0;

fLerOP01(0);
fLerOP02(0);
fLerMP_OP03(0);

end;

procedure TFrm_IndEnv_Fab_Etapas.CB_ETAPA_ATIVAClick(Sender: TObject);
begin
lbl_etapa.Caption:=Uppercase(CB_ETAPA_ATIVA.Text);
end;


function TFrm_IndEnv_Fab_Etapas.fLerOP01(pEtapa: Integer): Boolean;
begin

Tb_Op01.Close;
Tb_Op01.SQL.Clear;
Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'
                   +' and OP1_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
                   +' and OP1_CODIGO=0'+Trim(edt_chave.Text));
Tb_Op01.Open;
if Tb_Op01.Eof then
  begin
  result:=false;
  Fmensagem('Chave não Encontrada!',0,['0'],0);
  end
else
  result:=true;

end;

function TFrm_IndEnv_Fab_Etapas.fLerOP02(pEtapa: Integer): Boolean;
begin
Tb_Op02.Close;
Tb_Op02.SQL.Clear;
Tb_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                     +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       PDNOME '
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_FABENV=0 and '
                   +' OP2_LOTSEQ=0'+IntToStr(mLotSeqIndFab));

Tb_Op02.SQL.add(' and OP2_CODIGO=0'+Trim(edt_chave.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ, PDNOME');
Tb_Op02.Open;


if pEtapa<>0 then
   begin
   Tb_Op02.Filter:=' OP2_ETAPA=0'+IntToStr(pEtapa);
   Tb_Op02.Filtered:=true;
   end
else
   Tb_Op02.Filtered:=false;

end;



function TFrm_IndEnv_Fab_Etapas.fLerMP_OP03(pEtapa: Integer): Boolean;
begin

Tb_Op03_MP.Close;
Tb_Op03_MP.SQL.Clear;
Tb_Op03_MP.SQL.add('Select OP3_CODEMP , '
               +'  OP3_CODIGO, '
               +'  OP3_SEQ, '
               +'  OP3_CODMAT, '
               +'  OP3_NUMERO, '
               +'  OP3_QTDPREV, '
               +'  OP3_QTDUTIL, '
               +'  OP3_PU, '
               +'  OP3_LOTSEQ, '
               +'  OP3_FABENV, '
               +'  OP3_LOTE, '
               +'  OP3_LOTE_RE,'
               +'  OP3_DTVCTO, '
               +'  OP3_LOTE_RE,'
               +'  OP3_SITMP, '
               +'  OP3_ORIGEM '
               +'  ,PDCODPRO '
               +'  ,PDNOME '
               +'  ,PDUND '
               +'  ,PDNOME2 '
               +' ,PDCODGRU AS CODGRU '
               +' ,PDNOMGRU AS NOMGRU '
               +' ,PDMARCA, '
               +'       CPORDEM, '
               +'       CPCODPRO, '
               +'       CPNUMERO, '
               +'       CPCODMAT, '
               +'       CPCODPRO_ACAB, '
               +'       CPMPNUM, '
               +'      CPQUANT, '
               +'       CPPU, '
               +'       CPVLRINC, '
               +'       CPALIQORI, '
               +'       CPALICMSCRED, '
               +'       CPICMSCRED, '
               +'       CPTIPO, '
               +'       CPQTD_PAD, '
               +'       CPPERCENT, '
               +'       CPPERCENT_REST '


               +'   from CADOP03,CADPRO,CADCOMP '
               +'   where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
               +' OP3_FABENV=0');
Tb_Op03_MP.SQL.add(' and OP3_LOTSEQ=0'+IntToStr(mLotSeqIndFab)
               +' and OP3_CODIGO=0'+Trim(edt_chave.Text)
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
               +' and PDCODPRO=OP3_CODMAT '
               +' and CPCODEMP=PDCODEMP '
               +' and CPCODMAT=OP3_CODMAT '
               +' and CPCODPRO=0'+Tb_Op02OP2_CODPRO.AsString
               +' order by OP3_SEQ, PDNOME ');
try
   Tb_Op03_MP.Open;
except
   Tb_Op03_MP.sql.savetofile('c:\sql.txt');
   end;


if pEtapa<>0 then
   begin
   Tb_Op03_MP.Filter:=' OP3_ETAPA=0'+IntToStr(pEtapa);
   Tb_Op03_MP.Filtered:=true;
   end
else
   Tb_Op03_MP.Filtered:=false;


result:=true;
end;
procedure TFrm_IndEnv_Fab_Etapas.cb_qtdetapasExit(Sender: TObject);
var
x: Integer;
begin
CB_ETAPA_ATIVA.Items.Clear;

for x:=1 to cb_qtdetapas.value do
   begin
   CB_ETAPA_ATIVA.Items.Add('Etapa '+IntTosTr(x));
   end;
CB_ETAPA_ATIVA.ItemIndex:=0;
end;

procedure TFrm_IndEnv_Fab_Etapas.FormCreate(Sender: TObject);
var
Query_Cons: TQuery;
begin

Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select PDNOME,CPCODPRO, PDUND '
                  +' from CADCOMP,CADPRO  where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                  ' CPCODEMP=0'+IntToStr(codemp)+' and PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODPRO '
                  +' group by PDNOME,CPCODPRO,PDUND '
                  +' ORDER BY PDNOME,CPCODPRO,PDUND ');
try
   Query_Cons.open;
except
   Query_Cons.sql.savetofile('C:\SQL.TXT');
   end;
CB_NOMPRO.Clear;
CB_NOMPRO.Items.Clear;
While not Query_Cons.Eof do
   begin
   CB_NOMPRO.Items.Add(FormatFloat('00000', Query_cons.fieldbyName('CPCODPRO').AsFloat)
                      +' | '+Query_cons.fieldbyName('PDNOME').AsString+' | '+Query_cons.fieldbyName('PDUND').AsString);
   Query_Cons.Next;
   end;
CB_NOMPRO.ItemIndex:=-1;
FreeAndNil(Query_Cons);

end;

procedure TFrm_IndEnv_Fab_Etapas.edt_CODPROExit(Sender: TObject);
var
x: Integer;
begin
edt_CODPRO.Text  :=fdeixanum2(edt_CODPRO.Text);
CB_NOMPRO.Text  :='';
if edt_CODPRO.Text='' then
   exit;
if not flcadpro(1,0,0,edt_CODPRO.Text) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   edt_CODPRO.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      edt_CODPRO.SetFocus;
      exit;
      end;
   CB_NOMPRO.Text:=FormatFloat('00000', DM1.Tb_ProPDCODPRO.asfloat)+'|'+ DM1.Tb_ProPDNOME.Value+'|'+DM1.Tb_ProPDUND.Value;
   edt_PRAZOVAL.Text:=DM1.Tb_ProPDPRZVAL.AsString;
   if mOperFab<>1 then
      edt_PRAZOVALExit(Self);

   if not flcadcomp(0,-1,Trim(edt_CODPRO.Text),'','') then
      begin
      Fmensagem('Produto sem Formula de Fabricação, criar formula primeiro!',0,['0'],0);
      edt_CODPRO.SetFocus;
      exit;
      end;
   if (trim(edt_MNUMLOT.Text)='') and (trim(edt_datfab.Text)<>'/  /') then
      begin
      edt_MNUMLOT.Text:=fBuscaLoteFabricacao(0,Strtodate(edt_datfab.Text));
      edt_QTDPREV.SetFocus;
      Exit;
      end;
   end;


end;

procedure TFrm_IndEnv_Fab_Etapas.edt_PRAZOVALExit(Sender: TObject);
begin
if fSonumero(edt_PRAZOVAL.Text)>9999999 then
   edt_PRAZOVAL.Text:='9999999';
edt_PRAZOVAL.Text:=formatfloat('0', fSonumero(edt_PRAZOVAL.Text));

if FSonumero(edt_CODPRO.Text)>0 then
   begin
   if (not DM1.Tb_Pro.Active) or (FSonumero(edt_CODPRO.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      edt_CODPROExit(self);
   if DM1.Tb_ProPDPRZVAL.AsFloat<>ValFloat(edt_PRAZOVAL.Text) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADPRO set PDPRZVAL=0'+mudavp(edt_PRAZOVAL.Text)
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+edt_CODPRO.Text);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   if trim(edt_dtvcto.Text)<>'/  /' then
      edt_dtvcto.Text:=FormatDatetime(fdt2,
                  fdatafinal(Valint(edt_PRAZOVAL.Text), StrtoDate(edt_dtvcto.Text)))
   else
     edt_dtvcto.Text:=FormatDatetime(fdt2,
                  fdatafinal(Valint(edt_prazoval.Text), date));
   end;

end;

end.
