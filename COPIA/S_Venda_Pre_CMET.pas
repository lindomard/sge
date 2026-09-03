unit S_Venda_Pre_CMET;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables,S_Venda_Pre_CMET_Consultas;

type
  TFrm_Venda_Pre_CMET = class(TForm)
    Panel_item: TPanel;
    Panel9: TPanel;
    sbncmet_excluir: TSpeedButton;
    StaticText21: TStaticText;
    lbl_qtditens: TStaticText;
    StaticText30: TStaticText;
    lbl_qtdund: TStaticText;
    bbcmet_sair: TBitBtn;
    Tb_Ped02_CMet: TQuery;
    Tb_Ped02_CMetP2CM_CODEMP: TFloatField;
    Tb_Ped02_CMetP2CM_CODPRO: TFloatField;
    Tb_Ped02_CMetP2CM_LOTSEQ: TFloatField;
    Tb_Ped02_CMetP2CM_CHAVE: TFloatField;
    Tb_Ped02_CMetP2CM_CODIGO: TFloatField;
    Tb_Ped02_CMetP2CM_LARGURA: TFloatField;
    Tb_Ped02_CMetP2CM_ESPESSURA: TFloatField;
    Tb_Ped02_CMetP2CM_CONSTANTE: TFloatField;
    Tb_Ped02_CMetP2CM_QTD_KG: TFloatField;
    Tb_Ped02_CMetP2CM_SEQ: TFloatField;
    Tb_Ped02_CMetCMET_NOME: TStringField;
    Tb_Ped02_CMetP2CM_COMPRIMENTO: TFloatField;
    U_Ped02_CMet: TUpdateSQL;
    Src_Ped02_CMet: TDataSource;
    DBGrid_cmet: TDBGrid;
    Tb_Ped02_CMetP2CM_ITEM: TFloatField;
    Tb_Ped02_CMetP2CM_QTD_KG_UNIT: TFloatField;
    Tb_Ped02_CMetP2CM_QTD_PECAS: TFloatField;
    StaticText1: TStaticText;
    lbl_totreais: TStaticText;
    StaticText2: TStaticText;
    lbl_pcouni_medio: TStaticText;
    Tb_Ped02_CMetP2CM_PITEM_PRECO: TFloatField;
    Tb_Ped02_CMetP2CM_PITEM_QTDHORA: TFloatField;
    Tb_Ped02_CMetP2CM_PITEM_PCOHORA: TFloatField;
    Tb_Ped02_CMetvalor_total: TFloatField;
    procedure DBGrid_cmetColExit(Sender: TObject);
    procedure DBGrid_cmetEnter(Sender: TObject);
    procedure Tb_Ped02_CMetAfterDelete(DataSet: TDataSet);
    procedure Tb_Ped02_CMetAfterEdit(DataSet: TDataSet);
    procedure Tb_Ped02_CMetAfterInsert(DataSet: TDataSet);
    procedure Tb_Ped02_CMetAfterPost(DataSet: TDataSet);
    procedure Tb_Ped02_CMetBeforeDelete(DataSet: TDataSet);
    procedure Tb_Ped02_CMetBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure sbncmet_excluirClick(Sender: TObject);
    procedure bbcmet_sairClick(Sender: TObject);
    procedure DBGrid_cmetExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_cmetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mped02_itemCmetexcluido: integer;
    mCMet_Oper: Integer; //0 -inclusao 1-alteracao
    mlocalizando_pedido:boolean;

    function fRenomearCMetItem(pItemRemovido: Integer):Boolean;
    function fTotalizaCMet(pTipo: Integer): Boolean;

  public
    { Public declarations }
    pCodPro: Real;
    pItem: Real;
    pConstante: Real;
    pEspessura: Real;
    pChave: Integer;
    pChave_Ano: Integer;
    pCodemp: Integer;
    pCodemp_filial: Integer;

    function fLerCMet(pTipo: Integer): Boolean;

  end;

var
  Frm_Venda_Pre_CMET: TFrm_Venda_Pre_CMET;

implementation

uses S_DM6, Func, func_excecoes, S_DM1;

{$R *.dfm}

