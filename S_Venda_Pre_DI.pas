unit S_Venda_Pre_DI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBTables, DB, Buttons, Grids, DBGrids, Mask,
  DBCtrls, RxDBComb;

type
  TFrm_Venda_Pre_DI = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_chave: TEdit;
    Label2: TLabel;
    edt_datped: TEdit;
    Label3: TLabel;
    edt_razao: TEdit;
    gb_documentos: TGroupBox;
    tb_ped_di: TQuery;
    tb_ped_diPDI_CODEMP: TFloatField;
    tb_ped_diPDI_CHAVE: TFloatField;
    tb_ped_diPDI_CHAVE_ANO: TFloatField;
    tb_ped_diPDI_ITEM: TFloatField;
    tb_ped_diPDI_NDI: TStringField;
    tb_ped_diPDI_DDI: TDateTimeField;
    tb_ped_diPDI_XLOCDESEMB: TStringField;
    tb_ped_diPDI_UFDESEMB: TStringField;
    tb_ped_diPDI_CEXPORTADOR: TStringField;
    u_ped_di: TUpdateSQL;
    src_ped_di: TDataSource;
    DBGrid_ped_di: TDBGrid;
    tb_ped_diPDI_DDESEMB: TDateTimeField;
    Panel3: TPanel;
    SAIR: TBitBtn;
    bbExcluir: TBitBtn;
    gb_ped_di_adic: TGroupBox;
    DBGrid_ped_di_adic: TDBGrid;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tb_ped_di_adic: TQuery;
    u_ped_di_adic: TUpdateSQL;
    src_ped_di_adic: TDataSource;
    tb_ped_di_adicPDIAD_CODEMP: TFloatField;
    tb_ped_di_adicPDIAD_CHAVE: TFloatField;
    tb_ped_di_adicPDIAD_CHAVE_ANO: TFloatField;
    tb_ped_di_adicPDIAD_CODPRO: TFloatField;
    tb_ped_di_adicPDIAD_ITEM: TFloatField;
    tb_ped_di_adicPDIAD_NADICAO: TFloatField;
    tb_ped_di_adicPDIAD_NSEQADIC: TFloatField;
    tb_ped_di_adicPDIAD_CFABRICANTE: TStringField;
    tb_ped_di_adicPDIAD_VDESCDI: TStringField;
    tb_ped_diPDI_CODPRO: TFloatField;
    lbl_produto: TLabel;
    GroupBox1: TGroupBox;
    gb_imp_importacao: TGroupBox;
    StaticText35: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    edt_P2IMP_IMP_VBC: TEdit;
    edt_P2IMP_IMP_VDESPADU: TEdit;
    edt_P2IMP_IMP_VII: TEdit;
    edt_P2IMP_IMP_VIOF: TEdit;
    tb_ped_diPDI_TPVIATRANSP: TFloatField;
    tb_ped_diPDI_VAFRMM: TFloatField;
    tb_ped_diPDI_TPINTERMEDIARIO: TFloatField;
    tb_ped_diPDI_CNPJ: TStringField;
    tb_ped_diPDI_UFTERCEIRO: TStringField;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    dbcb_pViaTransp: TRxDBComboBox;
    DBE_PDI_VAFRMM: TDBEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    RxDBC_PDI_TPINTERMEDIARIO: TRxDBComboBox;
    DBE_PDI_CNPJ: TDBEdit;
    DBE_PDI_UFTERCEIRO: TDBEdit;
    procedure SAIRClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tb_ped_diBeforePost(DataSet: TDataSet);
    procedure tb_ped_diBeforeDelete(DataSet: TDataSet);
    procedure tb_ped_diAfterDelete(DataSet: TDataSet);
    procedure tb_ped_diAfterPost(DataSet: TDataSet);
    procedure tb_ped_diAfterEdit(DataSet: TDataSet);
    procedure tb_ped_diAfterInsert(DataSet: TDataSet);
    procedure tb_ped_diAfterCancel(DataSet: TDataSet);
    procedure tb_ped_di_adicAfterDelete(DataSet: TDataSet);
    procedure tb_ped_di_adicAfterCancel(DataSet: TDataSet);
    procedure tb_ped_di_adicAfterEdit(DataSet: TDataSet);
    procedure tb_ped_di_adicAfterInsert(DataSet: TDataSet);
    procedure tb_ped_di_adicAfterPost(DataSet: TDataSet);
    procedure tb_ped_di_adicBeforeDelete(DataSet: TDataSet);
    procedure tb_ped_di_adicBeforePost(DataSet: TDataSet);
    procedure src_ped_diDataChange(Sender: TObject; Field: TField);
    procedure dbcb_pViaTranspClick(Sender: TObject);
    procedure DBGrid_ped_diExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_ped_di_adicExit(Sender: TObject);
  private
    { Private declarations }

    mlocalizando_pedido: boolean;

    mpdi_item: Integer;


    mpdi_Item_Ant: Integer;

    mpdi_item_adic: Integer;

    mpdi_Item_adic_Ant: Integer;

    mped02_item_adic_excluido: Integer;

    function fRenomearItem(pItemRemovido: Integer):Boolean;
    function fRenomearItem_adicao(pItemRemovido: Integer):Boolean;


    function fbuscaritempdi: boolean;

  public
    { Public declarations }
    morigem_codemp: integer;
    morigem_chave: integer;
    morigem_chave_ano: integer;
    morigem_codpro: real;
    mped02_itemexcluido: integer;
    function fLerdadosImportacao: boolean;

  end;

