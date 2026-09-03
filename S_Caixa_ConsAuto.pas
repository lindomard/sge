unit S_Caixa_ConsAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, RxMemDS, Grids, DBGrids,dbtables,
  Mask, ToolEdit, Spin, DBClient;

type
  TFrm_Caixa_ConsAuto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_nomarq: TEdit;
    SpeedButton1: TSpeedButton;
    bbLer: TBitBtn;
    bbSairSemGravar: TBitBtn;
    opd1: TOpenDialog;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    src_extrato: TDataSource;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    Panel4: TPanel;
    Label2: TLabel;
    edt_datini: TDateEdit;
    Label3: TLabel;
    edt_datfin: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    cb_mesma_natureza: TCheckBox;
    qr_ldr: TQuery;
    DBGrid2: TDBGrid;
    src_ldr: TDataSource;
    qr_ldrCODLDR: TFloatField;
    qr_ldrVALORR: TFloatField;
    qr_ldrDATAREAL: TDateTimeField;
    qr_ldrDATCONC: TDateTimeField;
    qr_ldrNATDC: TStringField;
    qr_ldrDESCMV: TStringField;
    qr_ldrNUMDOC: TStringField;
    qr_ldrNUMDOC2: TStringField;
    qr_ldrTIPO: TStringField;
    qr_ldrCODIGO: TFloatField;
    qr_ldrNOME: TStringField;
    qr_ldrselecionado: TStringField;
    edt_perc_difer: TSpinEdit;
    qr_ldrPERC_DIFERENCA: TFloatField;
    Panel5: TPanel;
    Label6: TLabel;
    edt_valor_lcto: TEdit;
    Label7: TLabel;
    edt_totcontas: TEdit;
    lbl_passa_falta: TLabel;
    edt_diferenca: TEdit;
    u_ldr: TUpdateSQL;
    bbConciliar: TBitBtn;
    Label8: TLabel;
    cb_listar_contas: TComboBox;
    bbExcluirConciliacao: TBitBtn;
    bbCriarContaCaixa: TBitBtn;
    mem_extrato: TClientDataSet;
    mem_extratoHISTORICO: TStringField;
    mem_extratoAGENCIA: TStringField;
    mem_extratoCONTA: TStringField;
    mem_extratoDATA_CONTABIL: TDateField;
    mem_extratoDATA_LANCAMENTO: TDateField;
    mem_extratoAGENCIA_OCOR: TStringField;
    mem_extratoCODIGO: TStringField;
    mem_extratoNUMERO_DOC: TStringField;
    mem_extratoCOD_HISTORICO: TStringField;
    mem_extratoVALOR: TFloatField;
    mem_extratoNATUREZA: TStringField;
    mem_extratoDETALHE: TStringField;
    mem_extratoBANCO_CODIGO: TIntegerField;
    mem_extratoBANCO_NOME: TStringField;
    mem_extratoCHAVE_ID: TIntegerField;
    mem_extratoID_CADBCO: TIntegerField;
    mem_extratoSTATUS: TIntegerField;
    Label9: TLabel;
    Label10: TLabel;
    spn_qtdrreg: TSpinEdit;
    edt_sugerido: TEdit;
    edt_conciliado: TEdit;
    cb_mesmo_banco: TCheckBox;
    cb_salvar_sql: TCheckBox;
    cb_aplicar_sugestao: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure src_extratoDataChange(Sender: TObject; Field: TField);
    procedure edt_perc_diferChange(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
    procedure cb_mesma_naturezaClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure qr_ldrBeforePost(DataSet: TDataSet);
    procedure bbConciliarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbExcluirConciliacaoClick(Sender: TObject);
    procedure cb_listar_contasClick(Sender: TObject);
    procedure bbSairSemGravarClick(Sender: TObject);
    procedure bbCriarContaCaixaClick(Sender: TObject);
    procedure spn_qtdrregChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cb_mesmo_bancoClick(Sender: TObject);
    procedure cb_aplicar_sugestaoClick(Sender: TObject);
    procedure cb_salvar_sqlClick(Sender: TObject);
  private
    { Private declarations }
    mValor_ant: Real;
    mValor_conta: real;
    mTotais_Contas: real;
    mDiferenca: real;
    mNomeBanco: String;

    mId_cadbco: integer;

    function fVerificarExistenciaNoBancoDeDados:boolean;

    procedure fApresentarTotais;



    function fCancelarConciliacao: boolean;


    procedure fGravarCadLdr;

    function fRetirarDigito(pConta: String): String;


  public
    { Public declarations }

    function fLerOFX(pNomeArq: String): Boolean;
    procedure fLerCadldr(pValor: real; pStatus: integer);


  end;

var
  Frm_Caixa_ConsAuto: TFrm_Caixa_ConsAuto;

implementation

uses S_YMOFXReader, S_DM1, func_excecoes, Func, s_Caixa_ConsAuto_incluir,
  S_DM4, lerarq, func_bde, Func2;

{$R *.dfm}

procedure TFrm_Caixa_ConsAuto.SpeedButton1Click(Sender: TObject);
begin
if opd1.Execute then
   begin
   edt_nomarq.Text:=opd1.FileName;
   bbLerClick(self);
   end;

end;


function TFrm_Caixa_ConsAuto.fLerOFX(pNomeArq: String): Boolean;
var
x_file: integer;

YMOFXReader1: TYMOFXReader;
  i:integer;
  x_qtd_reg: integer;

     procedure fAjustarTxt;
     var
     memo_arq: TStrings;
     memo_arq_novo: TStrings;
     begin
     memo_arq_novo :=  TStringList.Create;
     memo_arq :=  TStringList.Create;
     memo_arq.LoadFromFile(pNomeArq);
     memo_arq_novo.Text:=StringReplace(memo_arq.text,'><','>'+chr(13)+chr(10)+'<',[rfReplaceAll, rfIgnoreCase]);
     pNomeArq:=fRetiraExtensao(pNomeArq)+'_1'+fsoExtensao(pNomeArq);
     memo_arq_novo.SaveToFile(pNomeArq);
     FreeAndNil(memo_arq);
     FreeAndNil(memo_arq_novo);


     end;
begin
if not mem_extrato.Active then
   begin
   mem_extrato.CreateDataSet;
   mem_extrato.Open;
   end;

YMOFXReader1:= TYMOFXReader.create(self);
ListBox1.Clear;
mem_extrato.DisableControls;
mem_extrato.EmptyDataSet;

x_qtd_reg := 0;

for x_file:=0 to 1 do
   begin
   YMOFXReader1.OFXFile := pNOmeArq;
   YMOFXReader1.Process;
   if YMOFXReader1.Count<1 then
      begin
      fAjustarTxt;
      continue;
      end;

   for i := 0 to YMOFXReader1.Count-1 do
      begin
      x_qtd_reg:=x_qtd_reg+1;
      mem_extrato.Append;
      mem_extratoHISTORICO.Value:=YMOFXReader1.Get(i).Desc;
      if YMOFXReader1.Get(i).Valor>0 then
         begin
         mem_extratoVALOR.Value   :=YMOFXReader1.Get(i).Valor;
         mem_extratoNATUREZA.Value:='C';
         end
      else
         begin
         mem_extratoVALOR.Value   :=YMOFXReader1.Get(i).Valor*-1;
         mem_extratoNATUREZA.Value:='D';
         end;
      mem_extratoDETALHE.Value          :=YMOFXReader1.Get(i).MovType;
      mem_extratoDATA_CONTABIL.Value    :=YMOFXReader1.Get(i).MovDate;
      mem_extratoDATA_LANCAMENTO.Value  :=YMOFXReader1.Get(i).MovDate;
      mem_extratoNUMERO_DOC.Value       :=YMOFXReader1.Get(i).ID;
      mem_extratoCODIGO.Value           :=YMOFXReader1.Get(i).Document;
      mem_extratoBANCO_CODIGO.Value     :=YMOFXReader1.Get(i).Banco_codigo;
      mem_extratoBANCO_NOME.Value       :=YMOFXReader1.Get(i).Banco_Nome;
      mem_extratoCONTA.Value            :=YMOFXReader1.Get(i).Conta;
      mem_extratoAGENCIA.Value          :=YMOFXReader1.Get(i).Agencia;

      mem_extrato.Post;

      ListBox1.Items.Add(YMOFXReader1.Get(i).Desc + '|| ' +
                        FloatToStr(YMOFXReader1.Get(i).Valor) + '|| ' +
                        YMOFXReader1.Get(i).MovType + '|| ' +
                        dateToStr(YMOFXReader1.Get(i).MovDate) + '|| ' +
                        YMOFXReader1.Get(i).ID + '|| ' +
                        YMOFXReader1.Get(i).Document + '|| '

                        );
      end;
   break;
   end;

fVerificarExistenciaNoBancoDeDados;
// showmessage(inttostr(x_qtd_reg));
mem_extrato.EnableControls;
mem_extrato.First;
end;

procedure TFrm_Caixa_ConsAuto.bbLerClick(Sender: TObject);
begin
if FileExists(edt_nomarq.Text) then
   fLerOFX(edt_nomarq.Text);
end;

procedure TFrm_Caixa_ConsAuto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if mem_extrato.Active then
   begin
   mem_extrato.Close;
   end;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

function TFrm_Caixa_ConsAuto.fRetirarDigito(pConta: String): String;
begin
pconta:=copy(pConta,1,length(pconta)-1);
result:= fdeixanum(pConta);

end;


function TFrm_Caixa_ConsAuto.fVerificarExistenciaNoBancoDeDados:boolean;
var
query_temp: tQuery;
begin

if mem_extrato.IsEmpty then
   begin
   result:=false;
   exit;
   end;
   {
   NO ITAU 341
   agencia: 9338
c/c: 99729-0
}
query_temp := tQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
mem_extrato.First;
query_temp.sql.add('select BCCODBCO,BCBANCO from CADBCO where BCCODCED='+QuotedStr(mem_extratoCONTA.AsString));
try
   query_temp.Open;
   if query_temp.IsEmpty then
      begin
      query_temp.close;
      query_temp.sql.clear;
      query_temp.sql.add('select BCCODBCO,BCBANCO from CADBCO where BCCODCED='+QuotedStr(fRetirarDigito(mem_extratoCONTA.AsString)));
      query_temp.Open;
      end;


except ON E: Exception do
   begin
   ex_erroSql_Novo(query_temp,248,'_stru '+e.message,'cadbco');
   query_temp.close;
   freeandnil(query_temp);
   result:=false;
   exit;
   end;
   end;
if query_temp.IsEmpty then
   begin
   MessageDlg('Não Foi Encontrado conta '+mem_extratoCONTA.AsString,mtWarning,[mbOk],0);
//   ex_erroSql_Novo(query_temp,160,'_stru ','cadbco');

   query_temp.close;
   freeandnil(query_temp);
   result:=false;
   exit;

   end;
mem_extrato.First;
mId_cadbco := query_temp.fieldbyname('BCCODBCO').AsInteger;
mNomeBanco := query_temp.fieldbyname('BCBANCO').AsString;

edt_datini.date := mem_extratoDATA_CONTABIL.AsDateTime;
edt_datfin.date := mem_extratoDATA_CONTABIL.AsDateTime;

While not mem_extrato.Eof do
   begin
   if edt_datini.date>mem_extratoDATA_CONTABIL.AsDateTime then
      edt_datini.date := mem_extratoDATA_CONTABIL.AsDateTime;


   if edt_datfin.date < mem_extratoDATA_CONTABIL.AsDateTime then
      edt_datfin.date := mem_extratoDATA_CONTABIL.AsDateTime;

   mem_extrato.Edit;
   mem_extratoID_CADBCO.Value:=mId_cadbco;
   While true do
      begin
      query_temp.close;
      query_temp.SQL.clear;
      query_temp.sql.add('select OFX_CHAVE_ID,OFX_STATUS from CADOFX where OFX_CONTA='+QuotedStr(mem_extratoCONTA.AsString)
                       +' AND OFX_NUMERO_DOC='+QuotedStr(mem_extratoNUMERO_DOC.AsString));
      try
         query_temp.open;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_temp,294,'_stru '+e.message,'cadbco');
         query_temp.close;
         freeandnil(query_temp);
         result:=false;
         exit;
         end;
         end;
      if not query_temp.IsEmpty then
         begin
         mem_extratoCHAVE_ID.AsInteger:=query_temp.fieldbyname('OFX_CHAVE_ID').AsInteger;
         mem_extratoSTATUS.AsInteger:=query_temp.fieldbyname('OFX_STATUS').AsInteger;
         break;
         end;
      query_temp.close;
      query_temp.SQL.clear;
      query_temp.SQL.Add('insert into CADOFX ( '
      +'OFX_CHAVE_ID, '
      +'OFX_HISTORICO, '
      +'OFX_DATA_CONTABIL, '
      +'OFX_DATA_LANCAMENTO, '
      +'OFX_AGENCIA_OCOR, '
      +'OFX_CODIGO, '
      +'OFX_COD_HISTORICO, '
      +'OFX_VALOR, '
      +'OFX_NATUREZA, '
      +'OFX_DETALHE, '
      +'OFX_STATUS, '
      +'OFX_NUMERO_DOC, '
      +'OFX_AGENCIA, '
      +'OFX_ID_CADBCO, '
      +'OFX_NOME_ARQUIVO, '
      +'OFX_CONTA, '
      +'OFX_BANCO_CODIGO, '
      +'OFX_BANCO_NOME '
      +' ) values ('
      +'CADOFX_SEQ.NEXTVAL, '
      +':OFX_HISTORICO, '
      +':OFX_DATA_CONTABIL, '
      +':OFX_DATA_LANCAMENTO, '
      +':OFX_AGENCIA_OCOR, '
      +':OFX_CODIGO, '
      +':OFX_COD_HISTORICO, '
      +':OFX_VALOR, '
      +':OFX_NATUREZA, '
      +':OFX_DETALHE, '
      +':OFX_STATUS, '
      +':OFX_NUMERO_DOC, '
      +':OFX_AGENCIA, '
      +':OFX_ID_CADBCO, '
      +':OFX_NOME_ARQUIVO, '
      +':OFX_CONTA, '
      +':OFX_BANCO_CODIGO, '
      +':OFX_BANCO_NOME '
      +' )');
      query_temp.ParamByName('OFX_HISTORICO').AsString         := mem_extratoHISTORICO.AsString;
      query_temp.ParamByName('OFX_DATA_CONTABIL').AsDateTime   := mem_extratoDATA_CONTABIL.AsDateTime;
      query_temp.ParamByName('OFX_DATA_LANCAMENTO').AsDateTime := mem_extratoDATA_LANCAMENTO.AsDateTime;
      query_temp.ParamByName('OFX_AGENCIA_OCOR').AsString      := mem_extratoAGENCIA_OCOR.AsString;
      query_temp.ParamByName('OFX_CODIGO').AsString            := mem_extratoCODIGO.AsString;
      query_temp.ParamByName('OFX_COD_HISTORICO').AsString     := mem_extratoCOD_HISTORICO.AsString;
      query_temp.ParamByName('OFX_VALOR').AsFloat              := mem_extratoVALOR.AsFloat;
      query_temp.ParamByName('OFX_NATUREZA').AsString          := mem_extratoNATUREZA.AsString;
      query_temp.ParamByName('OFX_DETALHE').AsString           := mem_extratoDETALHE.AsString;
      query_temp.ParamByName('OFX_STATUS').AsInteger           := 0;
      query_temp.ParamByName('OFX_NUMERO_DOC').AsString        := mem_extratoNUMERO_DOC.AsString;
      query_temp.ParamByName('OFX_AGENCIA').AsString           := mem_extratoAGENCIA.AsString;
      query_temp.ParamByName('OFX_ID_CADBCO').AsInteger        := mId_cadbco;
      query_temp.ParamByName('OFX_NOME_ARQUIVO').AsString      := Fnomearq_Pasta(0,edt_nomarq.Text);
      query_temp.ParamByName('OFX_CONTA').AsString             := mem_extratoCONTA.AsString;
      query_temp.ParamByName('OFX_BANCO_CODIGO').AsInteger     := mem_extratoBANCO_CODIGO.AsInteger;
      query_temp.ParamByName('OFX_BANCO_NOME').AsString        := mem_extratoBANCO_NOME.AsString;
      try
         query_temp.ExecSQL;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_temp,267,'_stru '+e.message,'cadofx');
         query_temp.close;
         freeandnil(query_temp);
         result:=false;
         exit;
         end;
         end;
      end;
    mem_extrato.Next;
   end;