procedure TFrm_Venda_Pre_CMET.DBGrid_cmetColExit(Sender: TObject);
begin
if Tb_Ped02_CMet.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_cmet.SelectedField=Tb_Ped02_CMetP2CM_CODIGO then
      begin
      if Tb_Ped02_CMetP2CM_CODIGO.IsNull then
         begin
         DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_CODIGO;
         DBGrid_cmet.SetFocus;
         abort;
         end
      else
         begin
         DM6.tb_cmet.close;
         DM6.tb_cmet.SQL.Clear;
         DM6.tb_cmet.SQL.Add('Select * from CADPRO_CMET '
                            +' where CMET_CODEMP=:CODEMP'
                            +' and CMET_CODPRO=:CODPRO '
                            +' and CMET_CODIGO=:CODIGO ');
         DM6.tb_cmet.ParamByName('CODEMP').AsInteger:=codemp;
         DM6.tb_cmet.ParamByName('CODPRO').Asfloat   :=pCodPro;
         DM6.tb_cmet.ParamByName('CODIGO').AsInteger:=Tb_Ped02_CMetP2CM_CODIGO.AsInteger;
         try
            DM6.tb_cmet.Open;
         except
            ex_erroSql_Novo(DM6.tb_cmet,1616,'func','CADPRO_CMET');
            end;
         if DM6.tb_cmet.IsEmpty then
            begin
            MessageDlg('Código '+Tb_Ped02_CMetP2CM_CODIGO.AsString+' não é Válido!',mtWarning,[mbOk],0);
            Tb_Ped02_CMetP2CM_CODIGO.AsFloat:=0;
            DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_CODIGO;
            DBGrid_cmet.SetFocus;
            abort;
            end
         else
            begin
            Tb_Ped02_CMetCMET_NOME.Value     :=DM6.tb_cmetCMET_NOME.AsString;
            Tb_Ped02_CMetP2CM_PITEM_PRECO.Value :=DM6.tb_cmetCMET_PRECO.AsFloat;
            Tb_Ped02_CMetP2CM_CONSTANTE.Value:=pConstante;
            Tb_Ped02_CMetP2CM_ESPESSURA.Value:=pEspessura;
            end;
         end;
      end;
   Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value:=0;
   if (Tb_Ped02_CMetP2CM_LARGURA.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat<>0) then
      Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value:=Arredonda( ((Tb_Ped02_CMetP2CM_LARGURA.AsFloat/1000)
                                     *(Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat/1000)
                                     *Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat
                                     *Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat) ,3);

   if (Tb_Ped02_CMetP2CM_QTD_KG_UNIT.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_QTD_PECAS.AsFloat<>0) then
      Tb_Ped02_CMetP2CM_QTD_KG.Value:=Arredonda( (Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value
                                     *Tb_Ped02_CMetP2CM_QTD_PECAS.Value),3);


   end;


end;

procedure TFrm_Venda_Pre_CMET.DBGrid_cmetEnter(Sender: TObject);
begin
DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_CODIGO;

end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetAfterDelete(DataSet: TDataSet);
begin
if Tb_Ped02_CMetP2CM_SEQ.AsInteger>mped02_itemCmetexcluido then
   fRenomearCmetItem(mped02_itemCMetexcluido)
else
  lbl_qtditens.Caption:=Tb_Ped02_CMetP2CM_SEQ.AsString;
fTotalizaCMet(0);

end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetAfterEdit(DataSet: TDataSet);
begin
mCMet_Oper:=1;

end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetAfterInsert(DataSet: TDataSet);
var
Query_Cons:TQuery;
begin
Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select max(P2CM_SEQ) from CADP02_CMET '
                  +' where P2CM_CODEMP=:CODEMP '
                  +' and   P2CM_LOTSEQ=:LOTSEQ '
                  +' and   P2CM_CHAVE=:CHAVE '
                  +' and   P2CM_CODPRO=:CODPRO '
                  +' and   P2CM_ITEM=:ITEM ');

Query_Cons.ParamByName('LOTSEQ').AsInteger:=pChave_Ano;
Query_Cons.ParamByName('CHAVE').AsInteger :=pChave;
Query_Cons.ParamByName('CODEMP').AsInteger:=pCodemp;
Query_Cons.ParamByName('CODPRO').AsFloat  :=pCodPro;
Query_Cons.ParamByName('ITEM').AsFloat  :=pItem;
try
   Query_Cons.Open;
   Tb_Ped02_CMetP2CM_SEQ.AsInteger:=Query_Cons.fields[0].AsInteger+1;
except
   Tb_Ped02_CMetP2CM_SEQ.AsInteger:=1;
   end;
FreeAndNil(Query_Cons);
Tb_Ped02_CMetP2CM_CODPRO.Value:=pCodPro;
Tb_Ped02_CMetP2CM_CODEMP.Value:=pCodemp;
Tb_Ped02_CMetP2CM_LOTSEQ.Value:=pChave_Ano;
Tb_Ped02_CMetP2CM_CHAVE.Value :=pChave;
Tb_Ped02_CMetP2CM_ITEM.Value  :=pItem;
mCMet_Oper:=0;