var
  Frm_Venda_Pre_DI: TFrm_Venda_Pre_DI;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_Venda_Pre_DI.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre_DI.bbExcluirClick(Sender: TObject);
begin

if tb_ped_diPDI_CHAVE.IsNull then
   exit;
tb_ped_di.Delete;

end;



function TFrm_Venda_Pre_DI.fRenomearItem(pItemRemovido: Integer):Boolean;
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
Query_Item.SQL.Add('Update CADPED_DI set PDI_ITEM=PDI_ITEM-1 '
                  +' where PDI_CHAVE=:CHAVE '
                  +' and PDI_CHAVE_ANO=:CHAVE_ANO '
                  +' and PDI_CODEMP=:CODEMP'
                  +' and PDI_CODPRO=:CODPRO');
Query_Item.ParamByName('CHAVE').AsInteger        :=morigem_chave;
Query_Item.ParamByName('CHAVE_ANO').AsInteger    :=morigem_chave_ano;
Query_Item.ParamByName('CODEMP').AsInteger       :=morigem_codemp;
Query_Item.ParamByName('CODPRO').AsFloat       :=morigem_codpro;
Query_Item.ParamByName('ITEM').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;
// INICIO

FreeAndNil(Query_item);
mpos_reg:=tb_ped_di.GetBookmark;
While not tb_ped_di.Eof do
   begin
   tb_ped_di.Edit;
   tb_ped_diPDI_ITEM.Value:=tb_ped_diPDI_ITEM.Value-1;
   tb_ped_di.Post;
   tb_ped_di.Next;
   end;
mlocalizando_pedido:=false;

end;



function TFrm_Venda_Pre_DI.fRenomearItem_adicao(pItemRemovido: Integer):Boolean;
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
Query_Item.SQL.Add('Update CADPED_DI_ADIC set PDIAD_ITEM=PDIAD_ITEM-1 '
                  +' where PDIAD_CHAVE=:CHAVE '
                  +' and PDIAD_CHAVE_ANO=:CHAVE_ANO '
                  +' and PDIAD_CODEMP=:CODEMP'
                  +' and PDIAD_CODPRO=:CODPRO'
                  +' and PDIAD_ITEM=:ITEM '
                  +' and PDIAD_NSEQADIC=:ITEM_REM ');
