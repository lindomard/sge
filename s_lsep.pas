unit s_lsep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids, DB, DBTables,S_SelEmp
  ,dateUtils, ExtCtrls;

type
  TFrm_lsep = class(TForm)
    gb_cabecalho: TGroupBox;
    edt_data_inicial: TDateEdit;
    edt_data_final: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Label39: TLabel;
    edt_codven: TEdit;
    edt_nomsep: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_codprior_ini: TEdit;
    edt_codprior_fin: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    gb_relped: TGroupBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edt_chave_ini: TEdit;
    Label7: TLabel;
    edt_chave_fin: TEdit;
    bbImprimir: TBitBtn;
    qr_ped01: TQuery;
    DBGrid_itens: TDBGrid;
    qr_ped01P1CODPRIOR: TFloatField;
    qr_ped01P1NAUT: TStringField;
    qr_ped01P1CHAVE: TFloatField;
    qr_ped01RAZSOC: TStringField;
    qr_ped01P1DATAP: TDateTimeField;
    qr_ped01P1TOTALL: TFloatField;
    qr_ped01P1CODCLI: TFloatField;
    qr_ped01P1CODVEN: TFloatField;
    src_ped01: TDataSource;
    Qr_Ped02: TQuery;
    Qr_Ped02P2CODPRO: TFloatField;
    Qr_Ped02P2ITEM: TFloatField;
    Qr_Ped02PDNOME: TStringField;
    Qr_Ped02PDUND: TStringField;
    Qr_Ped02P2QTD: TFloatField;
    Qr_Ped02P2PRECO: TFloatField;
    Qr_Ped02P2TOTDES: TFloatField;
    Qr_Ped02P2TOTLIQ: TFloatField;
    src_ped02: TDataSource;
    DBGrid_ped02: TDBGrid;
    qr_ped01P1CODEMP: TFloatField;
    qr_ped01P1LOTSEQ: TFloatField;
    qr_ped01P1QTDDECPU: TFloatField;
    Timer1: TTimer;
    Label8: TLabel;
    edt_codsep: TEdit;
    edt_nomven: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure edt_data_finalEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codprior_iniExit(Sender: TObject);
    procedure edt_codprior_finExit(Sender: TObject);
    procedure edt_chave_iniExit(Sender: TObject);
    procedure edt_chave_finExit(Sender: TObject);
    procedure src_ped01DataChange(Sender: TObject; Field: TField);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edt_codsepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codsepExit(Sender: TObject);
  private
    { Private declarations }
    mDatHorUltLei: tDatetime;
    mEsperarPorSegundos: integer;

    Form_SelEmp: TFrm_SelEmp;



    function fLerCadp01: boolean;
    function fLerCadp02(pCodEmp,pLotSeq,pChave: integer): boolean;


    function fLer_query_nfe(out query_nfe: tquery): Boolean;

  public
    { Public declarations }

    procedure fAtualizarLsep(pCodEmp,pLotseq,pChave,pOrdem: integer);


  end;

var
  Frm_lsep: TFrm_lsep;

implementation

uses Func, S_DM1, lerarq, func_excecoes, func_emitir_notas, S_DM4,
  S_Fatur_OrcGrupo, Func2;

{$R *.dfm}

procedure TFrm_lsep.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_lsep.edt_data_finalEnter(Sender: TObject);
begin
if (edt_data_final.Date<=pDataNula) and (edt_data_inicial.Date>pDatanula)  then
   edt_data_final.date := edt_data_inicial.date;

end;

procedure TFrm_lsep.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_lsep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
mDatHorUltLei:=now();

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

procedure TFrm_lsep.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

function TFrm_lsep.fLerCadp01: boolean;
begin
mDatHorUltLei:=now();




la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADPED','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

Qr_ped01.close;
Qr_Ped01.SQL.clear;
if trim(la_empresas)<>'' then
   la_empresas:=' and '+la_empresas;


Qr_Ped01.Sql.Add('SELECT  P1CODEMP,P1LOTSEQ,P1CODPRIOR,P1NAUT,P1CHAVE,'
                +' CASE WHEN CFRAZAO IS NULL THEN CRAZAO ELSE CFRAZAO END AS RAZSOC '
                +',P1DATAP,P1TOTALL,P1CODCLI,P1CODVEN,P1QTDDECPU '
                +' FROM CADP01 '
                +' LEFT JOIN CADCSF ON (CFCODEMP = P1CODEMP AND CFLOTSEQ=P1LOTSEQ AND CFCHAVEP = P1CHAVE) '
                +iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +' WHERE P1STATUS=0 '
                +' AND P1TIPO>0 '
                +la_Empresas
                );