end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetAfterPost(DataSet: TDataSet);
var
Query_exe:TQuery;
begin
if mlocalizando_pedido then
   exit;
Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
Query_Exe.Close;
Query_Exe.SQL.Clear;

if mCMet_Oper=0 then  //0 -inclusao 1-alteracao
   begin
   Query_Exe.SQL.Add('Insert into CADP02_CMET ('
                    +' P2CM_CODEMP '
                    +',P2CM_ITEM '
                    +',P2CM_CODPRO '
                    +',P2CM_LOTSEQ '
                    +',P2CM_CHAVE '
                    +',P2CM_CODIGO '
                    +',P2CM_LARGURA '
                    +',P2CM_ESPESSURA '
                    +',P2CM_CONSTANTE '
                    +',P2CM_QTD_KG '
                    +',P2CM_QTD_KG_UNIT '
                    +',P2CM_QTD_PECAS '
                    +',P2CM_SEQ  '
                    +',P2CM_COMPRIMENTO '
                    +',P2CM_PITEM_PRECO '
                    +',P2CM_PITEM_QTDHORA '
                    +',P2CM_PITEM_PCOHORA '

                    +') values ('
                    +' :P2CM_CODEMP '
                    +',:P2CM_ITEM '
                    +',:P2CM_CODPRO '
                    +',:P2CM_LOTSEQ '
                    +',:P2CM_CHAVE '
                    +',:P2CM_CODIGO '
                    +',:P2CM_LARGURA '
                    +',:P2CM_ESPESSURA '
                    +',:P2CM_CONSTANTE '
                    +',:P2CM_QTD_KG '
                    +',:P2CM_QTD_KG_UNIT '
                    +',:P2CM_QTD_PECAS '
                    +',:P2CM_SEQ  '
                    +',:P2CM_COMPRIMENTO '
                    +',:P2CM_PITEM_PRECO '
                    +',:P2CM_PITEM_QTDHORA '
                    +',:P2CM_PITEM_PCOHORA '


                    +')');
   end
else
   begin
   Query_Exe.SQL.Add(' Update CADP02_CMET set '
                    +' P2CM_CODPRO=:P2CM_CODPRO '
                    +',P2CM_CODIGO=:P2CM_CODIGO '
                    +',P2CM_LARGURA=:P2CM_LARGURA '
                    +',P2CM_ESPESSURA=:P2CM_ESPESSURA '
                    +',P2CM_CONSTANTE=:P2CM_CONSTANTE '
                    +',P2CM_QTD_KG=:P2CM_QTD_KG '
                    +',P2CM_QTD_KG_UNIT=:P2CM_QTD_KG_UNIT '
                    +',P2CM_QTD_PECAS=:P2CM_QTD_PECAS '
                    +',P2CM_COMPRIMENTO=:P2CM_COMPRIMENTO '
                    +',P2CM_PITEM_PRECO=:P2CM_PITEM_PRECO '
                    +',P2CM_PITEM_QTDHORA=:P2CM_PITEM_QTDHORA '
                    +',P2CM_PITEM_PCOHORA=:P2CM_PITEM_PCOHORA '
                    +' where P2CM_SEQ=:P2CM_SEQ  '
                    +' and P2CM_CODEMP=:P2CM_CODEMP '
                    +' and P2CM_LOTSEQ=:P2CM_LOTSEQ '
                    +' and P2CM_CHAVE=:P2CM_CHAVE '
                    +' and P2CM_ITEM=:P2CM_ITEM '        );
   end;