end;


procedure TFrm_Caixa_ConsAuto.fLerCadldr(pValor: real; pStatus: integer);



begin
if (mem_extratoVALOR.IsNull) or (mem_extratoCHAVE_ID.IsNull)   then
   exit;
mValor_ant:=mem_extratoVALOR.AsFloat;

mValor_conta  :=mem_extratoVALOR.AsFloat;
mTotais_Contas:=0;
mDiferenca    :=0;
qr_ldr.DisableControls;


qr_ldr.Close;
qr_ldr.sql.Clear;

   qr_ldr.sql.add('select CODLDR,VALORR,DATAREAL,'
              +' CASE WHEN DATCONC<='+quotedstr( FormatDateTime(fdt, pdatanula))
              +' THEN NULL ELSE DATCONC END '
              +' AS DATCONC,NATDC,DESCMV,NUMDOC,NUMDOC2,TIPO,CODIGO '
              +',NOME, (:PVALOR - VALORR)*100 / CASE WHEN NVL(VALORR,0)=0 THEN 1 ELSE VALORR  END as perc_diferenca, ');
   if cb_aplicar_sugestao.Checked= true then
      begin
      qr_ldr.SQL.add('case when NVL(LO_CHAVE_ID_LDR,0)<>0 then  '+QuotedStr('X')
      +'     when RET_VALOR_TIT=VALORR and RET_DTVCTO_TIT=DATAREAL then '+QuotedStr('X')
      +'      when RET_CODLDR>0 and RET_DTVCTO_TIT=DATADP and '
      +QuotedStr(FormatDateTime(fdt, mem_extratoDATA_LANCAMENTO.AsDateTime))+'=DATAREAL AND NATDC='+QuotedStr(mem_extratoNATUREZA.AsString)
      +' and LO_CHAVE_ID_LDR is null then '+QuotedStr('X')
      +' else '+quotedStr(' ')+' end ');
      end
   else
      qr_ldr.sql.add(' case when LO_CHAVE_ID_LDR=CODLDR THEN '+QuotedStr('X')+' else '+QuotedStr(' ')+' END ');
   qr_ldr.sql.add(' as selecionado '
              +',CASE WHEN VALORR=:PVALOR THEN '+quotedstr('0')
              +'       WHEN DATAREAL = :DATAREAL THEN ('+QuotedStr('1')+')'
              +'       WHEN (DATAREAL - :DATAREAL)>-1 '
              +'             AND  (DATAREAL - :DATAREAL)<4 THEN ('+QuotedStr('2')+') '
              +'       WHEN (:DATAREAL - DATAREAL)>-1 '
              +'             AND  (:DATAREAL - DATAREAL)<4 THEN ('+QuotedStr('2')+')  '
              +' ELSE '+QuotedStr('9')+' END AS ORDEM '

//              +', case when NVL(LO_CHAVE_ID_LDR,0)=0 then '+quotedstr(' ')+' else '+quotedstr('X')+' end as selecionado '
              +' FROM CADLDR LEFT JOIN CADLDROFX on (LO_CHAVE_ID_LDR = CODLDR )'
//               AND LO_CHAVE_ID_OFX='+mem_extratoCHAVE_ID.AsString+' ) '
              +' LEFT JOIN CADDAR_RET ON (RET_CODLDR=CODLDR) '

              +' where  ( LO_CHAVE_ID_LDR=CODLDR OR ( 1=1 ');
   qr_ldr.parambyname('PVALOR').asfloat :=  pValor;
   if cb_mesma_natureza.Checked then
      qr_ldr.SQL.Add(' and NATDC='+QuotedStr(mem_extratoNATUREZA.AsString));
   if cb_mesmo_banco.Checked then
      qr_ldr.SQL.Add(' and ( CODBCO='+inttostr(mId_cadbco)+' or VALORR=:PVALOR ) ' );
   qr_ldr.SQL.Add(fFormatdatetimeParaConsulta('DATAREAL',true,edt_datini.Date));
   qr_ldr.SQL.Add(fFormatdatetimeParaConsulta('DATAREAL',false,edt_datfin.Date));

   qr_ldr.SQL.add(' and DATAREAL >=:DATAREAL ');
   qr_ldr.ParamByName('DATAREAL').AsDate :=  pDataNula;

   if pStatus=1 then
      begin
      qr_ldr.sql.add(') ) and NVL(LO_CHAVE_ID,0)<>0 ');
      end
    else
      begin
      if fsonumero(edt_perc_difer.text)=0 then
         begin
         qr_ldr.SQL.add(' and VALORR = :PVALOR ');
         qr_ldr.sql.add(') ) and NVL(LO_CHAVE_ID,0)=0 ');

         end
      else if fsonumero(edt_perc_difer.text)>0 then
         begin
         qr_ldr.SQL.add(' and  (:PVALOR - VALORR)*100 / CASE WHEN NVL(VALORR,0)=0 THEN 1 ELSE VALORR  END  * case when (:PVALOR - VALORR)*100 / CASE WHEN NVL(VALORR,0)=0 THEN 1 ELSE VALORR  END  <0 then -1 else 1 end <= '+edt_perc_difer.Text);
         qr_ldr.sql.add(') ) and NVL(LO_CHAVE_ID,0)=0 ');
         qr_ldr.SQL.add(' order by  ORDEM, ( (:PVALOR - VALORR)*100 / CASE WHEN NVL(VALORR,0)=0 THEN 1 ELSE VALORR  END  * case when (:PVALOR - VALORR)*100 / CASE WHEN NVL(VALORR,0)=0 THEN 1 ELSE VALORR  END  <0 then -1 else 1 end  ) ');
         end
      else
         qr_ldr.sql.add(') ) and NVL(LO_CHAVE_ID,0)=0 ');
      end;

   if (spn_qtdrreg.Value>0) then
      begin
      qr_ldr.SQL.Text:='Select * from ('+qr_ldr.SQL.Text+') t3 where rownum<'+spn_qtdrreg.text;
      end;
   try
      qr_ldr.open;
      if cb_salvar_sql.Checked then
         ex_erroSql_Novo(qr_ldr,326,'_stru ','cadldr');
   except ON E: Exception do
      begin
      ex_erroSql_Novo(qr_ldr,326,'_stru '+e.message,'cadldr');
      end;
      end;

