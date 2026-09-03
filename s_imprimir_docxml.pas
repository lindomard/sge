unit s_imprimir_docxml;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,dbtables,lerarq,MaskUtils, RxMemDS, WordXP,
  OleServer, Word2000;

type
  Tfrm_imprimir_docxml = class(TForm)
    Memo_relatorio: TMemo;
    mem_grade: TRxMemoryData;
    WordDoc: TWordDocument;
    WordApp: TWordApplication;
  private
    { Private declarations }




    function  fGerarTextoGrade(pTabela: trxMemoryData;pTextoSaida: tStringList): Boolean;

  public
    { Public declarations }

    function fSubstituirFonteXml(pNomeXML: String): Boolean;




    function fPreparaRelatorio(pNomeRel,pCategoria: String;pQuery_CabRod: tquery; pquery_det: array of tquery; pGrupoTabela: Array of integer; pOriginal: Boolean;  mem_Legenda: trxMemoryData): Boolean;





  end;

var
  frm_imprimir_docxml: Tfrm_imprimir_docxml;

    const

    mTIPOCAMPO=0;
    mTAMCOL=1;
    mCOLUNA=2;
    mCOL_MESCLAR_ATE=3;
    mCOR_FONTE=4;
    mCOR_FUNDO=5;
    mCOL_ALINHAMENTO=6;
    mVALOR_CAMPO=7;
    mCOL_MESCLAR_ATE_TAMGER=8;
    mCOL_FONTE_TAMANHO=9;

    mCOL_FONTE_ITALICO=10;
    mCOL_FONTE_NEGRITO=11;
    mCOL_FONTE_SUBLINHADO=12;


implementation

uses Func, flerarq;

{$R *.dfm}


function Tfrm_imprimir_docxml.fSubstituirFonteXml(pNomeXML: String): Boolean;
var
      findtext   :string;
      replacetext:string;

begin
if not fileexists(pNomeXml) then
   begin
   result:=false;
   exit;
   end;
result:=true;

Memo_relatorio.Lines.clear;
Memo_relatorio.Lines.LoadFromFile(pNomeXML);
findtext   :='"UTF-8"';
replacetext:='"ISO-8859-1"';

While True do
   begin
   If Pos(uppercase(findText), uppercase(Memo_relatorio.Text)) > 0 Then
      Begin
      Memo_relatorio.SelStart := Pos(uppercase(FindText), uppercase(Memo_relatorio.Text)) - 1;
      Memo_relatorio.SelLength := Length(FindText);
      Memo_relatorio.SelText := ReplaceText;
      end
   else
      break;
   verteclado_02(0);
   verteclado(0);
   end;
Memo_relatorio.Lines.savetofile(pNomeXML);
end;

{
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>

<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
}




function Tfrm_imprimir_docxml.fPreparaRelatorio(pNomeRel,pCategoria: String;pQuery_CabRod: tquery; pquery_det: array of tquery; pGrupoTabela: Array of integer; pOriginal: Boolean;  mem_Legenda: trxMemoryData): Boolean;


//function fLerArquivoParticionadoBlob(pNomeRel,pTabela,pCampo_Emp,pCampo_NomRel,pCampo_Ordem,pCampo_Dados,pCampo_NomeOri: String; out pArquivo: string;pCamposExtras: array of string; pValoresCampoosExtras: array of string): Boolean;

var
findtext: string;
replacetext: string;


// nao confirmado
Query_Grade_Res: tQuery;
Query_Grade_Pos: tQuery;
Query_Grade: tQuery;

Query_DWord01: tQuery;

mPrim: Boolean;
mTamcol: Array of integer;
mCol: Integer;
mQtdCol: Integer;
mGrade: String;
mTextoSaida: tStringList;
x_mesclar: Integer;
mMesclar_ColAcum: Integer;
mCampoValor: String;

mNomeArq: String;
x_query: integer;
x_grupoTabela: integer;
x_cabrod: Integer;

