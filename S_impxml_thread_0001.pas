unit S_impxml_thread_0001;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons,FileCtrl

  , xmldom, XMLIntf, msxmldom, XMLDoc,  ComCtrls,
    Grids, DBGrids, DBCtrls,db, Provider, DBTables,
  DBClient, Xmlxform, SqlExpr,   ImgList, Gauges,
  FMTBcd;
{

  Classes, SqlExpr,DB, DBClient, Provider, xmldom, XMLIntf, msxmldom, XMLDoc,dialogs
  ,sysutils,ActiveX,Xmlxform,shellapi,windows,FileCtrl;
}

type
  impxml_thread_0001 = class(TThread)

  private
    { Private declarations }




  protected
    Function fTestarXML(pNomeArq: String ): Boolean;

    procedure Execute; override;

    function fAdicionarEventos(pEvento: String):boolean;


  public
    executando: boolean;


    x_Ini: Integer;
    x_final: Integer;
    mSigla_Temp: String;
    x_itens: Integer;
    mCompleto: Boolean;
    x_Erros_View: integer;
//    vXMLDoc: ^TXMLDocument;
  end;

implementation

uses  func, lerarq;

//inicio


Function impxml_thread_0001.fTestarXML(pNomeArq: String ): Boolean;
var
    Node01, NodePai,NodeSec,NodeDet,Node_Protocolo: IXMLNode;
//    Node01, NodePai,NodeSec,NodeDet,NodeTmp,Node_Protocolo: IXMLNode;
Node_Ide, Node_Emit, Node_dest, Node_det, Node_total, Node_transp, Node_Cobr: IXMLNode;
Node_prod,Node_tmp_Imp, Node_icms,Node_IPI, Node_pis,Node_cofins,Node_Imposto, Node_IndAdic,NodeMaster: IXMLNode;


mLinha: String;
mCodPro_ori: String;
mCodPro_enc: String;

mErros_Fornec  :Boolean;
mErros_Produtos:Boolean;
x_lv,y,x_icms,x_ipi,x_cofins,x_pis,x,mitem,x_ger,x_det,x_imp: Integer;

mNF: Integer;
mDataNF: TDateTime;
mChaveAcesso: string;
mCampo: OleVariant;
mChave_node: String;
mNum_Item: String;
mNivel_Agrupamento: Integer;
vXMLDoc: IXMLDocument;

{
f_c170: TextFile;
f_0200: TextFile;
f_0150: TextFile;
f_C100: TextFile;
f_c100_eventos: textfile;
}


lista_c170: TStringList;
lista_0200: TStringList;
lista_0150: TStringList;
lista_C100: TStringList;
lista_c100_eventos: TStringList;

mLinha_c170: String;
mLinha_c170_insert: String;
mLinha_c170_condicoes: String;
mLinha_c170_update: String;
mLinha_0150: String;
mLinha_c100: String;

mLinha_c100_eventos: String;
mLinha_c100_eve_condicoes: String;
mLinha_c100_eve_insert: String;
mLinha_c100_eve_update: String;


mLinha_c100_insert: String;
mLinha_c100_condicoes: String;
mLinha_c100_update: String;

RC170_NNF: Integer;
RC170_DTNF:TDateTime;
RC170_CHV_NFE: String;
RC170_REG: String;
RC170_NUM_ITEM: String;
RC170_COD_ITEM: String;
RC170_DESCR_COMPL: String;
RC170_QTD: Real;
RC170_UNID: String;
RC170_VL_ITEM: Real;
RC170_VL_DESC: Real;
RC170_IND_MOV: string;
RC170_CFOP: Integer;
RC170_COD_NAT: string;
RC170_CST_ICMS: string;
RC170_VL_BC_ICMS: Real;
RC170_ALIQ_ICMS: Real;
RC170_VL_ICMS: Real;
RC170_VL_BC_ICMS_ST: Real;
RC170_ALIQ_ST: Real;
RC170_VL_ICMS_ST: Real;
RC170_IND_APUR: String;
RC170_CST_IPI: String;
RC170_COD_ENQ: String;
RC170_VL_BC_IPI: Real;
RC170_ALIQ_IPI: Real;
RC170_VL_IPI: Real;
RC170_CST_PIS: Integer;
RC170_VL_BC_PIS: Real;
RC170_ALIQ_PIS: Real;
RC170_QUANT_BC_PIS: Real;
RC170_ALIQ_PIS_REAIS: Real;
RC170_VL_PIS: Real;
RC170_CST_COFINS: String;
RC170_VL_BC_COFINS: Real;
RC170_ALIQ_COFINS: Real;
RC170_QUANT_BC_COFINS: Real;
RC170_VL_COFINS: Real;
RC170_NIVELAGRUP: Real;
RC170_ORIGEM: String;
RC170_ALIQ_COFINS_REAIS: Real;





R0150_REG: String;
R0150_COD_PART: String;
R0150_NOME: String;
R0150_COD_PAIS: Integer;
R0150_CNPJ: String;
R0150_CPF: String;
R0150_IE: String;
R0150_COD_MUN: Integer;
R0150_SUFRAMA: String;
R0150_END: String;
R0150_NUM: String;
R0150_COMPL: String;
R0150_BAIRRO: String;



RC100_REG: String;
RC100_IND_OPER: String;
RC100_IND_EMIT: String;
RC100_COD_PART: String;
RC100_COD_MOD: String;
RC100_COD_SIT: Integer;
RC100_SER: String;
RC100_CNPJ_EMIT: String;
RC100_NUM_DOC: Integer;
RC100_CHV_NFE: String;
RC100_DT_DOC: TDateTime;
RC100_DT_E_S:TDateTime;
RC100_VL_DOC: Real;
RC100_IND_PGTO: String;
RC100_VL_DESC: Real;
RC100_VL_ABAT_NT: Real;
RC100_VL_MERC: Real;
RC100_IND_FRT: Integer;
RC100_VL_FRT: Real;
RC100_VL_SEG: Real;
RC100_VL_OUT_DA: Real;
RC100_VL_BC_ICMS: Real;
RC100_VL_ICMS: Real;
RC100_VL_BC_ICMS_ST: Real;
RC100_VL_ICMS_ST: Real;
RC100_VL_IPI: Real;
RC100_VL_PIS: Real;
RC100_VL_COFINS: Real;
RC100_PIS_ST: Real;
RC100_COFINS_ST: Real;