if trim(la_instrucao)<>'' then
   qr_Ped01.SQL.Add(' and '+la_instrucao);


if edt_data_inicial.date>pdatanula then
   Qr_ped01.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,edt_data_inicial.Date));
if edt_data_final.date>pdatanula then
   Qr_ped01.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,edt_data_final.Date));
if fsonumero(edt_codcli.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CODCLI='+fdeixanum(edt_codcli.text));
   end;

if fsonumero(edt_codven.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CODVEN='+fdeixanum(edt_codven.text));
   end;
if fsonumero(edt_codprior_ini.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CODPRIOR>='+fdeixanum(edt_codprior_ini.text));
   end;

if fsonumero(edt_codprior_fin.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CODPRIOR<='+fdeixanum(edt_codprior_fin.text));
   end;


if fsonumero(edt_chave_ini.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CHAVE>='+fdeixanum(edt_chave_ini.text));
   end;

if fsonumero(edt_chave_fin.text)>0 then
   begin
   Qr_ped01.SQL.Add(' and P1CHAVE<='+fdeixanum(edt_chave_fin.text));
   end;

qr_ped01.SQL.add(' order by P1CODPRIOR DESC, P1DATAP ');

try
   Qr_ped01.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped01,154,'SGE'+E.Message,'BUSCAR CADP01');
   result:=false;
   end;
   end;



end;


function TFrm_lsep.fLerCadp02(pCodEmp,pLotSeq,pChave: integer): boolean;
begin
if (qr_ped01P1QTDDECPU.AsInteger>0) and (qr_ped01P1QTDDECPU.AsInteger<>DM1.Tb_PargerPCASASPU.AsInteger) then
   begin
   Qr_Ped02P2PRECO.DisplayFormat  := '#,##0.'+insere('0','0',qr_Ped01P1QTDDECPU.AsInteger);
   end
else
   Qr_Ped02P2PRECO.DisplayFormat  := mcasaspu;



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
Qr_Ped02.close;
Qr_Ped02.sql.clear;
Qr_Ped02.Sql.Add('select P2CODPRO,P2ITEM,PDNOME,PDUND,P2QTD,P2PRECO,P2TOTDES,P2TOTLIQ '
                +' FROM CADP02 '
                +iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +' WHERE P2LOTSEQ='+IntToStr(pLotSeq)
                +' and P2CHAVE='+Inttostr(pChave)
                +' and P2CODEMP='+IntToStr(pCodEmp));

if trim(la_instrucao)<>'' then
   qr_Ped02.SQL.Add(' and '+la_instrucao);

   
qr_Ped02.SQL.Add(' order by P2ITEM '
                );
try
   Qr_ped02.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped02,230,'SGE'+E.Message,'BUSCAR CADP01');
   result:=false;
   end;
   end;


end;


procedure TFrm_lsep.bbAtualizarClick(Sender: TObject);
begin
fLerCadp01;

end;

procedure TFrm_lsep.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if edt_codcli.Text='' then
   edt_codcli.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,edt_codcli.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      edt_codcli.Text:='';
      edt_codcli.SetFocus;
      exit;
      end
   else
      begin
      edt_nomcli.Text:=DM1.Tb_CliCRAZAO.Value;
      end;
   end;

end;

procedure TFrm_lsep.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODCLI.Text:=fChamaCli(0,'Frm_PedCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_lsep.edt_codvenExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
edt_CODVEN.Text:=fdeixanum2(edt_CODVEN.Text);
if trim(edt_CODVEN.Text)='' then
   edt_NOMVEN.text:='Todos...'
else
   begin
   if not flcadven(1,0,edt_CODVEN.Text) then
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      if edt_CODVEN.Enabled then
         edt_CODVEN.SetFocus;
      end
   else
      edt_NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_lsep.edt_codvenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODVEN.Text:=fChamaVen(0,'frm_PedCli',Key);
   key:=#0;
   end;

end;

procedure TFrm_lsep.edt_codprior_iniExit(Sender: TObject);
begin
edt_codprior_ini.Text:=fdeixanum(edt_codprior_ini.Text);
if valint(edt_codprior_ini.Text)<0 then
   edt_codprior_ini.Clear;
if valint(edt_codprior_ini.Text)>100 then
   edt_codprior_ini.Text:='100';


end;

procedure TFrm_lsep.edt_codprior_finExit(Sender: TObject);
begin
edt_codprior_fin.Text:=fdeixanum(edt_codprior_fin.Text);
if valint(edt_codprior_fin.Text)<0 then
   edt_codprior_fin.Clear;
if valint(edt_codprior_fin.Text)>100 then
   edt_codprior_fin.Text:='100';

if valint(edt_codprior_ini.Text)>valint(edt_codprior_fin.Text) then
   edt_codprior_fin.Text:=edt_codprior_ini.Text;

end;

procedure TFrm_lsep.edt_chave_iniExit(Sender: TObject);
begin
if valint(edt_chave_ini.Text)<=0 then
   edt_chave_ini.Clear;
if valint(edt_codprior_ini.Text)>100 then
   edt_codprior_ini.Text:='100';


end;

procedure TFrm_lsep.edt_chave_finExit(Sender: TObject);
begin
if valint(edt_chave_fin.Text)<=0 then
   edt_chave_fin.Clear;
if valint(edt_codprior_fin.Text)>100 then
   edt_codprior_fin.Text:='100';

if (trim(edt_data_final.Text)<>'') and (valint(edt_data_inicial.Text)>ValInt(edt_data_final.Text)) then
   begin
   edt_data_final.Text:=edt_data_inicial.Text;
   end;

end;

procedure TFrm_lsep.src_ped01DataChange(Sender: TObject; Field: TField);
begin
if qr_ped01P1CHAVE.IsNull then
   qr_ped02.close
else
   begin

   fLerCadp02(qr_ped01P1CODEMP.AsInteger,qr_ped01P1LOTSEQ.AsInteger,qr_ped01P1CHAVE.AsInteger);
   end;
end;

procedure TFrm_lsep.bbImprimirClick(Sender: TObject);
var
query_nfe: TQuery;

query_atu: tQuery;
mNivel: Integer;
x_gru: Integer;
mTipoDoc: Integer;
begin
if fsonumero(edt_codsep.Text)=0 then
   begin
   MessageDlg('Nome do Separador Campo Obrigatorio!',mtWarning,[mbOk],0);
   exit;
   end;

if not fLer_query_nfe(query_nfe) then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;


if Query_nfe.FieldbyName('P1STATUS').AsInteger>=valint(mstatus_excluido) then
   begin
   Fmensagem('Este Pedido foi excluido anteriormente!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;


if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Pedido em Manutençao no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
   fMensagem(mcinst,0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;

if Query_nfe.FieldbyName('P1STATUS').AsInteger>0 then
   begin
   Fmensagem('Ja Emitido Lista de Separação!',0,['0'],0);
   freeandnil(query_nfe);
   exit;
   end;

fAtualizarLsep(query_nfe.fieldbyName('P1CODEMP').AsInteger,
               query_nfe.fieldbyName('P1LOTSEQ').AsInteger,
               query_nfe.fieldbyName('P1CHAVE').AsInteger,
               query_nfe.fieldbyName('P1ORDEM').AsInteger);




FPedEmiteNf(0,3,0,query_nfe.FieldbyName('P1LOTSEQ').AsInteger,query_nfe.FieldbyName('P1CHAVE').AsInteger
          ,1,query_nfe.FieldbyName('P1CODEMP').AsInteger,0
             ,1,false,false,true,1,0,0); // lista de separacao

{
             FPedEmiteNf(0,3,0,Query_LSep.FieldbyName('P1LOTSEQ').AsInteger,Query_LSep.FieldbyName('P1CHAVE').AsInteger
             ,Query_LSep.FieldbyName('P1ORDEM').AsInteger,Query_LSep.FieldbyName('P1CODEMP').AsInteger,0
             ,Query_LSep.FieldbyName('P1FORMACE').AsInteger,false,false,true,1,iif(CB_MODORCAM.Checked,1,0),0); // lista de separacao

 }


query_atu:=tQuery.create(nil);
query_atu.DatabaseName:=DM1.SG_ASSOC.databasename;
query_atu.SQl.clear;
query_atu.Sql.add('Update CADP01 set P1STATUS=1 '
                  +' ,P1CODSEP='+fdeixanum(edt_codsep.Text)
                  +' ,P1QTDMAN=P1QTDMAN+1'
                  +' where P1CODEMP=0'+Query_nfe.FieldbyName('P1CODEMP').AsString
                  +' and P1LOTSEQ=0'+Query_nfe.FieldbyName('P1LOTSEQ').AsString
                  +' and P1CHAVE=0'+Query_nfe.FieldbyName('P1CHAVE').AsString
                  +' and P1ORDEM=0'+Query_nfe.FieldbyName('P1ORDEM').AsString
                  +' and P1STATUS=0');
Try
   query_atu.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,8307,'Frm_Ped_02','CADP01');
   end;
Query_nfe.close;
Query_atu.close;


FreeandNil(Query_atu);
FreeandNil(Query_nfe);
bbatualizarClick(self);
edt_codsep.Clear;
edt_nomsep.clear;

end;



function TFrm_lsep.fLer_query_nfe(out query_nfe: tquery): Boolean;
begin
if query_nfe=nil then
   begin
   query_nfe := TQuery.Create(nil);
   query_nfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV,P1PVACTD,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC,P1DATDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATAP,P1NFE_ENVXML '
                 +',P1QTDMAN as P1QTDMAN,P1CUPOM,P1ANALISE,P1NUMNF_SERV '
                 +',P1NFCE_DATA,P1NFCE_NUMERO,P1NFCE_SERIE,P1NFCE_SITUACAO,P1NFCE_MODELO,P1NFCE_CHV_ACESSO,P1NFCE_NPROT '

                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE,P1DATHOR_UEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM '
                 +' order by P1CODEMP ');
Query_nfe.ParamByName('CODEMP').AsInteger:= qr_ped01P1CODEMP.AsInteger;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=qr_ped01P1CODEMP.AsInteger;
Query_nfe.ParamByName('CHAVE').AsInteger:=qr_ped01P1CHAVE.AsInteger;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=qr_ped01P1LOTSEQ.AsInteger;;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;


try
   query_nfe.Open;
except on e : exception do
   ex_erroSql_Novo(Query_nfe,507,'venda_pre'+e.Message,'CADP01');
   end;

if query_nfe.IsEmpty then
   begin
   fmensagem('Chave não encontrada!',0,['0'],0);
   freeandnil(query_nfe);
   result:=false;
   end
else
   result:=true;
end;



procedure TFrm_lsep.FormShow(Sender: TObject);
begin
mEsperarPorSegundos:=30;

qr_ped01P1DATAP.DisplayFormat  := fdt2;
qr_ped01P1TOTALL.DisplayFormat := mcasas;

Qr_Ped02P2QTD.DisplayFormat    := mcasqtd;
Qr_Ped02P2PRECO.DisplayFormat  := mcasaspu;
Qr_Ped02P2TOTDES.DisplayFormat := mcasas;
Qr_Ped02P2TOTLIQ.DisplayFormat := mcasas;

bbAtualizarClick(self);




end;

procedure TFrm_lsep.Timer1Timer(Sender: TObject);
var
mSegundosPercorridos: integer;
begin
mSegundosPercorridos:=SecondsBetween(mDatHorUltLei, now());
Frm_lsep.Caption:='Lista de Separação; Segundos Percorridos '+Inttostr(mSegundosPercorridos);
if mSegundosPercorridos>mEspErarPorSegundos then
   fLerCadp01;

end;

procedure TFrm_lsep.edt_codsepKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
  edt_codsep.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(edt_codsep.Text)<>'' then
      begin
      edt_codsepExit(Self);
      end;
   key:=#0;
   end;

end;

procedure TFrm_lsep.edt_codsepExit(Sender: TObject);
begin
edt_codsep.Text:=fdeixanum2(edt_codsep.Text);
if ValFloat(edt_codsep.Text)=0 then
   exit;
if not flcadusr(1,0,edt_codsep.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   edt_codsep.SetFocus;
   end
else
   edt_nomsep.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_lsep.fAtualizarLsep(pCodEmp,pLotseq,pChave,pOrdem: integer);
var
query_atu: TQuery;
begin

query_atu:=tQuery.create(nil);
query_atu.DatabaseName:=DM1.SG_ASSOC.databasename;
query_atu.SQl.clear;
query_atu.Sql.add('Update CADP01 set P1CODSEP='+fdeixanum(edt_codsep.Text)
                  +' ,P1DATASEP = SYSDATE '
                  +' ,P1HORSEP =  TO_CHAR(SYSDATE, '+QuotedStr('HH24:MI:SS')+') '
                  +' ,P1QTDMAN=P1QTDMAN+1'
                  +' where P1CODEMP=0'+IntToStr(pCodEmp)
                  +' and P1LOTSEQ=0'+IntToStr(pLotseq)
                  +' and P1CHAVE=0'+IntToStr(pChave)
                  +' and P1ORDEM=0'+IntToStr(pOrdem)
                  +' and P1STATUS=0');
Try
   query_atu.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,676,'Frm_Ped_02','CADP01');
   end;

query_atu.close;
freeandnil(query_atu);
end;

end.