mNomeDoc_doc: OleVariant;
msubitem_ant: string;
// mqtdlin_teste: integer;
const
{
  string_word_inicio = '<w:p wsp:rsidR="00C44983" wsp:rsidRDefault="00DD60A5" wsp:rsidP="000A7580"><w:pPr><w:pStyle w:val="Ttulo"/><w:jc w:val="left"/><w:rPr>'
                      +'<w:rFonts w:ascii="Arial-BoldMT" w:h-ansi="Arial-BoldMT"/><wx:font wx:val="Arial-BoldMT"/><w:b/><w:b-cs/><w:color w:val="000000"/>'
                      +'<w:sz w:val="22"/><w:sz-cs w:val="22"/></w:rPr></w:pPr><w:r><w:rPr><w:rFonts w:ascii="Arial-BoldMT" w:h-ansi="Arial-BoldMT"/>'
                      +'<wx:font wx:val="Arial-BoldMT"/><w:b/><w:b-cs/><w:color w:val="000000"/><w:sz w:val="22"/><w:sz-cs w:val="22"/></w:rPr><w:t>';
}

//  string_word_inicio = '<w:p wsp:rsidR="00C44983" wsp:rsidRDefault="00DD60A5" wsp:rsidP="000A7580"><w:r><w:rPr></w:rPr><w:t></w:t></w:r></w:p>';
  string_word_inicio = '<w:br/>';






          function fSubstituirWordAcentos:Boolean;
          var
          All, SubsTodos : OleVariant;
          EmptyParam: OleVariant;    // "Empty parameter" standard constant which can be

          x_item: integer;





              procedure pAtualizar(pachar,pSubstituir:OleVariant);
              begin

              SubsTodos:=true;

//             SHOWMESSAGE(PACHAR,psubstituir);

              try
                 worddoc.Content.Find.ClearFormatting;
                 worddoc.Content.Find.Text:=pAchar;
                 worddoc.Content.Find.Replacement.Text := pSubstituir;
                 worddoc.Content.Find.MatchAllWordForms := False;
                 worddoc.Content.Find.MatchCase := True;
                 worddoc.Content.Find.MatchWildcards := False;
                 worddoc.Content.Find.MatchSoundsLike := False;
                 worddoc.Content.Find.MatchWholeWord := False;
                 worddoc.Content.Find.MatchFuzzy := False;
                 worddoc.Content.Find.Wrap := wdFindContinue;
                 worddoc.Content.Find.Format := False;
                 worddoc.Content.Find.Format := true;
                 { Perform the search}
                 All:=wdReplaceAll;
                 worddoc.Content.Find.Execute(pAchar
                                                   ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,SubsTodos
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,pSubstituir
                                               ,All
                                               ,EmptyParam
          //                                     ,SubsTodos é essa
                                               ,EmptyParam
                                               ,EmptyParam
                                               ,EmptyParam
                                               );
              except on e : exception do
                 begin
//                 Messagedlg('achar '+PACHAR +' substituir '+psubstituir,mtWarning,[mbOk],0);
                 result:=false;
                 end;
                 end;
              end;



          begin
          for x_item:=0 to High(c_caracter_word) do
             begin


             pAtualizar(c_caracter_word[x_item][01],c_caracter_word[x_item][00]);

             end;
          end;





begin