query_exe.parambyname('P2CM_CODEMP').Value:=Tb_Ped02_CMetP2CM_CODEMP.AsInteger;
query_exe.parambyname('P2CM_CODPRO').Value:=Tb_Ped02_CMetP2CM_CODPRO.AsFloat;
query_exe.parambyname('P2CM_ITEM').Value:=Tb_Ped02_CMetP2CM_Item.AsFloat;
query_exe.parambyname('P2CM_LOTSEQ').Value:=Tb_Ped02_CMetP2CM_LOTSEQ.AsInteger;
query_exe.parambyname('P2CM_CHAVE').Value:=Tb_Ped02_CMetP2CM_CHAVE.AsFloat;
query_exe.parambyname('P2CM_CODIGO').Value:=Tb_Ped02_CMetP2CM_CODIGO.AsInteger;
query_exe.parambyname('P2CM_LARGURA').Value:=Tb_Ped02_CMetP2CM_LARGURA.AsFloat;
query_exe.parambyname('P2CM_ESPESSURA').Value:=Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat;
query_exe.parambyname('P2CM_CONSTANTE').Value:=Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat;
query_exe.parambyname('P2CM_QTD_KG').Value:=Tb_Ped02_CMetP2CM_QTD_KG.AsFloat;
query_exe.parambyname('P2CM_QTD_KG_UNIT').Value:=Tb_Ped02_CMetP2CM_QTD_KG_UNIT.AsFloat;
query_exe.parambyname('P2CM_QTD_PECAS').Value:=Tb_Ped02_CMetP2CM_QTD_PECAS.AsFloat;
query_exe.parambyname('P2CM_SEQ').Value:=Tb_Ped02_CMetP2CM_SEQ.AsInteger;
query_exe.parambyname('P2CM_COMPRIMENTO').Value:=Tb_Ped02_CMetP2CM_COMPRIMENTO.AsInteger;
query_exe.parambyname('P2CM_PITEM_PRECO').Value:=Tb_Ped02_CMetP2CM_PITEM_PRECO.AsFloat;
query_exe.parambyname('P2CM_PITEM_QTDHORA').Value:=Tb_Ped02_CMetP2CM_PITEM_QTDHORA.AsFloat;
query_exe.parambyname('P2CM_PITEM_PCOHORA').Value:=Tb_Ped02_CMetP2CM_PITEM_PCOHORA.AsFloat;

try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_exe,16725,'func','CADP02_CMET');
   end;

fTotalizaCMet(0);


end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetBeforeDelete(DataSet: TDataSet);
var
Query_Exe: TQuery;
begin

mped02_itemCmetexcluido:=Tb_Ped02_CMetP2CM_SEQ.AsInteger;



Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Delete  '
                     +' from CADP02_CMET '
                     +'  where P2CM_LOTSEQ=:LOTSEQ '
                     +'  and P2CM_CHAVE=:CHAVE '
                     +'  and P2CM_CODPRO=:CODPRO '
                     +'  and P2CM_SEQ=:SEQ '
                     +'  and P2CM_CODEMP=:CODEMP '
                     +'  and P2CM_ITEM=:ITEM ');
Query_Exe.ParamByName('LOTSEQ').AsInteger:=pChave_Ano;
Query_Exe.ParamByName('CHAVE').AsInteger :=pChave;
Query_Exe.ParamByName('CODEMP').AsInteger:=PCODEMP;
Query_Exe.ParamByName('CODPRO').AsFloat  :=Tb_Ped02_CMetP2CM_CODPRO.AsFloat;
Query_Exe.ParamByName('SEQ').AsInteger  :=Tb_Ped02_CMetP2CM_SEQ.AsInteger;
Query_Exe.ParamByName('ITEM').AsInteger  :=Tb_Ped02_CMetP2CM_ITEM.AsInteger;
try
   Query_Exe.ExecSQL;
   fdm1StartCommit
except
   Query_Exe.sql.savetofile('c:\sql001.txt');
   end;
FreeandNIl(Query_exe);


end;

procedure TFrm_Venda_Pre_CMET.Tb_Ped02_CMetBeforePost(DataSet: TDataSet);
var
mValorT: real;
begin
if Tb_Ped02_CMetP2CM_CODIGO.IsNull then
   begin
   DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_CODIGO;
   abort;
   exit;
   end;



DM6.tb_cmet.close;
DM6.tb_cmet.SQL.Clear;
DM6.tb_cmet.SQL.Add('Select * from CADPRO_CMET '
                   +' where CMET_CODEMP=:CODEMP'
                   +' and CMET_CODPRO=:CODPRO '
                   +' and CMET_CODIGO=:CODIGO ');
DM6.tb_cmet.ParamByName('CODEMP').AsInteger:=codemp;
DM6.tb_cmet.ParamByName('CODPRO').AsFloat  :=pCodPro;
DM6.tb_cmet.ParamByName('CODIGO').AsInteger:=Tb_Ped02_CMetP2CM_CODIGO.AsInteger;
try
   DM6.tb_cmet.Open;
except
   ex_erroSql_Novo(DM6.tb_cmet,1616,'func','CADPRO_CMET');
   abort;
   exit;
   end;