Query_Item.ParamByName('CHAVE').AsInteger        :=morigem_chave;
Query_Item.ParamByName('CHAVE_ANO').AsInteger    :=morigem_chave_ano;
Query_Item.ParamByName('CODEMP').AsInteger       :=morigem_codemp;
Query_Item.ParamByName('CODPRO').AsFLOAT         :=morigem_codPRO;
Query_Item.ParamByName('ITEM').AsInteger         :=tb_ped_diPDI_ITEM.AsInteger;
Query_Item.ParamByName('ITEM_REM').AsInteger         :=pItemRemovido;
try
   Query_Item.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   end;
// INICIO

FreeAndNil(Query_item);
mpos_reg:=tb_ped_di_adic.GetBookmark;
While not tb_ped_di_adic.Eof do
   begin
   tb_ped_di_adic.Edit;
   tb_ped_di_adicPDIAD_NSEQADIC.Value:=tb_ped_di_adicPDIAD_NSEQADIC.Value-1;
   tb_ped_di_adic.Post;
   tb_ped_di_adic.Next;
   end;
mlocalizando_pedido:=false;

end;

procedure TFrm_Venda_Pre_DI.FormCreate(Sender: TObject);
begin
mlocalizando_pedido:=false;
tb_ped_diPDI_DDI.DisplayFormat:=fdt2;
tb_ped_diPDI_DDI.EditMask     :=pEditMascData;
tb_ped_diPDI_DDESEMB.DisplayFormat:=fdt2;
tb_ped_diPDI_DDESEMB.EditMask     :=pEditMascData;


end;

procedure TFrm_Venda_Pre_DI.tb_ped_diBeforePost(DataSet: TDataSet);
begin
if tb_ped_diPDI_CODPRO.IsNull then
   tb_ped_diPDI_CODPRO.Value:=morigem_codpro;
if mlocalizando_pedido then
   exit;


end;

procedure TFrm_Venda_Pre_DI.tb_ped_diBeforeDelete(DataSet: TDataSet);
var
query_exe: TQuery;
begin
if tb_ped_di_adicPDIAD_CHAVE.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir o documento '+tb_ped_diPDI_NDI.asstring+' data '+Formatdatetime(fdt2, tb_ped_diPDI_DDI.AsDateTime)),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

mped02_itemexcluido:=tb_ped_diPDI_ITEM.AsInteger;

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADPED_DI '
                 +' where        '
                 +'PDI_CODEMP=:PDI_CODEMP '
                 +' and PDI_CHAVE=:PDI_CHAVE '
                 +' AND PDI_CHAVE_ANO=:PDI_CHAVE_ANO '
                 +' and PDI_CODPRO=:PDI_CODPRO '
                 +' and PDI_ITEM=:PDI_ITEM ');



query_exe.ParamByName('PDI_CODEMP').AsInteger     :=morigem_codemp;
query_exe.ParamByName('PDI_CHAVE').AsInteger      :=morigem_chave;
query_exe.ParamByName('PDI_CHAVE_ANO').AsInteger  :=morigem_chave_ano;
query_exe.ParamByName('PDI_CODPRO').AsFloat       :=tb_ped_di_adicPDIAD_CODPRO.AsFloat;
query_exe.ParamByName('PDI_ITEM').AsInteger       :=tb_ped_di_adicPDIAD_ITEM.AsInteger;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
   mped02_item_adic_excluido:=tb_ped_di_adicPDIAD_NSEQADIC.AsInteger;
except on e : exception do
   ex_erroSql_Novo(query_exe,539,'venda_pre_di:'+e.Message ,'CADPED_DI_ADIC');
   end;





end;

procedure TFrm_Venda_Pre_DI.tb_ped_diAfterDelete(DataSet: TDataSet);
begin
if tb_ped_diPDI_ITEM.AsInteger>mped02_itemexcluido then
   fRenomearItem(mped02_itemexcluido);

end;

procedure TFrm_Venda_Pre_DI.tb_ped_diAfterPost(DataSet: TDataSet);
var
query_exe: TQuery;

