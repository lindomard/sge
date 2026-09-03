unit S_compras_ProdSemRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient, Mask, DBCtrls,
  s_compras_orc_impxml, Buttons, DBTables, RxMemDS,s_lerarq_geral;

type
  Tfrm_compras_ProdSemRel = class(TForm)
    gb_produtos_nfe: TGroupBox;
    gb_relacionados: TGroupBox;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cds_prodSemRel: TClientDataSet;
    cds_prodSemRelPSR_ITEM: TIntegerField;
    cds_prodSemRelPSR_UND_FOR: TStringField;
    cds_prodSemRelPSR_CODPRO_FOR: TStringField;
    cds_prodSemRelPSR_NOMPRO_FOR: TStringField;
    cds_prodSemRelPSR_QTD_FOR: TFloatField;
    cds_prodSemRelPSR_VLRTOT_FOR: TFloatField;
    cds_prodSemRelPSR_CODPRO_INT: TStringField;
    cds_prodSemRelPSR_UND_INT: TStringField;
    cds_prodSemRelPSR_NOMPRO_INT: TStringField;
    cds_prodSemRelPSR_QTD_INT: TFloatField;
    DBE_codpro_int: TDBEdit;
    DBE_und_int: TDBEdit;
    DBE_qtd_int: TDBEdit;
    DBE_nompro_int: TDBEdit;
    DBE_vlr_tot: TDBEdit;
    cds_prodSemRelpsr_pcouni_for: TFloatField;
    cds_prodSemRelpsr_pcouni_int: TFloatField;
    cds_prodSemRelpsr_vlrtot_int: TFloatField;
    dbe_pcouni_int: TDBEdit;
    src_prodSemRel: TDataSource;
    cds_prodSemRelpsr_descfator: TStringField;
    DBEdit1: TDBEdit;
    cds_prodSemRelpsr_fator_conv: TFloatField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cds_prodSemRelPSR_CODFOR: TFloatField;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    cds_prodSemRelPSR_MARCA: TStringField;
    cds_prodSemRelPSR_STATUS: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DBE_codpro_intKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_codpro_intExit(Sender: TObject);
    procedure DBE_codpro_intEnter(Sender: TObject);
    procedure cds_prodSemRelCalcFields(DataSet: TDataSet);
    procedure DBE_qtd_intExit(Sender: TObject);
  private
    { Private declarations }
    function fSubstituirProduto: Boolean;

  public
    { Public declarations }
    mcodpro_ant: string;
    und_ant: string;
    mNomPro_Ant: String;
    mQtd_Ant: Real;

  end;

var
  Frm_compras_ProdSemRel: TFrm_compras_ProdSemRel;

implementation

uses S_DM1, func, LerArq, func_excecoes;



{$R *.dfm}

procedure Tfrm_compras_ProdSemRel.cds_prodSemRelCalcFields(DataSet: TDataSet);
begin
if (cds_prodSemRelPSR_VLRTOT_FOR.AsFloat<>0) and
   (cds_prodSemRelPSR_QTD_FOR.AsFloat<>0) and (cds_prodSemRelPSR_QTD_FOR.AsFloat<>0) then
   begin
   try
      cds_prodSemRelpsr_pcouni_for.Value:=Arredonda( (cds_prodSemRelPSR_VLRTOT_FOR.AsFloat/cds_prodSemRelPSR_QTD_FOR.AsFloat),3);
   except
      end;
   end
else
   cds_prodSemRelpsr_pcouni_for.Value:=0;
if (cds_prodSemRelPSR_VLRTOT_FOR.AsFloat<>0) and
   (cds_prodSemRelPSR_QTD_INT.AsFloat<>0) then
   begin
   try
      cds_prodSemRelpsr_pcouni_int.Value:=Arredonda( (cds_prodSemRelPSR_VLRTOT_FOR.AsFloat/cds_prodSemRelPSR_QTD_INT.AsFloat),3);
   except
      end;
   end
else
   cds_prodSemRelpsr_pcouni_int.Value:=0;
if cds_prodSemRelpsr_pcouni_int.AsFloat>0 then
   begin
   cds_prodSemRelpsr_vlrtot_int.AsFloat:=Arredonda( (cds_prodSemRelPSR_QTD_INT.AsFloat*cds_prodSemRelpsr_pcouni_int.AsFloat),2);
   if (cds_prodSemRelPSR_QTD_INT.AsFloat<>0) and  (cds_prodSemRelPSR_QTD_FOR.AsFloat<>0) then
      begin
      try
         cds_prodSemRelPSR_FATOR_CONV.AsFloat:=cds_prodSemRelPSR_QTD_INT.AsFloat/cds_prodSemRelPSR_QTD_FOR.AsFloat;
      except
         cds_prodSemRelPSR_FATOR_CONV.AsFloat:=0;
         end;
      end;
   cds_prodSemRelpsr_descfator.AsString:='Então 1 '+cds_prodSemRelPSR_UND_FOR.AsString
                  +' é igual a '+FloatToStr(1*cds_prodSemRelPSR_FATOR_CONV.AsFloat)
                  +' '+cds_prodSemRelPSR_UND_INT.AsString;
   end