if not fLerArquivoParticionadoBlob(pNomeRel, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI',mNomeArq,['DW_CATEGORIA'],[pCategoria]) then
   begin
   result:=false;
   exit;
   end;
memo_relatorio.Lines.Clear;
try
   memo_relatorio.Lines.LoadFromFile(mnomearq);
except on e : exception do
   begin
   Messagedlg('Erro ao ler arquivo '+e.message,mterror,[mbOk],0);
   result:=false;
   exit;
   end;
   end;
// mqtdlin_teste:=0;

if not pOriginal then
   begin
   mem_Legenda.First;
   while not mem_Legenda.eof  do
      begin
      findtext   :=mem_Legenda.Fields[0].AsString;
      replacetext:=pQuery_CabRod.Fieldbyname(mem_Legenda.Fields[01].AsString).asstring;
      if mem_Legenda.Fields[03].asstring='extenso_reais' then
         replacetext:=Extenso(valfloat(replacetext))
      else if mem_Legenda.Fields[03].asstring='extenso_numero' then
         replacetext:=Extenso2(valint(replacetext))
      else if mem_Legenda.Fields[03].asstring='extenso_data' then
         replacetext:=Data(pQuery_CabRod.Fieldbyname(mem_Legenda.Fields[01].asstring).Asdatetime,0)
      else if mem_Legenda.Fields[03].asstring<>'' then
         begin
         if pQuery_CabRod.Fieldbyname(mem_Legenda.Fields[01].AsString).DataType=ftDateTime then
            replacetext:=FormatDateTime(mem_Legenda.Fields[03].asstring, pQuery_CabRod.Fieldbyname(mem_Legenda.Fields[01].AsString).AsDateTime)
         else
            replacetext:=FormatFloat(mem_Legenda.Fields[03].asstring, valfloat(replacetext));
         end;

      replacetext:=TodasPrimeirasMaiusculas(lowercase(replacetext));
      replacetext:=AnsiToAscii(replacetext);


//      mqtdlin_teste:=mqtdlin_teste+1;



      replacetext:=fParametrizarCaracteres_word(replacetext);

{      if mqtdlin_teste<5 then
         begin
         replacetext:=replacetext+string_word_inicio+'LINDOMAR'
                                 +string_word_inicio+'divinO'
                                 +string_word_inicio+'cordeiro';
         end;
}
      While True do
         begin
         If Pos(uppercase(findText), uppercase(memo_relatorio.Lines.Text)) > 0 Then
            Begin
            memo_relatorio.SelStart := Pos(uppercase(FindText), uppercase(memo_relatorio.Lines.text)) - 1;
            memo_relatorio.SelLength := Length(FindText);
            memo_relatorio.SelText := ReplaceText;
            end
         else
            break;
         verteclado_02(0);
         verteclado(0);
                                     
         end;
      mem_legenda.next;
      end;

   Query_Grade_Res:=TQuery.Create(nil);
   Query_Grade_Res.DatabaseName:='SG_ASSOC';
   Query_Grade_Res.SQL.Clear;
   Query_Grade_Res.SQL.Add('select DW02_NOMGRADE,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' and DW02_CATEGORIA=:CATEGORIA '
                            +' group by DW02_NOMGRADE '
                            +' order by DW02_NOMGRADE ');
   Query_Grade_Res.ParamByName('CODEMP').AsInteger   :=codemp;
   Query_Grade_Res.ParamByName('NOMREL').AsString    :=pNomeRel;
   Query_Grade_Res.ParamByName('CATEGORIA').AsString :=pCategoria;
   Query_Grade_Res.open;



   Query_Grade:=TQuery.Create(nil);
   Query_Grade.DatabaseName:='SG_ASSOC';



   Query_DWord01:=tQuery.Create(Nil);
   Query_DWord01.DatabaseName:='SG_ASSOC';

   Query_Grade_Pos:=tQuery.Create(Nil);
   Query_Grade_Pos.DatabaseName:='SG_ASSOC';

   mTextoSaida:=tStringList.create;



   While not Query_Grade_Res.Eof do
      begin
      Query_DWord01.Sql.Clear;
      Query_DWord01.Sql.Add('select DW01_QTDCOL,NVL(DW01_TABELA,0) AS DW01_TABELA FROM CADDWORD_TAB01 '
                               +' where DW01_CODEMP=:CODEMP '
                               +' and DW01_NOMREL=:NOMREL '
                               +' and DW01_CATEGORIA=:CATEGORIA '
                               +' and DW01_NOMGRADE=:NOMGRADE ');
      Query_DWord01.ParamByName('CODEMP').AsInteger   :=codemp;
      Query_DWord01.ParamByName('NOMREL').AsString    :=pNomeRel;
      Query_DWord01.ParamByName('CATEGORIA').AsString :=pCategoria;
      Query_DWord01.ParamByName('NOMGRADE').AsString  :=query_grade_res.fieldbyName('DW02_NOMGRADE').asString;
      Query_DWord01.open;
      if query_dWord01.Fields[0].AsInteger<1 then
         begin
         Query_Grade_Res.Next;
         Continue;
         end;

      mQtdcol:=query_dWord01.Fields[0].AsInteger;
      setlength(mTamcol, mQtdCol+1);
      mGrade:='';
      mem_grade.close;
      mem_grade.FieldDefs.Clear;
      for mCol:=0 to mQtdCol-1 do
         begin
         mem_grade.FieldDefs.Add('TIPOCAMPO_'+inttostr(mcol) ,ftstring,30,false); // dados imagem [00]
         mem_grade.FieldDefs.Add('TAMCOL_'+inttostr(mcol) ,ftinteger,0,false); // tamanho em pixes da coluna [01]
         mem_grade.FieldDefs.Add('COLUNA_'+inttostr(mcol) ,ftinteger,0,false); // numero da coluna [02]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_'+inttostr(mcol) ,ftinteger,0,false); // mesclar coluna até [03]
         mem_grade.FieldDefs.Add('COR_FONTE_'+inttostr(mcol) ,ftString,10,false); // cor da fonte [04]
         mem_grade.FieldDefs.Add('COR_FUNDO_'+inttostr(mcol) ,ftString,10,false); // cor do fundo [05]
         mem_grade.FieldDefs.Add('ALINHAMENTO_'+inttostr(mcol) ,ftinteger,0,false); // 0-direito 1-centro 2-esquerdo [06]
         mem_grade.FieldDefs.Add('VALOR_CAMPO_'+inttostr(mcol) ,ftstring,3000,false); // valor do campo [07]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_TAMGER_'+inttostr(mcol) ,ftInteger,0,false); // Mesclar até coluna inteiro [08]
         mem_grade.FieldDefs.Add('FONTE_TAMANHO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]
         mem_grade.FieldDefs.Add('FONTE_ITALICO_'+inttostr(mcol) ,ftString,1,false); // tipo italico = 10
         mem_grade.FieldDefs.Add('FONTE_NEGRITO_'+inttostr(mcol) ,ftString,1,false); // tipo negrito= 11
         mem_grade.FieldDefs.Add('FONTE_SUBLINHADO_'+inttostr(mcol) ,ftString,1,false); // tipo negrito= 11


         end;





      Query_Grade_Pos.Close;
      Query_Grade_Pos.SQL.Clear;
      Query_Grade_Pos.SQL.Add('select  DW02_NOMGRADE,substr(DW02_POSICAO,1,3) as POSICAO,DW02_CATEGORIA,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' and DW02_NOMGRADE=:NOMGRADE '
                            +' and DW02_CATEGORIA=:CATEGORIA '
                            +' group by DW02_NOMGRADE,substr(DW02_POSICAO,1,3),DW02_CATEGORIA '
                            +' order by POSICAO ');
      Query_Grade_Pos.ParamByName('CODEMP').AsInteger:=codemp;
      Query_Grade_Pos.ParamByName('NOMREL').AsString :=pNomeRel;
      Query_Grade_Pos.ParamByName('CATEGORIA').AsString :=pCategoria;
      Query_Grade_Pos.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.fieldbyName('DW02_NOMGRADE').asstring;
      Query_Grade_Pos.open;
      mPrim:=true;
      mem_grade.open;

      fPosdoArray_integer(pGrupoTabela,Query_DWord01.FieldByName('DW01_TABELA').AsInteger,x_grupotabela);
      x_grupoTabela:=x_grupoTabela+1;
      x_query:=(x_grupoTabela*2)-2;

      pquery_det[x_query].First; // detalhes


      While not Query_grade_pos.eof do
         begin

         Query_Grade.Close;
         Query_Grade.SQL.Clear;
         Query_Grade.SQL.Add('select  DW02_CODEMP, '
                             +'  DW02_NOMREL, '
                             +'  DW02_NOMGRADE, '
                             +'  DW02_POSICAO, '
                             +'  substr(DW02_POSICAO,1,3) as POSICAO, '
                             +'  DW02_COLUNA, '
                             +'  DW02_TIPOCAMPO, '
                             +'  DW02_CAMPOOUTEXTO, '
                             +'  DW02_TAMANHO, '
                             +'  DW02_ALINHAMENTO, '
                             +'  DW02_FORMATO, '
                             +'  DW02_DATATYPE, '
                             +'  DW02_FUNDO, '
                             +'  DW02_MESCLAR_FIN, '
                             +'  DW02_CORFUNDO, '
                             +'  DW02_CORFONTE, '
                             +'  DW02_TAMANHO_DIG, '
                             +'  DW02_FONTE_TAMANHO '
                             +', DW02_FONTE_ITALICO '
                             +', DW02_FONTE_NEGRITO '
                             +', DW02_FONTE_SUBLINHADO '


                             +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                             +'  and DW02_NOMREL=:NOMREL '
                             +'  and DW02_NOMGRADE=:NOMGRADE '
                             +'  and DW02_CATEGORIA=:CATEGORIA '
                             +'  and SUBSTR(DW02_POSICAO,1,3)=:POSICAO '
                             +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
         Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
         Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
         Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
         Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('POSICAO').AsString;
         Query_Grade.ParamByName('CATEGORIA').AsString:=Query_Grade_Pos.FieldByName('DW02_CATEGORIA').AsString;
         Query_Grade.open;
         mCol:=0;

         if (copy(query_grade_pos.FieldByName('POSICAO').AsString,1,3)='CAB') or
            (copy(Query_Grade_Pos.FieldByName('POSICAO').AsString,1,3)='ROD') then
            x_cabrod:=1
         else
            x_cabrod:=0;

         pquery_det[x_query+x_cabrod].First; // rodape
         While not pquery_det[x_query+x_cabrod].Eof do
            begin
            mem_grade.append;
            Query_grade.first;
            mcol:=0;
            msubitem_ant:=Query_Grade.FieldbyName('DW02_POSICAO').AsString;
            While not Query_Grade.eof do
               begin
               if mcol>mQtdCol-1 then
                  begin
                  Query_Grade.Next;
                  Continue;
                  end;

               if mprim then
                  mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;

               mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
               mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
               mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
               mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
               mMesclar_ColAcum:=0;
               if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                  begin
                  for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                     begin
                     mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                     end;
                  mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                  end;

               mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
               mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
               mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
               if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                  mCampoValor:=pquery_det[x_query+x_cabrod].fieldbyName(
                   Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
               else
                  mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
               if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                  mCampoValor:=Extenso(valfloat(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                  mCampoValor:=Extenso2(valint(mCampoValor))
               else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                  begin
                  try
                     mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                  except
                     end;
                  end
               else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                  begin
                  try
                  if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                     (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                     mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                  else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                     mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                  else
                     mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                  except
                     end;
                  end;


               mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=mCampoValor;
//               mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);

               mem_grade.fieldbyName('FONTE_ITALICO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_ITALICO').AsString;
               mem_grade.fieldbyName('FONTE_NEGRITO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_NEGRITO').AsString;
               mem_grade.fieldbyName('FONTE_SUBLINHADO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_SUBLINHADO').AsString;


               mcol:=mcol+1;
               Query_Grade.Next;
               if (Query_Grade.Eof) or (msubitem_ant<>Query_Grade.FieldbyName('DW02_POSICAO').AsString) then
                  begin
                  mem_grade.Post;
                  if (Query_Grade.Eof=false) then
                     begin
                     msubitem_ant:=Query_Grade.FieldbyName('DW02_POSICAO').AsString;
                     mem_grade.append;
                     end;
                 mcol:=0;
                 end;
               end;
            mcol:=0;
            pquery_det[x_query+x_cabrod].Next;
            mPrim:=false;
            end;
         Query_grade_pos.Next;
         end;
      mTextoSaida.Clear;
      if fGerarTextoGrade(mem_grade, mTextoSaida) then
         begin
         findtext   :='<w:t>[%'+Query_Grade_pos.fieldbyname('DW02_NOMGRADE').asstring+'%]</w:t>';
//         mTextoSaida.Savetofile('c:\lll001_normal.txt');
         replacetext:=mTextoSaida.Text;


         If Pos(uppercase(findText), uppercase(memo_relatorio.Lines.Text)) > 0 Then
            Begin
            memo_relatorio.SelStart := Pos(uppercase(FindText), uppercase(memo_relatorio.Lines.text)) - 1;
            memo_relatorio.SelLength := Length(FindText);
            memo_relatorio.SelText := ReplaceText;
            end;
         end;

      Query_Grade_Res.Next;
      end;

   //ShowMessage('Quantidade de registros: '+IntToStr(mem_grade.RecordCount));

   freeandnil(query_grade_res);
   freeandnil(query_grade);
   freeandnil(mTextoSaida);
   end;

result:=true;
deletefile(mnomearq);
memo_relatorio.Lines.SaveToFile(mnomearq);


WordApp:=TWordApplication.Create(Application.Owner);
    { Faz com que o Word seja aberto e visivel ao usuário }
    { Adiciona um novo documento ao Word }
WordDoc:=TWordDocument.Create(Application.Owner);
    { Local do documento de Origem }
{ Abre o documento de Origem no Word }
mNomeDoc_doc:=mNomeArq;
try
   WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
except on e : exception do
   begin
   Messagedlg('Erro ao Abrir Documento '+mNomeDoc_doc+' ' +e.message+#13+'. Feche e tente novamente!' ,mterror,[mbOk],0);
   exit;
   end;
   end;
fSubstituirWordAcentos;
WordApp.Visible:=True;

{
   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
|\}


end;


function  Tfrm_imprimir_docxml.fGerarTextoGrade(pTabela: trxMemoryData;pTextoSaida: tStringList): Boolean;
var
mQtdColunas: Integer;
mTamGrade: string;
x_col: Integer;
mTexto: string;
mMesclar_Ate: Integer;
mMesclar_Ate_inicio: Integer;
mTamColGeral: Integer;
mCorFundo: String;
mAlinhamento_form: string;
mCorFonte: String;
mTamFonte: String;
mNegrito: boolean;
mSublinhado: boolean;
mItalico: boolean;
mGrade_Centro: boolean;

const
m_00D7076B = '00D7076B';
m_00D7076B_alt = '#FFE4C4';
m_001A104A = '00942C43';
m_001A104A_alt = '#FFE4C4';
m_004D1B74 = '004D1B74';
m_004D1B74_alt = '#FFE4C4';
mQtdCpoColuna =13;

begin
pTextoSaida.Clear;
if pTabela.IsEmpty then
   begin
   result:=false;
   exit;
   end;
result:=true;

mGrade_Centro:=true;
pTextoSaida.Add(' <w:tbl>');
pTextoSaida.Add(' <w:tblPr> ');
pTextoSaida.Add(' <w:tblW w:w="0" w:type="auto"/> ');

pTextoSaida.Add(' <w:tblBorders> ');
pTextoSaida.Add(' <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' </w:tblBorders> ');

pTextoSaida.Add(' <w:tblLook w:val="04A0"/> ');
pTextoSaida.Add(' </w:tblPr> ');



pTabela.First;
mQtdColunas:=pTabela.Fields.Count div mQtdCpoColuna;

mMesclar_Ate       :=0;
mMesclar_Ate_inicio:=0;

While not pTabela.Eof do
   begin
   pTextoSaida.Add(' <w:tr wsp:rsidR="'+m_00D7076B_alt+'" wsp:rsidTr="'+m_00D7076B_alt+'"> ');
   mTexto:='';

   for x_col:=0 to mQtdColunas-1 do
      begin
      if mMesclar_Ate=0 then
         begin
         mMesclar_Ate       :=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE].Asstring);
         if mMesclar_Ate>0 then
            begin
            mMesclar_Ate_inicio:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger;
            mTamColGeral:=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE_TAMGER].AsString);
            mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
            mTamGrade:=IntTostr (pTabela.Fields[(x_col*mQtdCpoColuna)+1].AsInteger*100);
            mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
            mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
            mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
            mItalico      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_ITALICO].AsString='S';
            mNegrito      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_NEGRITO].AsString='S';
            mSublinhado   :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_SUBLINHADO].AsString='S';
            end
         else
            begin
            mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
            mTamGrade:=IntTostr (pTabela.Fields[(x_col*mQtdCpoColuna)+1].AsInteger*100);
            mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
            mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
            mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
            mItalico      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_ITALICO].AsString='S';
            mNegrito      :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_NEGRITO].AsString='S';
            mSublinhado   :=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_SUBLINHADO].AsString='S';

            end;
         end;


      if mTexto<>'' then
         mTexto:=mTexto+' ';
      mTexto   := mTexto +  pTabela.Fields[(x_col*mQtdCpoColuna)+mVALOR_CAMPO].AsString;
      if (mMesclar_Ate=0) or (mMesclar_Ate=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger) then
         begin