if DM6.tb_cmet.IsEmpty then
   begin
   MessageDlg('Código '+Tb_Ped02_CMetP2CM_CODIGO.AsString+' não é Válido!',mtWarning,[mbOk],0);
   Tb_Ped02_CMetP2CM_CODIGO.AsFloat:=0;
   DBGrid_cmet.SetFocus;
   abort;
   exit;
   end
else
   begin
   Tb_Ped02_CMetCMET_NOME.Value     :=DM6.tb_cmetCMET_NOME.AsString;
//   Tb_Ped02_CMetP2CM_PITEM_PRECO.Value    :=DM6.tb_cmetCMET_PRECO.AsFloat;
//   Tb_Ped02_CMetP2CM_CONSTANTE.Value:=pConstante;
//   Tb_Ped02_CMetP2CM_ESPESSURA.Value:=pEspessura;
   end;

if (Tb_Ped02_CMetP2CM_LARGURA.AsFloat=0) then
   begin
   MessageDlg('Largura campo Obrigatorio!',mtWarning,[mbOk],0);
   DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_LARGURA;
   DBGrid_cmet.SetFocus;
   abort;
   exit;
   end;
if (Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat=0) then
   begin
   MessageDlg('Comprimento campo Obrigatorio!',mtWarning,[mbOk],0);
   DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_COMPRIMENTO;
   DBGrid_cmet.SetFocus;
   abort;
   exit;
   end;

if (Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat=0) then
   begin
   MessageDlg('Espessura campo Obrigatorio!',mtWarning,[mbOk],0);
   DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_ESPESSURA;
   DBGrid_cmet.SetFocus;
   abort;
   exit;
   end;
if (Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat=0) then
   begin
   MessageDlg('constante campo Obrigatorio!',mtWarning,[mbOk],0);
   DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_CONSTANTE;
   DBGrid_cmet.SetFocus;
   abort;
   exit;
   end;

if (Tb_Ped02_CMetP2CM_QTD_PECAS.AsFloat=0) then
   Tb_Ped02_CMetP2CM_QTD_PECAS.AsFloat:=1;

Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value:=0;
if (Tb_Ped02_CMetP2CM_LARGURA.AsFloat<>0) and
   (Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat<>0) and
   (Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat<>0) and
   (Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat<>0) then
   Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value:=Arredonda( (Tb_Ped02_CMetP2CM_LARGURA.AsFloat/1000
                                  *Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat/1000
                                  *Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat
                                  *Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat) ,3);

if (Tb_Ped02_CMetP2CM_QTD_KG_UNIT.AsFloat<>0) and
   (Tb_Ped02_CMetP2CM_QTD_PECAS.AsFloat<>0) then
   Tb_Ped02_CMetP2CM_QTD_KG.Value:=Arredonda( (Tb_Ped02_CMetP2CM_QTD_KG_UNIT.Value
                                  *Tb_Ped02_CMetP2CM_QTD_PECAS.Value),3);

lbl_qtditens.Caption:=Tb_Ped02_CMetP2CM_SEQ.AsString;


Tb_Ped02_CMetvalor_total.Value:=0;
if (Tb_Ped02_CMetP2CM_QTD_KG.AsFloat<>0) and (Tb_Ped02_CMetP2CM_PITEM_PRECO.AsFloat<>0) then
   begin
   Tb_Ped02_CMetvalor_total.Value:=Tb_Ped02_CMetP2CM_QTD_KG.AsFloat*Tb_Ped02_CMetP2CM_PITEM_PRECO.AsFloat;
   if (Tb_Ped02_CMetP2CM_PITEM_PCOHORA.asfloat>0) and (Tb_Ped02_CMetP2CM_PITEM_QTDHORA.asfloat>0) then
      begin
      mValorT:= arredonda( ( (Tb_Ped02_CMetP2CM_PITEM_PCOHORA.asfloat/60)*(Tb_Ped02_CMetP2CM_PITEM_QTDHORA.asfloat) ) ,2);
      Tb_Ped02_CMetvalor_total.Value:=(Tb_Ped02_CMetP2CM_QTD_KG.AsFloat*Tb_Ped02_CMetP2CM_PITEM_PRECO.AsFloat) + mValorT;
      end;
   end;



if (Tb_Ped02_CMetP2CM_PITEM_PCOHORA.asfloat>0) and (Tb_Ped02_CMetP2CM_PITEM_QTDHORA.asfloat>0)
   and (Tb_Ped02_CMetvalor_total.Value>0) and (Tb_Ped02_CMetP2CM_QTD_KG.AsFloat>0) then
   begin
   Tb_Ped02_CMetP2CM_PITEM_PRECO.Value:=Arredonda( (Tb_Ped02_CMetvalor_total.Value / Tb_Ped02_CMetP2CM_QTD_KG.AsFloat) , DM1.Tb_PargerPCASASPU.AsInteger);
   end;