mTotais_Contas:=0;

While not qr_ldr.eof do
   begin
   if qr_ldrselecionado.AsString='X' then
      mTotais_Contas:=mTotais_Contas+qr_ldrVALORR.AsFloat;
   qr_ldr.Next;
   end;
qr_ldr.EnableControls;
qr_ldr.first;

fApresentarTotais;
end;


procedure TFrm_Caixa_ConsAuto.fApresentarTotais;
begin
mDiferenca    :=arredonda(mValor_conta,2)-arredonda(mTotais_Contas,2);
if mDiferenca=0 then
   begin
   lbl_passa_falta.Caption:='Diferença';
   edt_diferenca.Brush.Color:=clBlue;
   end
else if mDiferenca<0 then
   begin
   edt_diferenca.Brush.Color:=clBlue;
   lbl_passa_falta.Caption:='Passa ';
   end
else
   begin
   lbl_passa_falta.Caption:='Falta ';
   edt_diferenca.Brush.Color:=clRed;
   end;

edt_totcontas.Text:=Formatfloat(mcasas, mTotais_Contas);
edt_valor_lcto.Text:=Formatfloat(mcasas, mValor_conta);
edt_diferenca.Text:=Formatfloat(mcasas, mDiferenca);
bbExcluirConciliacao.Enabled:=mem_extratoSTATUS.AsInteger=1;
bbConciliar.Enabled:=(mValor_conta>0) and (mDiferenca=0) and (bbExcluirConciliacao.Enabled=false);


