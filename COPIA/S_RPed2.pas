unit S_RPed2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, db, dbtables, func,
  S_Con, S_Cli, S_Impres,lerarq, ComCtrls, CheckLst,S_SelEmp;

type
  TFrm_RPed2 = class(TForm)
    Qr_Ped: TQuery;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1ORDEM: TFloatField;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedP1TOTALB: TFloatField;
    Qr_PedP1TOTALL: TFloatField;
    Qr_PedP1VALFRE: TFloatField;
    Qr_PedP1ACRECONV: TFloatField;
    Qr_PedP1ACREGER: TFloatField;
    Qr_PedP1DATAP: TDateTimeField;
    Qr_PedP1DATDOC: TDateTimeField;
    Qr_PedP1NAUT: TStringField;
    Qr_PedCRAZAO: TStringField;
    Qr_PedCCIDADE: TStringField;
    Qr_PedCUF: TStringField;
    Qr_PedCVRAZAO: TStringField;
    Qr_PedTOTAPAG: TFloatField;
    Qr_PedP1CODCV: TFloatField;
    Qr_PedP1TIPO_ENTSAI: TFloatField;
    Qr_PedGRUPOREL: TStringField;
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsOutrosFiltros: TTabSheet;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    Label7: TLabel;
    MPEDI: TEdit;
    Label8: TLabel;
    MPEDF: TEdit;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbl_codven: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CB_ORC: TCheckBox;
    CB_PAGOS: TCheckBox;
    Label6: TLabel;
    OBS: TEdit;
    Label9: TLabel;
    CB_SEPARADO: TComboBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    lbl_loc: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label24: TLabel;
    CODTEL: TEdit;
    lbx_codtel: TListBox;
    OMITIR_TEL: TCheckBox;
    RG_FILTRO: TRadioGroup;
    TabSheet1: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    cb_mascara: TCheckBox;
    Qr_PedCFONE01: TStringField;
    Label4: TLabel;
    cb_tipoped: TComboBox;
    Qr_PedP1CODEMP: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MPEDFKeyPress(Sender: TObject; var Key: Char);
    procedure MPEDFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELExit(Sender: TObject);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClick(Sender: TObject);
  private
    { Private declarations }
    function fRPedCab(ptipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;

  public
    { Public declarations }
    form_Impres_RPed2: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_RPed2: TFrm_RPed2;
  mlin, mpag: Integer;

implementation

uses S_Ven, Func2, func_excecoes;

{$R *.DFM}

procedure TFrm_RPed2.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RPed2.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed2.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed2.bbImprimirClick(Sender: TObject);
var
mordema, mpeda, mcodclia: Real;
mcodcona: String;
mtotcli, mtotcon: Real;
mtotclig, mtotcong: Real;
mCampo_Grupo,mGrupo: String;
qr_ped02_prod: tQuery;
qr_ped02_serv: tQuery;
mcampo_p1totall: string;

   function fDetalhesProd: Boolean;
   begin
   if qr_ped02_prod=nil then
      begin
      qr_ped02_prod:=TQuery.Create(nil);
      qr_ped02_prod.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      end;
   qr_ped02_prod.Close;
   qr_ped02_prod.SQL.Clear;
   qr_ped02_prod.SQL.Add('Select P2CODPRO,P2ITEM,P2QTD,P2PRECO  '
                 +'       ,PDUND,PDNOME from CADP02,CADPRO '
                 +' where PDCODPRO=P2CODPRO and  P2CODEMP=:CODEMP '
                 +' and P2CHAVE=:CHAVE '
                 +' and P2LOTSEQ=:LOTSEQ ');
   qr_ped02_prod.ParamByName('CODEMP').AsInteger:=Qr_PedP1CODEMP.AsInteger;
   qr_ped02_prod.ParamByName('CHAVE').AsInteger :=Qr_PedP1CHAVE.AsInteger;
   qr_ped02_prod.ParamByName('LOTSEQ').AsInteger:=0;
   try
      qr_ped02_prod.Open;
   except on e : exception do
      ex_erroSql_Novo(qr_ped02_prod,196,'func Erro:'+e.Message ,'CADEST');
      end;
   if qr_ped02_prod.isempty=false then
      begin
      if mlin>57 then
         begin
         mlin:=mlin+1;
         form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
         form_Impres_RPed2.RDprint1.Novapagina;
         mlin:=0;
         fRPedCab(0);
         mlin:=mlin+1;
         end;
      fRPedCab(4);




      While not  (qr_ped02_prod.Eof) do
         begin
         mcinst2:=Qr_Ped02_prod.fieldbyname('P2CODPRO').AsString;
         mlin:=mlin+1;

         form_Impres_RPed2.RDprint1.ImpF(mlin,01,
                                 insere2(mcinst2,' ',16)
                                 +insere2(Qr_Ped02_prod.fieldbyname('PDUND').Value,' ',3)
                                 +' '+insere(FormatFloat(mcasqtd, Qr_Ped02_prod.fieldbyname('P2QTD').Value),' ',5)
                                 +' '+insere2(Qr_Ped02_prod.fieldbyname('PDNOME').Value,' ',40)
                                 +' '+insere(iif(cb_mascara.Checked,'***',Formatfloat(mcasaspu, Qr_Ped02_prod.fieldbyname('P2PRECO').Value)),' ',14)
                                 +' '+insere(iif(cb_mascara.Checked,'***',Formatfloat(mcasas, (Qr_Ped02_prod.fieldbyname('P2PRECO').Value*Qr_Ped02_prod.fieldbyname('P2QTD').Value))),' ',14),m12ccp);
   //Codigo           123 Quant Descricao do Produto                    Preco Unitario    Valor Total
   //1234567890123/01 123 12345 123456789012346789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99

         Qr_Ped02_prod.next;
         if not qr_ped02_prod.eof then
            begin
            if mlin>57 then
               begin
               form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
               form_Impres_RPed2.RDprint1.Novapagina;
               mlin:=0;
               fRPedCab(0);
               fRPedCab(4);
               end;
            end;
         end;
      end;
   result:=true;
   end;
// inicio servicos

   function fDetalhesServico: Boolean;
   begin
   if qr_ped02_serv=nil then
      begin
      qr_ped02_serv:=TQuery.Create(nil);
      qr_ped02_serv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      end;
   qr_ped02_serv.Close;
   qr_ped02_serv.SQL.Clear;
   qr_ped02_serv.SQL.Add('Select P2SCODPRO AS P2CODPRO,P2SITEM AS P2ITEM,P2SQTD AS P2QTD,P2SPRECO AS P2PRECO  '
                 +'       ,PDUND,PDNOME from CADP02S,CADPRO '
                 +' where PDCODPRO=P2SCODPRO and  P2SCODEMP=:CODEMP '
                 +' and P2SCHAVE=:CHAVE '
                 +' and P2SLOTSEQ=:LOTSEQ ');
   qr_ped02_serv.ParamByName('CODEMP').AsInteger:=Qr_PedP1CODEMP.AsInteger;
   qr_ped02_serv.ParamByName('CHAVE').AsInteger :=Qr_PedP1CHAVE.AsInteger;
   qr_ped02_serv.ParamByName('LOTSEQ').AsInteger:=0;
   try
      qr_ped02_serv.Open;
   except on e : exception do
      ex_erroSql_Novo(qr_ped02_serv,265,'func Erro:'+e.Message ,'CADEST');
      end;
   if qr_ped02_serv.isempty=false then
      begin
      if mlin>57 then
         begin
         mlin:=mlin+1;
         form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
         form_Impres_RPed2.RDprint1.Novapagina;
         mlin:=0;
         fRPedCab(0);
         mlin:=mlin+1;
         end;
      fRPedCab(5);




      While not  (qr_ped02_serv.Eof) do
         begin
         mcinst2:=Qr_Ped02_serv.fieldbyname('P2CODPRO').AsString;
         mlin:=mlin+1;

         form_Impres_RPed2.RDprint1.ImpF(mlin,01,
                                 insere2(mcinst2,' ',16)
                                 +insere2(Qr_Ped02_serv.fieldbyname('PDUND').Value,' ',3)
                                 +' '+insere(FormatFloat(mcasqtd, Qr_Ped02_serv.fieldbyname('P2QTD').Value),' ',5)
                                 +' '+insere2(Qr_Ped02_serv.fieldbyname('PDNOME').Value,' ',40)
                                 +' '+insere(iif(cb_mascara.Checked,'***',Formatfloat(mcasaspu, Qr_Ped02_serv.fieldbyname('P2PRECO').Value)),' ',14)
                                 +' '+insere(iif(cb_mascara.Checked,'***',Formatfloat(mcasas, (Qr_Ped02_serv.fieldbyname('P2PRECO').Value*Qr_Ped02_serv.fieldbyname('P2QTD').Value))),' ',14),m12ccp);
   //Codigo           123 Quant Descricao do Produto                    Preco Unitario    Valor Total
   //1234567890123/01 123 12345 123456789012346789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99

         Qr_Ped02_serv.next;
         if not qr_ped02_serv.eof then
            begin
            if mlin>57 then
               begin
               form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
               form_Impres_RPed2.RDprint1.Novapagina;
               mlin:=0;
               fRPedCab(0);
               fRPedCab(5);
               end;
            end;
         end;
      end;
   result:=true;
   end;

// termino servicos


begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      FMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADCV','CVCODEMP','P1CODEMP','CVCODCV','P1CODCV');
mCampo_Grupo:='';
mGrupo:='';
if cb_tipoped.itemindex=0 then
   mcampo_p1totall:='(P1TOTALL-nvl( (select sum(P2STOTLIQ) from cadp02s where P2SCODEMP=P1CODEMP and P2SCHAVE=P1CHAVE and P2SORDEM=P1ORDEM AND P2SLOTSEQ=P1LOTSEQ),0))'
else if cb_tipoped.itemindex=1 then
   mcampo_p1totall:=' nvl((select sum(P2STOTLIQ) from cadp02s where P2SCODEMP=P1CODEMP and P2SCHAVE=P1CHAVE and P2SORDEM=P1ORDEM AND P2SLOTSEQ=P1LOTSEQ),0)'
else
   mcampo_p1totall:='P1TOTALL';


if CB_PAGOS.Checked then
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select sum(CRVALOR-(CRVALPAG+CRDESC-CRJUROS)) AS TOTAPAG, '
                 +'  P1CHAVE,P1ORDEM,P1CODEMP,P1TIPO_ENTSAI, '
                 +'       P1CODCLI,P1TOTALB,max( '+mcampo_p1totall+') as P1TOTALL,P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +'       P1NAUT,CRAZAO,CFONE01,CCIDADE,CUF,CVRAZAO,  ');
   if CB_SEPARADO.ItemIndex=0 then
      begin
      mCampo_Grupo:='CVRAZAO,CVCODCV';
      mGrupo:=chr(39)+' Convenio: '+chr(39)+' || CVRAZAO || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(CVCODCV) ';
      end
   else if CB_SEPARADO.ItemIndex=1 then
      begin
      mCampo_Grupo:=' NOMUSR,CODUSR';
      mGrupo:=chr(39)+' Televendas: '+chr(39)+' || NOMUSR || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(CODUSR) ';
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADUSR','CODEMP','P1CODEMP','CODUSR','P1CODTLV');
      end
   else if CB_SEPARADO.ItemIndex=2 then
      begin
      mCampo_Grupo:='P1CODVEN,VNOME';
      mGrupo:=chr(39)+' Vendedor: '+chr(39)+' || VNOME || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(P1CODVEN) ';
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      end;


   Qr_Ped.SQL.Add(mGrupo+' AS GRUPOREL ');
   Qr_Ped.SQL.add(' from CADP01, CADCLI,CADDAR '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+'   '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' and CRCODEMP=P1CODEMP '
                 +' and CRNPED=P1CHAVE and CRORDEM=P1ORDEM '
                 +' and (CRVALOR-(CRVALPAG+CRDESC-CRJUROS))>0 '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP '))
                 +' and CCODCLI=P1CODCLI '
                 +iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);


//                 +'       and (P1TIPO=1 or P1TIPO = 9'
//                 +iif(CB_ORC.Checked,' or P1TIPO=0','')+')');
   if ValInt(MPEDI.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(MPEDI.Text));
   if ValInt(MPEDF.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(MPEDF.Text));
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
      end;



   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODCV '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and CCODLOC '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
    if trim(mcinst2)<>'' then
       Qr_Ped.SQL.Add(' and P1CODTLV '+mcinst2);


    if RG_FILTRO.ItemIndex=0 then
       Qr_Ped.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
    else if RG_FILTRO.ItemIndex=1 then
       Qr_Ped.SQL.Add(' and P1EMIDOC=0');

   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and  P1TIPO '+mcinst2);



   Qr_Ped.SQL.Add(' Group by '+iif(mCampo_Grupo='','',mcampo_grupo+',')+'CVRAZAO,CRAZAO,CFONE01,P1CODCLI,P1CHAVE,P1CODEMP,P1ORDEM,P1TIPO_ENTSAI,'
                 +'       P1TOTALB,P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +'       P1NAUT,CCIDADE,CUF ');
   end
else
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select CVRAZAO,CRAZAO,cfone01,P1CODCLI,P1CHAVE,P1CODEMP,P1ORDEM,P1TIPO_ENTSAI, '
                 +'       P1TOTALB,'+mcampo_p1totall+' as P1TOTALL,P1VALFRE, '
                 +'       P1ACRECONV,P1ACREGER, '
                 +'       P1DATAP,P1DATDOC,P1CODCV, '
                 +'       P1NAUT,CCIDADE,CUF,'+mcampo_p1totall+'  AS TOTAPAG, ');

   if CB_SEPARADO.ItemIndex=0 then
      begin
      mCampo_Grupo:='CVRAZAO,CVCODCV';
      mGrupo:=chr(39)+' Convenio: '+chr(39)+' || CVRAZAO || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(CVCODCV) ';
      end
   else if CB_SEPARADO.ItemIndex=1 then
      begin
      mCampo_Grupo:=' NOMUSR,CODUSR';
      mGrupo:=chr(39)+' Televendas: '+chr(39)+' || NOMUSR || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(CODUSR) ';
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADUSR','CODEMP','P1CODEMP','CODUSR','P1CODTLV');
      end
   else if CB_SEPARADO.ItemIndex=2 then
      begin
      mCampo_Grupo:='P1CODVEN,VNOME';
      mGrupo:=chr(39)+' Vendedor: '+chr(39)+' || VNOME || '+chr(39)+'-'+chr(39)
              +' || TO_CHAR(P1CODVEN) ';
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      end;


   Qr_Ped.SQL.Add(mGrupo+' AS GRUPOREL ');
   Qr_Ped.SQL.add(' from CADP01, CADCLI '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+'  '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                 +' and CCODCLI=P1CODCLI '
                 +iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

//                 +'       and (P1TIPO=1 or P1TIPO = 9'

//                 +iif(CB_ORC.Checked,' or P1TIPO=0','')+')');
   if ValInt(MPEDI.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(MPEDI.Text));
   if ValInt(MPEDF.Text)>0 then
      Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(MPEDF.Text));
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
      end;
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODCV '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      Qr_Ped.sql.Add(' and CCODLOC '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
    if trim(mcinst2)<>'' then
       Qr_Ped.SQL.Add(' and P1CODTLV '+mcinst2);
    if RG_FILTRO.ItemIndex=0 then
       Qr_Ped.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
    else if RG_FILTRO.ItemIndex=1 then
       Qr_Ped.SQL.Add(' and P1EMIDOC<>0');
   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_Ped.SQL.Add(' and  P1TIPO '+mcinst2);

   end;
Qr_Ped.SQL.Add(' Order by '+iif(mCampo_Grupo='','',' GRUPOREL,')+'CRAZAO,P1CODCLI'
              +',P1CHAVE,P1ORDEM,P1TIPO_ENTSAI');

try
   Qr_Ped.Open;
except on e : exception do
   ex_erroSql_Novo(Qr_Ped,464,'func Erro:'+e.Message ,'CADP01');
   end;
if Qr_Ped.Eof then
   begin
   FMensagem('Não ha nada a ser Impresso!',0,['0'],0);
   exit;
   end;

Qr_Ped.First;
testeform := TFrm_RPed2(FindGlobalComponent('form_impres_rped2'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_rped2);

form_Impres_RPed2.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin :=0; mpag :=0;
mcodclia:=Qr_PedP1CODCLI.Value;
mcodcona:=Qr_PedGRUPOREL.AsString;
While not Qr_Ped.Eof do
   begin
   if mlin=0 then
      begin
      fRPedCab(0);
      end;
   mlin:=mlin+1;
   if mcodcona<>Qr_PedGRUPOREL.AsString then
      begin
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total do Cliente..............................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcli)),' ',14),mreduz);
      mtotcli:=0;
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total do Grupo................................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcon)),' ',14),mreduz);
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);
      fRPedCab(1);
      fRPedCab(2);
      mlin:=mlin+1;
      mtotcon:=0;
      mcodcona:=Qr_PedGRUPOREL.AsString;
      mcodclia:=Qr_PedP1CODCLI.Value;
      if mlin>57 then
         begin
         mlin:=mlin+1;
         form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
         form_Impres_RPed2.RDprint1.Novapagina;
         mlin:=0;
         fRPedCab(0);
         mlin:=mlin+1;
         end;

      end;
   if mcodclia<>Qr_PedP1CODCLI.Value then
      begin
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total do Cliente..............................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcli)),' ',14),mreduz);
      mtotcli:=0;
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);
      mcodclia:=Qr_PedP1CODCLI.Value;
      fRPedCab(2);
      mlin:=mlin+1;
      if mlin>57 then
         begin
         mlin:=mlin+1;
         form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
         form_Impres_RPed2.RDprint1.Novapagina;
         mlin:=0;
         fRPedCab(0);
         mlin:=mlin+1;
         end;

      end;
   mtotcli :=mtotcli +Qr_PedP1TOTALL.Value;
   mtotcon :=mtotcon +Qr_PedP1TOTALL.Value;
   mtotclig:=mtotclig+Qr_PedP1TOTALL.Value;
   mtotcong:=mtotcong+Qr_PedP1TOTALL.Value;


   form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere(Qr_PedP1CHAVE.AsString,' ',8)
                           +' '+insere(Qr_PedP1CODCLI.AsString,' ',5)
                           +' '+insere2(Qr_PedCRAZAO.Value,' ',40)
                           +' '+insere2(Trim(Qr_PedCCIDADE.Value)+'-'+Trim(Qr_PedCUF.Value),' ',23)
                           +' '+insere(iif(cb_mascara.Checked,'***',FormatFloat(mcasas, Qr_PedP1TOTALL.Value)),' ',14)
                           +' '+FormatDateTime(fdt2,Iif(Qr_PedP1DATDOC.AsDateTime<=pdatanula,Qr_PedP1DATAP.Value,Qr_PedP1DATDOC.Value))
                           +' '+iif(Trim(Qr_PedP1NAUT.Text)='','Pedido de Mercadorias','Aut.: '+Qr_PedP1NAUT.Value),mreduz);

   fRPedCab(3);
   if Qr_PedP1ACREGER.Value>0 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere2('- Valor da '+DM1.Tb_PargerPTITAGER.Value,'.',66)
                              +insere(FormatFloat('#,##0.00', Qr_PedP1ACREGER.Value),' ',14),mnormal);
      end;
   if Qr_PedP1ACRECONV.Value>0 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere2('- Valor da Taxa do Convenio','.',66)
                              +insere(FormatFloat('#,##0.00', Qr_PedP1ACRECONV.Value),' ',14),mnormal);
      end;
   if Qr_PedP1VALFRE.Value>0 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere2('- Valor da Taxa de Entrega','.',66)
                              +insere(FormatFloat('#,##0.00', Qr_PedP1VALFRE.Value),' ',14),mnormal);
      end;
   mpeda:=Qr_PedP1CHAVE.Value;
   mordema:=Qr_PedP1ORDEM.Value;
   if mlin>57 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
      form_Impres_RPed2.RDprint1.Novapagina;
      mlin:=0;
      fRPedCab(0);
      mlin:=mlin+1;
      end;
   if cb_tipoped.itemindex<>1 then
      fDetalhesProd;
   if cb_tipoped.itemindex<>0 then
      fDetalhesServico;

   Qr_Ped.next;

   if Qr_Ped.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total do Cliente..............................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcli)),' ',14),mreduz);
      mtotcli:=0;
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total do Grupo................................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcon)),' ',14),mreduz);
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);

      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,'- Total Geral...................................................................'
                              +insere(iif(cb_mascara.Checked,'***',FormatFloat('#,##0.00', mtotcong)),' ',14),mreduz);
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);

      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Fim.','-',80),mnormal);