end;

procedure TFrm_Venda_Pre_CMET.FormCreate(Sender: TObject);
begin
{
Tb_Ped02_CMetP2CM_LARGURA.DisplayFormat    :='#,##0.000';
Tb_Ped02_CMetP2CM_COMPRIMENTO.DisplayFormat:='#,##0.000';
Tb_Ped02_CMetP2CM_ESPESSURA.DisplayFormat  :='#,##0.00';
}
Tb_Ped02_CMetP2CM_LARGURA.DisplayLabel:='Largura(MM)';
Tb_Ped02_CMetP2CM_COMPRIMENTO.DisplayLabel:='Comprimento(MM)';
Tb_Ped02_CMetP2CM_ESPESSURA.DisplayLabel:='Espessura(MM)';


Tb_Ped02_CMetP2CM_QTD_KG.DisplayFormat:='#,##0.000';
Tb_Ped02_CMetP2CM_QTD_KG.DisplayLabel:='Kilos Totais';

Tb_Ped02_CMetP2CM_QTD_KG_UNIT.DisplayFormat:='#,##0.000';
Tb_Ped02_CMetP2CM_QTD_KG_UNIT.DisplayLabel:='Kilos p/Peça';

Tb_Ped02_CMetP2CM_QTD_PECAS.DisplayFormat:='#,##0';
Tb_Ped02_CMetP2CM_QTD_PECAS.DisplayLabel:='Qtd Pecas';

Tb_Ped02_CMetCMET_NOME.DisplayLabel:='Descrição';
Tb_Ped02_CMetP2CM_PITEM_PRECO.DisplayLabel:='Preço Unitário';
Tb_Ped02_CMetP2CM_PITEM_PRECO.DisplayFormat:=mcasaspu;
Tb_Ped02_CMetvalor_total.DisplayLabel:='Valor Total';
Tb_Ped02_CMetvalor_total.DisplayFormat:='#,##0.00';

Tb_Ped02_CMetP2CM_CODIGO.DisplayLabel:='Código';

Tb_Ped02_CMetP2CM_CONSTANTE.DisplayLabel:='Constante';

Tb_Ped02_CMetCMET_NOME.DisplayLabel:='Descrição';


Tb_Ped02_CMetP2CM_SEQ.DisplayLabel:='Item';

end;

function TFrm_Venda_Pre_CMET.fRenomearCMetItem(pItemRemovido: Integer):Boolean;
var
Query_Item: TQuery;
mpos_reg: TBookmark;
begin
result:=true;
mlocalizando_pedido:=true;
Query_Item:=tQuery.Create(nil);

Query_Item.DatabaseName:='SG_ASSOC';
Query_Item.Close;
Query_Item.SQL.Clear;
Query_Item.SQL.Add('Update CADP02_CMET set P2CM_SEQ=P2CM_SEQ-1 '
                  +' where P2CM_CHAVE=:CHAVE '
                  +' and P2CM_LOTSEQ=:LOTSEQ '
                  +' and P2CM_CODPRO=:CODPRO '
                  +' and P2CM_ITEM=:ITEM '
                  +' and (P2CM_CODEMP=:CODEMP or P2CM_CODEMP=:CODEMP_FILIAL)'
                  +' and P2CM_SEQ>=:SEQ ');
Query_Item.ParamByName('CHAVE').AsInteger        :=pChave;
Query_Item.ParamByName('LOTSEQ').AsInteger       :=pChave_Ano;
Query_Item.ParamByName('CODPRO').AsFloat         :=pCodpro;
Query_Item.ParamByName('ITEM').AsFloat           :=pItem;
Query_Item.ParamByName('CODEMP').AsInteger       :=pCodemp;
Query_Item.ParamByName('CODEMP_FILIAL').AsInteger:=pCodemp_filial;
Query_Item.ParamByName('SEQ').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;
FreeAndNil(Query_item);
mpos_reg:=Tb_Ped02_CMet.GetBookmark;
While not Tb_Ped02_CMet.Eof do
   begin
   Tb_Ped02_CMet.Edit;
   Tb_Ped02_CMetP2CM_SEQ.Value:=Tb_Ped02_CMetP2CM_SEQ.Value-1;
   Tb_Ped02_CMet.Post;
   Tb_Ped02_CMet.Next;
   end;
