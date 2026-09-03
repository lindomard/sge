unit s_Pro_ForaPadraoNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, DB, DBTables,lerarq;

type
  TFrm_Pro_ForaPadraoNFE = class(TForm)
    Memo_coderro: TMemo;
    Image1: TImage;
    bbSalvar: TBitBtn;
    bbFechar: TBitBtn;
    StaticText1: TStaticText;
    SaveDialog1: TSaveDialog;
    bbCorrecoes: TBitBtn;
    procedure bbSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbCorrecoesClick(Sender: TObject);
  private
    { Private declarations }

    function fValidarCadpro:  boolean;


    procedure pCarregarMemo;


    function fretornacondicao(pcampos: array of string): string;



  public
    { Public declarations }
  end;

var
  Frm_Pro_ForaPadraoNFE: TFrm_Pro_ForaPadraoNFE;



const pcfop_valido :array[0..08] of string =(
 '5101'
,'5102'
,'5103'
,'5104'
,'5115'
,'5405'
,'5656'
,'5667'
,'5993'
);


const pcsosn_valido :array[0..08] of string =(
      '101'
      ,'102'
      ,'103'
      ,'201'
      ,'203'
      ,'300'
      ,'400'
      ,'500'
      ,'900'
      );


const porigem_produto :array[0..08] of string =(
      '0'
      ,'1'
      ,'2'
      ,'3'
      ,'4'
      ,'5'
      ,'6'
      ,'7'
      ,'8'
      );



const pcst_valido :array[0..05] of string =(
      '00'
      ,'10'
      ,'20'
      ,'40'
      ,'41'
      ,'60'
      );


pcodpro_codbar='CADPRO_CODBAR';
pcodbar_pro='CADPRO_PDCODBAR';
pcodpro_pro='CADPRO';

implementation

uses S_DM1, func_excecoes, Func;

{$R *.dfm}



procedure TFrm_Pro_ForaPadraoNFE.pCarregarMemo;
begin
Memo_coderro.Lines.Clear;
if (DM1.cds_retorno.Active=false) or (DM1.cds_retorno.IsEmpty=true) then
   Memo_coderro.Lines.Add('Nao ha divergencias!')
else
   begin
   DM1.cds_retorno.First;
   while not DM1.cds_retorno.eof do
      begin
      Memo_coderro.Lines.Add(DM1.cds_retornoce_coderro.Asstring+'-'+DM1.cds_retornoce_motivo.AsString);
      DM1.cds_retorno.Next;
      end;

   end;

end;


function TFrm_Pro_ForaPadraoNFE.fretornacondicao(pcampos: array of string): string;
var
x_cpo: integer;
mvirg: string;
begin
  result:='';
  mvirg:='';
  for x_cpo := Low(pcampos) to High(pcampos) do
     begin
     result:=result+mvirg+QuotedStr(pcampos[x_cpo]);
     mvirg:=' , ';
     end;

end;


function TFrm_Pro_ForaPadraoNFE.fValidarCadpro:  boolean;

var
query_pro: TQuery;
mItem: integer;
mobs: string;
mobs_02: string;


     procedure pfechartudo;
     begin
     if query_pro<>nil then
        begin
        query_pro.Close;
        freeandnil(query_pro);
        end;

     end;


    function fAdicionarErros(pCodErro: String; pNomeErro: String;pcodigo: string): boolean;
    begin
    result:=true;
    if DM1.cds_retorno.Active=false then
       begin
       DM1.cds_retorno.CreateDataSet;
       DM1.cds_retorno.open;
       end;
    if (trim(pcoderro)='') and (pNomeErro='') then
       DM1.cds_retorno.emptydataset
    else
       begin
       DM1.cds_retorno.Append;
       DM1.cds_retorno.FieldByName('ce_coderro').Asstring:=pCodErro;
       DM1.cds_retorno.FieldByName('ce_motivo').AsString:=pNomeErro;
       DM1.cds_retorno.FieldByName('ce_codigo').AsString:=pcodigo;
       DM1.cds_retorno.Post;
       end;

    end;




begin
result:=true;
 fAdicionarErros('','','');

