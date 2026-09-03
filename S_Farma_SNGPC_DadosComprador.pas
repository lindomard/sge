unit S_Farma_SNGPC_DadosComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, CheckLst, Buttons, DB,
  DBTables, Grids, DBGrids;

type
  TFrm_Farma_SNGPC_DadosComprador = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MDT1: TDateEdit;
    Label2: TLabel;
    MDT2: TDateEdit;
    Label14: TLabel;
    tipo_dados: TCheckListBox;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    gb_pedenc: TGroupBox;
    gb_itensped: TGroupBox;
    gb_dadositens: TGroupBox;
    Qr_PedCli: TQuery;
    Qr_PedCliP1CHAVE: TFloatField;
    Qr_PedCliP1ORDEM: TFloatField;
    Qr_PedCliP1LOTSEQ: TFloatField;
    Qr_PedCliP1CODEMP: TFloatField;
    Qr_PedCliP1CODCLI: TFloatField;
    Qr_PedCliP1TOTALL: TFloatField;
    Qr_PedCliP1DATACF: TDateTimeField;
    Qr_PedCliP1DATANF: TDateTimeField;
    Qr_PedCliP1NUMCF: TFloatField;
    Qr_PedCliP1NUMNF: TFloatField;
    Qr_PedCliP1DATDOC: TDateTimeField;
    Qr_PedCliCRAZAO: TStringField;
    Qr_PedCliCFBAIRRO: TStringField;
    Qr_PedCliCFCIDADE: TStringField;
    Qr_PedCliCFUF: TStringField;
    DBGrid_itens: TDBGrid;
    Src_ItensPed: TDataSource;
    Qr_ItensPed: TQuery;
    Qr_ItensPedP2CODPRO: TFloatField;
    Qr_ItensPedP2ITEM: TFloatField;
    Qr_ItensPedP2PRECO: TFloatField;
    Qr_ItensPedP2TOTDES: TFloatField;
    Qr_ItensPedP2QTD: TFloatField;
    Qr_ItensPedPDNOME: TStringField;
    Qr_ItensPedPDUND: TStringField;
    Label3: TLabel;
    cb_cons_profissional: TComboBox;
    Label4: TLabel;
    edt_num_reg_prof: TEdit;
    Label5: TLabel;
    CB_UF_REG: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    CB_TIPODOC: TComboBox;
    Label8: TLabel;
    edt_numdoc: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    cb_uf_doc: TComboBox;
    Label11: TLabel;
    edt_reg_ms: TEdit;
    Label12: TLabel;
    edt_numlot: TEdit;
    Label13: TLabel;
    edt_quant: TEdit;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    bbAtualizar: TBitBtn;
    DBGrid1: TDBGrid;
    src_pedcli: TDataSource;
    Qr_ItensPedP2CHAVE: TFloatField;
    Qr_ItensPedP2CODEMP: TFloatField;
    Qr_ItensPedP2LOTSEQ: TFloatField;
    Src_DadosComp: TDataSource;
    Qr_DadosComp: TQuery;
    Qr_DadosCompP2SNGPC_CODEMP: TFloatField;
    Qr_DadosCompP2SNGPC_LOTSEQ: TFloatField;
    Qr_DadosCompP2SNGPC_CHAVE: TFloatField;
    Qr_DadosCompP2SNGPC_CHAVE_NIVEL: TFloatField;
    Qr_DadosCompP2SNGPC_CODPRO: TFloatField;
    Qr_DadosCompP2SNGPC_ITEM: TFloatField;
    Qr_DadosCompP2SNGPC_TIPO_RECEITA: TFloatField;
    Qr_DadosCompP2SNGPC_NUM_NOTIF: TStringField;
    Qr_DadosCompP2SNGPC_DT_PRESCRICAO: TDateTimeField;
    Qr_DadosCompP2SNGPC_PRESC_NOME: TStringField;
    Qr_DadosCompP2SNGPC_NUM_REG_PROF: TStringField;
    Qr_DadosCompP2SNGPC_CONS_PROFIS: TStringField;
    Qr_DadosCompP2SNGPC_UF_CONSELHO: TStringField;
    Qr_DadosCompP2SNGPC_USO_MEDIC: TStringField;
    Qr_DadosCompP2SNGPC_NOME_COMPRADOR: TStringField;
    Qr_DadosCompP2SNGPC_TIPO_DOC: TStringField;
    Qr_DadosCompP2SNGPC_NUM_DOC: TStringField;
    Qr_DadosCompP2SNGPC_ORGAO_EXPED: TStringField;
    Qr_DadosCompP2SNGPC_UF_EMIS_DOC: TStringField;
    Qr_DadosCompP2SNGPC_REGMS: TStringField;
    Qr_DadosCompP2SNGPC_LOTE: TStringField;
    Qr_DadosCompP2SNGPC_QTDPED: TFloatField;
    Qr_DadosCompP2SNGPC_DATA_VENDA: TDateTimeField;
    Label15: TLabel;
    cb_tipo_receita: TComboBox;
    Label16: TLabel;
    edt_NUM_NOTIF: TEdit;
    Label17: TLabel;
    edt_data_prescricao: TDateEdit;
    Label18: TLabel;
    edt_nome_prescritor: TEdit;
    Label19: TLabel;
    edt_nome_comprador: TEdit;
    CB_ORGAO: TComboBox;
    Label20: TLabel;
    edt_nome_paciente: TEdit;
    Label21: TLabel;
    cb_unidade_idade: TComboBox;
    Label22: TLabel;
    CB_SEXO: TComboBox;
    Label23: TLabel;
    cb_uso_prolongado: TComboBox;
    Label24: TLabel;
    edt_idade: TEdit;
    cb_uf_paciente: TComboBox;
    Label25: TLabel;
    edt_cidade_paciente: TEdit;
    Label26: TLabel;
    Qr_DadosCompP2SNGPC_PACIENTE_NOME: TStringField;
    Qr_DadosCompP2SNGPC_PACIENTE_UND_IDADE: TFloatField;
    Qr_DadosCompP2SNGPC_PACIENTE_IDADE: TFloatField;
    Qr_DadosCompP2SNGPC_PACIENTE_CIDADE: TStringField;
    Qr_DadosCompP2SNGPC_PACIENTE_UF: TStringField;
    Qr_DadosCompP2SNGPC_USO_PROLOGANDO: TStringField;
    Qr_DadosCompP2SNGPC_PACIENTE_SEXO: TFloatField;
    Label27: TLabel;
    CB_ENVIAR: TComboBox;
    Qr_DadosCompP2SNGPC_ENVIAR: TStringField;
    rg_registros: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure src_pedcliDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure Src_ItensPedDataChange(Sender: TObject; Field: TField);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure cb_cons_profissionalExit(Sender: TObject);
    procedure CB_UF_REGExit(Sender: TObject);
    procedure cb_tipo_receitaExit(Sender: TObject);
    procedure CB_TIPODOCExit(Sender: TObject);
    procedure cb_uf_docExit(Sender: TObject);
    procedure cb_uf_pacienteExit(Sender: TObject);
    procedure cb_unidade_idadeExit(Sender: TObject);
    procedure cb_uso_prolongadoExit(Sender: TObject);
    procedure CB_SEXOExit(Sender: TObject);
    procedure CB_ENVIARExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;

  end;
      function fBuscarValor_Del_Par(mDelim:String; pDel: String; pCampo: Integer;pTexto:String): String;