R0200_REG: String;
R0200_COD_ITEM: String;
R0200_DESCR_ITEM: String;
R0200_COD_BARRA: String;
R0200_UNID_INV: String;
R0200_TIPO_ITEM: Integer;
R0200_COD_NCM: String;


RC100_EVE_XSERV: String;
RC100_EVE_CHNFE: String;
RC100_EVE_NPROT_NFE: String;
RC100_EVE_NPROT_EVENTO: String;
RC100_EVE_JUST:String;
RC100_EVE_LINHA: Integer;



mDel: String;
mvirg: string;
mvirg_C100: string;
mvirg_C100_eve: string;
mvirg_0150: string;

mQtdPendC100: Integer;
mQtdPend0150: Integer;
mQtdPendC100_eve: Integer;


mQtdPend0200: Integer;
mQtdBloco0200: Integer;
mQtdblocoC100: Integer;
mQtdblocoC100_eve: Integer;
mQtdbloco0150: Integer;

mNomeArq0200: String;
mNomeArqc170: String;
mNomeArq0150: String;
mNomeArqc100: String;
mNomeArqc100_eve: String;


mNomeTemp0200: String;
mNomeTempc170: String;

mNomeTemp0150: String;
mNomeTempc100: String;
mNomeTempc100_eve: string;
mXml_Canc: boolean;
i: integer;
// inicio funcao interna
// termino funcao interna




   function fIncluirC100_Eventos: Boolean;
   begin

   RC100_EVE_XSERV      :=Node01.ChildNodes['xServ'].Text;
   RC100_EVE_CHNFE       :=Node01.ChildNodes['chNFe'].Text;
   RC100_EVE_NPROT_NFE   :=Node01.ChildNodes['nProt'].Text;
   RC100_EVE_JUST        :=Node01.ChildNodes['xJust'].Text;
   RC100_EVE_NPROT_EVENTO:=Node_Protocolo.ChildNodes['nProt'].Text;


   if mQtdPendC100_eve=0 then
      begin
      while true do
         begin
         mvirg_C100_eve:='';
         mDel:=chr(39);
         mQtdblocoC100_eve:=mQtdPendC100_eve+1;
         break;
         end;

      mLinha_c100_eve_insert:='INSERT ( '
                +'NSI_CODEMP'+','
                +'NSI_CHV_ACESSO'+','
                +'NSI_CANCELADA'+','
                +'NSI_TIPOEVENTO '
                +'NSI_CNPJ_EMIT '
                +') values '
                +'( '
                +'SS.NSI_CODEMP'+','
                +'SS.NSI_CHV_ACESSO'+','
                +'SS.NSI_CANCELADA'+','
                +'SS.NSI_TIPOEVENTO '
                +'SS.NSI_CNPJ_EMIT '

                +')';
     mLinha_c100_eve_condicoes:=' T1.NSI_CHV_ACESSO = SS.NSI_CHV_ACESSO '
                               +' AND  T1.NSI_TIPOEVENTO = SS.NSI_TIPOEVENTO  ';





      mLinha_c100_eve_update:=' UPDATE  '
                +'T1.NSI_CODEMP=SS.NSI_CODEMP'+','
                +'T1.NSI_CANCELADA=SS.NSI_CANCELADA'
                +'';

      mNomeArqc100_eve:=mcamtmp+mNomeTempc100_eve+IntToStr(mQtdblocoC100_eve);


      end;

      mLinha_c100_eventos:=mvirg_C100_eve+'select '+inttostr(codemp)+' as CODEMP '
                          +','+quotedstr(RC100_EVE_CHNFE)+' as CHV_ACESSO '
                          +','+quotedstr('S')+' as NSI_CANCELADA '
                          +','+quotedstr('CANCELAMENTO')+' as NSI_TIPOEVENTO '
                          +','+RC100_CNPJ_EMIT+' as NSI_CNPJ_EMIT '
                          +' from DUAL ';


   lista_c100_eventos.Add(mLinha_c100_eventos);

   x_itens:=x_itens+1;
   mvirg_C100_eve:=' union all ';
   mQtdPendC100_eve:=mQtdPendC100_eve+1;
   if mQtdPendC100_eve>2000 then
      begin
      fIncluirDadosnoBanco('CADNS_IMPXML',mLinha_c100_eve_condicoes, mLinha_c100_eve_insert,mLinha_c100_eve_update,lista_c100_eventos);
      lista_c100_eventos.Clear;
      mQtdPendC100_eve:=0;
      end;
   result:=true;
   end;



begin



lista_c170:=TStringList.Create;
lista_0200:=TStringList.Create;
lista_0150:=TStringList.Create;
lista_C100:=TStringList.Create;
lista_c100_eventos:=TStringList.Create;


x_Erros_View:=0;

mErros_Fornec  :=False;
mErros_Produtos:=False;




mQtdPend0200:=0;
mQtdBloco0200:=0;

mQtdPendC100_eve :=0;
mQtdblocoC100_eve:=0;

mQtdPendC100 :=0;
mQtdblocoC100:=0;

mQtdPend0150 :=0;
mQtdbloco0150:=0;


x_Itens:=0;
mNomeTemp0200:='R0200_'+mSigla_Temp;
mNomeTempc170:='RC170_'+mSigla_Temp;

mNomeTemp0150:='R0150_'+mSigla_Temp;
mNomeTempc100:='RC100_'+mSigla_Temp;

mNomeTempc100_eve:='RC100_EVE_'+mSigla_Temp;

vXMLDoc := TXMLDocument.Create(nil);