else
   begin
   cds_prodSemRelpsr_vlrtot_int.AsFloat:=0;
   cds_prodSemRelPSR_FATOR_CONV.AsFloat:=0;
   cds_prodSemRelpsr_descfator.AsString:='';
   end;
end;

procedure Tfrm_compras_ProdSemRel.DBE_codpro_intEnter(Sender: TObject);
begin
mcodpro_ant:=cds_prodSemRelPSR_CODPRO_INT.AsString;
und_ant    :=cds_prodSemRelPSR_UND_INT.AsString;
mNomPro_Ant:=cds_prodSemRelPSR_NOMPRO_INT.AsString;
mQtd_Ant   :=cds_prodSemRelPSR_QTD_INT.AsFloat;

end;

procedure Tfrm_compras_ProdSemRel.DBE_codpro_intExit(Sender: TObject);
var
Query_Exe: TQuery;
mCodPro_ori_Bar: String;
begin
Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
if (cds_prodSemRel.State in [dsEdit,dsInsert]) then
   begin
   cds_prodSemRelPSR_UND_INT.AsString   :='';
   cds_prodSemRelPSR_NOMPRO_INT.AsString:='';
   cds_prodSemRelPSR_MARCA.AsString:='';
   cds_prodSemRelPSR_STATUS.AsInteger:=0;

   cds_prodSemRelPSR_QTD_INT.AsFloat    :=0;
   if (trim(cds_prodSemRelPSR_CODPRO_INT.AsString)<>'') then
      begin
      if flcadpro(1,0,0,cds_prodSemRelPSR_CODPRO_INT.AsString) then
         begin
         cds_prodSemRelPSR_UND_INT.AsString:=DM1.Tb_ProPDUND.AsString;
         cds_prodSemRelPSR_NOMPRO_INT.AsString:=DM1.Tb_ProPDNOME.AsString;
         cds_prodSemRelPSR_MARCA.AsString     :=DM1.Tb_ProPDMARCA.Asstring;
         cds_prodSemRelPSR_STATUS.Value       :=DM1.Tb_ProPDSTATUS.AsInteger;

         cds_prodSemRelPSR_QTD_INT.AsFloat:=cds_prodSemRelPSR_QTD_FOR.AsFloat;
         end
      else
         begin
         mCodPro_ori_Bar:=FloatToStr(fAchaCodigoOri(cds_prodSemRelPSR_CODPRO_INT.AsString));
         if valfloat(mCodPro_ori_Bar)>0 then
            begin
            if flcadpro(1,0,0,mCodPro_ori_Bar) then
               begin
               cds_prodSemRelPSR_CODPRO_INT.AsString:=DM1.Tb_ProPDCODPRO.AsString;
               cds_prodSemRelPSR_UND_INT.AsString:=DM1.Tb_ProPDUND.AsString;
               cds_prodSemRelPSR_NOMPRO_INT.AsString:=DM1.Tb_ProPDNOME.AsString;
               cds_prodSemRelPSR_QTD_INT.AsFloat:=cds_prodSemRelPSR_QTD_FOR.AsFloat;
               cds_prodSemRelPSR_MARCA.AsString     :=DM1.Tb_ProPDMARCA.Asstring;
               cds_prodSemRelPSR_STATUS.Value       :=DM1.Tb_ProPDSTATUS.AsInteger;

               end
            end;
         end;
      end
   else
      begin
      if trim(mcodpro_ant)<>'' then
         begin
         if (fAchaCodigoProdutonoFornecedor(cds_prodSemRelPSR_CODFOR.AsFloat,cds_prodSemRelPSR_CODPRO_FOR.AsString,''))=0 then
            begin
            if TRIM(mNomPro_Ant)<>'' then
               begin
               if Application.MessageBox(pchar('Voce esta prestes a Excluir o Relacionamento com o Produto: '
                                         +mcodpro_ant+' '+mNomPro_Ant+' Posso Continuar?')
                                         ,'Confirmacao',MB_YESNO+MB_DEFBUTTON2)=mrYes then
                  begin
                  Query_Exe.Close;
                  Query_Exe.SQL.Clear;
                  Query_Exe.SQL.Add('Delete from  CODPFOR '
                                         +' where PFCODEMP=:PFCODEMP and PFCODFOR=:PFCODFOR and PFCODPRO=:PFCODPRO  ');
                  Query_Exe.ParamByName('PFCODEMP').AsInteger :=codemp;
                  Query_Exe.ParamByName('PFCODFOR').AsfLOAT :=cds_prodSemRelPSR_CODFOR.AsFloat;
                  Query_Exe.ParamByName('PFCODPRO').AsString  :=cds_prodSemRelPSR_CODPRO_INT.AsString;
                  try
                     Query_Exe.ExecSQL;
                     fDM1StartCommit;
                  except
                     ex_erroSql_Novo(Query_Exe,186,'s_compras_prodsemrel','codpfor');
                     end;
                  end
               else
                  begin
                  cds_prodSemRelPSR_CODPRO_INT.AsString:=mcodpro_ant;
                  cds_prodSemRelPSR_UND_INT.AsString   :=und_ant;
                  cds_prodSemRelPSR_NOMPRO_INT.AsString:=mNomPro_Ant;
                  cds_prodSemRelPSR_QTD_INT.AsFloat    :=mQtd_Ant;