bbCriarContaCaixa.Enabled:=valfloat(edt_diferenca.text)>0;

end;


procedure TFrm_Caixa_ConsAuto.FormCreate(Sender: TObject);
begin
cb_salvar_sql.Visible := codusr=1111;

mValor_ant :=0;
qr_ldrPERC_DIFERENCA.DisplayFormat            :=mcasas_pct;
qr_ldrVALORR.DisplayFormat                    :=mcasas;
qr_ldrDATAREAL.DisplayFormat                  :=fdt2;
qr_ldrDATCONC.DisplayFormat                   :=fdt2;


mem_extratoDATA_CONTABIL.DisplayFormat        :=fdt2;
mem_extratoDATA_LANCAMENTO.DisplayFormat      :=fdt2;
mem_extratoVALOR.DisplayFormat                :=mcasas;

if flfilpad(0,'_caixa_consauto','spn_qtdreg') then
   spn_qtdrreg.Value:=valint2(DM4.Tb_FilPad2FPVALOR.AsString);

if flfilpad(0,'_caixa_consauto','cb_aplicar_sugestao') then
   cb_aplicar_sugestao.Checked := DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_caixa_consauto','cb_mesmo_banco') then
   cb_mesmo_banco.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_caixa_consauto','cb_mesma_natureza') then
   cb_mesma_natureza.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