try
    for x_lv:=x_Ini to x_final do
        begin
        try
           vXMLDoc.LoadFromFile(DirList[x_lv]);
        except ON E: Exception do
           begin
           fAdicionarEventos('ERRO NO XML '+e.Message);
           fAdicionarEventos('Arquivo do erro XML: '+DirList[x_lv]+' Não é uma NFe Válida!');
           Continue;

           end;
           end;

        if vXMLDoc=nil then
           begin
           fAdicionarEventos('Arquivo: '+DirList[x_lv]+' Não é uma NFe Válida!');
           Continue;
           end;

        mimpxml_qtdlid:=mimpxml_qtdlid+1;







    //    Frm_ImpXML_thred_direto.Update;

        node01 := vXMLDoc.DocumentElement.ChildNodes.First;

        mChaveAcesso:='';
        if node01.ChildNodes[0].NodeName='infNFe' then
           begin
           mXml_Canc:=false;
           node01:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');
           end
        else if node01.ChildNodes[0].NodeName='infCanc' then
           begin
           node01        :=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infCanc');
           try
              Node_Protocolo := vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes.FindNode('infCanc');
           except on e:Exception do
              begin
              fAdicionarEventos('Arquivo: '+DirList[x_lv]+' Não é um XML Válido para importação! '+e.Message);
              Continue;
              end;
              end;
           mXml_Canc:=true;
           end;
        if mXml_Canc then
           NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infCanc')
        else
           NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');


        if NodeMaster=nil then
           begin
           NodeMaster:=vXMLDoc.DocumentElement.childNodes.First
           end;

        result:=true;
        try
           mChaveAcesso:=string(NodeMaster.GetAttributeNS('Id',''));
        except on e:Exception do
             begin
             fAdicionarEventos('Arquivo: '+DirList[x_lv]+' Não é um XML Válido para importação! '+e.Message);
             Continue;
             end;
          end;
        if trim(mChaveAcesso)='' then
           begin
           fAdicionarEventos('Arquivo: '+pNomeArq+' Não é um XML válido para importação!');

           x_Erros_View:=x_Erros_View+1;
           Continue;
           end
        else
           begin
           mChaveAcesso:=copy(mChaveAcesso,4,44);
           end;
        if mXml_Canc then
           begin
           fIncluirC100_Eventos;
           Continue;
           end;

        for x_ger := 0 to node01.ChildNodes.Count-1 do
           begin

           if Node01.ChildNodes[x_ger].NodeName='ide' then
              begin

              mdatanf:=pdatanula;
              mNF:=Valint(Node01.ChildNodes[x_ger].ChildNodes['nNF'].Text);
              try
                 if fsonumero(Node01.ChildNodes[x_ger].ChildNodes['dEmi'].Text)>0 then
                    begin
                    mDataNF:=StrToDateTime( copy(Node01.ChildNodes[x_ger].ChildNodes['dEmi'].Text,9,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dEmi'].Text,6,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dEmi'].Text,1,4));
                   end;
              except
                 begin
//                 fAdicionarEventos('****439**********Nota com erro da data '+inttostr(mNF)+' chave de acesso '+mChaveAcesso);
//                 fAdicionarEventos('****439**********Arquivo: '+Frm_ImpXML_thred_direto.DirList[x_lv]+' Não é um XML Válido para importação! ');
                 end;

                 end;
              if mdatanf<=pdatanula then
                 begin
                 try
                    mDataNF:=StrToDateTime( copy(Node01.ChildNodes[x_ger].ChildNodes['dhEmi'].Text,9,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dhEmi'].Text,6,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dhEmi'].Text,1,4));
                 except
                      begin
