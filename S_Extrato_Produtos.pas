unit S_Extrato_Produtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, func, db, dbtables, S_DM1, Grids,
  DBGrids,S_Pro,S_DM2,lerarq,S_Impres,RdPrint,func2, ComCtrls, RxMemDS,
  jpeg, S_SelEmp, Menus, ADODB, DBCtrls, RLReport,s_lerarq_geral;

type
  TFrm_Extrato_Produtos = class(TForm)
    PageControl1: TPageControl;
    TsIndividual: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_codpro: TEdit;
    NOMPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbAtualizar: TBitBtn;
    qr_cadest_mov: TQuery;
    src_cadest_mov: TDataSource;
    Label18: TLabel;
    cb_estoque: TComboBox;
    qr_cadest_movCMP_FILIAL: TFloatField;
    qr_cadest_movCMP_CHAVE_ANO: TFloatField;
    qr_cadest_movCMP_CHAVE: TFloatField;
    qr_cadest_movCMP_ITEM: TFloatField;
    qr_cadest_movCMP_DOCORI: TFloatField;
    qr_cadest_movCMP_CODPRO: TStringField;
    qr_cadest_movCMP_DATHOR: TDateTimeField;
    qr_cadest_movCMP_ESTNOR: TStringField;
    qr_cadest_movCMP_SALDO_ANT: TFloatField;
    qr_cadest_movQTD_SAI: TFloatField;
    qr_cadest_movQTD_ENT: TFloatField;
    qr_cadest_movCMP_SALDO_ATU: TFloatField;
    qr_cadest_movLOCAL_ARMAZEM: TStringField;
    Label10: TLabel;
    SALDO: TStaticText;
    qr_cadest_movPOSICAO: TFloatField;
    qr_cadest_movOBSERVACOES: TStringField;
    qr_cadest_movDOCORI: TStringField;
    cb_mostrar_sql: TCheckBox;
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure MDT2Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codproEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbDivAtuClick(Sender: TObject);
    procedure bbDivSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fLerDetalhes(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_extp3 : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Extrato_Produtos: TFrm_Extrato_Produtos;



function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;

implementation

uses  func_excecoes, Math, S_DM1_ADO;

{$R *.DFM}

procedure TFrm_Extrato_Produtos.edt_codproExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
edt_codpro.Text:=fdeixanum(edt_codpro.text);
if not flcadpro(1,0,0,Trim(edt_codpro.Text)) then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   edt_codpro.SetFocus;
   end
else if trim(edt_codpro.Text)='' then
  begin
  NOMPRO.Text:='***Nenhum Produto Selecionado!!!';
  end
else
   begin
   NOMPRO.Text:=Trim(DM1.Tb_ProPDNOME.Value);
   end;

end;

procedure TFrm_Extrato_Produtos.edt_codproKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'Frm_extp3',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Extrato_Produtos.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_Extrato_Produtos.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Extrato_Produtos.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Extrato_Produtos.bbAtualizarClick(Sender: TObject);
begin

if ValFloat(edt_codpro.Text)=0 then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   edt_codpro.SetFocus;
   exit;
   end;

if not flcadpro(1,0,0,Trim(edt_codpro.Text)) then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   edt_codpro.SetFocus;
   exit;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADMOV_PROD','CMP_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

qr_cadest_mov.Close;
qr_cadest_mov.sql.clear;
qr_cadest_mov.sql.Add('SELECT TABELA.*,ROWNUM AS POSICAO FROM ( ');

qr_cadest_mov.sql.Add('SELECT CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI, '
                     +' CASE WHEN CMP_DOCORI=00 THEN :DOCORI00 '
                     +'  WHEN CMP_DOCORI=01 THEN :DOCORI01 '
                     +'  WHEN CMP_DOCORI=02 THEN :DOCORI02 '
                     +'  WHEN CMP_DOCORI=03 THEN :DOCORI03 '
                     +'  WHEN CMP_DOCORI=04 THEN :DOCORI04 '
                     +'  WHEN CMP_DOCORI=05 THEN :DOCORI05 '
                     +'  WHEN CMP_DOCORI=06 THEN :DOCORI06 '
                     +'  WHEN CMP_DOCORI=07 THEN :DOCORI07 '
                     +'  ELSE :DOCORI08 END AS DOCORI,'
                     +' CMP_CODPRO,CMP_DATHOR '
                     +',substr( (CASE WHEN NVL(CMP_TIPOPROD,0)=0 THEN CMP_OBSERVACAO '
                     +' WHEN CMP_TIPOPROD=3 THEN '+QuotedStr('LOTE: ')+' || CMP_LOTE || '+QuotedStr(' ')+' ||  CMP_OBSERVACAO '
                     +' WHEN CMP_TIPOPROD=4 THEN '+QuotedStr('SERIE: ')+' || CMP_SERIE || '+QuotedStr(' ')+' || CMP_OBSERVACAO '
                     +' ELSE CMP_OBSERVACAO END),1,200) AS OBSERVACOES '
                     +' ,CMP_ESTNOR '
                     +' ,CMP_SALDO_ANT '
                     +',DECODE(CMP_ESTNOR,'+QuotedStr('S')+',CMP_QTD,0) AS QTD_SAI '
                     +',DECODE(CMP_ESTNOR,'+QuotedStr('E')+',CMP_QTD,0) AS QTD_ENT '
                     +' ,CMP_SALDO_ATU '
                     +',(SELECT MAX(CFNOME) FROM CADPRO_FILIAL WHERE CFFILIAL(+)=CMP_FILIAL) AS LOCAL_ARMAZEM '
                     +', CMP_ID_ANO, CMP_ID AS LINHA '
                     +' FROM CADMOV_PROD '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','  1=1 ',''));

qr_cadest_mov.ParamByName('DOCORI00').AsString:='Pedido de Vendas';
qr_cadest_mov.ParamByName('DOCORI01').AsString:='Pedido de Compras';
qr_cadest_mov.ParamByName('DOCORI02').AsString:='Ajuste de Estoque';
qr_cadest_mov.ParamByName('DOCORI03').AsString:='Balanço';
qr_cadest_mov.ParamByName('DOCORI04').AsString:='Ordem de Produção';
qr_cadest_mov.ParamByName('DOCORI05').AsString:='Zerar Estoque';
qr_cadest_mov.ParamByName('DOCORI06').AsString:='Sobras/Devoluções';
qr_cadest_mov.ParamByName('DOCORI07').AsString:='Inicial';
qr_cadest_mov.ParamByName('DOCORI08').AsString:='Desconhecido';

if fsonumero(MDT1.Text)<>0 then
   begin
   qr_cadest_mov.SQL.Add(' and TO_DATE(CMP_DATHOR)>=:DATHOR_INI ');
   qr_cadest_mov.ParamByName('DATHOR_INI').AsDateTime:=StrToDate(MDT1.Text);

   end;



if fsonumero(MDT2.Text)<>0 then
   begin
   qr_cadest_mov.SQL.Add(' and TO_DATE(CMP_DATHOR)<=:DATHOR_FIN ');
   qr_cadest_mov.ParamByName('DATHOR_FIN').AsDateTime:=StrToDate(MDT2.Text);
   end;

if fsonumero(edt_codpro.Text)<>0 then
   begin
   qr_cadest_mov.SQL.Add(' and CMP_CODPRO=:CODPRO ');
   qr_cadest_mov.ParamByName('CODPRO').AsFloat:=fsonumero(edt_codpro.Text);
   end;

if cb_estoque.ItemIndex<>cb_estoque.Items.Count-1 then
   begin
   qr_cadest_mov.SQL.Add(' and CMP_FILIAL=:FILIAL ');
   qr_cadest_mov.ParamByName('FILIAL').AsInteger:=cb_estoque.ItemIndex;
   end;
//    nvl(CMP_ID_ANO,0) DESC,nvl(LINHA,0) DESC ,CMP_DATHOR DESC
qr_cadest_mov.SQL.Add(' order by  nvl(CMP_ID_ANO,0) DESC,nvl(LINHA,0) DESC ,CMP_DATHOR DESC ');
qr_cadest_mov.sql.Add(') TABELA ');


try
   qr_cadest_mov.Open;
   if cb_mostrar_sql.Checked then
      ex_erroSql_Novo(qr_cadest_mov,262,'_stru ','CADEST');

except ON E: Exception do
   begin
   ex_erroSql_Novo(qr_cadest_mov,262,'_stru '+e.message,'CADEST');
   end;
   END;



end;

procedure TFrm_Extrato_Produtos.FormCreate(Sender: TObject);
var
  x: Integer;
begin
cb_mostrar_sql.Visible := codusr=1111;
qr_cadest_movCMP_SALDO_ANT.DisplayFormat:=mcasqtd;
qr_cadest_movCMP_SALDO_ATU.DisplayFormat:=mcasqtd;
qr_cadest_movQTD_SAI.DisplayFormat:=mcasqtd;
qr_cadest_movQTD_ENT.DisplayFormat:=mcasqtd;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Extrato_Produtos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mdiferenca: Real;
mcampolgc: String;
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
      end
   end;

end;

procedure TFrm_Extrato_Produtos.edt_codproEnter(Sender: TObject);
begin
qr_cadest_mov.Close;
end;

procedure TFrm_Extrato_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;


function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;
var
mCampoEstoque: String;
x: Integer;
mAchou: boolean;
mMes_ant: Integer;
begin

if ValInt(copy(mpseg,4,2))=2 then
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEGD where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));
   if pgrade='' then
      DM1.Query1.SQL.add(' and CED_GRADE is null ')
   else
      DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEGD where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));

      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEGD ');
            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            if pgrade='' then
               DM1.Query1.SQL.add(' and CED_GRADE is null ')
            else
               DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEGD ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end
