unit S_Contagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_For,S_TipPro,S_TCon, ExtCtrls, Buttons, DB, DBTables,func,
  lerarq, jpeg,S_GPro, CheckLst,S_Impres, ComCtrls,s_lerarq_geral;

type
  TFrm_Contagem = class(TForm)
    CB_ESTOQUE: TCheckBox;
    CB_LOTE: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Pro: TQuery;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDNOMFOR: TStringField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProCESALDO: TFloatField;
    Qr_ProCLNUMERO: TStringField;
    Qr_ProCLDTVCTO: TDateTimeField;
    Qr_ProCLQTD: TFloatField;
    CB_IMPEST: TCheckBox;
    Qr_ProPDSECAO: TStringField;
    Label6: TLabel;
    CB_QDEC_QTD: TComboBox;
    CB_UCPR: TCheckBox;
    Qr_ProPDUCPR: TFloatField;
    CB_DESCTLINHA: TCheckBox;
    CB_QUEBRA: TComboBox;
    Label7: TLabel;
    CB_SEPPAG: TCheckBox;
    Qr_ProNOMGRU: TStringField;
    Qr_ProSUBGRU: TStringField;
    CB_ORDEM: TComboBox;
    Label8: TLabel;
    OMITIR_STATUS: TCheckBox;
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsOutFiltros: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CODFOR: TEdit;
    CODCON: TEdit;
    CODTIP: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    lbx_tpro: TListBox;
    OMITIR_TPRO: TCheckBox;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    OMITIR_PRO: TCheckBox;
    lbx_codpro: TListBox;
    CODPRO: TEdit;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label12: TLabel;
    CLBNivel: TCheckListBox;
    StaticText2: TStaticText;
    CLB_STATUS: TCheckListBox;
    cb_comestoque: TCheckBox;
    btn_Exportar: TButton;
    edt_marca: TEdit;
    Label10: TLabel;
    Qr_ProCEFILIAL: TFloatField;
    Qr_ProPDPRAT: TStringField;
    Qr_ProPDLADO: TStringField;
    Qr_ProPDRUA: TStringField;
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CB_QDEC_QTDExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_tproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CLBNivelClick(Sender: TObject);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_LOTEClick(Sender: TObject);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ExportarClick(Sender: TObject);
    procedure btn_AbrirBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_contagem: TFrm_Impres;
  end;

var
  Frm_Contagem: TFrm_Contagem;
  Cont_Casqtd    : String;
  CODIGO_FOR     : STRING;
  CODIGO_CON     : STRING;
  CODIGO_TIP     : STRING;
  CODIGO_PRO     : STRING;
  mCampoGrupo: String;
  mCampoSubGru: String;
  mOrdemGrupo: String;
  mGrupo_ant: String;
  mSubGru_ant: String;
  mespaco: String;
  
implementation

uses S_DM1, S_Pro, uExport;

{$R *.dfm}

procedure TFrm_Contagem.btn_AbrirBancoClick(Sender: TObject);
begin
mCampoGrupo :='';
mCampoGrupo :=chr(39)+insere(' ',' ',40)+chr(39);
mCampoSubGru:=chr(39)+insere(' ',' ',40)+chr(39);
if CB_QUEBRA.ItemIndex=1 then
   begin
   mCampoGrupo:='PDNOMFOR ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODFOR) ';
   mOrdemGrupo:='PDNOMFOR,PDCODFOR';
   end
else if CB_QUEBRA.ItemIndex=2 then
   begin
   mCampoGrupo:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';
   mOrdemGrupo:='PDNOMGRU,PDCODGRU';
   end
else if CB_QUEBRA.ItemIndex=3 then
   begin
   mCampoGrupo:='PDNOMRAM ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODRAM) ';
   mOrdemGrupo:='PDNOMRAM,PDCODRAM';
   end
else if CB_QUEBRA.ItemIndex=4 then
   begin
   mCampoGrupo:='PDNOMCON||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODCON) ';
   mOrdemGrupo:='PDNOMCON,PDCODCON';
   end
else if CB_QUEBRA.ItemIndex=5 then
   begin
   mCampoGrupo:='PDNOMTIP ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODTIP) ';
   mOrdemGrupo:='PDNOMTIP,PDCODTIP';
   end
else if CB_QUEBRA.ItemIndex=6 then
   begin
   mCampoGrupo:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';
   mOrdemGrupo:='PDNOMGRU,PDCODGRU';
   mCampoSubGru:='PDNOMGRU ||'+chr(39)+' '+chr(39)+'|| TO_CHAR(PDCODGRU) ';
   mOrdemGrupo:='PDNOMGRU,PDCODGRU,PDNOMRAM,PDCODRAM';
   end;