var
  Frm_Farma_SNGPC_DadosComprador: TFrm_Farma_SNGPC_DadosComprador;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}



function fBuscarValor_Del_Par(mDelim: String;pDel: String; pCampo: Integer;pTexto:String): String;
var
  mValorEnc: String;
  mCampoAtivo: Integer;
  x: Integer;
begin
mCampoAtivo:=0;
mValorEnc:='';
for X:=1 to length(pTexto) do
   begin
   if pTexto[x]=mDelim then
      mCampoAtivo:=mCampoAtivo+1
   else if mCampoAtivo>pCampo then
      break
   else if mCampoAtivo=pCampo then
      mValorEnc:=mValorEnc+pTexto[x];
   end;
result:=mValorEnc;
end;


procedure TFrm_Farma_SNGPC_DadosComprador.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Farma_SNGPC_DadosComprador.bbAtualizarClick(
  Sender: TObject);
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
FInnerjoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI(+)','P1CODCLI');
la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'CADCSF' ,'CFCODEMP(+)','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
la_instrucao:=la_instrucao+' and ';
FInnerjoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
la_instrucao:=la_instrucao+' and ';
FInnerjoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if ((tipo_dados.Checked[0]=true) and (tipo_dados.Checked[1]=false)) or
   ((tipo_dados.Checked[0]=false) and (tipo_dados.Checked[1]=true)) or (rg_registros.ItemIndex<>2)  then
   begin

   la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(0,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_CODPRO','P2CODPRO');
   end;




Qr_PedCli.close;
Qr_PedCli.SQL.Clear;
Qr_PedCli.SQL.Add('Select UNIQUE P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1CODCLI,P1TOTALL,P1DATACF,P1DATANF,P1NUMCF,P1NUMNF,P1DATDOC,'
                 +' DECODE(P1CODCLI,1, CFRAZAO ,CRAZAO) AS CRAZAO, '
                 +' DECODE(P1CODCLI,1, CFBAIRRO ,CBAIRRO) AS CFBAIRRO,'
                 +' DECODE(P1CODCLI,1, CFCIDADE ,CCIDADE) AS CFCIDADE,'
                 +' DECODE(P1CODCLI,1, CFUF ,CUF) AS CFUF '
                 +' FROM CADP01 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<>9 '
                 +' and P1EMIDOC=1 '
                 +' and PDSGNPC=1 '
                 +iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 );


Qr_PedCli.SQL.add(' and  P1CODEMP='+IntToStr(codemp));


if ((tipo_dados.Checked[0]=true) and (tipo_dados.Checked[1]=false)) then
   Qr_PedCli.SQL.add(' and (P2SNGPC_PRESC_NOME is null or P2SNGPC_PRESC_NOME='+QuotedStr(' ')+')');

if ((tipo_dados.Checked[0]=false) and (tipo_dados.Checked[1]=true)) then
   Qr_PedCli.SQL.add(' and  not (P2SNGPC_PRESC_NOME is null or P2SNGPC_PRESC_NOME='+QuotedStr(' ')+')');

if rg_registros.ItemIndex=0 then
   Qr_PedCli.SQL.add(' and  P2SNGPC_ENVIAR='+QuotedStr('S'))
else if rg_registros.ItemIndex=1 then
   Qr_PedCli.SQL.add(' and  P2SNGPC_ENVIAR<>'+QuotedStr('S'));


if fsonumero(MDT1.Text)<>0 then
   begin
   Qr_PedCli.SQL.add(' and  P1DATDOC>=:DATAINI ');
   Qr_PedCli.ParamByName('DATAINI').AsDateTime:=MDT1.Date;

   end;


if fsonumero(MDT2.Text)<>0 then
   begin
   Qr_PedCli.SQL.add(' and  P1DATDOC<=:DATAFIN ');
   Qr_PedCli.ParamByName('DATAFIN').AsDateTime:=MDT2.Date;
   end;
Try
   Qr_PedCli.Open;
except
   Qr_PedCli.SQL.SaveToFile('c:\sql.txt');
   end;
//ShowMessage('qUANTIDADE DE Registros: '+Inttostr(Qr_PedCli.RecordCount));
//Qr_PedCli.SQL.SaveToFile('c:\sqlSGNPC.txt');


end;

procedure TFrm_Farma_SNGPC_DadosComprador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.src_pedcliDataChange(
  Sender: TObject; Field: TField);
begin
if (not Qr_ItensPed.Active) or (Qr_ItensPedP2CHAVE.AsFloat<>Qr_PedCliP1CHAVE.AsFloat) then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   FInnerjoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

   Qr_ItensPed.Close;
   Qr_ItensPed.SQL.Clear;
   Qr_ItensPed.SQL.Add('Select P2CHAVE,P2CODEMP,P2LOTSEQ,P2CODPRO,P2ITEM,P2PRECO,P2TOTDES,P2QTD,PDNOME,PDUND '
                      +' FROM CADP02 ' +iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where P2CHAVE=:CHAVE  '
                      +' and P2CODEMP=:CODEMP '
                      +' and P2LOTSEQ=:LOTSEQ  '
                      +' and PDSGNPC=1 '
                      +iif(la_Empresas='','',' and ')+la_Empresas
                      +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                       );

   Qr_ItensPed.ParamByName('CHAVE').AsFloat:=Qr_PedCliP1CHAVE.AsFloat;
   Qr_ItensPed.ParamByName('CODEMP').AsFloat:=Qr_PedCliP1CODEMP.AsFloat;
   Qr_ItensPed.ParamByName('LOTSEQ').AsFloat:=Qr_PedCliP1LOTSEQ.AsFloat;
   try
      Qr_ItensPed.Open;
   except
      Qr_ItensPed.SQL.SaveToFile('c:\sql.txt');
      end;
//   Qr_ItensPed.SQL.SaveToFile('c:\sqlSGNPC_ITENS.txt');
   end;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.FormShow(Sender: TObject);
begin
Height:=600;
Width:=914;

fBloqueiaLiberaCampos(false);

end;

procedure TFrm_Farma_SNGPC_DadosComprador.Src_ItensPedDataChange(
  Sender: TObject; Field: TField);
var
x: Integer;
begin
if (not Qr_DadosComp.Active) or
   ( (Qr_DadosCompP2SNGPC_CHAVE.AsFloat<>Qr_ItensPedP2CHAVE.AsFloat) or (Qr_DadosCompP2SNGPC_ITEM.AsFloat<>Qr_ItensPedP2ITEM.AsFloat)) then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(0,'CADP02_SNGPC','P2SNGPC_CODEMP(+)','P2CODEMP','P2SNGPC_LOTSEQ','P2LOTSEQ','P2SNGPC_CHAVE','P2CHAVE','P2SNGPC_ITEM','P2ITEM');
   la_instrucao:=la_instrucao+' and ';
   FInnerjoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

   Qr_DadosComp.Close;
   Qr_DadosComp.SQL.Clear;
   Qr_DadosComp.SQL.Add('Select  NVL(P2SNGPC_CODEMP,P2CODEMP) AS P2SNGPC_CODEMP '
                       +' ,NVL(P2SNGPC_LOTSEQ,P2LOTSEQ) AS P2SNGPC_LOTSEQ '
                       +' ,NVL(P2SNGPC_CHAVE,P2CHAVE) AS P2SNGPC_CHAVE '
                       +' ,NVL(P2SNGPC_CHAVE_NIVEL,P2CHAVE_NIVEL) AS P2SNGPC_CHAVE_NIVEL '
                       +' ,NVL(P2SNGPC_CODPRO,P2CODPRO) AS P2SNGPC_CODPRO '
                       +' ,NVL(P2SNGPC_ITEM,P2ITEM) AS P2SNGPC_ITEM '
                       +' ,NVL(P2SNGPC_TIPO_RECEITA,PDTIPO_RECEITA) AS P2SNGPC_TIPO_RECEITA ,P2SNGPC_NUM_NOTIF,P2SNGPC_DT_PRESCRICAO '
                       +' ,P2SNGPC_PRESC_NOME ,P2SNGPC_NUM_REG_PROF '
                       +',P2SNGPC_CONS_PROFIS,P2SNGPC_UF_CONSELHO '
                       +',NVL(P2SNGPC_USO_MEDIC,PDUSO_MEDICAMENTO) AS P2SNGPC_USO_MEDIC, '
                       +' NVL(P2SNGPC_NOME_COMPRADOR,:CLIENTE)  AS P2SNGPC_NOME_COMPRADOR, P2SNGPC_TIPO_DOC '
                       +',P2SNGPC_NUM_DOC,P2SNGPC_ORGAO_EXPED,P2SNGPC_UF_EMIS_DOC '
                       +',case when length(NVL(P2SNGPC_REGMS,'+QuotedStr(' ')+'))<2 then PDREGMS else P2SNGPC_REGMS END AS P2SNGPC_REGMS,P2SNGPC_LOTE,NVL(P2SNGPC_QTDPED,P2QTD) AS P2SNGPC_QTDPED  '
                       +',P2SNGPC_DATA_VENDA  '
                       +',P2SNGPC_PACIENTE_NOME '
                       +',P2SNGPC_PACIENTE_UND_IDADE '
                       +',P2SNGPC_PACIENTE_IDADE    '
                       +',P2SNGPC_PACIENTE_CIDADE  '
                       +',P2SNGPC_PACIENTE_UF     '
                       +',P2SNGPC_PACIENTE_SEXO  '
                       +',P2SNGPC_USO_PROLOGANDO'
                       +',P2SNGPC_ENVIAR'
                       +' from CADP02  '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                         +' where P2CODEMP=:CODEMP '
                         +iif(la_Empresas='','',' and ')+la_Empresas
                         +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +' and P2ITEM=:ITEM '
                         +' and P2CHAVE=:CHAVE '
                         +' and P2LOTSEQ=:LOTSEQ '
                          );
   Qr_DadosComp.ParamByName('CLIENTE').AsString:=Qr_PedCliCRAZAO.AsString;
   Qr_DadosComp.ParamByName('CODEMP').AsFloat  :=Qr_ItensPedP2CODEMP.AsFloat;
   Qr_DadosComp.ParamByName('ITEM').AsFloat    :=Qr_ItensPedP2ITEM.AsFloat;
   Qr_DadosComp.ParamByName('CHAVE').AsFloat   :=Qr_ItensPedP2CHAVE.AsFloat;

   Qr_DadosComp.ParamByName('LOTSEQ').AsFloat:=Qr_ItensPedP2LOTSEQ.AsFloat;
   try
      Qr_DadosComp.Open;
   except
      Qr_DadosComp.sql.savetofile('c:\sql.txt');
      end;
//   Qr_DadosComp.sql.savetofile('c:\sql_DADOSCOMPRA.txt');

   if (Qr_DadosCompP2SNGPC_CONS_PROFIS.IsNull) then
      cb_cons_profissional.Text:='CRM'
   else
      cb_cons_profissional.Text:=Qr_DadosCompP2SNGPC_CONS_PROFIS.AsString;

   edt_num_reg_prof.Text:=Qr_DadosCompP2SNGPC_NUM_REG_PROF.AsString;

   if (Qr_DadosCompP2SNGPC_UF_CONSELHO.IsNull) then
      CB_UF_REG.Text:=DM1.Tb_EmpUF.AsString
   else
      CB_UF_REG.Text:=Qr_DadosCompP2SNGPC_UF_CONSELHO.AsString;

   if (Qr_DadosCompP2SNGPC_TIPO_DOC.IsNull) then
      CB_TIPODOC.ItemIndex:=1
   else
      CB_TIPODOC.Text:=Qr_DadosCompP2SNGPC_TIPO_DOC.AsString;
   CB_TIPODOCExit(Self);   
   edt_numdoc.Text:=Qr_DadosCompP2SNGPC_NUM_DOC.AsString;


   if Qr_DadosCompP2SNGPC_ORGAO_EXPED.IsNull then
      CB_ORGAO.ItemIndex:=46
   else
      begin
      for x:=0 to CB_ORGAO.Items.Count-1 do
         begin
         if trim(fBuscarValor_Del_Par('-','-',0,CB_ORGAO.Text))=Qr_DadosCompP2SNGPC_ORGAO_EXPED.AsString then
            begin
            cb_ORGAO.ItemIndex:=x;
            break;
            end;
         end;
      end;


   if (Qr_DadosCompP2SNGPC_UF_EMIS_DOC.IsNull) then
      cb_uf_doc.Text:=DM1.Tb_EmpUF.AsString
   else
      cb_uf_doc.Text:=Qr_DadosCompP2SNGPC_UF_EMIS_DOC.AsString;

   edt_reg_ms.Text:=Qr_DadosCompP2SNGPC_REGMS.AsString;
   edt_numlot.Text:=Qr_DadosCompP2SNGPC_LOTE.AsString;

   edt_quant.Text:=FormatFloat(mcasqtd,  Qr_DadosCompP2SNGPC_QTDPED.AsFloat);

   if Qr_DadosCompP2SNGPC_TIPO_RECEITA.IsNull then
      cb_tipo_receita.ItemIndex:=0
   else
      begin
      for x:=0 to cb_tipo_receita.Items.Count-1 do
         begin
         if valint(copy(cb_tipo_receita.Items[x],1,1))=Qr_DadosCompP2SNGPC_TIPO_RECEITA.AsInteger then
            begin
            cb_tipo_receita.ItemIndex:=x;
            break;
            end;
         end;
      end;
   edt_NUM_NOTIF.Text       :=Qr_DadosCompP2SNGPC_NUM_NOTIF.AsString;
   edt_data_prescricao.Date :=Qr_DadosCompP2SNGPC_DT_PRESCRICAO.asDateTime;
   edt_nome_prescritor.Text :=Qr_DadosCompP2SNGPC_PRESC_NOME.AsString;
   edt_num_reg_prof.Text    :=Qr_DadosCompP2SNGPC_NUM_REG_PROF.AsString;
{
   if (Qr_DadosCompP2SNGPC_UF_EMIS_DOC.IsNull) then
      cb_uf_doc.Text:=DM1.Tb_EmpUF.AsString
   else
      cb_uf_doc.Text:=Qr_DadosCompP2SNGPC_UF_EMIS_DOC.AsString;
}
   if trim(Qr_DadosCompP2SNGPC_NOME_COMPRADOR.asString)='' then
      edt_nome_comprador.Text  :=Qr_PedCliCRAZAO.AsString
   else
      edt_nome_comprador.Text  :=Qr_DadosCompP2SNGPC_NOME_COMPRADOR.asString;
   edt_nome_paciente.Text      :=Qr_DadosCompP2SNGPC_PACIENTE_NOME.AsString;
   cb_unidade_idade.ItemIndex  :=Qr_DadosCompP2SNGPC_PACIENTE_UND_IDADE.AsInteger;
   edt_idade.Text              :=Qr_DadosCompP2SNGPC_PACIENTE_IDADE.AsString;
   CB_SEXO.ItemIndex           :=Qr_DadosCompP2SNGPC_PACIENTE_SEXO.AsInteger;

   if Qr_DadosCompP2SNGPC_ENVIAR.AsString='S' then
      CB_ENVIAR.ItemIndex           :=0
   else
      CB_ENVIAR.ItemIndex           :=1;


   cb_tipo_receita.Text         :=Qr_DadosCompP2SNGPC_TIPO_RECEITA.AsString;
   cb_tipo_receitaExit(self);


   edt_cidade_paciente.Text    :=Qr_DadosCompP2SNGPC_PACIENTE_CIDADE.AsString;
   cb_uf_paciente.Text         :=Qr_DadosCompP2SNGPC_PACIENTE_UF.AsString;
   cb_uso_prolongado.ItemIndex :=IIF(QR_DadosCompP2SNGPC_USO_PROLOGANDO.AsString='S',0,1);

   if Qr_DadosCompP2SNGPC_TIPO_DOC.IsNull then
      CB_TIPODOC.ItemIndex:=0
   else
      begin
      for x:=0 to CB_TIPODOC.Items.Count-1 do
         begin
         if valint(copy(CB_TIPODOC.Text,1,2))=Qr_DadosCompP2SNGPC_TIPO_DOC.AsInteger then
            begin
            CB_TIPODOC.ItemIndex:=x;
            break;
            end;
         end;
      end;
   edt_numdoc.Text           :=Qr_DadosCompP2SNGPC_NUM_DOC.Asstring;
   edt_reg_ms.Text           :=Qr_DadosCompP2SNGPC_REGMS.AsString;
   edt_numlot.Text           :=Qr_DadosCompP2SNGPC_LOTE.AsString;
   if Qr_DadosCompP2SNGPC_QTDPED.AsFloat=0 then
      edt_quant.Text            :=FormatFloat(mcasqtd, Qr_ItensPedP2QTD.AsFloat)
   else
      edt_quant.Text            :=FormatFloat(mcasqtd, Qr_DadosCompP2SNGPC_QTDPED.AsFloat);
   ALTERAR.Enabled:=true;

   end;



end;

procedure TFrm_Farma_SNGPC_DadosComprador.ALTERARClick(Sender: TObject);
begin
   fBloqueiaLiberaCampos(true);

   GRAVAR.Enabled:=true;
   ALTERAR.Enabled:=false;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.GRAVARClick(Sender: TObject);
var
query_dadcomop: TQuery;
begin
if trim(edt_NUM_NOTIF.Text)='' then
   edt_NUM_NOTIF.Text:='2';

if edt_data_prescricao.Date<=pdatanula then
   edt_data_prescricao.Date:=Qr_PedCliP1DATACF.AsDateTime;
if trim(edt_nome_prescritor.Text)='' then
   begin
   MessageDlg('Nome do Prescritor é obrigatório!',mtWarning,[mbOk],0);
   edt_nome_prescritor.SetFocus;
   exit;
   end;

if trim(edt_num_reg_prof.Text)='' then
   begin
   MessageDlg('Número do Registro Profissional é obrigatório!',mtWarning,[mbOk],0);
   edt_num_reg_prof.SetFocus;
   exit;
   end;

if trim(edt_nome_paciente.Text)='' then
   begin
   MessageDlg('Nome do Paciente é obrigatório!',mtWarning,[mbOk],0);
   edt_nome_paciente.SetFocus;
   exit;
   end;
if trim(cb_unidade_idade.Text)='' then
   cb_unidade_idade.Text:='1';

if valint(edt_idade.Text)=0 then
   begin
   MessageDlg('Idade do Paciente é obrigatório!',mtWarning,[mbOk],0);
   edt_idade.SetFocus;
   exit;
   end;
if trim(edt_reg_ms.Text)='' then
   begin
   MessageDlg('Registro no Ministerio da Saude é obrigatório!',mtWarning,[mbOk],0);
   edt_reg_ms.SetFocus;
   exit;
   end;

if trim(edt_numlot.Text)='' then
   begin
   MessageDlg('Número do Lote é obrigatório!',mtWarning,[mbOk],0);
   edt_numlot.SetFocus;
   exit;
   end;

fBloqueiaLiberaCampos(false);
GRAVAR.Enabled :=false;
ALTERAR.Enabled:=true;
query_dadcomop:=TQuery.Create(nil);
query_dadcomop.DatabaseName:='SG_ASSOC';
query_dadcomop.SQL.Clear;
query_dadcomop.SQL.Add('Select count(*) from CADP02_SNGPC where '
                      +' P2SNGPC_CODEMP=:CODEMP '
                      +' and P2SNGPC_LOTSEQ=:LOTSEQ '
                      +' and P2SNGPC_CHAVE=:CHAVE '
                      +' and P2SNGPC_ITEM=:ITEM ');
query_dadcomop.parambyName('CODEMP').Value:=Qr_ItensPedP2CODEMP.AsFloat;
query_dadcomop.parambyName('CHAVE').Value :=Qr_ItensPedP2CHAVE.AsFloat;
query_dadcomop.parambyName('LOTSEQ').Value:=Qr_ItensPedP2LOTSEQ.AsFloat;
query_dadcomop.parambyName('ITEM').Value  :=Qr_ItensPedP2ITEM.AsFloat;
try
   query_dadcomop.Open;
except
   query_dadcomop.SQL.SaveToFile('c:\sqlsgnpc.txt');
   end;
if query_dadcomop.Fields[0].AsInteger=0 then
   begin
   query_dadcomop.Close;
   query_dadcomop.SQL.Clear;
   query_dadcomop.SQL.Add('insert into CADP02_SNGPC ('
                          +' P2SNGPC_CODEMP '
                          +',P2SNGPC_LOTSEQ ,P2SNGPC_CHAVE,P2SNGPC_CHAVE_NIVEL '
                          +',P2SNGPC_CODPRO,P2SNGPC_ITEM,P2SNGPC_TIPO_RECEITA '
                          +',P2SNGPC_NUM_NOTIF,P2SNGPC_DT_PRESCRICAO,P2SNGPC_PRESC_NOME '
                          +',P2SNGPC_NUM_REG_PROF ,P2SNGPC_CONS_PROFIS,P2SNGPC_UF_CONSELHO '
                          +',P2SNGPC_USO_MEDIC,P2SNGPC_NOME_COMPRADOR,P2SNGPC_TIPO_DOC '
                          +',P2SNGPC_NUM_DOC,P2SNGPC_ORGAO_EXPED,P2SNGPC_UF_EMIS_DOC '
                          +',P2SNGPC_REGMS,P2SNGPC_LOTE,P2SNGPC_QTDPED '
                           +',P2SNGPC_DATA_VENDA '
                           +',P2SNGPC_PACIENTE_NOME'
                          +',P2SNGPC_PACIENTE_UND_IDADE'
                          +',P2SNGPC_PACIENTE_IDADE'
                          +',P2SNGPC_PACIENTE_SEXO'
                          +',P2SNGPC_PACIENTE_CIDADE'
                          +',P2SNGPC_PACIENTE_UF'
                          +',P2SNGPC_USO_PROLOGANDO'
                          +',P2SNGPC_ENVIAR'
                           +') values ('
                          +' :P2SNGPC_CODEMP '
                          +',:P2SNGPC_LOTSEQ ,:P2SNGPC_CHAVE,:P2SNGPC_CHAVE_NIVEL '
                          +',:P2SNGPC_CODPRO,:P2SNGPC_ITEM,:P2SNGPC_TIPO_RECEITA '
                          +',:P2SNGPC_NUM_NOTIF,:P2SNGPC_DT_PRESCRICAO,:P2SNGPC_PRESC_NOME '
                          +',:P2SNGPC_NUM_REG_PROF ,:P2SNGPC_CONS_PROFIS,:P2SNGPC_UF_CONSELHO '
                          +',:P2SNGPC_USO_MEDIC,:P2SNGPC_NOME_COMPRADOR,:P2SNGPC_TIPO_DOC '
                          +',:P2SNGPC_NUM_DOC,:P2SNGPC_ORGAO_EXPED,:P2SNGPC_UF_EMIS_DOC '
                          +',:P2SNGPC_REGMS,:P2SNGPC_LOTE,:P2SNGPC_QTDPED '
                          +',:P2SNGPC_DATA_VENDA,:P2SNGPC_PACIENTE_NOME,:P2SNGPC_PACIENTE_UND_IDADE '
                          +',:P2SNGPC_PACIENTE_IDADE,:P2SNGPC_PACIENTE_SEXO,:P2SNGPC_PACIENTE_CIDADE'
                          +',:P2SNGPC_PACIENTE_UF,:P2SNGPC_USO_PROLOGANDO'
                          +',:P2SNGPC_ENVIAR'

                          +')');
   end
else
   begin
   query_dadcomop.Close;
   query_dadcomop.SQL.Clear;
   query_dadcomop.SQL.Add('Update CADP02_SNGPC set '
                          +' P2SNGPC_CODPRO=:P2SNGPC_CODPRO'
                          +',P2SNGPC_TIPO_RECEITA=:P2SNGPC_TIPO_RECEITA '
                          +',P2SNGPC_NUM_NOTIF=:P2SNGPC_NUM_NOTIF'
                          +',P2SNGPC_DT_PRESCRICAO=:P2SNGPC_DT_PRESCRICAO'
                          +',P2SNGPC_PRESC_NOME=:P2SNGPC_PRESC_NOME '
                          +',P2SNGPC_NUM_REG_PROF=:P2SNGPC_NUM_REG_PROF '
                          +',P2SNGPC_CONS_PROFIS=:P2SNGPC_CONS_PROFIS'
                          +',P2SNGPC_UF_CONSELHO=:P2SNGPC_UF_CONSELHO '
                          +',P2SNGPC_USO_MEDIC=:P2SNGPC_USO_MEDIC'
                          +',P2SNGPC_NOME_COMPRADOR=:P2SNGPC_NOME_COMPRADOR'
                          +',P2SNGPC_TIPO_DOC=:P2SNGPC_TIPO_DOC '
                          +',P2SNGPC_NUM_DOC=:P2SNGPC_NUM_DOC'
                          +',P2SNGPC_ORGAO_EXPED=:P2SNGPC_ORGAO_EXPED'
                          +',P2SNGPC_UF_EMIS_DOC=:P2SNGPC_UF_EMIS_DOC '
                          +',P2SNGPC_REGMS=:P2SNGPC_REGMS'
                          +',P2SNGPC_LOTE=:P2SNGPC_LOTE'
                          +',P2SNGPC_QTDPED=:P2SNGPC_QTDPED '
                          +',P2SNGPC_DATA_VENDA=:P2SNGPC_DATA_VENDA '
                          +',P2SNGPC_PACIENTE_NOME=:P2SNGPC_PACIENTE_NOME'
                          +',P2SNGPC_PACIENTE_UND_IDADE=:P2SNGPC_PACIENTE_UND_IDADE'
                          +',P2SNGPC_PACIENTE_IDADE=:P2SNGPC_PACIENTE_IDADE'
                          +',P2SNGPC_PACIENTE_SEXO=:P2SNGPC_PACIENTE_SEXO'
                          +',P2SNGPC_PACIENTE_CIDADE=:P2SNGPC_PACIENTE_CIDADE'
                          +',P2SNGPC_PACIENTE_UF=:P2SNGPC_PACIENTE_UF'
                          +',P2SNGPC_USO_PROLOGANDO=:P2SNGPC_USO_PROLOGANDO'
                          +',P2SNGPC_ENVIAR=:P2SNGPC_ENVIAR'
                          +' where '
                          +' P2SNGPC_CODEMP=:P2SNGPC_CODEMP  '
                          +' and P2SNGPC_LOTSEQ=:P2SNGPC_LOTSEQ '
                          +' and P2SNGPC_CHAVE=:P2SNGPC_CHAVE '
                          +' and P2SNGPC_CHAVE_NIVEL=:P2SNGPC_CHAVE_NIVEL '
                          +' and P2SNGPC_ITEM=:P2SNGPC_ITEM');
   end;


query_dadcomop.ParamByName('P2SNGPC_CODPRO').Value        := Qr_ItensPedP2CODPRO.AsFloat;
query_dadcomop.ParamByName('P2SNGPC_TIPO_RECEITA').Value  := valint(copy(cb_tipo_receita.Text,1,1));
query_dadcomop.ParamByName('P2SNGPC_NUM_NOTIF').Value     := edt_NUM_NOTIF.Text;
query_dadcomop.ParamByName('P2SNGPC_DT_PRESCRICAO').Value := edt_data_prescricao.Date;
query_dadcomop.ParamByName('P2SNGPC_PRESC_NOME').Value    := edt_nome_prescritor.Text;
query_dadcomop.ParamByName('P2SNGPC_NUM_REG_PROF').Value  := edt_num_reg_prof.Text;
query_dadcomop.ParamByName('P2SNGPC_CONS_PROFIS').Value   := cb_cons_profissional.Text;
query_dadcomop.ParamByName('P2SNGPC_UF_CONSELHO').Value   := CB_UF_REG.Text;
query_dadcomop.ParamByName('P2SNGPC_USO_MEDIC').Value     := 1; // 1-humano 2-veterinario
query_dadcomop.ParamByName('P2SNGPC_NOME_COMPRADOR').Value:=edt_nome_comprador.Text;
query_dadcomop.ParamByName('P2SNGPC_TIPO_DOC').Value      := valint(copy(CB_TIPODOC.Text,1,2));
query_dadcomop.ParamByName('P2SNGPC_NUM_DOC').Value       := edt_numdoc.Text;
query_dadcomop.ParamByName('P2SNGPC_ORGAO_EXPED').Value   :=trim(fBuscarValor_Del_Par('-','-',0,CB_ORGAO.Text));
query_dadcomop.ParamByName('P2SNGPC_UF_EMIS_DOC').Value   := cb_uf_doc.Text;
query_dadcomop.ParamByName('P2SNGPC_REGMS').Value         := edt_reg_ms.Text;
query_dadcomop.ParamByName('P2SNGPC_LOTE').Value          := edt_numlot.Text;
query_dadcomop.ParamByName('P2SNGPC_QTDPED').Value        := ValFloat(edt_quant.Text);
query_dadcomop.ParamByName('P2SNGPC_DATA_VENDA').Value    := Qr_PedCliP1DATDOC.AsDateTime;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_NOME').Value := edt_nome_paciente.Text;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_UND_IDADE').Value := cb_unidade_idade.ItemIndex;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_IDADE').Value := edt_idade.text;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_SEXO').Value := CB_SEXO.ItemIndex;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_CIDADE').Value := edt_cidade_paciente.text;
query_dadcomop.ParamByName('P2SNGPC_PACIENTE_UF').Text := cb_uf_paciente.Text;
query_dadcomop.ParamByName('P2SNGPC_USO_PROLOGANDO').Value := IIF(cb_uso_prolongado.itemindex=0,'S','N');