//         if pos('CARRO PARA TRASPORTE DE MATERIAIS',mTexto)>0 then
//            showmessage(mTexto);
//             mTexto:=AnsiToAscii(mTexto);
//          mTexto:=AnsiToAcentosWord(mTexto);
          mTexto:=fParametrizarCaracteres_word(mTexto);
          if (mMesclar_Ate=0) then
             begin
             pTextoSaida.Add(' <w:tc> ');
             end

          else
             begin
             pTextoSaida.Add(' <w:tc> ');


             pTextoSaida.Add('<w:tcPr> ');




             pTextoSaida.Add('<w:tcW w:w="'+IntToStr(mTamColGeral*100)+'" w:type="dxa"/> ');
             pTextoSaida.Add('<w:gridSpan w:val="'+InttoStr((mMesclar_Ate-mMesclar_Ate_inicio)+1)+'"/> ');


             pTextoSaida.Add('</w:tcPr> ');
             end;

         pTextoSaida.Add(' <w:tcPr> ');
         pTextoSaida.Add(' <w:tcW w:w="'+mTamGrade+'" w:type="dxa"/> ');

         if mGrade_Centro then
            pTextoSaida.Add('<w:vAlign w:val="center"/>');

         if trim(mCorFundo)<>'' then
            begin
            pTextoSaida.Add('<w:shd w:val="clear" w:color="auto" w:fill="'
                          +IntToHex( valint(mCorFundo),6)
                          +'"/> '); // corfundo
            end;


         pTextoSaida.Add(' </w:tcPr> ');

         pTextoSaida.Add(' <w:p wsp:rsidR="'+m_00D7076B+'" wsp:rsidRDefault="'+m_001A104A_alt+'" wsp:rsidP="'+m_00D7076B_alt+'">');
         pTextoSaida.Add(' <w:proofErr w:type="spellStart"/> ');
         if valint(mAlinhamento_form)=1 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="center"/>  </w:pPr> ')
          else if valint(mAlinhamento_form)=2 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="right"/>  </w:pPr> ');
{
         pTextoSaida.Add('<w:rPr> ');
         pTextoSaida.Add('<w:rFonts w:asciiTheme="minorHAnsi" w:hAnsiTheme="minorHAnsi" w:cstheme="minorHAnsi"/> ');
         pTextoSaida.Add('<w:color w:val="000000"/><w:sz w:val="20"/> ');
         pTextoSaida.Add('<w:szCs w:val="20"/></w:rPr> ');
}



         pTextoSaida.Add(' <w:r> ');

         if valint(mTamFonte)<>0 then
            begin
            pTextoSaida.Add('<w:rPr><w:sz w:val="'
            +IntTostr(valint(mTamFonte) *2)
            +'"/><w:szCs w:val="'
            +IntTostr(valint(mTamFonte) *2)
            +'"/></w:rPr> ');
            end;


        // VERMELHO FONTE