Qr_Pro.Close;
Qr_Pro.SQL.Clear;
if (ValInt(copy(mpseg,4,2))=02) or (CB_LOTE.Checked) then  // grades de cores tamanhos
   begin
   mespaco:='';
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin3(0,'CADLGC','CLCODEMP','CECODEMP','CLCODPRO','CECODPRO','CLFILIAL','CEFILIAL');
   Qr_Pro.SQL.Add('Select PDNOME,PDMARCA,PDUND,PDNOMFOR,PDCODFOR,PDCODPRO,PDSECAO,PDPRAT,PDLADO,PDRUA '
                 +'       ,PDUCPR, '
                 +mCampoGrupo+' AS NOMGRU, '
                 +mCampoSubGru+' AS SUBGRU, '
                 +'       CESALDO,CEFILIAL,CLNUMERO,CLDTVCTO,CLQTD '
                 +' from CADEST,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+InttoStr(codemp)+' and ')
                 +iif(DM1.Qr_tid.locate('TINOME','CADPRO',[]),
                 ' PDCODPRO=CECODPRO  ',
                 ' PDCODEMP=CECODEMP and PDCODPRO=CECODPRO  ')
                 +iif(la_instrucao='','',' and '+la_instrucao));
   end
else
   begin
   mespaco:=insere(' ',' ',10);
   Qr_Pro.SQL.Add('Select PDNOME,PDMARCA,PDUND,PDNOMFOR,PDCODFOR,PDCODPRO,PDSECAO,PDPRAT,PDLADO,PDRUA, '
                 +'       PDUCPR, '
                 +'       CESALDO,CEFILIAL, PDMARCA AS CLNUMERO, PDDTUATP1 AS CLDTVCTO,'
                 +mCampoGrupo+' AS NOMGRU, '
                 +mCampoSubGru+' AS SUBGRU, '
                 +'       CESALDO AS CLQTD '

                 +' from CADEST,CADPRO'
                 +' where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CECODEMP=0'+InttoStr(codemp)+' and ')
                 +iif(DM1.Qr_tid.locate('TINOME','CADPRO',[]),
                 ' PDCODPRO=CECODPRO ',
                 ' PDCODEMP=CECODEMP and PDCODPRO=CECODPRO '));
   end;
if cb_comestoque.Checked=true then
   Qr_Pro.SQL.Add(' and PDSALDO<>0 ');

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDCODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_tpro,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDCODTIP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDCODCON '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDCODGRU '+mcinst2);


mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and PDNIVEL '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   begin
   if OMITIR_STATUS.Checked then
      Qr_Pro.SQL.Add(' and PDSTATUS not '+mcinst2)
   else
      Qr_Pro.SQL.Add(' and PDSTATUS '+mcinst2);
   end;

if Trim(edt_marca.Text)<>'' then
 Qr_Pro.SQL.Add(' and Upper(PDMARCA) like '+UpperCase(QuotedStr(edt_marca.Text+'%')));

if not CB_ESTOQUE.Checked then
   Qr_Pro.SQL.Add(' and CESALDO<>0');
if trim(mOrdemGrupo)<>'' then
   mOrdemGrupo:=mOrdemGrupo+',';
if (ValInt(copy(mpseg,4,2))=02) or (CB_LOTE.Checked) then  // grades de cores tamanhos
   begin
   if cb_ordem.ItemIndex=4 then
      begin
      Qr_Pro.SQL.Add(' and PDNOME like :PDNOME');
      Qr_Pro.ParamByName('PDNOME').AsString:='%';
      end
   else if cb_ordem.ItemIndex=0 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME,CLDTVCTO,CLNUMERO')
   else if cb_ordem.ItemIndex=1 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDNOME,PDCODPRO,CLDTVCTO,CLNUMERO')
   else if cb_ordem.ItemIndex=2 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDCODPRO,CLDTVCTO,CLNUMERO')
   else if cb_ordem.ItemIndex=3 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME,CLDTVCTO,CLNUMERO');

   end
else
   begin
   if cb_ordem.ItemIndex=4 then
      begin
      Qr_Pro.SQL.Add(' and PDNOME like :PDNOME');
      Qr_Pro.ParamByName('PDNOME').AsString:='%';
      end
   else if cb_ordem.ItemIndex=0 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDNOMFOR,PDCODFOR,PDNOME')
   else if cb_ordem.ItemIndex=1 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDNOME,PDCODPRO')
   else if cb_ordem.ItemIndex=2 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDCODPRO')
   else if cb_ordem.ItemIndex=3 then
      Qr_Pro.SQL.Add('order by '+mOrdemGrupo+'PDSECAO,PDNOME');
   end;