//                  cds_prodSemRelPSR_MARCA.AsString     :=DM1.Tb_ProPDMARCA.Asstring;
//                  cds_prodSemRelPSR_STATUS.Value       :=DM1.Tb_ProPDSTATUS.AsInteger;

                  end;
               end
            end;
         end;
      end;
   end;

if query_exe<>nil then
   begin
   Query_Exe.close;
   FreeAndNil(Query_Exe);
   end;
end;

procedure Tfrm_compras_ProdSemRel.DBE_codpro_intKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=113)  then
   begin
   if not (cds_prodSemRel.State in [dsEdit,dsInsert]) then
      begin
      cds_prodSemRel.Edit;
      end;
   cds_prodSemRelPSR_CODPRO_INT.AsString:=fChamaPro(0,'_compras_prodsemrel','');
   end;


end;
function Tfrm_compras_ProdSemRel.fSubstituirProduto: Boolean;
var

query_pfor: tQuery;
mNomePro_For: String;
mCodigoPro_For: String;
mNomePro_int: String;
mCodigoPro_int: String;

mBookMark: TBookmark;
mPosReg_Atu: Integer;
mBookMark_Duplic: TBookmark;
begin

query_pfor:=tQuery.Create(nil);
query_pfor.DatabaseName:='SG_ASSOC';

query_pfor.Close;
query_pfor.SQL.Clear;
query_pfor.SQL.Add('Select PFCODPRO,PFFATOR,PFCODPFORN from CODPFOR where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',
                  ' PFCODEMP=0'+IntTostr(codemp)+' and ')
                 +' PFCODFOR=0'+cds_prodSemRelPSR_CODFOR.AsString);
Query_pFor.sql.add(' and PFCODPRO=:CODPRO ');
query_pfor.ParambyName('CODPRO').Value:=cds_prodSemRelPSR_CODPRO_INT.AsFloat;
try
   query_pfor.Open;
except
   query_pfor.SQL.SaveToFile(mpastatemp +'sqlPFOR.TXT');
   end;
mNomePro_For  :='';
mCodigoPro_For:='';
mNomePro_int  :=cds_prodSemRelPSR_NOMPRO_INT.AsString;
mCodigoPro_int:=cds_prodSemRelPSR_CODPRO_INT.AsString;


frm_compras_orc_impxml.Tb_Pfor02_Orc.First;
//frm_compras_orc_impxml.Tb_Pfor02_Orc.AutoCalcFields:=false;
//frm_compras_orc_impxml.mCarregandoped02:=true;
While not frm_compras_orc_impxml.Tb_Pfor02_Orc.Eof do
   begin
   if frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CODPRO_INT.AsString=query_pfor.FieldbyName('PFCODPRO').AsString then
      begin
      mCodigoPro_For:=frm_compras_orc_impxml.Tb_Pfor02_OrcPF2CODPRO.AsString;
      mNomePro_For  :=frm_compras_orc_impxml.Tb_Pfor02_OrcNOMPRO_FOR.AsString;
      break;
      end;
   frm_compras_orc_impxml.Tb_Pfor02_Orc.Next;
   end;
//frm_compras_orc_impxml.mCarregandoped02:=false;

//frm_compras_orc_impxml.Tb_Pfor02_Orc.AutoCalcFields:=true;