begin
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:='SG_ASSOC';
if mpdi_Item_Ant=0 then
   begin
   query_exe.sql.Add('Insert into CADPED_DI '
                 +'( PDI_CODEMP '
                 +',PDI_CHAVE '
                 +',PDI_CHAVE_ANO '
                 +',PDI_ITEM '
                 +',PDI_NDI  '
                 +',PDI_DDI   '
                 +',PDI_XLOCDESEMB '
                 +',PDI_UFDESEMB '
                 +',PDI_DDESEMB'
                 +',PDI_CEXPORTADOR '
                 +',PDI_CODPRO '
                 +',PDI_TPVIATRANSP '
                 +',PDI_VAFRMM '
                 +',PDI_TPINTERMEDIARIO '
                 +',PDI_CNPJ '
                 +',PDI_UFTERCEIRO '

                 +') values ('
                 +' :PDI_CODEMP '
                 +',:PDI_CHAVE '
                 +',:PDI_CHAVE_ANO '
                 +',:PDI_ITEM '
                 +',:PDI_NDI  '
                 +',:PDI_DDI   '
                 +',:PDI_XLOCDESEMB '
                 +',:PDI_UFDESEMB '
                 +',:PDI_DDESEMB'
                 +',:PDI_CEXPORTADOR '
                 +',:PDI_CODPRO '
                 +',:PDI_TPVIATRANSP '
                 +',:PDI_VAFRMM '
                 +',:PDI_TPINTERMEDIARIO '
                 +',:PDI_CNPJ '
                 +',:PDI_UFTERCEIRO '

                 +' ) ');
   end
else
   begin
   query_exe.sql.Add('Update CADPED_DI set '
                 +' PDI_NDI=:PDI_NDI  '
                 +',PDI_DDI=:PDI_DDI   '
                 +',PDI_XLOCDESEMB=:PDI_XLOCDESEMB '
                 +',PDI_UFDESEMB=:PDI_UFDESEMB '
                 +',PDI_CEXPORTADOR=:PDI_CEXPORTADOR '
                 +',PDI_DDESEMB=:PDI_DDESEMB '
                 +',PDI_CODPRO=:PDI_CODPRO '
                 +',PDI_TPVIATRANSP=:PDI_TPVIATRANSP '
                 +',PDI_VAFRMM=:PDI_VAFRMM '
                 +',PDI_TPINTERMEDIARIO=:PDI_TPINTERMEDIARIO '
                 +',PDI_CNPJ=:PDI_CNPJ '
                 +',PDI_UFTERCEIRO=:PDI_UFTERCEIRO '

                 +' where PDI_CODEMP=:PDI_CODEMP '
                 +' and PDI_CHAVE=:PDI_CHAVE '
                 +' and PDI_CHAVE_ANO=:PDI_CHAVE_ANO '
                 +' and PDI_CODPRO=:CODPRO '
                 +' and PDI_ITEM=:PDI_ITEM ');
   query_exe.ParamByName('CODPRO').AsFloat           :=morigem_codpro;

   end;