else
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEDIA where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEDIA ');

            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEDIA ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end;
end;

Function fLerMovimento(pTipo,pTipoExt: Integer; pLbx_Codpro,pLbx_Codfor,pLbx_Codgru,pLbx_Codram,pLbx_codcon,pLbx_CodTip,pLbx_TipPro: TListBox): Boolean;
begin
{
pTipo=0 Individual Extrato
      1 Geral Comparativo de Estoque
}

result:=true;
end;
function tFrm_Extrato_Produtos.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_extp3.mlin:=form_impres_extp3.mlin+1;
      form_impres_extp3.RDprint1.ImpF(form_impres_extp3.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_Extrato_Produtos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Odd(qr_cadest_movPOSICAO.AsInteger) then
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
       begin
       DBGrid1.Canvas.Brush.Color := clActiveCaption;
       DBGrid1.Canvas.Font.Color  := clWindow;
       end
    else
       begin
       DBGrid1.Canvas.Font.Color  := clBlack;
       DBGrid1.Canvas.Brush.Color := clMoneyGreen;
       end;
   end
else
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
      begin
      DBGrid1.Canvas.Brush.Color := clActiveCaption;
      DBGrid1.Canvas.Font.Color  := clWindow;
      end
   else
      begin
      DBGrid1.Canvas.Font.Color  := clBlack;
      DBGrid1.Canvas.Brush.Color := clInfoBk;
      end;
   end;
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

procedure TFrm_Extrato_Produtos.bbDivAtuClick(Sender: TObject);
var
mSaida: String;
mEntrada: String;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','EXT_CODEMP' ,'PDCODPRO' ,'EXT_CODPRO');

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;





end;

procedure TFrm_Extrato_Produtos.bbDivSairClick(Sender: TObject);
begin
close;
end;
function TFrm_Extrato_Produtos.fLerDetalhes(pTipo: Integer): Boolean;
var
mSaida,mEntrada: String;
begin


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADUSR' ,'CODEMP','EXT_CODEMP' ,'CODUSR' ,'EXT_CODUSR');




end;

procedure TFrm_Extrato_Produtos.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin
Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
cb_estoque.Items.Clear;
While not Query_filial.Eof do
   begin
   cb_estoque.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;
if log_filial_padrao=0 then
   begin
  cb_estoque.ItemIndex:=0;
  end
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     cb_estoque.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with cb_estoque do
           ItemIndex := items.IndexOf(cb_estoque.Text);
     end;
  end;
FreeAndNil(query_filial);


end;


end.