//         pTextoSaida.Add(' <w:rPr>');

//         pTextoSaida.Add('<w:rFonts w:asciiTheme="minorHAnsi" w:hAnsiTheme="minorHAnsi" w:cstheme="minorHAnsi"/>');

         if trim(mCorFonte)<>'' then
            begin
            pTextoSaida.Add(' <w:rPr>');
            pTextoSaida.Add(' <w:color w:val="'
                  +IntToHex( valint(mCorFonte),6)
                   +'"/></w:rPr> ');
            pTextoSaida.Add('</w:rPr> ');

            end;

//            pTextoSaida.Add('</w:rPr> ');



//        pTextoSaida.Add('<w:pPr2><w:rPr2><w:b/></w:rPr2></w:pPr2><w:proofErr w:type="spellStart"/><w:r w:rsidRPr="'+m_004D1B74_alt+'"><w:rPr2><w:b/></w:rPr2>');

        // VERMELHO FONTE

        if mNegrito then
           pTextoSaida.Add('<w:rPr><w:b/></w:rPr>');

        if mSublinhado then
           pTextoSaida.Add('<w:rPr><w:u/></w:rPr>');

        if mItalico then
           pTextoSaida.Add('<w:rPr><w:i/></w:rPr>');

{
mNegrito: boolean;
mSobrescrito: boolean;
mItalico: boolean;
}

          pTextoSaida.Add(' <w:t>'+mTexto+'</w:t>');
          pTextoSaida.Add(' </w:r> ');
          pTextoSaida.Add(' <w:proofErr w:type="spellEnd"/> ');
          pTextoSaida.Add(' <w:r wsp:rsidR="'+m_004D1B74_alt+'"> ');
          pTextoSaida.Add(' </w:r> ');
          pTextoSaida.Add(' </w:p> ');
    //     end;




          pTextoSaida.Add(' </w:tc> ');
          mMesclar_Ate       :=0;
          mMesclar_Ate_inicio:=0;
          mTexto:='';
          end;
       end;
   pTextoSaida.Add(' </w:tr> '); // <w:tr wsp:rsidR="'+m_004D1B74+'" wsp:rsidTr="'+m_004D1B74+'">');

   pTabela.Next;
   end;

pTextoSaida.Add(' </w:tbl> ');


result:=true;

end;



end.