query_exe.ParamByName('PDI_CODEMP').AsInteger     :=morigem_codemp;
query_exe.ParamByName('PDI_CHAVE').AsInteger      :=morigem_chave;
query_exe.ParamByName('PDI_CHAVE_ANO').AsInteger  :=morigem_chave_ano;
query_exe.ParamByName('PDI_ITEM').AsInteger       :=mpdi_item;
query_exe.ParamByName('PDI_NDI').AsString         :=tb_ped_diPDI_NDI.asstring;
query_exe.ParamByName('PDI_DDI').AsDateTime       :=tb_ped_diPDI_DDI.AsDateTime;
query_exe.ParamByName('PDI_XLOCDESEMB').AsString  :=tb_ped_diPDI_XLOCDESEMB.AsString;
query_exe.ParamByName('PDI_UFDESEMB').AsString    :=tb_ped_diPDI_UFDESEMB.AsString;
query_exe.ParamByName('PDI_DDESEMB').AsDateTime   :=tb_ped_diPDI_DDESEMB.AsDateTime;
query_exe.ParamByName('PDI_CEXPORTADOR').AsString :=tb_ped_diPDI_CEXPORTADOR.AsString;
query_exe.ParamByName('PDI_CODPRO').AsFloat           :=tb_ped_diPDI_CODPRO.AsFloat;
query_exe.ParamByName('PDI_TPVIATRANSP').AsInteger    :=tb_ped_diPDI_TPVIATRANSP.AsInteger;
query_exe.ParamByName('PDI_VAFRMM').AsString          :=tb_ped_diPDI_VAFRMM.AsString;
query_exe.ParamByName('PDI_TPINTERMEDIARIO').AsInteger:=tb_ped_diPDI_TPINTERMEDIARIO.AsInteger;
query_exe.ParamByName('PDI_CNPJ').AsString            :=tb_ped_diPDI_CNPJ.AsString;
query_exe.ParamByName('PDI_UFTERCEIRO').AsString      :=tb_ped_diPDI_UFTERCEIRO.AsString;


try
   query_exe.ExecSQL;
   fdm1StartCommit;
   mped02_itemexcluido:=tb_ped_diPDI_ITEM.AsInteger;
except on e : exception do
   ex_erroSql_Novo(query_exe,2510,'venda_pre_di:'+e.Message ,'CADPED_DI');
   end;
freeandnil(query_exe);
mpdi_Item_Ant:=0;


end;

function TFrm_Venda_pre_DI.fbuscaritempdi: boolean;
var
query_item: TQuery;
begin

query_item:=TQuery.Create(nil);
query_item.DatabaseName:='SG_ASSOC';
query_item.SQL.Clear;
query_item.SQL.Add('Select max(PDI_ITEM) as item from CADPED_DI '
                 +' where PDI_CODEMP=:CODEMP '
                 +' and PDI_CHAVE=:CHAVE '
                 +' and PDI_CODPRO=:CODPRO '
                 +' and PDI_CHAVE_ANO=:CHAVE_ANO ');
query_item.ParamByName('CODEMP').AsInteger    :=morigem_codemp;
query_item.ParamByName('CHAVE').AsInteger     :=morigem_chave;
query_item.ParamByName('CODPRO').AsFloat      :=morigem_codpro;
query_item.ParamByName('CHAVE_ANO').AsInteger :=morigem_chave_ano;
try
   query_item.open;
   mpdi_item:=query_item.fields[0].asinteger;
except on e : exception do
   mpdi_item:=0;
   end;
freeandnil(query_item);
result:=true;
end;


function TFrm_Venda_pre_DI.fLerdadosImportacao: boolean;
var
query_item: TQuery;
begin

query_item:=TQuery.Create(nil);
query_item.DatabaseName:='SG_ASSOC';
fbuscaritempdi;

tb_ped_di.close;
tb_ped_di.SQL.clear;
tb_ped_di.SQL.add('Select * from CADPED_DI '
                 +' where PDI_CODEMP=:CODEMP '
                 +' and PDI_CHAVE=:CHAVE '
                 +' and PDI_CODPRO=:CODPRO '
                 +' and PDI_CHAVE_ANO=:CHAVE_ANO ');
tb_ped_di.ParamByName('CODEMP').AsInteger    :=morigem_codemp;
tb_ped_di.ParamByName('CHAVE').AsInteger     :=morigem_chave;
tb_ped_di.ParamByName('CODPRO').AsFloat      :=morigem_codpro;
tb_ped_di.ParamByName('CHAVE_ANO').AsInteger :=morigem_chave_ano;
try
   tb_ped_di.open;
except on e : exception do
   end;


freeandnil(query_item);
result:=true;
end;

procedure TFrm_Venda_Pre_DI.tb_ped_diAfterEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

    mpdi_Item_Ant := tb_ped_diPDI_ITEM.AsInteger;

end;

