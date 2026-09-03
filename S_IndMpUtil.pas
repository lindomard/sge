unit S_IndMpUtil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,S_DM2,db,dbtables,func,lerarq,S_Impres
  ,s_lerarq_geral, ExtCtrls;

type
  TFrm_IndMpUtil = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_OP03: TQuery;
    Qr_OP03OP3_QTDUTIL: TFloatField;
    Qr_OP03OP3_QTDPREV: TFloatField;
    Qr_OP03VLRPREV: TFloatField;
    Qr_OP03VLRUTIL: TFloatField;
    Qr_OP03OP3_CODMAT: TFloatField;
    Qr_OP03OP3_NUMERO: TStringField;
    Qr_OP03PDNOME: TStringField;
    Qr_OP03PDUND: TStringField;
    Label8: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Qr_OP03GRUPO: TStringField;
    Label5: TLabel;
    cb_separado: TComboBox;
    rg_status: TRadioGroup;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_indmpUtil: TFrm_Impres;
  end;

var
  Frm_IndMpUtil: TFrm_IndMpUtil;

implementation

{$R *.dfm}

procedure TFrm_IndMpUtil.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_IndMpUtil.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_IndMpUtil.bbImprimirClick(Sender: TObject);
var
maproPro, mAprovVlr: Real;
mgrade: Boolean;
mQtdPrev_grupo, mQtdProd_grupo: Real;
MvlrPrev_grupo, mVlrProd_grupo: Real;


mQtdPrev_geral, mQtdProd_geral: Real;
MvlrPrev_geral, mVlrProd_geral: Real;

mGrupo: String;
mOrdem: String;
mGroupby: String;
mGrupo_ant: string;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if cb_separado.text='Ano' then
   begin
   mGrupo:='to_char(OP1_DATA, '+QuotedStr('yyyy')+')';
   mOrdem:='GRUPO,';
   mGroupby:=',to_char(OP1_DATA, '+QuotedStr('yyyy')+')';
   end
else  if cb_separado.text='Chave da OP' then
   begin
   mGrupo:='(select '+QuotedStr(' CHAVE ')+' || OP2_CODIGO || '+QuotedStr(' Produto Fabricado ')+' || PDNOME || '+QuotedStr(' ')+' || PDUND || '+QuotedStr(' ')
           +' || OP2_CODPRO from CADOP02,CADPRO '
           +'   wHere OP2_LOTSEQ=OP1_LOTSEQ AND OP2_CODIGO=OP1_CODIGO  AND PDCODPRO=OP2_CODPRO '
           +'    AND ROWNUM<2) ';
   mOrdem:='GRUPO,';
   mGroupby:=',OP1_LOTSEQ,OP1_CODIGO';
   end
else if cb_separado.text='Data' then
   begin
   mGrupo:='to_char(OP1_DATA, '+QuotedStr('dd/mm/yyyy')+')';
   mOrdem:='GRUPO,';
   mGroupby:=',OP1_DATA';

   end
else if cb_separado.text='Mes/Ano' then
   begin
   mGrupo:=' to_char(max(OP1_DATA), '+quotedstr('yyyymm')+') AS GRUPO2 '
          +',to_char(OP1_DATA, '+QuotedStr('mm/yyyy')+')';

   mOrdem:='GRUPO2,';
   mGroupby:='to_char(OP1_DATA, '+QuotedStr('mm/yyyy')+')';

   end
else
   begin
   mGrupo:=QuotedStr('  ');
   mOrdem:='';
   mGroupby:='';
   end;


Qr_OP03.Close;
Qr_OP03.SQL.Clear;
Qr_OP03.SQL.Add('Select sum(OP3_QTDUTIL) as OP3_QTDUTIL,sum(OP3_QTDPREV) as OP3_QTDPREV, '
               +'       sum(OP3_PU*OP3_QTDPREV) as VLRPREV, '
               +'       sum(OP3_PU*OP3_QTDUTIL) as VLRUTIL, '
               +'       OP3_CODMAT,OP3_NUMERO, PDNOME, PDUND '
               +'       ,'+mGrupo+' AS GRUPO '
               +'       from CADOP01,CADOP03,CADPRO '
               +'       where  '
               +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and OP3_CODEMP=OP1_CODEMP and ')
               +' OP3_LOTSEQ=OP1_LOTSEQ '
//               +' and   OP3_FABENV=OP1_FABENV '
               +' and   OP3_CODIGO=OP1_CODIGO '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OP1_CODEMP ')
               +' and PDCODPRO=OP3_CODMAT '
               +' and OP1_STATUS<9');
if rg_status.itemindex=0 then
  Qr_OP03.SQL.Add(' and OP1_STATUS=0 ')
else if rg_status.itemindex=1 then
  Qr_OP03.SQL.Add(' and OP1_STATUS>0 ');