query_pro:=TQuery.Create(nil);
query_pro.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_pro.SQL.Add(' select PDCODPRO,PDNOME,PDUND,PDMARCA,  '+quotedstr(' cfop ')+' || cfop || '+quotedstr(' é invalido para emissao de NFCE ')+'  as observacao '
                 +' from ( select  PDCODPRO,PDNOME,PDUND,PDMARCA, case '
                 +'    when  substr(PDFIS_CST_ICMS_EST_CF,1,1)=''4'' then UFTP_CFOP_RV_ISENTO '
                 +'    when   (  substr(PDFIS_CST_ICMS_EST_CF,1,1)=''1'' '
                 +'                               or substr(PDFIS_CST_ICMS_EST_CF,1,1)=''3'' '
                 +'                               or substr(PDFIS_CST_ICMS_EST_CF,1,1)=''5'' '
                 +'                               or substr(PDFIS_CST_ICMS_EST_CF,1,1)=''7'')  then UFTP_CFOP_RV_ST '
                 +'    when  (substr(PDFIS_CSOSN_EST_CF,1,1)=''4'' '
                 +'                            or substr(PDFIS_CSOSN_EST_CF,1,1)=''3'' '
                 +'                            or PDFIS_CSOSN_EST_CF=''203'') '
                 +'                       then UFTP_CFOP_RV_ISENTO '
                  +'   when  (substr(PDFIS_CSOSN_EST_CF,1,1)=''2'' '
                 +'                    or substr(PDFIS_CSOSN_EST_CF,1,1)=''9'' '
                 +'                     or substr(PDFIS_CSOSN_EST_CF,1,1)=''5'' )  then UFTP_CFOP_RV_ST '
                 +' else UFTP_CFOP_RV_TRIB end as cfop '
                 +' from cadpro, cademp, cadcli,caduf_tpped,CADCLATABICM where ccodcli=1 and uftp_uf=uf and uftp_codemp=1 '
                 +'     and uftp_codtpped=1  and codemp=1 '
                 +'      and CICLASSIF(+)=PDCLAS '
                 +' ) '
                 +' where not cfop in ('
                 +fretornacondicao(pcfop_valido)
                 +')'
                 );

if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
   begin
   query_pro.SQL.Add(' union all ');
   query_pro.SQL.Add('select PDCODPRO,PDNOME,PDUND,PDMARCA, '+QuotedStr('CST ICMS')+' || NVL( PDFIS_CST_ICMS_EST_CF,'+QuotedStr('Nulo')+') || '+QuotedStr(' é invalido para emissao de NFCE ')+' as observacao '
                 +' FROM cadpro where not PDFIS_CST_ICMS_EST_CF  in ('
                 +fretornacondicao(pcst_valido)
                 +')'
                 );
   end
else
   begin
   query_pro.SQL.Add(' union all ');
   query_pro.SQL.Add('select PDCODPRO,PDNOME,PDUND,PDMARCA, '+QuotedStr('CSOSN')+' || NVL(PDFIS_CSOSN_EST_CF,'+quotedstr('nulo')+') || '+QuotedStr(' é invalido para emissao de NFCE ')+' as observacao '
                 +' FROM cadpro where not PDFIS_CSOSN_EST_CF  in ('
                 +fretornacondicao(pcsosn_valido)
                 +')'
                 );
   end;


query_pro.SQL.Add(' union all ');
query_pro.SQL.Add('select PDCODPRO,PDNOME,PDUND,PDMARCA, '+QuotedStr('Origem do Produto')+' ||  NVL(pdfis_origem,'+QuotedStr('nulo')+') || '+QuotedStr(' é invalido para emissao de NFCE ')+' as observacao '
                 +' FROM cadpro where not PDFIS_ORIGEM  in ('
                 +fretornacondicao(porigem_produto)
                 +')'
                 );

try
   query_pro.Open;
except ON E: Exception do
   begin
   fAdicionarErros('999','5812 erro ao validar produtos '+e.Message,'');
   ex_erroSql_Novo(query_pro,5812,'_lerarq '+E.Message,'cadpro');

//   ex_erroSql_Novo(pTabela: TQuery; pLinha: Integer; PUnit, PArquivo:String): Boolean;

   result:=false;
   pfechartudo;
   exit;
   end;
   end;
if query_pro.IsEmpty=false then
   begin
   mItem:=0;

   while not query_pro.Eof do
      begin
      mItem:=mItem+1;
      fAdicionarErros(inttostr(mItem),'Produto: '+query_pro.FieldByName('PDCODPRO').AsString+' - '+query_pro.FieldByName('PDNOME').AsString
                          +' '+query_pro.FieldByName('PDMARCA').AsString+'  '+query_pro.FieldByName('observacao').AsString
                          ,query_pro.FieldByName('PDCODPRO').AsString
                          );
      query_pro.Next;
      end;
   end;