procedure TFrm_Venda_Pre_DI.tb_ped_diAfterInsert(DataSet: TDataSet);
begin
    mpdi_Item_Ant := 0;
    mpdi_Item:=mpdi_item+1;
    if mpdi_Item<=0 then
       fbuscaritempdi;

    tb_ped_diPDI_CODEMP.Value    :=morigem_codemp;
    tb_ped_diPDI_CHAVE.Value     :=morigem_chave;
    tb_ped_diPDI_CHAVE_ANO.Value :=morigem_chave_ano;
    tb_ped_diPDI_CODPRO.Value    :=morigem_codpro;

    tb_ped_diPDI_ITEM.Value      :=mpdi_item;


end;

procedure TFrm_Venda_Pre_DI.tb_ped_diAfterCancel(DataSet: TDataSet);
begin
if mpdi_Item_Ant = 0 then
   begin
   mpdi_Item:=mpdi_item-1;
   mpdi_Item_Ant := 0;
   end;

end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicAfterDelete(DataSet: TDataSet);
begin
if tb_ped_di_adicPDIAD_NSEQADIC.AsInteger>mped02_item_adic_excluido then
   fRenomearItem_adicao(mped02_item_adic_excluido);

end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicAfterCancel(DataSet: TDataSet);
begin
if mpdi_Item_adic_Ant = 0 then
   begin
   mpdi_Item_adic:=mpdi_item_adic-1;
   mpdi_Item_adic_Ant := 0;
   end;

end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicAfterEdit(DataSet: TDataSet);
begin
if mlocalizando_pedido then
   exit;

    mpdi_Item_adic_Ant := tb_ped_di_adicPDIAD_NSEQADIC.AsInteger;


end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicAfterInsert(DataSet: TDataSet);
begin
    mpdi_Item_adic_Ant := 0;
    mpdi_item_adic :=mpdi_item_adic+1;
    tb_ped_di_adicPDIAD_CODEMP.Value    :=morigem_codemp;
    tb_ped_di_adicPDIAD_CHAVE.Value     :=morigem_chave;
    tb_ped_di_adicPDIAD_CHAVE_ANO.Value :=morigem_chave_ano;
    tb_ped_di_adicPDIAD_CODPRO.Value    :=tb_ped_diPDI_CODPRO.Asfloat;
    tb_ped_di_adicPDIAD_ITEM.Value      :=tb_ped_diPDI_ITEM.AsInteger;
    tb_ped_di_adicPDIAD_NSEQADIC.Value      :=mpdi_item_adic;

end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicAfterPost(DataSet: TDataSet);
var
query_exe: TQuery;

begin
query_exe:=TQuery.create(nil);
query_exe.DatabaseName:='SG_ASSOC';
if mpdi_Item_adic_Ant=0 then
   begin
   query_exe.sql.Add('Insert into CADPED_DI_ADIC '
                 +'(PDIAD_CODEMP '
                 +',PDIAD_CHAVE '
                 +',PDIAD_CHAVE_ANO '
                 +',PDIAD_CODPRO '
                 +',PDIAD_ITEM '
                 +',PDIAD_NADICAO '
                 +',PDIAD_NSEQADIC '
                 +',PDIAD_CFABRICANTE '
                 +',PDIAD_VDESCDI '
                 +') values ('

                 +':PDIAD_CODEMP '
                 +',:PDIAD_CHAVE '
                 +',:PDIAD_CHAVE_ANO '
                 +',:PDIAD_CODPRO '
                 +',:PDIAD_ITEM '
                 +',:PDIAD_NADICAO '
                 +',:PDIAD_NSEQADIC '
                 +',:PDIAD_CFABRICANTE '
                 +',:PDIAD_VDESCDI  '
                 +' ) ');
   end