if Trim(MDT1.Text)<>'/  /' then
   Qr_OP03.SQL.Add(' and OP1_DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_OP03.SQL.Add(' and OP1_DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Qr_OP03.sQL.Add(' and OP3_CODMAT '+mcinst2);

Qr_OP03.SQL.Add(' group by  OP3_CODMAT,OP3_NUMERO, PDNOME, PDUND'+mGroupby);

Qr_OP03.SQL.Add(' order by  '+mOrdem+'  PDNOME, PDUND,OP3_CODMAT,OP3_NUMERO '+mGroupby);

try
   Qr_OP03.Open;
except
   Qr_OP03.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

if Qr_OP03.Eof then
   begin
   fMensagem('Não ha nada a ser impresso!',0,['0'],0);
   exit;
   end;
if Valint(copy(mpseg,4,2))=2 then
   mgrade:=true
else
   mgrade:=false;

testeform := TFrm_IndMpUtil(FindGlobalComponent('form_impres_indmpUtil'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_indmpUtil);

form_impres_indmpUtil.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_indmpUtil.mlin:=0;
form_impres_indmpUtil.mpag:=0;
maproPro :=0;
mAprovVlr:=0;
mQtdPrev_grupo :=0;
mQtdProd_grupo :=0;
MvlrPrev_grupo :=0;
mVlrProd_grupo :=0;

mQtdPrev_geral :=0;
mQtdProd_geral :=0;
MvlrPrev_geral :=0;
mVlrProd_geral :=0;

mGrupo_ant:='-1';
While not Qr_OP03.Eof do
   begin
   if form_impres_indmpUtil.mlin=0 then
      begin
      form_impres_indmpUtil.mpag:=form_impres_indmpUtil.mpag+1;
      form_impres_indmpUtil.RDprint1.impf(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_indmpUtil.RDprint1.ImpF(02,01,insere2('Relatorio de Materias Primas Utilizadas em Fabricacao. ',' ',60)+'Pagina: '+Formatfloat('0000',form_impres_indmpUtil.mpag),mnormal);
      form_impres_indmpUtil.RDprint1.impf(03,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',78),mnormal);
      form_impres_indmpUtil.RDprint1.impf(04,01,'+-----------+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
      form_impres_indmpUtil.RDprint1.ImpF(05,01,'|   Codigo  |und| Descricao                             '+iif(mgrade,'| Grade/Refe','            ')+'|Qtd.Previst|Qtd.Utiliz |%Aprov.|Vlrs.Previs|Vlr.Utiliz |%Aprov.|',mreduz);
      form_impres_indmpUtil.mlin:=5;
      end;
   if (cb_separado.Text<>'Sem Separar') and (mGrupo_ant<>Qr_OP03GRUPO.asstring) then
      begin
      form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
      mGrupo_ant:=Qr_OP03GRUPO.asstring;
      form_impres_indmpUtil.RDprint1.ImpF(form_impres_indmpUtil.mlin,01,'|'+centra(Qr_OP03GRUPO.AsString,' ',134)+'|',mreduz);
      end;
   if lbx_codpro.Count>0 then
      FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
   mQtdPrev_grupo:=mQtdPrev_grupo+Qr_OP03OP3_QTDPREV.Value;
   mQtdProd_grupo:=mQtdProd_grupo+Qr_OP03OP3_QTDUTIL.Value;
   MvlrPrev_grupo:=MvlrPrev_grupo+Qr_OP03VLRPREV.Value;
   mVlrProd_grupo:=mVlrProd_grupo+Qr_OP03VLRUTIL.Value;


   mQtdPrev_geral:=mQtdPrev_geral+Qr_OP03OP3_QTDPREV.Value;
   mQtdProd_geral:=mQtdProd_geral+Qr_OP03OP3_QTDUTIL.Value;
   MvlrPrev_geral:=MvlrPrev_geral+Qr_OP03VLRPREV.Value;
   mVlrProd_geral:=mVlrProd_geral+Qr_OP03VLRUTIL.Value;


//   maproPro:=Qr_OP03OP3_QTDPREV.Value-Qr_OP03OP3_QTDUTIL.Value;
   maproPro:=0;

   if (Qr_OP03OP3_QTDPREV.Value<>0) and (Qr_OP03OP3_QTDUTIL.Value<>0) then
      begin
      try
         maproPro:=(Qr_OP03OP3_QTDPREV.Value*100)/Qr_OP03OP3_QTDUTIL.Value;
      except
         maproPro:=0;
         end;
      end;

//   mAprovVlr:=Qr_OP03VLRPREV.Value-Qr_OP03VLRUTIL.Value;
   mAprovVlr:=0;

   if  (Qr_OP03VLRPREV.Value<>0) and (Qr_OP03VLRUTIL.Value<>0) then
      begin
      try
         mAprovVlr:=(Qr_OP03VLRPREV.Value*100)/Qr_OP03VLRUTIL.Value;
      except
         mAprovVlr:=0;
         end;
      end;
   form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
   form_impres_indmpUtil.RDprint1.ImpF(form_impres_indmpUtil.mlin,01,'|'+insere2(Qr_OP03OP3_CODMAT.AsString,' ',10)+' |'
                                   +insere2(Qr_OP03PDUND.Value,' ',03)+'| '
                                   +iif(mgrade,insere2(Qr_OP03PDNOME.Value,' ',38)+'| '+insere2(Qr_OP03OP3_NUMERO.Value,' ',10)+'|',
                                    insere2(Qr_OP03PDNOME.Value,' ',50)+'|')
                                   +insere(Formatfloat(mcasind,Qr_OP03OP3_QTDPREV.Value),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, Qr_OP03OP3_QTDUTIL.Value),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|'
                                   +insere(Formatfloat(mcasind,Qr_OP03VLRPREV.Value),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, Qr_OP03VLRUTIL.Value),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);

//+-----------+---+---------------------------------------+-----------+-----------+-----------+-------+-----------+-----------+-------+
//|   Codigo  |und| Descricao dos Produtos                | Grade/Refe|Qtd.Previst|Qtd.Produz |%Aprov.|Vlrs.Previs|Vlr.Produz |%Aprov.|
//|1234567890 |und| 12345678901234567890123456789012345678| 1234567890|123456.123 |123456.123 |123.12%|123456.123 |123456.123 |123.12%|
   Qr_OP03.Next;
   if Qr_OP03.Eof then
      begin
      form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
      maproPro:=0;
      if (mQtdPrev_grupo<>0) and (mQtdProd_grupo<>0) then
         begin
         try
            maproPro:=(mQtdPrev_grupo*100)/mQtdProd_grupo;
         except
            maproPro:=0;
            end;
         end;
     if (cb_separado.Text<>'Sem Separar') then
        begin
        form_impres_indmpUtil.RDprint1.ImpF(form_impres_indmpUtil.mlin,01,'|'+insere2(' ',' ',10)+' |'
                                   +insere2(' ',' ',03)+'| '
                                   +iif(mgrade,insere2('-Totais','.',38)+'| '+insere2('.','.',10)+'|',
                                    insere2('-Totais','.',50)+'|')
                                   +insere(Formatfloat(mcasind, mQtdPrev_grupo),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, mQtdProd_grupo),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|'
                                   +insere(Formatfloat(mcasind, MvlrPrev_grupo),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, mVlrProd_grupo),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);
        form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
        mQtdPrev_grupo :=0;
        mQtdProd_grupo :=0;
        maproPro :=0;
        MvlrPrev_grupo :=0;
        mVlrProd_grupo :=0;
        mAprovVlr:=0;

        end;

      maproPro:=0;
      if (mQtdPrev_geral<>0) and (mQtdProd_geral<>0) then
         begin
         try
            maproPro:=(mQtdPrev_geral*100)/mQtdProd_geral;
         except
            maproPro:=0;
            end;
         end;



      form_impres_indmpUtil.RDprint1.ImpF(form_impres_indmpUtil.mlin,01,'|'+insere2(' ',' ',10)+' |'
                                   +insere2(' ',' ',03)+'| '
                                   +iif(mgrade,insere2('-Totais','.',38)+'| '+insere2('.','.',10)+'|',
                                    insere2('-Totais','.',50)+'|')
                                   +insere(Formatfloat(mcasind, mQtdPrev_geral),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, mQtdProd_geral),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, maproPro),' ',06)+'%|'
                                   +insere(Formatfloat(mcasind, MvlrPrev_geral),' ',11)+'|'
                                   +insere(FormatFloat(mcasind, mVlrProd_geral),' ',11)+'|'
                                   +insere(FormatFloat(mcasas, mAprovVlr),' ',06)+'%|',mreduz);
      form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
      form_impres_indmpUtil.RDprint1.impf(form_impres_indmpUtil.mlin,01,'+Fim.-------+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
      if form_impres_indmpUtil.RDprint1.Setup then form_impres_indmpUtil.RDprint1.Fechar;
      form_impres_indmpUtil.free;
      form_impres_indmpUtil:=nil;
      end
   else if form_impres_indmpUtil.mlin>58 then
      begin
      form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
      form_impres_indmpUtil.RDprint1.impf(form_impres_indmpUtil.mlin,01,'+Continua...+---+---------------------------------------'+iif(mgrade,'+-----------','------------')+'+-----------+-----------+-------+-----------+-----------+-------+',mReduz);
      form_impres_indmpUtil.RDprint1.Novapagina;
      form_impres_indmpUtil.mlin  := 0;
      end;
   end;
end;

procedure TFrm_IndMpUtil.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_IndMpUtil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_IndMpUtil.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      end;

   end;


end;

procedure TFrm_IndMpUtil.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_IndMpUtil.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

function tFrm_IndMpUtil.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_indmpUtil.mlin:=form_impres_indmpUtil.mlin+1;
      form_impres_indmpUtil.RDprint1.ImpF(form_impres_indmpUtil.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;


end.