query_pro.Close;
query_pro.sql.Clear;
query_pro.SQL.Add('select codpro,min(origem) as orimin, max(origem)as orimax, sum(qtd) as qtd from ( '
                 +'       select retnum(cbcodbar) as codpro,count(*) as qtd, '+quotedstr(pcodpro_codbar)+' as origem from cadpro_codbar '
                 +' group by cbcodbar '
                 +' union all '
                 +' select pdcodbar as codpro,count(*) as qtd, '+QuotedStr(pcodbar_pro)+' as origem from cadpro '
                 +' where length(pdcodbar)>1 '
                 +' group by pdcodbar '
                 +' union all '
                 +' select pdcodpro as codpro,count(*) as qtd, '+QuotedStr(pcodpro_pro)+' as origem from cadpro '
                 +' group by pdcodpro '
                 +' ) t2 '
                 +' group by codpro '
                 +' having sum(qtd)>1 ');
try
   query_pro.Open;
except ON E: Exception do
   begin
   fAdicionarErros('999','5876 erro ao validar codigos de produtos '+e.Message,'');
   ex_erroSql_Novo(query_pro,5876,'_lerarq '+E.Message,'cadpro');
   result:=false;
   pfechartudo;
   exit;
   end;
   end;


if query_pro.IsEmpty=false then
   begin
   mItem:=0;


   while not query_pro.Eof do
      begin
      mobs:='';
      mobs_02:='';

      mItem:=mItem+1;
      if query_pro.FieldByName('orimin').AsString=pcodpro_codbar then
         begin
         mobs:='Sendo o 1o. no codigo de barras auxiliar do cadastro de produtos(outros codigos de barras) '+#13;
         mobs_02:='['+pcodpro_codbar+';';
         end
      else if query_pro.FieldByName('orimin').AsString=pcodbar_pro then
         begin
         mobs:='Sendo o 1o. no cadastro de produtos codigo de barras '+#13;
         mobs_02:='['+pcodbar_pro+';';
         end
      else
         begin
         mobs:='Sendo o 1o. no codigo principcal do produto '+#13;
         mobs_02:='['+pcodpro_pro+';';
         end;


      if query_pro.FieldByName('orimax').AsString=pcodpro_codbar then
         begin
         mobs:=mobs+'e o 2o. no codigo de barras auxiliar do cadastro de produtos(outros codigos de barras) '+#13;
         mobs_02:=mobs_02+pcodpro_codbar+']';
         end
      else if query_pro.FieldByName('orimax').AsString=pcodbar_pro then
         begin
         mobs:=mobs+'e o 2o. no cadastro de produtos codigo de barras '+#13;
         mobs_02:=mobs_02+pcodbar_pro+']';
         end
      else
         begin
         mobs:=mobs+'e o 2o. no codigo principcal do produto '+#13;
         mobs_02:=mobs_02+pcodpro_pro+']';
         end;
      mobs:=mobs_02+mobs+'**** É NECESSARIO CORRIGIR ****';
      fAdicionarErros(inttostr(mItem),'Codigo do Produto: '+query_pro.FieldByName('codpro').AsString+
                          ' Esta esta Repetido '+query_pro.FieldByName('qtd').AsString+' vezes '
                          +' '+mobs,query_pro.FieldByName('codpro').AsString);
      query_pro.Next;
      end;
   end;

if dm1.cds_retornO.IsEmpty=false then
   begin
   result:=false;
   end;


pfechartudo;




end;




procedure TFrm_Pro_ForaPadraoNFE.bbSalvarClick(Sender: TObject);
begin
SaveDialog1.FileName:=ExtractFilePath(Application.ExeName)+'erros.txt';
if SaveDialog1.Execute then
   Memo_coderro.Lines.SaveToFile(SaveDialog1.FileName);

end;

procedure TFrm_Pro_ForaPadraoNFE.FormShow(Sender: TObject);
begin
fValidarCadpro;

pCarregarMemo;
SetWindowPos(handle, HWND_TOPMOST, Left, Top,Width,Height, 0);
SetWindowPos(handle, HWND_NOTOPMOST, Left, Top,Width, Height, 0);



end;

procedure TFrm_Pro_ForaPadraoNFE.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_ForaPadraoNFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