else
   begin
   query_exe.sql.Add('Update CADPED_DI_ADIC set '
                 +' PDIAD_NADICAO=:PDIAD_NADICAO '
                 +',PDIAD_CFABRICANTE=:PDIAD_CFABRICANTE '
                 +',PDIAD_VDESCDI=:PDIAD_VDESCDI '
                 +' where        '
                 +'PDIAD_CODEMP=:PDIAD_CODEMP '
                 +' and PDIAD_CHAVE=:PDIAD_CHAVE '
                 +' AND PDIAD_CHAVE_ANO=:PDIAD_CHAVE_ANO '
                 +' and PDIAD_CODPRO=:PDIAD_CODPRO '
                 +' and PDIAD_ITEM=:PDIAD_ITEM '
                 +' and PDIAD_NSEQADIC=:PDIAD_NSEQADIC ');
   end;



query_exe.ParamByName('PDIAD_CODEMP').AsInteger     :=morigem_codemp;
query_exe.ParamByName('PDIAD_CHAVE').AsInteger      :=morigem_chave;
query_exe.ParamByName('PDIAD_CHAVE_ANO').AsInteger  :=morigem_chave_ano;
query_exe.ParamByName('PDIAD_CODPRO').AsFloat       :=tb_ped_di_adicPDIAD_CODPRO.AsFloat;
query_exe.ParamByName('PDIAD_ITEM').AsInteger       :=tb_ped_di_adicPDIAD_ITEM.AsInteger;
query_exe.ParamByName('PDIAD_NADICAO').AsInteger    :=tb_ped_di_adicPDIAD_NADICAO.AsInteger;
query_exe.ParamByName('PDIAD_NSEQADIC').AsInteger   :=tb_ped_di_adicPDIAD_NSEQADIC.AsInteger;
query_exe.ParamByName('PDIAD_CFABRICANTE').AsString :=tb_ped_di_adicPDIAD_CFABRICANTE.AsString;
query_exe.ParamByName('PDIAD_VDESCDI').Asfloat      :=tb_ped_di_adicPDIAD_VDESCDI.Asfloat;


try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,525,'venda_pre_di:'+e.Message ,'CADPED_DI_adic');
   end;
freeandnil(query_exe);
mpdi_Item_Ant:=0;



end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicBeforeDelete(DataSet: TDataSet);
var
query_exe: TQuery;
begin
if tb_ped_di_adicPDIAD_CHAVE.IsNull then
   exit;
if Application.MessageBox(pchar('Quer realmente excluir a adicao '+tb_ped_di_adicPDIAD_NADICAO.AsString+' do documento '+tb_ped_diPDI_NDI.asstring+' data '+Formatdatetime(fdt2, tb_ped_diPDI_DDI.AsDateTime)),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

mped02_item_adic_excluido:=tb_ped_di_adicPDIAD_ITEM.AsInteger;

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADPED_DI_ADIC '
                 +' where        '
                 +'PDIAD_CODEMP=:PDIAD_CODEMP '
                 +' and PDIAD_CHAVE=:PDIAD_CHAVE '
                 +' AND PDIAD_CHAVE_ANO=:PDIAD_CHAVE_ANO '
                 +' and PDIAD_CODPRO=:PDIAD_CODPRO '
                 +' and PDIAD_ITEM=:PDIAD_ITEM '
                 +' and PDIAD_NSEQADIC=:PDIAD_NSEQADIC ');



query_exe.ParamByName('PDIAD_CODEMP').AsInteger     :=morigem_codemp;
query_exe.ParamByName('PDIAD_CHAVE').AsInteger      :=morigem_chave;
query_exe.ParamByName('PDIAD_CHAVE_ANO').AsInteger  :=morigem_chave_ano;
query_exe.ParamByName('PDIAD_CODPRO').AsFloat       :=tb_ped_di_adicPDIAD_CODPRO.AsFloat;
query_exe.ParamByName('PDIAD_ITEM').AsInteger       :=tb_ped_di_adicPDIAD_ITEM.AsInteger;
query_exe.ParamByName('PDIAD_NSEQADIC').AsInteger   :=tb_ped_di_adicPDIAD_NSEQADIC.AsInteger;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
   mped02_item_adic_excluido:=tb_ped_di_adicPDIAD_NSEQADIC.AsInteger;