end;

procedure TFrm_Caixa_ConsAuto.src_extratoDataChange(Sender: TObject;
  Field: TField);
begin
if mValor_ant<>mem_extratoVALOR.AsFloat then
   fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);

end;

procedure TFrm_Caixa_ConsAuto.edt_perc_diferChange(Sender: TObject);
begin
   begin
   if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
      fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);
   end;

end;

procedure TFrm_Caixa_ConsAuto.edt_datfinExit(Sender: TObject);
begin
if (fsonumero(edt_datini.Text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      begin
      edt_datfin.Date:=edt_datini.Date;
      end;
   end;
if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
   fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.AsInteger);

end;

procedure TFrm_Caixa_ConsAuto.edt_datiniExit(Sender: TObject);
begin
if (fsonumero(edt_datini.Text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      begin
      edt_datfin.Date:=edt_datini.Date;
      end;
   end;

if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
   fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);

end;

procedure TFrm_Caixa_ConsAuto.cb_mesma_naturezaClick(Sender: TObject);
begin

   fDeletaPadroes(0,'_caixa_consauto','cb_mesma_natureza');
   fGravaPadroes(0,'cb_mesma_natureza'    ,'checked'   ,'_caixa_consauto',iif(cb_mesma_natureza.Checked,'true','false' ));


end;

procedure TFrm_Caixa_ConsAuto.DBGrid2DblClick(Sender: TObject);
begin

qr_ldr.Edit;
qr_ldrselecionado.Value := iif(qr_ldrselecionado.Value='X',' ','X');
qr_ldr.Post;
end;

procedure TFrm_Caixa_ConsAuto.qr_ldrBeforePost(DataSet: TDataSet);
begin
mTotais_Contas := mTotais_Contas + qr_ldrVALORR.AsFloat * iif(qr_ldrselecionado.AsString='X', 1,-1);
fApresentarTotais;
end;

procedure TFrm_Caixa_ConsAuto.bbConciliarClick(Sender: TObject);
var
query_exec: TQuery;
begin
query_exec:=TQuery.create(nil);
query_exec.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_exec.SQL.Clear;
query_exec.SQL.add('Update CADOFX set OFX_STATUS=1 WHERE OFX_CHAVE_ID='+mem_extratoCHAVE_ID.AsString);
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exec,526,'_stru '+e.message,'CADOFX');
   query_exec.close;
   freeandnil(query_exec);
   exit;
   end;
   end;
mem_extrato.DisableControls;
mem_extrato.Edit;
mem_extratoSTATUS.Value:=1;
mem_extrato.Post;
mem_extrato.EnableControls;
qr_ldr.first;
qr_ldr.DisableControls;

While not qr_ldr.Eof do
   begin
   if qr_ldrDATCONC.AsDateTime>pdatanula then
      begin
      if qr_ldrselecionado.AsString<>'X' then
         begin
         query_exec.close;
         query_exec.SQL.clear;
         query_exec.SQL.add('Update cadldr set DATCONC=:DATCONC where CODLDR=:CODLDR ');
         query_exec.ParamByName('DATCONC').AsDateTime:=pdatanula;
         query_exec.ParamByName('CODLDR').AsFloat:=qr_ldrCODLDR.AsFloat;
         try
            query_exec.ExecSQL;
            fdm1StartCommit;
         except ON E: Exception do
            begin
            ex_erroSql_Novo(query_exec,526,'_stru '+e.message,'CADOFX');
            query_exec.close;
            freeandnil(query_exec);
            exit;
            end;
            end;
         query_exec.Close;
         query_exec.sql.clear;
         query_exec.sql.add('delete from CADLDROFX where LO_CHAVE_ID_LDR='+qr_ldrCODLDR.AsString
                           +' and LO_CHAVE_ID_OFX='+mem_extratoCHAVE_ID.AsString);

         try
            query_exec.ExecSQL;
            fdm1StartCommit;
         except ON E: Exception do
            begin
            ex_erroSql_Novo(query_exec,578,'_stru '+e.message,'CADLDROFX');
            query_exec.close;
            freeandnil(query_exec);
            exit;
            end;
            end;

         end;
      end
   else if qr_ldrselecionado.AsString='X' then
      begin
      query_exec.close;
      query_exec.SQL.clear;
      query_exec.SQL.add('Update cadldr set DATCONC=:DATCONC where CODLDR=:CODLDR ');
      query_exec.ParamByName('DATCONC').AsDateTime:=mem_extratoDATA_CONTABIL.AsDateTime;
      query_exec.ParamByName('CODLDR').AsFloat:=qr_ldrCODLDR.AsFloat;
      try
         query_exec.ExecSQL;
         fdm1StartCommit;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_exec,526,'_stru '+e.message,'CADOFX');
         query_exec.close;
         freeandnil(query_exec);
         exit;
         end;
         end;