procedure TFrm_Pro_ForaPadraoNFE.bbCorrecoesClick(Sender: TObject);
var
mchaves_item: string;
query_exe: tquery;
   procedure pfechartudo;
   begin
   if query_exe<>nil then
      begin
      query_exe.close;
      freeandnil(query_exe);
      end;
   end;

   function fCorrigirOrigemdoProduto: boolean;
   begin
   result:=true;
   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.Add('update CADPRO set PDFIS_ORIGEM='+QuotedStr('0')+' WHERE PDFIS_ORIGEM is null or (PDFIS_ORIGEM<'+QuotedStr('0')+' or PDFIS_ORIGEM>'+QuotedStr('8')+')');
   try
      query_exe.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(Query_exe,402,'SGE','CADPRO');
      result:=false;
      end;
      end;
   end;
   function fRetirarcodigodopdcodbar_codpro(pcodpro: real): boolean;
   begin
   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.add('update CADPRO SET PDCODBAR=0 WHERE PDCODBAR=:PDCODBAR ');
   query_exe.Parambyname('PDCODBAR').asfloat:=pcodpro;
   try
      query_exe.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(Query_exe,427,'SGE','CADPRO');
      result:=false;
      end;
      end;

   end;

   function fRetirarcodigodoauxilicarcapdrocodbar(pcodpro: real): boolean;
   begin
   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.add('delete from CADPRO_CODBAR WHERE CBCODBAR=:PDCODBAR ');
   query_exe.Parambyname('PDCODBAR').asfloat:=pcodpro;
   try
      query_exe.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(Query_exe,446,'SGE','CADPRO');
      result:=false;
      end;
      end;

   end;


   function fAjustarCSOSNCST: boolean;
   var

   mcomando: string;
   mmensagem: string;
   begin
   mcomando:='update CADPRO set PDFIS_CST_ICMS_EST_CF='+QuotedStr('00')+',PDDTALT=SYSDATE '
             +'  where not PDFIS_CST_ICMS_EST_CF  in ('
                 +fretornacondicao(pcst_valido)
                 +')'
                 ;
   if not fExecutarComandoSQL(true,mcomando,mmensagem,478) then
      begin
      MessageDlg('Erro '+mmensagem,mtError,[mbOk],0);
      result:=false;
      exit;
      end;


   mcomando:='update CADPRO set PDFIS_CSOSN_EST_CF='+QuotedStr('102')+',PDDTALT=SYSDATE '
             +' where not PDFIS_CSOSN_EST_CF  in ('
                 +fretornacondicao(pcsosn_valido)
                 +')'
                 ;
   if not fExecutarComandoSQL(true,mcomando,mmensagem,491) then
      begin
      MessageDlg('Erro '+mmensagem,mtError,[mbOk],0);
      result:=false;
      exit;
      end;


   mcomando:='update CADPRO set pdfis_origem='+quotedstr('0')+',PDDTALT=SYSDATE '
             +' where not PDFIS_ORIGEM  in ('
                 +fretornacondicao(porigem_produto)
                 +')';

   if not fExecutarComandoSQL(true,mcomando,mmensagem,504) then
      begin
      MessageDlg('Erro '+mmensagem,mtError,[mbOk],0);
      result:=false;
      exit;
      end;

   end;



begin

query_exe:=tquery.create(nil);
query_exe.databasename:=DM1.SG_ASSOC.databasename;
if not fCorrigirOrigemdoProduto then
   exit;

DM1.cds_retorno.First;
while not DM1.cds_retorno.eof do
   begin
   mchaves_item:=fExtraiCodigoEntreChaves(DM1.cds_retornoce_motivo.AsString);
   if trim(mchaves_item)<>'' then
      begin
      if (fBuscarValor_Del_PV(01,mchaves_item)=pcodpro_codbar) or
         (fBuscarValor_Del_PV(02,mchaves_item)=pcodpro_codbar) then
         begin
         if not fRetirarcodigodoauxilicarcapdrocodbar(fsonumero(DM1.cds_retornoce_codigo.asstring)) then
            exit;
         end
      else  if (fBuscarValor_Del_PV(01,mchaves_item)=pcodbar_pro) or
         (fBuscarValor_Del_PV(02,mchaves_item)=pcodbar_pro) then
         begin
         if not fRetirarcodigodopdcodbar_codpro(fsonumero(DM1.cds_retornoce_codigo.asstring)) then
            exit;
         end;
      end;
   DM1.cds_retorno.Next;
   end;
fAjustarCSOSNCST;

pfechartudo;

fValidarCadpro;
pCarregarMemo;

end;

end.