query_dadcomop.ParamByName('P2SNGPC_CODEMP').Value        :=Qr_ItensPedP2CODEMP.AsFloat;
query_dadcomop.ParamByName('P2SNGPC_LOTSEQ').Value        :=Qr_ItensPedP2LOTSEQ.AsFloat;
query_dadcomop.ParamByName('P2SNGPC_CHAVE').Value         :=Qr_ItensPedP2CHAVE.AsFloat;
query_dadcomop.ParamByName('P2SNGPC_CHAVE_NIVEL').Value   :=0;
query_dadcomop.ParamByName('P2SNGPC_ITEM').Value          :=Qr_ItensPedP2ITEM.AsFloat;
query_dadcomop.ParamByName('P2SNGPC_ENVIAR').Value        :=iif(CB_ENVIAR.ItemIndex=0,'S','N');

try
   query_dadcomop.ExecSQL;
   fdm1StartCommit;
except
   end;

FreeAndNil(query_dadcomop);
end;

function TFrm_Farma_SNGPC_DadosComprador.fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;
begin
cb_cons_profissional.enabled:=pLibera;
edt_data_prescricao.enabled :=pLibera;
edt_num_reg_prof.enabled    :=pLibera;
CB_UF_REG.enabled           :=pLibera;
edt_NUM_NOTIF.enabled       :=pLibera;
cb_tipo_receita.enabled     :=pLibera;
edt_nome_prescritor.enabled :=pLibera;
CB_TIPODOC.enabled          :=pLibera;
edt_numdoc.enabled          :=pLibera;
CB_ORGAO.enabled            :=pLibera;
cb_uf_doc.enabled           :=pLibera;
edt_reg_ms.enabled          :=pLibera;
edt_numlot.enabled          :=pLibera;
edt_nome_paciente.Enabled   :=pLibera;
cb_unidade_idade.Enabled   :=pLibera;
edt_idade.Enabled   :=pLibera;
CB_SEXO.Enabled   :=pLibera;
edt_cidade_paciente.Enabled   :=pLibera;
cb_uf_paciente.Enabled   :=pLibera;
//edt_quant.enabled:=pLibera;
cb_uso_prolongado.Enabled   :=pLibera;
cb_enviar.Enabled           :=pLibera;