if Tb_Ped02_CMet.IsEmpty then
   lbl_qtditens.Caption:='0'
else
   begin
   Tb_Ped02_CMet.Prior;
   lbl_qtditens.Caption:=Tb_Ped02_CMetP2CM_SEQ.AsString;
   end;
mlocalizando_pedido:=false;

end;
function TFrm_Venda_Pre_CMET.fTotalizaCMet(pTipo: Integer): Boolean;
var
Query_Exe: TQuery;
begin

Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Select max(P2CM_SEQ) AS ITEM,sum(P2CM_QTD_KG) as qtd_kg '
                     +' ,sum(P2CM_QTD_KG*P2CM_PITEM_PRECO) as TOTBRU '
                     +' from CADP02_CMET '
                     +'  where P2CM_LOTSEQ=:LOTSEQ '
                     +'  and P2CM_CHAVE=:CHAVE '
                     +'  and P2CM_CODPRO=:CODPRO '
                     +'  and P2CM_ITEM=:ITEM '
                     +'  and P2CM_CODEMP=:CODEMP ');
Query_Exe.ParamByName('LOTSEQ').AsInteger:=pChave_Ano;
Query_Exe.ParamByName('CHAVE').AsInteger :=pChave;
Query_Exe.ParamByName('ITEM').Asfloat :=pItem;
Query_Exe.ParamByName('CODEMP').AsInteger:=pcodemp;
Query_Exe.ParamByName('CODPRO').AsFloat  :=pCodpro;
try
   Query_Exe.Open;
   lbl_qtditens.Caption:=query_exe.fieldbyname('ITEM').AsString;
   lbl_qtdund.Caption:=FormatFloat('#,##0.000', Query_Exe.fieldbyName('QTD_KG').asfloat);
   lbl_totreais.Caption:=FormatFloat('#,##0.000', Query_Exe.fieldbyName('TOTBRU').asfloat);
   if (Query_Exe.fieldbyName('QTD_KG').asfloat<>0) and (Query_Exe.fieldbyName('TOTBRU').asfloat<>0) then
      lbl_pcouni_medio.Caption:=FormatFloat('#,##0.000', Query_Exe.fieldbyName('TOTBRU').asfloat / Query_Exe.fieldbyName('QTD_KG').asfloat  );


except
   Query_Exe.sql.savetofile('c:\sql001.txt');
   end;
FreeandNIl(Query_exe);
result:=true;

end;


function tFrm_Venda_Pre_CMET.fLerCMet(pTipo: Integer): Boolean;
begin

Tb_Ped02_CMet.Close;
Tb_Ped02_CMet.SQL.Clear;
Tb_Ped02_CMet.SQL.Add('Select P2CM_CODEMP, '
                     +'  P2CM_ITEM, '
                     +'  P2CM_CODPRO, '
                     +'  P2CM_LOTSEQ, '
                     +'  P2CM_CHAVE, '
                     +'  P2CM_CODIGO, '
                     +'  P2CM_LARGURA, '
                     +'  P2CM_ESPESSURA, '
                     +'  P2CM_CONSTANTE, '
                     +'  P2CM_COMPRIMENTO, '
                     +'  P2CM_QTD_KG, '
                     +'  P2CM_QTD_PECAS, '
                     +'  P2CM_QTD_KG_UNIT, '
                     +'  P2CM_SEQ,CMET_NOME '
                     +', P2CM_PITEM_QTDHORA '
                     +' ,P2CM_PITEM_PCOHORA '
                     +' ,P2CM_PITEM_PRECO '
                     +' ,round( (P2CM_QTD_KG*P2CM_PITEM_PRECO '

//                     + '
//                     +' case when P2CM_PITEM_PCOHORA>0 and P2CM_PITEM_QTDHORA>0 then '
//                     +'  (P2CM_PITEM_PCOHORA/60)*P2CM_PITEM_QTDHORA else 0 end'

                      +')  ,2) '
                     +'  as valor_total '

                     +'  from CADP02_CMET,CADPRO_CMET '
                     +'  where CMET_CODPRO=P2CM_CODPRO '
                     +'  and   CMET_CODEMP=P2CM_CODEMP '
                     +'  and CMET_CODIGO=P2CM_CODIGO '
                     +'  and P2CM_LOTSEQ=:LOTSEQ '
                     +'  and P2CM_CHAVE=:CHAVE '
                     +'  and P2CM_CODPRO=:CODPRO '
                     +'  and P2CM_CODEMP=:CODEMP '
                     +'  and P2CM_ITEM=:ITEM ');