// inicio

      query_exec.close;
      query_exec.SQL.clear;
      query_exec.SQL.add('insert into CADLDROFX ('
                        +'LO_CHAVE_ID, '
                        +'LO_CHAVE_ID_LDR, '
                        +'LO_CHAVE_ID_OFX '
                        +' ) values ('
                        +'CADLDROFX_SEQ.NEXTVAL, '
                        +':LO_CHAVE_ID_LDR, '
                        +':LO_CHAVE_ID_OFX '
                        +') ');
      query_exec.ParamByName('LO_CHAVE_ID_LDR').AsInteger:=qr_ldrCODLDR.AsInteger;
      query_exec.ParamByName('LO_CHAVE_ID_OFX').AsInteger:=mem_extratoCHAVE_ID.AsInteger;
      try
         query_exec.ExecSQL;
         fdm1StartCommit;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_exec,625,'_stru '+e.message,'CADLDROFX');
         query_exec.close;
         freeandnil(query_exec);
         exit;
         end;
         end;

// termino


      end;
   qr_ldr.Next;
   end;
qr_ldr.EnableControls;

fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);

end;

procedure TFrm_Caixa_ConsAuto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (mem_extratoSTATUS.AsInteger=1) then
   begin
   DBGrid1.Canvas.Font.Color:=edt_conciliado.Font.Color;
   DBGrid1.Canvas.Brush.Color:=edt_conciliado.Brush.Color;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Caixa_ConsAuto.bbExcluirConciliacaoClick(Sender: TObject);
begin
if application.MessageBox(
     pchar('Quer Realmente excluir a Conciliação do Registro '+mem_extratoHISTORICO.asstring+#13+'Valor '
     + formatFloat(mcasas, mem_extratoVALOR.asfloat)+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
if fCancelarConciliacao then
   begin
   MessageDlg('Conciliação Concluída!',mtInformation,[mbOk],0);
   end;

end;

function TFrm_Caixa_ConsAuto.fCancelarConciliacao: boolean;
var
query_ldrofx: tQuery;
query_exec: tQuery;
begin

query_ldrofx := tQuery.Create(nil);
query_ldrofx.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_ldrofx.SQL.Add('select * from CADLDROFX where LO_CHAVE_ID_OFX='+mem_extratoCHAVE_ID.AsString);
try
   query_ldrofx.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_ldrofx,625,'_stru '+e.message,'CADLDROFX');
   query_ldrofx.close;
   freeandnil(query_ldrofx);
   result:=false;
   exit;
   end;
   end;

query_exec := tQuery.Create(nil);
query_exec.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

While not query_ldrofx.Eof do
   begin
   query_exec.close;
   query_exec.sql.clear;
   query_exec.sql.add('update CADLDR set DATCONC=:DATCONC where CODLDR=:CODLDR');
   query_exec.ParamByName('DATCONC').AsDateTime:=pdatanula;
   query_exec.ParamByName('CODLDR').AsInteger  :=query_ldrofx.fieldbyname('LO_CHAVE_ID_LDR').AsInteger;
   try
      query_exec.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_exec,705,'_stru '+e.message,'CADLDR');
      query_ldrofx.close;
      freeandnil(query_ldrofx);
      query_exec.close;
      freeandnil(query_exec);
      result:=false;
      exit;
      end;
      end;
   query_ldrofx.next;      
   end;