edt_nome_comprador.enabled  :=pLibera;
result:=true;
end;
procedure TFrm_Farma_SNGPC_DadosComprador.cb_cons_profissionalExit(
  Sender: TObject);
begin

with cb_cons_profissional do
  ItemIndex := Items.IndexOf(cb_cons_profissional.Text);
if trim(cb_cons_profissional.Text)='' then
   cb_cons_profissional.ItemIndex:=25;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.CB_UF_REGExit(Sender: TObject);
begin
with CB_UF_REG  do
  ItemIndex := Items.IndexOf(CB_UF_REG.Text);
if trim(CB_UF_REG.Text)='' then
   CB_UF_REG.ItemIndex:=8;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.cb_tipo_receitaExit(
  Sender: TObject);
begin
with cb_tipo_receita do
  ItemIndex := Items.IndexOf(cb_tipo_receita.Text);
if trim(cb_tipo_receita.Text)='' then
   cb_tipo_receita.ItemIndex:=4;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.CB_TIPODOCExit(Sender: TObject);
begin

with CB_TIPODOC do
  ItemIndex := Items.IndexOf(CB_TIPODOC.Text);
if trim(CB_TIPODOC.Text)='' then
   CB_TIPODOC.ItemIndex:=1;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.cb_uf_docExit(Sender: TObject);