//LUIZ

{      form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Insere2('-','-',136),mreduz);
      fImprimirCriterito(136);
      if form_Impres_RPed2.RDprint1.Setup then
        form_Impres_RPed2.RDprint1.Fechar;
      form_Impres_RPed2.free;
      form_Impres_RPed2:=nil; }
      if form_Impres_RPed2.RDprint1.Setup then form_Impres_RPed2.RDprint1.Fechar;
      form_impres_rped2.free;
      form_impres_rped2:=nil;
      end
   else if mlin>60 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
      form_Impres_RPed2.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
{
Pedido   Cliente                                       Cidade                    Total Pedido Dt.Emissao Observacoes
12345678 12345 123456789012346789012345678901234567890 12345678901234567890-go zzz.zzz.zz9,99 10/09/2000 1234567890123456789012345678

Codigo           123 Quant Descricao do Produto                    Preco Unitario    Valor Total
1234567890123/01 123 12345 123456789012346789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99

}
// 123456789012345678901234567890123456789012345678901234567890123456789012345
//
end;

procedure TFrm_RPed2.MPEDFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
   key:=#0;
end;

procedure TFrm_RPed2.MPEDFExit(Sender: TObject);
begin
if StrToInt('0'+MPEDI.Text)>StrToInt('0'+MPEDF.Text) then
   begin
   ShowMessage('Invalido. Pedido Inicial nao Pode ser Maior que Final');
   MPEDI.SetFocus;
   end;