query_exec.close;
query_exec.sql.clear;
query_exec.sql.add('update CADOFX set OFX_STATUS=0 where OFX_CHAVE_ID='+mem_extratoCHAVE_ID.AsString);
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exec,726,'_stru '+e.message,'CADOFX');
   query_ldrofx.close;
   freeandnil(query_ldrofx);
   query_exec.close;
   freeandnil(query_exec);
   result:=false;
   exit;
   end;
   end;
query_exec.Close;
query_exec.sql.clear;
query_exec.SQL.Add('delete from CADLDROFX where LO_CHAVE_ID_OFX='+mem_extratoCHAVE_ID.AsString);
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exec,743,'_stru '+e.message,'CADLDROFX');
   query_exec.close;
   freeandnil(query_exec);
   result:=false;
   exit;
   end;
   end;
mem_extrato.Edit;
mem_extratoSTATUS.Value:=0;
mem_extrato.Post;


end;

procedure TFrm_Caixa_ConsAuto.cb_listar_contasClick(Sender: TObject);
begin
if cb_listar_contas.ItemIndex=1 then
   begin
   mem_extrato.Filter :='STATUS=1';
   mem_extrato.Filtered:=true;
   end
else if cb_listar_contas.ItemIndex=2 then
   begin
   mem_extrato.Filter :='STATUS=2';
   mem_extrato.Filtered:=true;
   end
else
   mem_extrato.Filtered:=false;

end;

procedure TFrm_Caixa_ConsAuto.bbSairSemGravarClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Caixa_ConsAuto.bbCriarContaCaixaClick(Sender: TObject);
begin
Application.CreateForm(Tfrm_Caixa_ConsAuto_incluir, frm_Caixa_ConsAuto_incluir);
frm_Caixa_ConsAuto_incluir.mNatDc_Ant         :=mem_extratoNATUREZA.AsString;
frm_Caixa_ConsAuto_incluir.mDescricao_Original:=mem_extratoHISTORICO.AsString;
frm_Caixa_ConsAuto_incluir.edt_valor.Text    :=valfloat(edt_diferenca.Text) * iif(valfloat(edt_diferenca.Text)<1,-1,1);
frm_Caixa_ConsAuto_incluir.edt_descricao.Text:=mem_extratoHISTORICO.AsString;
frm_Caixa_ConsAuto_incluir.ShowModal;
if frm_Caixa_ConsAuto_incluir.mGravarOk then
   fGravarCadldr;


freeandnil(frm_Caixa_ConsAuto_incluir);



end;



procedure TFrm_Caixa_ConsAuto.fGravarCadLdr;

    procedure fGravarCadOfxLdrPadrao;
    var
    query_cadOfxLdr: tQuery;
    begin
    query_cadOfxLdr:=tQuery.create(nil);
    query_cadOfxLdr.DatabaseName := DM1.SG_ASSOC.DatabaseName;
    query_cadOfxLdr.SQL.clear;
    query_cadOfxLdr.SQL.Add('MERGE INTO CADOFX_PADRAO T1 '
                 +' USING (SELECT '+QuotedStr(mem_extratoHISTORICO.AsString)+' as OFXP_DESCRICAO '
                 +' , '+DM1.Tb_LDRCODLDR.AsString+' AS OFXP_CODLDR '
                 +'       FROM DUAL) ss '
                 +'  ON (t1.OFXP_DESCRICAO = ss.OFXP_DESCRICAO)  '
                 +'   WHEN MATCHED THEN '
                 +'   UPDATE SET t1.OFXP_CODLDR = ss.OFXP_CODLDR '
                 +'   WHEN NOT MATCHED THEN '
                 +'   INSERT( t1.OFXP_DESCRICAO, t1.OFXP_CODLDR ) '
                 +'    VALUES( ss.OFXP_DESCRICAO, ss.OFXP_CODLDR ) ');

    try
       query_cadOfxLdr.ExecSQL;
       fdm1StartCommit;
    except ON E: Exception do
       begin
       ex_erroSql_Novo(query_cadOfxLdr,866,'_stru '+e.message,'CADOFXP_PADRAO');
       end;
       end;
    query_cadOfxLdr.close;
    freeandnil(query_cadOfxLdr);
    end;


    procedure fAdicionarLDR;
    begin
    if qr_ldr.Active then
       begin
       qr_ldr.Append;
       qr_ldrCODLDR.value      := DM1.Tb_LDRCODLDR.value;
       qr_ldrVALORR.value      := DM1.Tb_LDRVALORR.value;
       qr_ldrDATAREAL.value    := DM1.Tb_LDRDATAREAL.value;
       qr_ldrNATDC.value       := DM1.Tb_LDRNATDC.value;
       qr_ldrDESCMV.value      := DM1.Tb_LDRDESCMV.value;
       qr_ldrNUMDOC.value      := DM1.Tb_LDRNUMDOC.value;
       qr_ldrNUMDOC2.value     := DM1.Tb_LDRNUMDOC2.value;
       qr_ldrTIPO.value        := DM1.Tb_LDRTIPO.value;
       qr_ldrCODIGO.value      := DM1.Tb_LDRCODIGO.value;
       qr_ldrNOME.value        := DM1.Tb_LDRNOME.value;
       qr_ldrselecionado.value     := 'X';
       if mem_extratoVALOR.AsFloat=DM1.Tb_LDRVALORR.AsFloat then
          qr_ldrPERC_DIFERENCA.value  := 0
       else
          qr_ldrPERC_DIFERENCA.value  := ((mem_extratoVALOR.AsFloat - DM1.Tb_LDRVALORR.AsFloat) * 100 ) / DM1.Tb_LDRVALORR.AsFloat;
       qr_ldr.Post;
       end;
    end;