except on e : exception do
   ex_erroSql_Novo(query_exe,539,'venda_pre_di:'+e.Message ,'CADPED_DI_ADIC');
   end;




end;

procedure TFrm_Venda_Pre_DI.tb_ped_di_adicBeforePost(DataSet: TDataSet);
begin
if tb_ped_di_adicPDIAD_VDESCDI.isnull then
   tb_ped_di_adicPDIAD_VDESCDI.Asfloat:=0;
if mlocalizando_pedido then
   exit;
end;

procedure TFrm_Venda_Pre_DI.src_ped_diDataChange(Sender: TObject;
  Field: TField);
begin
if (tb_ped_di_adic.active=false) or
   (tb_ped_di_adicPDIAD_CODEMP.AsInteger<>tb_ped_diPDI_CODEMP.AsInteger) or
   (tb_ped_di_adicPDIAD_CHAVE.AsInteger<>tb_ped_diPDI_CHAVE.AsInteger) or
   (tb_ped_di_adicPDIAD_CHAVE_ANO.AsInteger<>tb_ped_diPDI_CHAVE_ANO.AsInteger) or
   (tb_ped_di_adicPDIAD_CODPRO.Asfloat<>tb_ped_diPDI_CODPRO.Asfloat)  then
      begin
      tb_ped_di_adic.Close;
      tb_ped_di_adic.SQL.Clear;
      tb_ped_di_adic.SQL.add('select * from CADPED_DI_ADIC '
                            +' where PDIAD_CODEMP=:CODEMP '
                            +' and    PDIAD_CHAVE=:CHAVE '
                            +' and    PDIAD_CHAVE_ANO=:CHAVE_ANO '
                            +' and    PDIAD_CODPRO=:CODPRO '
                            +' ORDER BY PDIAD_NSEQADIC ');
      tb_ped_di_adic.ParamByName('CODEMP').AsInteger:=tb_ped_diPDI_CODEMP.AsInteger;
      tb_ped_di_adic.ParamByName('CHAVE').AsFloat:=tb_ped_diPDI_CHAVE.AsInteger;
      tb_ped_di_adic.ParamByName('CHAVE_ANO').AsFloat:=tb_ped_diPDI_CHAVE_ANO.AsInteger;
      tb_ped_di_adic.ParamByName('CODPRO').AsFloat:=tb_ped_diPDI_CODPRO.AsFloat;
      try
         tb_ped_di_adic.Open;
      except on e : exception do
         ex_erroSql_Novo(tb_ped_di_adic,615,'venda_pre_di_adic:'+e.Message ,'CADPED_DI_ADIC');
         end;
      end;





end;

procedure TFrm_Venda_Pre_DI.dbcb_pViaTranspClick(Sender: TObject);
begin
if valint(copy(dbcb_pViaTransp.Text,1,2))=1 then
   DBE_PDI_VAFRMM.Visible:=true
else
   DBE_PDI_VAFRMM.Visible:=false;

end;

procedure TFrm_Venda_Pre_DI.DBGrid_ped_diExit(Sender: TObject);
begin
if Tb_Ped_di.state in [dsedit,dsinsert] then
   begin
   if tb_ped_diPDI_NDI.isnull then
      Tb_Ped_di.cancel
   else
      Tb_Ped_di.post;
   end;

end;

procedure TFrm_Venda_Pre_DI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Tb_Ped_di.state in [dsedit,dsinsert] then
   begin
   if tb_ped_diPDI_NDI.isnull then
      Tb_Ped_di.cancel
   else
      Tb_Ped_di.post;
   end;

end;

procedure TFrm_Venda_Pre_DI.DBGrid_ped_di_adicExit(Sender: TObject);
begin
if tb_ped_di_adic.state in [dsedit,dsinsert] then
   begin
   if tb_ped_di_adicPDIAD_NSEQADIC.isnull then
      Tb_Ped_di_adic.cancel
   else
      Tb_Ped_di_adic.post;
   end;

end;

end.