end;

procedure TFrm_RPed2.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);


MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
MDT2.Text   :=FormatDatetime(fdt2, date);

RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1] := TRUE;
RG_TIPOPED.Checked[9] := TRUE;

if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;

  
Form_SelEmp.CLB_EMPRESAS:=fRetornaEmpresas(Form_SelEmp.CLB_EMPRESAS);
end;

function TFrm_RPed2.fRPedCab(ptipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   mpag:=mpag+1;
   form_Impres_RPed2.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
   form_Impres_RPed2.Rdprint1.Impf(01,64,'Pagina:   '+FormatFloat('0000',mpag),mnormal);
   form_Impres_RPed2.Rdprint1.Impf(02,01,'Relatorio de Pedido.',mnormal);
   form_Impres_RPed2.Rdprint1.Impf(02,64,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
   if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
      form_Impres_RPed2.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',60),mneg)
   else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
      form_Impres_RPed2.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
   else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
      form_Impres_RPed2.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
   else
      form_Impres_RPed2.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
   mlin:=3;
   if trim(OBS.Text)<>'' then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.Rdprint1.Impf(mlin,01,Centra(Trim(OBS.Text),' ',80),mneg);
      end;

 {  if lbx_codcon.Count>0 then
      FImprimeTitulo('Convenio',lbx_codcon,OMITIR_CON);
   if lbx_codcli.Count>0 then
      FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
   if lbx_codven.Count>0 then
      FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
   if lbx_codloc.Count>0 then
      FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
   if lbx_codtel.Count>0 then
      FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
      }
   mlin:=mlin+1;
   form_Impres_RPed2.RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);

   end;
if (ptipo=0) or (ptipo=1) then
   begin
   mlin:=mlin+1;
   form_Impres_RPed2.Rdprint1.Impf(mlin,01,Qr_PedGRUPOREL.AsString,mneg);
   end;
if (ptipo=0) or (ptipo=2) then
   begin
   mlin:=mlin+1;
   form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Cliente: '+FormatFloat('000000',Qr_PedP1CODCli.Value)+' - '+Qr_PedCRAZAO.Value+ ' Telefone: '+Qr_PedCFONE01.AsString+' Cidade : '+Qr_PedCCIDADE.Value+' - '+Qr_PedCUF.Value,mneg);
   end;

if ptipo=0 then
   begin
   mlin:=mlin+1;
   form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Pedido   Cliente                                       Cidade                    Total Pedido Dt.Emissao Observacoes',mreduz);
   end;

if (ptipo=4) then
   begin
   if cb_tipoped.ItemIndex=2 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Produtos',m12ccp);
      end;
   mlin:=mlin+1;
   form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Codigo           UND Quant Descricao do Produto                    Preco Unitario    Valor Total',m12ccp);
   end;

if (ptipo=5) then
   begin
   if cb_tipoped.ItemIndex=2 then
      begin
      mlin:=mlin+1;
      form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Servicos',m12ccp);
      end;
   mlin:=mlin+1;
   form_Impres_RPed2.Rdprint1.Impf(mlin,01,'Codigo           UND Quant Descricao do Servicos                   Preco Unitario    Valor Total',m12ccp);
   end;


result:=True;

end;

procedure TFrm_RPed2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RPed2.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
   BEGIN
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
   END else
      begin
      fmensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed2.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Loc',Key);
   CODLOCExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RPed2.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);