// Qr_Pro.Sql.SaveToFile(mpastatemp + 'SQL0001.txt');
Qr_Pro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
try
   Qr_Pro.Open;
except
   Qr_Pro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
if Qr_Pro.Eof then
   begin
   FMensagem('Não ha nada a ser impresso!',0,['0'],0);
   exit;
   end;
end;

procedure TFrm_Contagem.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)='' then
   CODFOR.Text:='Todos...'
else
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Contagem.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if CODTIP.Text<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      BEGIN
      lbx_tpro.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      CODTIP.SetFocus
      END
   else
      begin
      FMensagem('Tipo não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end;
   end;

end;

procedure TFrm_Contagem.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if trim(CODCON.Text)<>'' then
   begin
   if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
      BEGIN
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      codcon.text := '';
      CODCON.SetFocus;
      end
   else
      begin
      FMensagem('Controle não Cadastrado!',0,['0'],0);
      CODCON.SetFocus;
      end;
   end;

end;

procedure TFrm_Contagem.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.text :=fChamaFor(0,'frm_Contagem',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Contagem.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text :=fChamaTipPro(0,'frm_Contagem',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Contagem.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text :=fChamaTCon(0,'frm_Contagem',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Contagem.FormCreate(Sender: TObject);
begin
if ValInt(copy(mpseg,4,2))=01 then  //  lotes de mercadorias
   begin
   CB_LOTE.Visible      :=true;
   CB_DESCTLINHA.Visible:=true;
   end;

end;

procedure TFrm_Contagem.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Contagem.bbImprimirClick(Sender: TObject);
var
  mlin, mpag: Integer;
  mlinha: String;
  mcodant: Real;
  mfilialANT: Real;
  mobs: String;
begin
btn_AbrirBancoClick(self);
Cont_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');

testeform := TFrm_Contagem(FindGlobalComponent('form_impres_contagem'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_contagem);

form_impres_contagem.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mcodant:=0;
mfilialANT:=0;

mGrupo_ant :=Qr_ProNOMGRU.AsString;
mSubGru_ant:=Qr_ProSUBGRU.AsString;

While not Qr_Pro.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_contagem.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',64)+'Pagina....: '+Formatfloat('0000',mpag),mnormal);
      form_impres_contagem.RDprint1.impf(02,01,insere2('Relacao para Contagem de Estoque',' ',64)+'Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_contagem.RDprint1.impf(03,01,insere('-','-',80),mnormal);
      mlin:=4;

      if CB_QUEBRA.ItemIndex<>0 then
         begin
         form_impres_contagem.RDprint1.impf(mlin,01,'Grupo: '+Qr_ProNOMGRU.AsString,mneg);
         mlin:=mlin+1;
         if CB_QUEBRA.ItemIndex=6 then
            begin
            form_impres_contagem.RDprint1.impf(mlin,01,'Sub-Grupo: '+Qr_ProNOMGRU.AsString,mneg);
            mlin:=mlin+1;
            end;
         end;
      mGrupo_ant :=Qr_ProNOMGRU.AsString;
      mSubGru_ant:=Qr_ProSUBGRU.AsString;
      if CB_UCPR.Checked then
         mobs:='Ult.Pco.Cpr '
      else
         mobs:='Fabricante  ';

      if ValInt(copy(mpseg,4,2))=2 then
         mlinha:='prat/lado/rua/sec Descricao do Produto                        '+mobs+'           Codigo Contagem    Est.Atual Grade'
      else if CB_LOTE.Checked then
         mlinha:='prat/lado/rua/sec Descricao do Produto                        '+mobs+'           Codigo Contagem    Est.Atual Dt.Vcto.   Lote           Est. Lote'
      else
           begin
           if CLBNivel.Checked[4]=true then
              begin
//              if     CB_ESTOQUE.Checked THEN
//              IF NOT CB_IMPEST.Checked  THEN
              if not CB_UCPR.Checked then
                   mlinha:='prat/lado/rua/sec Descricao do Produto                        '+mobs+'           Codigo Contagem    Est.Atual       Ult.Pco.Cpr'
              else mlinha:='prat/lado/rua/sec Descricao do Produto                        '+mobs+'           Codigo Contagem    Est.Atual Fabricante';
              end else mlinha:='prat/lado/rua/sec Descricao do Produto                        '+mobs+'           Codigo Contagem    Est.Atual ';
           end;

{
prat/lado/rua/sec
Secao
12345678901234567
 }
      form_impres_contagem.RDprint1.ImpF(mlin,01,mespaco+mlinha,mreduz);
      end;
   mlin:=mlin+1;
   mlinha:=insere2(Qr_ProPDPRAT.AsString+'/'+Qr_ProPDLADO.AsString+'/'+Qr_ProPDRUA.AsString+'/'+Qr_ProPDSECAO.AsString,' ',17)+' ';



   if (mcodant<>Qr_ProPDCODPRO.Value) or (CB_DESCTLINHA.Checked)  then
      begin
      mcinst2:=insere2(Qr_ProPDNOME.Value+' '+Qr_ProPDMARCA.Value,' ',44);
      mlinha:=mlinha+mcinst2;
//      mlinha:=mlinha+insere2(Qr_ProPDNOME.Value,' ',40);
      if CB_UCPR.Checked then
         mlinha:=mlinha+' '+insere(FormatFloat(IIF(mcaspuind>mcasaspu,mcaspuind,mcasaspu), Qr_ProPDUCPR.Value),' ',11);
//      else
//         mlinha:=mlinha+' '+insere2(Qr_ProPDMARCA.Value,' ',11);
      mlinha:=mlinha+' '+insere(Qr_ProPDCODPRO.AsString, ' ',13);
      mlinha:=mlinha+' _________ ';
      end
   else
      mlinha:=mlinha+insere2(' ',' ',70);
   if CB_IMPEST.Checked then
      mlinha:=mlinha+insere2('_','_',13)
   else
      begin
//      if mfilialant<>Qr_ProCEfilial.Value then
         mlinha:=mlinha+insere('[F'+Qr_ProCEFILIAL.Asstring+'] '+FormatFloat(Cont_Casqtd, IIF(CB_LOTE.Checked=true,Qr_ProCLQTD.Asfloat, Qr_ProCESALDO.Value)),' ',16)
//      else
//         mlinha:=mlinha+insere(' ',' ',13);
      end;
   if ValInt(copy(mpseg,4,2))=2 then
      mlinha:=mlinha+insere('[F'+Qr_ProCEFILIAL.Asstring+']'+ Qr_ProCLNUMERO.AsString,' ',21)+' '+insere(FormatFloat(Cont_Casqtd, Qr_ProCLQTD.Value),' ',13)
   else if CB_LOTE.Checked then
      begin
      mlinha:=mlinha+' ';
      if (Qr_ProCLDTVCTO.IsNull) or (Qr_ProCLDTVCTO.Value<=pdatanula) then
         mlinha:=mlinha+insere('_','_',10)
      else
         mlinha:=mlinha+FormatDateTime(fdt2, Qr_ProCLDTVCTO.Value);
      if (Qr_ProCLNUMERO.IsNull) or (Trim(Qr_ProCLNUMERO.Value)='') then
         mlinha:=mlinha+insere2('_','_',11)
      else
         mlinha:=mlinha+' '+insere2(Qr_ProCLNUMERO.Value,' ',10);
      mlinha:=mlinha+' '+insere(FormatFloat(Cont_Casqtd, Qr_ProCLQTD.Value),' ',13);
      end;

     if CLBNivel.Checked[4]=true then
      begin
//         if     CB_ESTOQUE.Checked THEN
//         IF NOT CB_IMPEST.Checked  THEN
         IF NOT CB_LOTE.Checked    THEN
         begin
             if CB_UCPR.Checked then  mlinha:=mlinha+'  '+insere2(Qr_ProPDMARCA.Value,' ',11);
             if not CB_UCPR.Checked then  mlinha:=mlinha+'       '+insere(FormatFloat(IIF(mcaspuind>mcasaspu,mcaspuind,mcasaspu), Qr_ProPDUCPR.Value),' ',11);
         end;
      end;
   form_impres_contagem.RDprint1.ImpF(mlin,01,mespaco+mlinha,mreduz);
   mcodant:=Qr_ProPDCODPRO.Value;
   mFilialANT:=Qr_ProCEfilial.Value;

   Qr_Pro.Next;

   if Qr_Pro.Eof then
      begin
      mlin:=mlin+1;
      form_impres_contagem.RDprint1.ImpF(mlin,01,insere2('Fim.','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_contagem.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
      if form_impres_contagem.RDprint1.Setup then form_impres_contagem.RDprint1.Fechar;
      form_impres_contagem.free;
      form_impres_contagem:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_contagem.RDprint1.ImpF(mlin,01,insere2('Continua','-',80),mnormal);
      form_impres_contagem.RDprint1.Novapagina;
      mlin:=0;
      end
   else
      begin
      if CB_QUEBRA.ItemIndex<>0 then
         begin
         if CB_QUEBRA.ItemIndex=6 then
            begin
            if mSubGru_ant<>Qr_ProSUBGRU.AsString then
               begin
               if CB_SEPPAG.Checked then
                  begin
                  mlin:=mlin+1;
                  form_impres_contagem.RDprint1.ImpF(mlin,01,insere2('Continua','-',80),mnormal);
                  form_impres_contagem.RDprint1.Novapagina;
                  mlin:=0;
                  end
               else
                  begin
                  mlin:=mlin+1;
                  form_impres_contagem.RDprint1.impf(mlin,01,'Grupo: '+Qr_ProNOMGRU.AsString,mneg);
                  mlin:=mlin+1;
                  form_impres_contagem.RDprint1.impf(mlin,01,'Sub-Grupo: '+Qr_ProNOMGRU.AsString,mneg);
                  end;
               mGrupo_ant :=Qr_ProNOMGRU.AsString;
               mSubGru_ant:=Qr_ProSUBGRU.AsString;
               end;
            end
         else
            begin
            if mGrupo_ant<>Qr_ProNOMGRU.AsString then
               begin
               if CB_SEPPAG.Checked then
                  begin
                  mlin:=mlin+1;
                  form_impres_contagem.RDprint1.ImpF(mlin,01,insere2('Continua','-',80),mnormal);
                  form_impres_contagem.RDprint1.Novapagina;
                  mlin:=0;
                  end
               else
                  begin
                  mlin:=mlin+1;
                  form_impres_contagem.RDprint1.impf(mlin,01,'Grupo: '+Qr_ProNOMGRU.AsString,mneg);
                  end;
               mGrupo_ant :=Qr_ProNOMGRU.AsString;
               mSubGru_ant:=Qr_ProSUBGRU.AsString;
               end;
            end;
         end;
      end;
   end;

{
Secao      Descricao do Produto                     Fabricante             Codigo Contagem  Est.Atual Dt.Vcto.   Lote       Est. Lote
1234567890 1234567890123456789012345678901234567890 123456789012345 1234567890123 _________ 12345.123 30/06/2004 1234567890 12345.123
}
end;

procedure TFrm_Contagem.CB_QDEC_QTDExit(Sender: TObject);
begin
with CB_QDEC_QTD do ItemIndex:=Items.IndexOf(CB_QDEC_QTD.text);
CB_QDEC_QTD.Text:=CB_QDEC_QTD.Items[CB_QDEC_QTD.ItemIndex];

end;

procedure TFrm_Contagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Contagem.CODFORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   CODFOR.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_Contagem.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      Lbx_Codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Contagem.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_Contagem.lbx_tproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_tpro.ItemIndex>=0 then
      lbx_tpro.Items.Delete(lbx_tpro.ItemIndex);

end;

procedure TFrm_Contagem.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_Contagem.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_Contagem.CODTIPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_Contagem.CODCONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_Contagem.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;


procedure TFrm_Contagem.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)='' then
   CODPRO.Text:='Todos...'
else
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_Contagem.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      Lbx_Codpro.Items.Delete(lbx_codpro.ItemIndex);


end;

procedure TFrm_Contagem.CODPROKeyPress(Sender: TObject; var Key: Char);
begin

if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Contagem',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Contagem',key);
      CODPROExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Contagem.CODPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_Contagem.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_Contagem.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      FMensagem('Grupo não cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGRU.text := '';
      CODGRU.SetFocus;
      end;
   end;


end;

procedure TFrm_Contagem.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_Contagem',Key);
   if trim(CODGRU.Text)<>'' then
      CODPROExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Contagem.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Contagem.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);
end;

procedure TFrm_Contagem.CB_LOTEClick(Sender: TObject);
begin
if CB_LOTE.Checked then
   CB_DESCTLINHA.Enabled:=true
else
   CB_DESCTLINHA.Enabled:=false

end;

procedure TFrm_Contagem.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_Contagem.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');  
end;

procedure TFrm_Contagem.btn_ExportarClick(Sender: TObject);
begin
btn_AbrirBancoClick(self);
Application.CreateForm(TfExport, fExport);
fExport.DataSet1 := Qr_Pro;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
end;

end.