//                      fAdicionarEventos('*********449*********Nota com erro da data '+inttostr(mNF)+' chave de acesso '+mChaveAcesso );
//                      fAdicionarEventos('*********449*********Arquivo: '+Frm_ImpXML_thred_direto.DirList[x_lv]+' Não é um XML Válido para importação! ');
                      end;
                    end;

                 end;


              end;
           if Node01.ChildNodes[x_ger].NodeName='dest' then
              begin
              R0150_REG:='0150';
              R0150_NOME:=Node01.ChildNodes[x_ger].ChildNodes['xNome'].Text;
              R0150_CPF:=Node01.ChildNodes[x_ger].ChildNodes['CPF'].Text;
              R0150_CNPJ:=Node01.ChildNodes[x_ger].ChildNodes['CNPJ'].Text;
              R0150_IE:=Node01.ChildNodes[x_ger].ChildNodes['IE'].Text;
              if trim(R0150_CNPJ)='' then
                 R0150_COD_PART:=R0150_CPF
              else
                 R0150_COD_PART:=R0150_CNPJ;
              RC100_COD_PART:=R0150_COD_PART;
              R0150_COD_PAIS:=valint(Node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['cPais'].Text);
              R0150_END    :=Node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['xLgr'].Text;
              R0150_COD_MUN:=valint(node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['cMun'].Text);
              R0150_NUM    :=Node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['nro'].Text;
              R0150_COMPL  :=Node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['xCpl'].Text;
              R0150_BAIRRO  :=Node01.ChildNodes[x_ger].ChildNodes['enderDest'].ChildNodes['xBairro'].Text;
              end
           else if Node01.ChildNodes[x_ger].NodeName='emit' then
              begin
              RC100_CNPJ_EMIT:=Node01.ChildNodes[x_ger].ChildNodes['CNPJ'].Text;
              end;



           if mCompleto then
              begin
              if Node01.ChildNodes[x_ger].NodeName='ide' then
                 begin
                 RC100_REG     :='C100';
                 RC100_IND_OPER:=Node01.ChildNodes[x_ger].ChildNodes['tpNF'].Text;
                 RC100_IND_EMIT:='0';
                 RC100_COD_MOD:=Node01.ChildNodes[x_ger].ChildNodes['mod'].Text;
                 RC100_COD_SIT:=0;
                 RC100_SER    :=Node01.ChildNodes[x_ger].ChildNodes['serie'].Text;
                 RC100_NUM_DOC:=mNF;
                 RC100_CHV_NFE:=mChaveAcesso;
                 RC100_DT_DOC  :=mDataNF;
                 RC100_DT_E_S:=pdatanula;

                 try
                   if fsonumero(Node01.ChildNodes[x_ger].ChildNodes['dSaiEnt'].Text)>0 then
                      begin
                      RC100_DT_E_S :=
                         StrToDateTime( copy(Node01.ChildNodes[x_ger].ChildNodes['dSaiEnt'].Text,9,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dSaiEnt'].Text,6,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dSaiEnt'].Text,1,4));
                      end;
                 except
                    end;
                 if RC100_DT_E_S<=pdatanula then
                    begin
                    if fsonumero(Node01.ChildNodes[x_ger].ChildNodes['dhSaiEnt'].Text)>0 then
                       begin
                       try
                       RC100_DT_E_S :=
                          StrToDateTime( copy(Node01.ChildNodes[x_ger].ChildNodes['dhSaiEnt'].Text,9,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dhSaiEnt'].Text,6,2)+'/'
                       +copy(Node01.ChildNodes[x_ger].ChildNodes['dhSaiEnt'].Text,1,4));
                       except
                          end;
                       end;
                    end;


                 RC100_IND_PGTO:=Node01.ChildNodes[x_ger].ChildNodes['indPag'].Text;
                 end;
              if Node01.ChildNodes[x_ger].NodeName='total' then
                 begin
                 RC100_VL_DOC       :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vNF'].Text);
                 RC100_VL_DESC      :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vDesc'].Text);
                 RC100_VL_ABAT_NT   :=0;
    //             RC100_VL_ABAT_NT:=valfloat(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vOutro'].Text);
                 RC100_VL_MERC      :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vProd'].Text);


                 RC100_VL_FRT       :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vFrete'].Text);
                 RC100_VL_SEG       :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vSeg'].Text);
                 RC100_VL_OUT_DA    :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vOutro'].Text);
                 RC100_VL_BC_ICMS   :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vBC'].Text);
                 RC100_VL_ICMS      :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vICMS'].Text);
                 RC100_VL_BC_ICMS_ST:=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vBCST'].Text);
                 RC100_VL_ICMS_ST   :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vST'].Text);
                 RC100_VL_IPI       :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vIPI'].Text);
                 RC100_VL_PIS       :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vPIS'].Text);
                 RC100_VL_COFINS    :=ValorReal(Node01.ChildNodes[x_ger].ChildNodes['ICMSTot'].ChildNodes['vCOFINS'].Text);
                 RC100_PIS_ST       :=0;
                 RC100_COFINS_ST    :=0;

                 end;
              if Node01.ChildNodes[x_ger].NodeName='transp' then
                 begin
                 if valint(Node01.ChildNodes[x_ger].ChildNodes['modFrete'].Text)=0 then
                    RC100_IND_FRT   :=1
                 else if valint(Node01.ChildNodes[x_ger].ChildNodes['modFrete'].Text)=1 then
                    RC100_IND_FRT   :=2
                 else if valint(Node01.ChildNodes[x_ger].ChildNodes['modFrete'].Text)=2 then
                    RC100_IND_FRT   :=0
                 else
                    RC100_IND_FRT   :=valint(Node01.ChildNodes[x_ger].ChildNodes['modFrete'].Text);

                 end;
              end;




           if Node01.ChildNodes[x_ger].NodeName='det' then
              begin
              Node_det:=Node01.ChildNodes[x_ger];

              repeat
                 mNum_Item:=string(Node_det.GetAttributeNS('nItem',''));
                 for x_imp := 0 to Node_det.ChildNodes.Count-1 do
                     begin
                     if Node_det.ChildNodes[x_imp].NodeName ='prod' then
                        begin
    // inicio
                        if mQtdPend0200=0 then
                           begin
                              mvirg:='';
                              mDel:=chr(39);
                              mQtdBloco0200:=mQtdBloco0200+1;

                           mLinha_c170_insert:='INSERT  ('
                                     +'T1.RC170_NNF'+','
                                     +'T1.RC170_DTNF'+','
                                     +'T1.RC170_CHV_NFE'+','
                                     +'T1.RC170_REG'+','
                                     +'T1.RC170_NUM_ITEM'+','
                                     +'T1.RC170_COD_ITEM'+','
                                     +'T1.RC170_DESCR_COMPL'+','
                                     +'T1.RC170_QTD'+','
                                     +'T1.RC170_UNID'+','
                                     +'T1.RC170_VL_ITEM'+','
                                     +'T1.RC170_VL_DESC'+','
                                     +'T1.RC170_IND_MOV'+','
                                     +'T1.RC170_CFOP'+','
                                     +'T1.RC170_COD_NAT'+','
                                     +'T1.RC170_CST_ICMS'+','
                                     +'T1.RC170_VL_BC_ICMS'+','
                                     +'T1.RC170_ALIQ_ICMS'+','
                                     +'T1.RC170_VL_ICMS'+','
                                     +'T1.RC170_VL_BC_ICMS_ST'+','
                                     +'T1.RC170_ALIQ_ST'+','
                                     +'T1.RC170_VL_ICMS_ST'+','
                                     +'T1.RC170_IND_APUR'+','
                                     +'T1.RC170_CST_IPI'+','
                                     +'T1.RC170_COD_ENQ'+','
                                     +'T1.RC170_VL_BC_IPI'+','
                                     +'T1.RC170_ALIQ_IPI'+','
                                     +'T1.RC170_VL_IPI'+','
                                     +'T1.RC170_CST_PIS'+','
                                     +'T1.RC170_VL_BC_PIS'+','
                                     +'T1.RC170_ALIQ_PIS'+','
                                     +'T1.RC170_QUANT_BC_PIS'+','
                                     +'T1.RC170_ALIQ_PIS_REAIS'+','
                                     +'T1.RC170_VL_PIS'+','
                                     +'T1.RC170_CST_COFINS'+','
                                     +'T1.RC170_VL_BC_COFINS'+','
                                     +'T1.RC170_ALIQ_COFINS'+','
                                     +'T1.RC170_QUANT_BC_COFINS'+','
                                     +'T1.RC170_VL_COFINS'+','
                                     +'T1.RC170_NIVELAGRUP'+','
                                     +'T1.RC170_ORIGEM'+','
                                     +'T1.RC170_ALIQ_COFINS_REAIS'
                                     +') values ('
                                     +'SS.RC170_NNF'+','
                                     +'SS.RC170_DTNF'+','
                                     +'SS.RC170_CHV_NFE'+','
                                     +'SS.RC170_REG'+','
                                     +'SS.RC170_NUM_ITEM'+','
                                     +'SS.RC170_COD_ITEM'+','
                                     +'SS.RC170_DESCR_COMPL'+','
                                     +'SS.RC170_QTD'+','
                                     +'SS.RC170_UNID'+','
                                     +'SS.RC170_VL_ITEM'+','
                                     +'SS.RC170_VL_DESC'+','
                                     +'SS.RC170_IND_MOV'+','
                                     +'SS.RC170_CFOP'+','
                                     +'SS.RC170_COD_NAT'+','
                                     +'SS.RC170_CST_ICMS'+','
                                     +'SS.RC170_VL_BC_ICMS'+','
                                     +'SS.RC170_ALIQ_ICMS'+','
                                     +'SS.RC170_VL_ICMS'+','
                                     +'SS.RC170_VL_BC_ICMS_ST'+','
                                     +'SS.RC170_ALIQ_ST'+','
                                     +'SS.RC170_VL_ICMS_ST'+','
                                     +'SS.RC170_IND_APUR'+','
                                     +'SS.RC170_CST_IPI'+','
                                     +'SS.RC170_COD_ENQ'+','
                                     +'SS.RC170_VL_BC_IPI'+','
                                     +'SS.RC170_ALIQ_IPI'+','
                                     +'SS.RC170_VL_IPI'+','
                                     +'SS.RC170_CST_PIS'+','
                                     +'SS.RC170_VL_BC_PIS'+','
                                     +'SS.RC170_ALIQ_PIS'+','
                                     +'SS.RC170_QUANT_BC_PIS'+','
                                     +'SS.RC170_ALIQ_PIS_REAIS'+','
                                     +'SS.RC170_VL_PIS'+','
                                     +'SS.RC170_CST_COFINS'+','
                                     +'SS.RC170_VL_BC_COFINS'+','
                                     +'SS.RC170_ALIQ_COFINS'+','
                                     +'SS.RC170_QUANT_BC_COFINS'+','
                                     +'SS.RC170_VL_COFINS'+','
                                     +'SS.RC170_NIVELAGRUP'+','
                                     +'SS.RC170_ORIGEM'+','
                                     +'SS.RC170_ALIQ_COFINS_REAIS'
                                     +') ';

                           mLinha_c170_condicoes:=' T1.RC170_CHV_NFE = SS.RC170_CHV_NFE '
                                                 +' and T1.rc170_num_item = SS.rc170_num_item ';





                           mLinha_c170_update:='update set  '
                                              +' t1.rc170_cst_icms = ss.rc170_cst_icms '
                                              +',t1.rc170_cfop = ss.rc170_cfop '
                                              +',t1.rc170_cod_nat = ss.rc170_cod_nat '
                                              +',t1.rc170_vl_bc_icms = ss.rc170_vl_bc_icms '
                                              +',t1.rc170_aliq_icms = ss.rc170_aliq_icms '
                                              +',t1.rc170_vl_icms = ss.rc170_vl_icms '
                                              +',t1.rc170_vl_bc_icms_st = ss.rc170_vl_bc_icms_st '
                                              +',t1.rc170_aliq_st = ss.rc170_aliq_st '
                                              +',t1.rc170_vl_icms_st = ss.rc170_vl_icms_st '
                                              +',t1.rc170_ind_apur = ss.rc170_ind_apur '
                                              +',t1.rc170_cst_ipi = ss.rc170_cst_ipi '
                                              +',t1.rc170_cod_enq = ss.rc170_cod_enq '
                                              +',t1.rc170_vl_bc_ipi = ss.rc170_vl_bc_ipi '
                                              +',t1.rc170_aliq_ipi = ss.rc170_aliq_ipi '
                                              +',t1.rc170_vl_ipi = ss.rc170_vl_ipi '
                                              +',t1.rc170_cst_pis = ss.rc170_cst_pis '
                                              +',t1.rc170_vl_bc_pis = ss.rc170_vl_bc_pis '
                                              +',t1.rc170_aliq_pis = ss.rc170_aliq_pis '
                                              +',t1.rc170_quant_bc_pis = ss.rc170_quant_bc_pis '
                                              +',t1.rc170_aliq_pis_reais = ss.rc170_aliq_pis_reais '
                                              +',t1.rc170_vl_pis = ss.rc170_vl_pis '
                                              +',t1.rc170_cst_cofins = ss.rc170_cst_cofins '
                                              +',t1.rc170_vl_bc_cofins = ss.rc170_vl_bc_cofins '
                                              +',t1.rc170_aliq_cofins = ss.rc170_aliq_cofins '
                                              +',t1.rc170_quant_bc_cofins = ss.rc170_quant_bc_cofins '
                                              +',t1.rc170_aliq_cofins_reais = ss.rc170_aliq_cofins_reais '
                                              +' ';



                           mNomeArqc170:=mcamtmp+mNomeTempc170+IntToStr(mQtdBloco0200);



                           end;


        // termino


                        Node_prod:=Node_det.ChildNodes[x_imp];

                        RC170_NNF   :=mNF;
                        RC170_DTNF  :=mDataNF;
                        RC170_CHV_NFE:=mChaveAcesso;
                        RC170_REG     :='C170';
                        RC170_NUM_ITEM:=mNum_Item;

                        RC170_COD_ITEM  :=Node_Prod.ChildNodes['cProd'].text;
                        RC170_DESCR_COMPL:=Node_Prod.ChildNodes['infAdProd'].text;
                        RC170_QTD:=ValorReal(Node_Prod.ChildNodes['qCom'].text);
                        RC170_UNID:=Node_Prod.ChildNodes['uCom'].text;
    //                    RC170_VL_ITEM:=Arredonda((ValorReal(Node_Prod.ChildNodes['qCom'].text)
    //                                                                                   *ValorReal(Node_Prod.ChildNodes['vUnCom'].text)),2);

                        RC170_VL_ITEM:=ValorReal(Node_Prod.ChildNodes['vProd'].text);

                        RC170_VL_DESC:=ValorReal(Node_Prod.ChildNodes['vDesc'].text);
                        RC170_IND_MOV:='0';
                        RC170_CFOP:=valint(Node_Prod.ChildNodes['CFOP'].text);
                        RC170_COD_NAT:=Node_Prod.ChildNodes['CFOP'].text;
                        RC170_CST_ICMS:='000';
                        RC170_VL_BC_ICMS:=0;
                        RC170_ALIQ_ICMS:=0;
                        RC170_VL_ICMS:=0;
                        RC170_VL_BC_ICMS_ST:=0;
                        RC170_ALIQ_ST:=0;
                        RC170_VL_ICMS_ST:=0;
                        RC170_IND_APUR:=' ';
                        RC170_CST_IPI:=' ';
                        RC170_COD_ENQ:=' ';
                        RC170_VL_BC_IPI:=0;
                        RC170_ALIQ_IPI:=0;
                        RC170_VL_IPI:=0;
                        RC170_CST_PIS:=0;

                        RC170_VL_BC_PIS:=0;
                        RC170_ALIQ_PIS:=0;
                        RC170_QUANT_BC_PIS:=0;
                        RC170_ALIQ_PIS_REAIS:=0;
                        RC170_VL_PIS:=0;
                        RC170_CST_COFINS:='0';
                        RC170_VL_BC_COFINS:=0;
                        RC170_ALIQ_COFINS:=0;
                        RC170_QUANT_BC_COFINS:=0;
                        RC170_VL_COFINS:=0;
                        RC170_NIVELAGRUP:=mNivel_Agrupamento;
                        RC170_ORIGEM:='NFE';

                        R0200_REG:='0200';

                        R0200_COD_ITEM:= RC170_COD_ITEM;
                        R0200_DESCR_ITEM:=Node_Prod.ChildNodes['xProd'].text;
                        R0200_COD_BARRA:=Node_Prod.ChildNodes['cEAN'].text;
                        R0200_UNID_INV:=Node_Prod.ChildNodes['uCom'].text;
                        R0200_TIPO_ITEM:=00;

                        R0200_COD_NCM:=Node_Prod.ChildNodes['NCM'].text;

                        RC170_CST_ICMS:='000';
                        RC170_VL_BC_ICMS:=0;
                        RC170_ALIQ_ICMS:=0;
                        RC170_VL_ICMS:=0;
                        RC170_VL_BC_ICMS_ST:=0;
                        RC170_VL_ICMS_ST:=0;
                        RC170_CST_IPI:=' ';
                        RC170_VL_BC_IPI:=0;
                        RC170_ALIQ_IPI:=0;
                        RC170_VL_IPI:=0;
                        RC170_CST_PIS:=0;
                        RC170_VL_BC_PIS:=0;
                        RC170_ALIQ_PIS:=0;
                        RC170_VL_PIS:=0;
                        RC170_QUANT_BC_PIS:=0;
                        RC170_ALIQ_PIS_REAIS:=0;
                        RC170_VL_PIS:=0;
                        RC170_CST_COFINS:='0';
                        RC170_VL_BC_COFINS:=0;
                        RC170_ALIQ_COFINS:=0;
                        RC170_VL_COFINS:=0;
                        RC170_CST_COFINS:='0';
                        RC170_QUANT_BC_COFINS:=0;
                        RC170_ALIQ_COFINS_REAIS:=0;
                        RC170_VL_COFINS:=0;
                        end;
                     if Node_Det.ChildNodes[x_imp].NodeName='imposto' then
                        begin
                        Node_Imposto:=Node_det.ChildNodes[x_imp];
                        for x := 0 to Node_Imposto.ChildNodes.Count-1 do
                           begin
                           if Node_Imposto.ChildNodes[x].NodeName='ICMS' then
                              begin
                              Node_icms:=Node_Imposto.ChildNodes[x];
                              for x_icms := 0 to Node_icms.ChildNodes.Count-1 do
                                 begin
                                 if Node_icms.ChildNodes[x_icms].NodeName='ICMS00' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS10' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS20' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS30' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS40' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS51' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS60' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMS70' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                   end
                                else if Node_icms.ChildNodes[x_icms].NodeName='ICMS90' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMSSN101' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                     Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CSOSN'].text;
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pCredSN'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vCredICMSSN'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMSSN102' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CST'].text;
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMSSN201' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CSOSN'].text;
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pCredSN'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vCredICMSSN'].text);
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMSSN202' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                     Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CSOSN'].text;
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end
                                 else if Node_icms.ChildNodes[x_icms].NodeName='ICMSSN900' then
                                    begin
                                    Node_tmp_Imp:=Node_icms.ChildNodes[x_icms];
                                    RC170_CST_ICMS:=
                                    Node_tmp_Imp.ChildNodes['orig'].text+Node_tmp_imp.ChildNodes['CSOSN'].text;
                                    RC170_VL_BC_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMS'].text);
                                    RC170_VL_ICMS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMS'].text);
                                    RC170_VL_BC_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBCST'].text);
                                    RC170_ALIQ_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pICMSST'].text);
                                    RC170_VL_ICMS_ST:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vICMSST'].text);
                                    end;
                                 end;
                              end
                           else if Node_Imposto.ChildNodes[x].NodeName='IPI' then
                              begin
                              Node_IPI:=Node_Imposto.ChildNodes[x];
                              for x_ipi := 0 to Node_IPI.ChildNodes.Count-1 do
                                 begin
                                 if Node_IPI.ChildNodes[x_ipi].NodeName='IPITrib' then
                                    begin
                                    Node_tmp_Imp:=Node_IPI.ChildNodes[x_ipi];
                                    RC170_CST_IPI:=
                                    Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_IPI:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_IPI:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pIPI'].text);
                                    RC170_VL_IPI:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vIPI'].text);
                                    end
                                 else if Node_ipi.ChildNodes[x_ipi].NodeName='IPINT' then
                                    begin
                                    Node_tmp_Imp:=Node_IPI.ChildNodes[x_ipi];
                                    RC170_CST_IPI:=
                                    Node_tmp_imp.ChildNodes['CST'].text;
                                    end;
                                 end;
                              end
                           else if Node_Imposto.ChildNodes[x].NodeName='PIS' then
                              begin
                              Node_pis:=Node_Imposto.ChildNodes[x];
                              for x_ipi := 0 to Node_pis.ChildNodes.Count-1 do
                                 begin
                                 if Node_pis.ChildNodes[x_pis].NodeName='PISAliq' then
                                    begin
                                    Node_tmp_Imp:=Node_pis.ChildNodes[x_pis];
                                    RC170_CST_PIS:=
                                    valint(Node_tmp_imp.ChildNodes['CST'].text);
                                    RC170_VL_BC_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pPIS'].text);
                                    RC170_VL_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vPIS'].text);
                                    end
                                 else if Node_pis.ChildNodes[x_pis].NodeName='PISQtde' then
                                    begin
                                    Node_tmp_Imp:=Node_pis.ChildNodes[x_pis];
                                    RC170_CST_PIS:=
                                    valint(Node_tmp_imp.ChildNodes['CST'].text);
                                    RC170_QUANT_BC_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['qBCProd'].text);
                                    RC170_ALIQ_PIS_REAIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vAliqProd'].text);
                                    RC170_VL_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vPIS'].text);
                                    end
                                 else if Node_pis.ChildNodes[x_pis].NodeName='PISNT' then
                                    begin
                                    RC170_CST_PIS:=
                                    valint(Node_tmp_imp.ChildNodes['CST'].text);
                                    end
                                 else if Node_pis.ChildNodes[x_pis].NodeName='PISOutr' then
                                    begin
                                    Node_tmp_Imp:=Node_pis.ChildNodes[x_pis];
                                    RC170_CST_PIS:=
                                    valint(Node_tmp_imp.ChildNodes['CST'].text);
                                    RC170_VL_BC_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pPIS'].text);
                                    RC170_QUANT_BC_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['qBCProd'].text);
                                    RC170_ALIQ_PIS_REAIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vAliqProd'].text);
                                    RC170_VL_PIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vPIS'].text);
                                    end;
                                 end;
                              end
                           else if Node_Imposto.ChildNodes[x].NodeName='COFINS' then
                              begin
                              Node_cofins:=Node_Imposto.ChildNodes[x];
                              for x_cofins := 0 to Node_cofins.ChildNodes.Count-1 do
                                 begin
                                 if Node_cofins.ChildNodes[x_cofins].NodeName='COFINSAliq' then
                                    begin
                                    Node_tmp_Imp:=Node_cofins.ChildNodes[x_cofins];
                                    RC170_CST_COFINS:=Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pCOFINS'].text);
                                    RC170_VL_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vCOFINS'].text);
                                    end
                                 else if Node_cofins.ChildNodes[x_cofins].NodeName='COFINSQtde' then
                                    begin
                                    Node_tmp_Imp:=Node_cofins.ChildNodes[x_cofins];
                                    RC170_CST_COFINS:=Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_QUANT_BC_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['qBCProd'].text);
                                    RC170_ALIQ_COFINS_REAIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vAliqProd'].text);
                                    RC170_VL_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vCOFINS'].text);
                                    end
                                 else if Node_cofins.ChildNodes[x_cofins].NodeName='COFINSNT' then
                                    begin
                                    RC170_CST_COFINS:=Node_tmp_imp.ChildNodes['CST'].text;
                                    end
                                 else if Node_cofins.ChildNodes[x_cofins].NodeName='COFINSOutr' then
                                    begin
                                    Node_tmp_Imp:=Node_cofins.ChildNodes[x_cofins];
                                    RC170_CST_COFINS:=Node_tmp_imp.ChildNodes['CST'].text;
                                    RC170_VL_BC_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vBC'].text);
                                    RC170_ALIQ_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['pCOFINS'].text);
                                    RC170_QUANT_BC_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['qBCProd'].text);
                                    RC170_ALIQ_COFINS_REAIS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vAliqProd'].text);
                                    RC170_VL_COFINS:=
                                    ValorReal(Node_tmp_Imp.ChildNodes['vCOFINS'].text);
                                    end;
                                 end;
                              end;
                           end;
                        end;
                     end;
                  mLinha_c170:=mvirg+' select '+fIntegerPara_Oracle(RC170_NNF)+' as RC170_NNF,'
                            +fTxtParaDateTime_Oracle(FormatDatetime(fdathor, RC170_DTNF) )+' as RC170_DTNF,'
                            +mDel+RC170_CHV_NFE+mDel+' as RC170_CHV_NFE,'
                            +mDel+RC170_REG+mDel+' as RC170_REG ,'
                            +mDel+RC170_NUM_ITEM+mDel+' as RC170_NUM_ITEM,'
                            +mDel+RC170_COD_ITEM+mDel+' as RC170_COD_ITEM, '
                            +mDel+RC170_DESCR_COMPL+mDel+' as RC170_DESCR_COMPL,'
                            +fFloatPara_Oracle(RC170_QTD)+' as RC170_QTD,'
                            +mDel+RC170_UNID+mDel+' as RC170_UNID,'
                            +fFloatPara_Oracle(RC170_VL_ITEM)+' as RC170_VL_ITEM ,'
                            +fFloatPara_Oracle(RC170_VL_DESC)+' as RC170_VL_DESC, '
                            +mDel+RC170_IND_MOV+mDel+' as RC170_IND_MOV,'
                            +fFloatPara_Oracle(RC170_CFOP)+' as RC170_CFOP,'
                            +mDel+RC170_COD_NAT+mDel+' as RC170_COD_NAT,'
                            +mDel+RC170_CST_ICMS+mDel+' as RC170_CST_ICMS ,'
                            +fFloatPara_Oracle(RC170_VL_BC_ICMS)+' as RC170_VL_BC_ICMS,'
                            +fFloatPara_Oracle(RC170_ALIQ_ICMS)+' as RC170_ALIQ_ICMS,'
                            +fFloatPara_Oracle(RC170_VL_ICMS)+' as RC170_VL_ICMS,'
                            +fFloatPara_Oracle(RC170_VL_BC_ICMS_ST)+' as RC170_VL_BC_ICMS_ST,'
                            +fFloatPara_Oracle(RC170_ALIQ_ST)+' as RC170_ALIQ_ST,'
                            +fFloatPara_Oracle(RC170_VL_ICMS_ST)+' as RC170_VL_ICMS_ST,'
                            +mDel+RC170_IND_APUR+mDel+' as RC170_IND_APUR, '
                            +mDel+RC170_CST_IPI+mDel+' as RC170_CST_IPI ,'
                            +mDel+RC170_COD_ENQ+mDel+' as RC170_COD_ENQ,'

                            +fFloatPara_Oracle(RC170_VL_BC_IPI)+' as RC170_VL_BC_IPI,'
                            +fFloatPara_Oracle(RC170_ALIQ_IPI)+' as RC170_ALIQ_IPI,'
                            +fFloatPara_Oracle(RC170_VL_IPI)+' as RC170_VL_IPI ,'
                            +mDel+IntTostr(RC170_CST_PIS)+mDel+' as RC170_CST_PIS,'
                            +fFloatPara_Oracle(RC170_VL_BC_PIS)+' as RC170_VL_BC_PIS,'
                            +fFloatPara_Oracle(RC170_ALIQ_PIS)+' as RC170_ALIQ_PIS,'
                            +fFloatPara_Oracle(RC170_QUANT_BC_PIS)+' as RC170_QUANT_BC_PIS,'
                            +fFloatPara_Oracle(RC170_ALIQ_PIS_REAIS)+' as RC170_ALIQ_PIS_REAIS,'
                            +fFloatPara_Oracle(RC170_VL_PIS)+' as RC170_VL_PIS,'
                            +mDel+RC170_CST_COFINS+mDel+' as RC170_CST_COFINS,'
                            +fFloatPara_Oracle(RC170_VL_BC_COFINS)+' as RC170_VL_BC_COFINS,'
                            +fFloatPara_Oracle(RC170_ALIQ_COFINS)+' as RC170_ALIQ_COFINS,'
                            +fFloatPara_Oracle(RC170_QUANT_BC_COFINS)+' as RC170_QUANT_BC_COFINS,'
                            +fFloatPara_Oracle(RC170_VL_COFINS)+' as RC170_VL_COFINS ,'
                            +fFloatPara_Oracle(RC170_NIVELAGRUP)+' as RC170_NIVELAGRUP,'
                            +mDel+RC170_ORIGEM+mDel+' AS RC170_ORIGEM,'
                            +fFloatPara_Oracle(RC170_ALIQ_COFINS_REAIS)+' as RC170_ALIQ_COFINS_REAIS '

                            +' from DUAL ';
                  lista_c170.Add(mLinha_c170);
                  x_itens:=x_itens+1;

                  mvirg:=' union all ';
                  mQtdPend0200:=mQtdPend0200+1;
                  if mQtdPend0200>2000 then
                     begin
                     fIncluirDadosnoBanco('CADRC170',mLinha_c170_condicoes,mlinha_c170_insert,mlinha_c170_update,lista_c170);


                     lista_0200.clear;
                     lista_c170.clear;
                     mlinha_c170_insert:='';
                     mlinha_c170_update:='';
                     mQtdPend0200:=0;
                     end;
                  Node_det.NextSibling;
              until
                 Node_det<>nil;
              end;
    // registro 0150
           end;


        if mCompleto then
            begin
            if mQtdPendC100=0 then
               begin


                 mvirg_C100:='';
                 mDel:=chr(39);
                 mQtdblocoC100:=mQtdblocoC100+1;

              mLinha_c100_condicoes:=' T1.NSI_CHV_ACESSO = SS.NSI_CHV_ACESSO '
                                     +' and T1.NSI_TIPOEVENTO = SS.NSI_TIPOEVENTO ';


              mLinha_C100_insert:='INSERT ('
                                 +'T1.NSI_CODEMP'
                                 +',T1.NSI_NUMERO'
                                 +',T1.NSI_MODELO'
                                 +',T1.NSI_SERIE'
                                 +',T1.NSI_TOTALNF'
                                 +',T1.NSI_DATANF'
                                 +',T1.NSI_TIPOEVENTO '
                                 +',T1.NSI_CHV_ACESSO '
                                 +',T1.NSI_CNPJ_EMIT '


                                 +') values ('

                                 +'SS.NSI_CODEMP'
                                 +',SS.NSI_NUMERO'
                                 +',SS.NSI_MODELO'
                                 +',SS.NSI_SERIE'
                                 +',SS.NSI_TOTALNF'
                                 +',SS.NSI_DATANF'
                                 +',SS.NSI_TIPOEVENTO '
                                 +',SS.NSI_CHV_ACESSO '
                                 +',SS.NSI_CNPJ_EMIT '

                                 +') ';



              mLinha_C100_update:='UPDATE set  '
                                 +'T1.NSI_CODEMP=SS.NSI_CODEMP'
                                 +',T1.NSI_NUMERO=SS.NSI_NUMERO'
                                 +',T1.NSI_MODELO=SS.NSI_MODELO'
                                 +',T1.NSI_SERIE=SS.NSI_SERIE'
                                 +',T1.NSI_TOTALNF=SS.NSI_TOTALNF'
                                 +',T1.NSI_DATANF=SS.NSI_DATANF'
                                 +' ';


              mNomeArqc100:=mCamTmp+mNomeTempc100+IntToStr(mQtdblocoC100);

              lista_C100.Add(mLinha_C100);
              end;
           mLinha_C100:=mvirg_C100+'select '+inttostr(codemp)+' as NSI_CODEMP '+','
                          +fIntegerPara_Oracle(RC100_NUM_DOC)+' as NSI_NUMERO ,'
                          +iif(trim(RC100_COD_MOD)='','NULL',mDel+RC100_COD_MOD+mDel)+' as NSI_MODELO ,'
                          +iif(trim(RC100_SER)='','NULL',mDel+RC100_SER+mDel)+' as NSI_SERIE,'
                          +fFloatPara_Oracle(RC100_VL_DOC)+' AS NSI_TOTALNF,'
                          +fTxtParaDateTime_Oracle(FormatDatetime(fdathor, RC100_DT_DOC) )+' as NSI_DATANF,'
                          +mDel+'VENDA'+mDel+' as NSI_TIPOEVENTO, '
                          +mDel+RC100_CHV_NFE+mDel+' as NSI_CHV_ACESSO, '
                          +RC100_CNPJ_EMIT+' as NSI_CNPJ_EMIT '

                          +' from dual ';


           lista_C100.Add(mLinha_C100);
           mvirg_C100:=' union all ';
           mQtdPendC100:=mQtdPendC100+1;
           if mQtdPendC100>2000 then
              begin
              lista_C100.Add(';');
              fIncluirDadosnoBanco('CADNS_IMPXML',mlinha_c100_condicoes, mLinha_c100_insert,mLinha_c100_update, lista_c100);
              lista_C100.Clear;
              mQtdPendC100:=0;
              end;
           end;
        end;