end;

procedure TFrm_RPed2.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if Trim(CODCON.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCON.Text) then
   BEGIN
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcon.text := '';
      codcon.SetFocus;
   END else
      begin
      fmensagem('Convênio não Cadastrado!',0,['0'],0);
      codcon.text := '';
      CODCON.SetFocus;
      end;
   end;


end;

procedure TFrm_RPed2.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_RPed2.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);


end;

procedure TFrm_RPed2.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed2.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RPed2.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_RPed2.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RPed2.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   BEGIN
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
   END else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      codven.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      EXIT;
      end;
   end;

end;

procedure TFrm_RPed2.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;

end;


function TFrm_RPed2.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin

if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
      form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;
//LUIZ

function TFrm_RPed2.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);
form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',136),mreduz);

   if lbx_codcon.Count>0 then
      FImprimeTitulo('Convenio',lbx_codcon,OMITIR_CON);
   if lbx_codcli.Count>0 then
      FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
   if lbx_codven.Count>0 then
      FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
   if lbx_codloc.Count>0 then
      FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
   if lbx_codtel.Count>0 then
      FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);


form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_Impres_RPed2.mlin:=form_Impres_RPed2.mlin+1;
form_Impres_RPed2.RDprint1.ImpF(form_Impres_RPed2.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;

procedure TFrm_RPed2.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      fmensagem('Televendas não cadastrado!',0,['0'],0);
      CODTEL.SetFocus;
      end
   else
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed2.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_RCRec',Key);
   CODTELExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RPed2.lbx_codtelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_RPed2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RPed2.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

end.