begin



try
   if not DM1.Tb_LDR.Active then
      begin
      DM1.Tb_LDR.Close;
      DM1.Tb_LDR.SQL.Clear;
      DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR ');
      DM1.Tb_LDR.SQL.Add(' where CODEMP=-1');
      DM1.Tb_LDR.Open;
      end;
   DM1.Tb_LDR.Append;
   DM1.Tb_LDRCODEMP.Value:=codemp;
   DM1.Tb_LDRDATADP.Value  :=mem_extratoDATA_CONTABIL.AsDateTime;
   DM1.Tb_LDRDATAREAL.Value:=DM1.Tb_LDRDATADP.Value;
   DM1.Tb_LDRDATAREF.Value :=DM1.Tb_LDRDATADP.Value;
   DM1.Tb_LDRVALORP.Value  :=Valfloat(frm_Caixa_ConsAuto_incluir.edt_valor.Text);
   DM1.Tb_LDRVALORR.Value  :=DM1.Tb_LDRVALORP.Value;
   DM1.Tb_LDRCODCC.Value   :=frm_Caixa_ConsAuto_incluir.edt_codccu.Text;
   DM1.Tb_LDRCODDEP.Value  :=frm_Caixa_ConsAuto_incluir.edt_coddep.Text;
   DM1.Tb_LDRNATDC.Value   :=frm_Caixa_ConsAuto_incluir.edt_natureza.Text;
   DM1.Tb_LDRDESCMV.Value  :=frm_Caixa_ConsAuto_incluir.edt_descricao.Text;
   DM1.Tb_LDRNUMDOC.Value  :=mem_extratoNUMERO_DOC.Text;
   DM1.Tb_LDRNUMDOC2.Value :=mem_extratoNUMERO_DOC.Text;
   DM1.Tb_LDRTIPO.Value    :=frm_Caixa_ConsAuto_incluir.cb_tipo.Text;
   DM1.Tb_LDRCODIGO.Value  :=fsonumero(frm_Caixa_ConsAuto_incluir.edt_codigo.Text);
   DM1.Tb_LDRUSRALT.Value  :=codusr;
   DM1.Tb_LDRDTALT.Value   :=Date;
   DM1.Tb_LDRCODBCO.Value  :=mem_extratoID_CADBCO.AsInteger;
   DM1.Tb_LDRSTATUS.Value  :=0;
   DM1.Tb_LDRCOMPENS.Value :=0;
   DM1.Tb_LDRLOCDEP.Value  :=99;
   DM1.Tb_LDRDATLAN.Value  :=DM1.Tb_LDRDATADP.Value;
   DM1.Tb_LDRNOMDEP.Value  :=frm_Caixa_ConsAuto_incluir.cb_coddep.Text;
   DM1.Tb_LDRNOMBCO.Value  :=mNomeBanco;
   DM1.Tb_LDRNOMCCU.Value  :=frm_Caixa_ConsAuto_incluir.cb_codccu.Text;
   DM1.Tb_LDRNOME.Value    :=frm_Caixa_ConsAuto_incluir.edt_nome.Text;
   DM1.Tb_LDRDTCOMP.Value  :=DM1.Tb_LDRDATADP.Value;
   DM1.Tb_LDRDTSALDO.Value :=DM1.Tb_LDRDATADP.Value;
   DM1.Tb_LDR.Post;
except ON E: Exception do
   begin
   Messagedlg('Erro ao Gravar Cadldr '+E.Message,mtError,[mbOk],0);
   end;
   end;


fGravarCadOfxLdrPadrao;


end;


procedure TFrm_Caixa_ConsAuto.spn_qtdrregChange(Sender: TObject);
begin
   fDeletaPadroes(0,'_caixa_consauto','spn_qtdreg');
   if valint(spn_qtdrreg.Text)>0 then
      begin
      fGravaPadroes(0,'spn_qtdreg'    ,'text'   ,'_caixa_consauto',inttostr(spn_qtdrreg.Value));
      end;

end;

procedure TFrm_Caixa_ConsAuto.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (qr_ldrselecionado.Value='X') then
   begin
   if qr_ldrDATCONC.AsDateTime<=pdatanula then
      begin
      DBGrid2.Canvas.Font.Color:=edt_sugerido.Font.Color;
      DBGrid2.Canvas.Brush.Color:=edt_sugerido.Brush.Color;
      end
   else
      begin
      DBGrid2.Canvas.Font.Color:=edt_conciliado.Font.Color;
      DBGrid2.Canvas.Brush.Color:=edt_conciliado.Brush.Color;
      end;
   DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Caixa_ConsAuto.cb_mesmo_bancoClick(Sender: TObject);
begin
   if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
      fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);


   fDeletaPadroes(0,'_caixa_consauto','cb_mesmo_banco');
   fGravaPadroes(0,'cb_mesmo_banco'    ,'checked'   ,'_caixa_consauto',iif(cb_mesmo_banco.Checked,'true','false' ));

end;

procedure TFrm_Caixa_ConsAuto.cb_aplicar_sugestaoClick(Sender: TObject);
begin
   if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
      fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);

   fDeletaPadroes(0,'_caixa_consauto','cb_aplicar_sugestao');
   fGravaPadroes(0,'cb_aplicar_sugestao'    ,'checked'   ,'_caixa_consauto',iif(cb_aplicar_sugestao.Checked,'true','false' ));

end;

procedure TFrm_Caixa_ConsAuto.cb_salvar_sqlClick(Sender: TObject);
begin
   if (mem_extrato.Active) and (not mem_extrato.IsEmpty) then
      fLerCadldr(mem_extratoVALOR.AsFloat,mem_extratoSTATUS.asinteger);

end;

end.