except ON E: Exception do
   fAdicionarEventos('ERRO FINAL '+e.Message);
   end;






if mQtdPend0200>0 then
   begin
   fIncluirDadosnoBanco('CADRC170',mLinha_c170_condicoes,mlinha_c170_insert,mlinha_c170_update,lista_c170);
   lista_C170.Clear;

   mQtdPend0200:=0;
   end;

if mQtdPendC100_eve>0 then
   begin
   fIncluirDadosnoBanco('CADNS_IMPXML',mLinha_c100_eve_condicoes, mLinha_c100_eve_insert,mLinha_c100_eve_update,lista_c100_eventos);

   lista_C100_eventos.Clear;
   mQtdPendC100_eve:=0;
   end;





if mQtdPendC100>0 then
   begin
   fIncluirDadosnoBanco('CADNS_IMPXML',mLinha_c100_condicoes, mLinha_c100_insert,mLinha_c100_update, lista_C100);

   lista_C100.Clear;

   mQtdPendC100:=0;
   end;



freeandnil(lista_c170);
freeandnil(lista_0200);
freeandnil(lista_0150);
freeandnil(lista_C100);
freeandnil(lista_c100_eventos);


vXMLDoc:=nil;



//FreeAndNil(vXMLDoc);

end;

//terminio



{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure impxml_thread_0001.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ impxml_thread_0001 }

procedure impxml_thread_0001.Execute;
begin

//    CoInitialize(nil);
    mimportando_xml:=true;
    executando:=true;
    fTestarXML('');
    executando:=false;
    mimportando_xml:=false;

  { Place thread code here }
end;

function impxml_thread_0001.fAdicionarEventos(pEvento: String):boolean;
begin

try
    form_ocorrencias_func.adicionaItemListView(pEvento);
   result:=true;
except
   result:=false;
   end;

end;



end.