Tb_Ped02_CMet.ParamByName('LOTSEQ').AsInteger:=pChave_ano;
Tb_Ped02_CMet.ParamByName('CHAVE').AsInteger :=pChave;
Tb_Ped02_CMet.ParamByName('CODEMP').AsInteger:=pCodemp;
Tb_Ped02_CMet.ParamByName('CODPRO').AsFloat  :=pCodPro;
Tb_Ped02_CMet.ParamByName('ITEM').AsFloat    :=pItem;
try
   Tb_Ped02_CMet.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_Ped02_CMet,658,'func Erro:'+e.Message ,'CADEST');
   end;
// ex_erroSql_Novo(Tb_Ped02_CMet,658,'func Erro:' ,'CADEST');

fTotalizaCMet(0);

result:=true;
end;

procedure TFrm_Venda_Pre_CMET.sbncmet_excluirClick(Sender: TObject);
begin
if (not Tb_Ped02_CMet.Active) or (Tb_Ped02_CMetP2CM_CODIGO.IsNull)  then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+Tb_Ped02_CMetCMET_NOME.AsString+'-'+Tb_Ped02_CMetP2CM_CODIGO.AsString+' Item: '+Tb_Ped02_CMetP2CM_SEQ.AsString),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_Ped02_CMet.Delete;

end;

procedure TFrm_Venda_Pre_CMET.bbcmet_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre_CMET.DBGrid_cmetExit(Sender: TObject);
begin
if Tb_Ped02_CMET.State in [dsEdit,dsInsert] then
   begin
   if (Tb_Ped02_CMETP2CM_CODIGO.Asfloat<>0) and
      (Tb_Ped02_CMetP2CM_LARGURA.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_COMPRIMENTO.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_ESPESSURA.AsFloat<>0) and
      (Tb_Ped02_CMetP2CM_CONSTANTE.AsFloat<>0) then
      Tb_Ped02_CMET.Post
   else
      Tb_Ped02_CMET.Cancel;   
   end;
end;

procedure TFrm_Venda_Pre_CMET.FormShow(Sender: TObject);
begin
DBGrid_cmet.SetFocus;
end;


procedure TFrm_Venda_Pre_CMET.DBGrid_cmetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=113) and (DBGrid_cmet.SelectedField=Tb_Ped02_CMetP2CM_CODIGO) then
   begin
   if not (Tb_Ped02_CMet.State in [dsEdit,dsInsert]) then
      begin
      if Tb_Ped02_CMetP2CM_CODIGO.IsNull then
         Tb_Ped02_CMet.Append
      else
         Tb_Ped02_CMet.Edit;
      end;
   Application.CreateForm(tFrm_Venda_Pre_CMET_Consultas,Frm_Venda_Pre_CMET_Consultas);

   frm_Venda_Pre_CMET_Consultas.Panel_item.Caption:=Panel_item.Caption;

   frm_Venda_Pre_CMET_Consultas.tb_cmet.close;
   frm_Venda_Pre_CMET_Consultas.tb_cmet.SQL.Clear;
   frm_Venda_Pre_CMET_Consultas.tb_cmet.SQL.Add('Select * from CADPRO_CMET '
                     +' where CMET_CODEMP=:CODEMP'
                     +' and CMET_CODPRO=:CODPRO '
                     +' order by CMET_CODIGO ');
   frm_Venda_Pre_CMET_Consultas.tb_cmet.ParamByName('CODEMP').AsInteger:=pCodemp;
   frm_Venda_Pre_CMET_Consultas.tb_cmet.ParamByName('CODPRO').AsFloat  :=pCodPro;
   try
      frm_Venda_Pre_CMET_Consultas.tb_cmet.Open;
   except
      ex_erroSql_Novo(frm_Venda_Pre_CMET_Consultas.tb_cmet,1616,'func','CADPRO_CMET');
      end;
   frm_Venda_Pre_CMET_Consultas.ShowModal;
   if frm_Venda_Pre_CMET_Consultas.mcodcmet<>0 then
      begin
      Tb_Ped02_CMetP2CM_CODIGO.AsInteger:=frm_Venda_Pre_CMET_Consultas.mcodcmet;
      end;
   if (Tb_Ped02_CMetP2CM_CODIGO.AsString)<>'' then
      begin
      DBGrid_cmet.SelectedField:=Tb_Ped02_CMetP2CM_LARGURA;
      end;
   end;

end;

end.