if trim(mNomePro_For)<>'' then
   begin
   mBookMark:=cds_prodSemRel.GetBookmark;
   mPosReg_Atu:=cds_prodSemRel.RecNo;
   cds_prodSemRel.First;
   While not cds_prodSemRel.Eof do
      begin
      if cds_prodSemRelPSR_CODPRO_INT.AsString=query_pfor.FieldbyName('PFCODPRO').AsString then
         begin
         if mPosReg_Atu=cds_prodSemRel.RecNo then
            begin
            cds_prodSemRel.Next;
            continue;
            end;
         mNomePro_For   :=cds_prodSemRelPSR_NOMPRO_FOR.AsString;
         mCodigoPro_For :=cds_prodSemRelPSR_CODPRO_FOR.AsString;
         mBookMark_Duplic:=cds_prodSemRel.GetBookmark;
         break;
         end;
      cds_prodSemRel.Next;
      end;
   if mBookMark<>nil then
      cds_prodSemRel.GotoBookmark(mBookMark);

   end;

if Application.MessageBox(pchar('O Produto : '+ mCodigoPro_int+' - '+mNomePro_int
                         +' foi relacionado com o do fornecedor de codigo: '+mcodigopro_for+' - '+mnomePro_For+' Quer substituir?'),'Confirmacao?',MB_YESNO+MB_DEFBUTTON2)<> mrYes then
   begin
   if mBookMark_Duplic <>nil then
      begin
      cds_prodSemRel.GotoBookmark(mBookMark_Duplic);
      if cds_prodSemRelPSR_CODPRO_INT.AsString=query_pfor.FieldbyName('PFCODPRO').AsString then
         begin
         cds_prodSemRel.Edit;
         cds_prodSemRelPSR_CODPRO_INT.Value:='';
         cds_prodSemRelPSR_NOMPRO_INT.Value:='';
         cds_prodSemRelPSR_UND_INT.Value   :='';
         cds_prodSemRelPSR_MARCA.AsString  :='';
         cds_prodSemRelPSR_STATUS.Value    :=0;

         cds_prodSemRel.Post;
         end;
      end;
   result:=false;
   end
else
   result:=true;
FreeandNil(query_pfor);
if mBookMark<>nil then
  cds_prodSemRel.GotoBookmark(mBookMark);

end;

procedure Tfrm_compras_ProdSemRel.DBE_qtd_intExit(Sender: TObject);
var
Query_exe: TQuery;
begin
Query_exe:=TQuery.Create(nil);
Query_exe.DatabaseName:='SG_ASSOC';


if (cds_prodSemRel.State in [dsEdit,dsInsert]) and (trim(cds_prodSemRelPSR_NOMPRO_INT.AsString)<>'')  and (cds_prodSemRelPSR_QTD_INT.AsFloat<>0) then
   begin
   cds_prodSemRel.Post;

   mCodPFor.PFCODEMP  :=iif(codemp>100,codemp-100,codemp);
   mCodPFor.PFCODFOR   :=cds_prodSemRelPSR_CODFOR.AsFloat;
   mCodPFor.PFCODPRO   :=cds_prodSemRelPSR_CODPRO_INT.AsFloat;
   mCodPFor.PFCODPFORN :=cds_prodSemRelPSR_CODPRO_FOR.AsString;
   mCodPFor.PFFATOR    :=cds_prodSemRelpsr_fator_conv.AsFloat;
   mCodPFor.PFUNDFOR   :=copy(cds_prodSemRelPSR_UND_FOR.AsString,1,3);
   mCodPFor.PFNOMPROFOR:=copy(cds_prodSemRelPSR_NOMPRO_FOR.AsString,1,100);
   fIncluirCodPFor(mCodPFor);

   if (cds_prodSemRel.state in [dsEdit,dsInsert]) then
      cds_prodSemRel.Post;
   if not cds_prodSemRel.Eof then
      cds_prodSemRel.Next;
   DBE_codpro_int.SetFocus;
   end;
FreeAndNil(Query_exe);
end;

procedure Tfrm_compras_ProdSemRel.FormCreate(Sender: TObject);
var
x: Integer;
begin


for x := 0 to cds_prodSemRel.Fields.Count-1 do
   begin
   if cds_prodSemRel.Fields[x].DataType=ftFloat then
      (cds_prodSemRel.Fields[x] as TFloatField).DisplayFormat:=mCasas
   else if cds_prodSemRel.Fields[x].DataType=ftDateTime then
      (cds_prodSemRel.Fields[x] as TDateTimeField).DisplayFormat:=fdt2;
   end;

end;

end.