begin
with cb_uf_doc  do
  ItemIndex := Items.IndexOf(cb_uf_doc.Text);
if trim(cb_uf_doc.Text)='' then
   cb_uf_doc.ItemIndex:=8;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.cb_uf_pacienteExit(
  Sender: TObject);
begin
with cb_uf_paciente  do
  ItemIndex := Items.IndexOf(cb_uf_paciente.Text);
if trim(cb_uf_paciente.Text)='' then
   cb_uf_paciente.ItemIndex:=8;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.cb_unidade_idadeExit(
  Sender: TObject);
begin
with cb_unidade_idade  do
  ItemIndex := Items.IndexOf(cb_unidade_idade.Text);
if trim(cb_unidade_idade.Text)='' then
   cb_unidade_idade.ItemIndex:=0;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.cb_uso_prolongadoExit(
  Sender: TObject);
begin
with cb_uso_prolongado  do
  ItemIndex := Items.IndexOf(cb_uso_prolongado.Text);
if trim(cb_uso_prolongado.Text)='' then
   cb_uso_prolongado.ItemIndex:=1;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.CB_SEXOExit(Sender: TObject);
begin
with CB_SEXO  do
  ItemIndex := Items.IndexOf(CB_SEXO.Text);
if trim(CB_SEXO.Text)='' then
   CB_SEXO.ItemIndex:=1;

end;

procedure TFrm_Farma_SNGPC_DadosComprador.CB_ENVIARExit(Sender: TObject);
begin
with CB_ENVIAR  do
  ItemIndex := Items.IndexOf(CB_ENVIAR.Text);
if trim(CB_ENVIAR.Text)='' then
   CB_ENVIAR.ItemIndex:=1;
end;

end.
