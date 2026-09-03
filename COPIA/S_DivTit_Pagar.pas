unit S_DivTit_Pagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,lerarq,func,
  dbcgrids, DB, DBTables, Grids, DBGrids,S_Bco,func2, DBClient, ToolEdit;

type
  TFrm_DivTit_Pagar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBE_NUMERO: TDBEdit;
    DBE_DESD: TDBEdit;
    DBE_DUP: TDBEdit;
    DBE_DTEMIS: TDBEdit;
    DBE_DTVCTO: TDBEdit;
    DBE_VALOR: TDBEdit;
    Label7: TLabel;
    DBE_TOTNF: TDBEdit;
    DBE_DESCF: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBE_DTDESCF: TDBEdit;
    Label12: TLabel;
    DBE_CODCLI: TDBEdit;
    DBE_NOMCLI: TDBEdit;
    Label14: TLabel;
    DBE_CODBCO: TDBEdit;
    DBE_NOMBCO: TDBEdit;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label16: TLabel;
    NOMBCO: TEdit;
    CODBCO: TEdit;
    Src_DivDup: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label77: TLabel;
    PRAZO: TEdit;
    Label78: TLabel;
    QTDP: TEdit;
    Label79: TLabel;
    INT: TEdit;
    bbGerarDuplic: TBitBtn;
    BBSAIR: TBitBtn;
    bbGrarDup: TBitBtn;
    lbl_totdup: TLabel;
    Tb_DivDup: TClientDataSet;
    Tb_DivDupDESD: TStringField;
    Tb_DivDupVALOR: TFloatField;
    Tb_DivDupDTVCTO: TDateField;
    Tb_DivDupDESCFIN: TFloatField;
    Tb_DivDupDTDESCFIN: TDateField;
    Tb_DivDupNOMBCO: TStringField;
    Tb_DivDupDESCANT: TFloatField;
    Tb_DivDupTARBAN: TFloatField;
    Tb_DivDupICMSR: TFloatField;
    Tb_DivDupFRETE: TFloatField;
    Tb_DivDupVALSEG: TFloatField;
    Tb_DivDupTOTIPI: TFloatField;
    Tb_DivDupPERCENT: TFloatField;
    Tb_DivDupCODBCO: TFloatField;
    Label10: TLabel;
    DBE_CAVALOR_ACRES: TDBEdit;
    Tb_DivDupVALOR_ACRES: TFloatField;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    edt_dtprimvcto: TDateEdit;
    Label13: TLabel;
    edt_QTDP: TEdit;
    bbgerardiafixo: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbGerarDuplicClick(Sender: TObject);
    procedure Tb_DivDupCalcFields(DataSet: TDataSet);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure PRAZOExit(Sender: TObject);
    procedure QTDPExit(Sender: TObject);
    procedure INTExit(Sender: TObject);
    procedure bbGrarDupClick(Sender: TObject);
    procedure Tb_DivDupAfterPost(DataSet: TDataSet);
    procedure Tb_DivDupBeforePost(DataSet: TDataSet);
    procedure BBSAIRClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bbgerardiafixoClick(Sender: TObject);
  private
    { Private declarations }
    function ftotdupdig(pTipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_DivTit_Pagar: TFrm_DivTit_Pagar;
  mtabtemp01: String;
  mQtdDup: Integer;
  mTotDup: Real;
  mTotTar: Real;
implementation

uses S_DM5, S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_DivTit_Pagar.FormCreate(Sender: TObject);
begin
Tb_DivDup.CreateDataSet;
Tb_DivDupVALOR.DisplayFormat    :=mcasas;
Tb_DivDupDTVCTO.DisplayFormat   :=fdt2;
Tb_DivDupDTVCTO.EditMask        :=pEditMascData;
Tb_DivDupDESCFIN.DisplayFormat  :=mcasas;
Tb_DivDupDTDESCFIN.DisplayFormat:=fdt2;
Tb_DivDupDTDESCFIN.EditMask     :=pEditMascData;
end;

procedure TFrm_DivTit_Pagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Tb_DivDup.Close;
fdeletaTemp(mtabtemp01);
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_DivTit_Pagar.bbGerarDuplicClick(Sender: TObject);
var
x,mqtdd: Integer;
mdif,mvaldup: Real;

mdif_acres,mval_acres: Real;

mpDescDia,mdifdf,mvaldescf: Real;
mdatav: TDateTime;
begin

if ValInt(QTDP.Text)<1 then
   begin
   fmensagem('Pelo memos uma parcela tem que ser colocada!',0,['0'],0);
   exit;
   end;

Tb_DivDup.Close;
Tb_DivDup.CreateDataSet;
Tb_DivDup.Open;

mtotdup:=DM1.Tb_CPCAVALOR.AsFloat;

mqtdd:=ValInt(QTDP.Text);

mvaldup:= mtotdup/mqtdd;
mvaldup:=arredonda(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
mdif:=mvaldup*mqtdd;
mdif:=mtotdup-mdif;
mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);



mval_acres:= DM1.Tb_CPCAVALOR_ACRES.AsFloat/mqtdd;
mval_acres:=arredonda(mval_acres,DM1.Tb_PargerPCASAS.AsInteger);
mdif_acres:=mval_acres*mqtdd;
mdif_acres:=DM1.Tb_CPCAVALOR_ACRES.AsFloat-mdif_acres;
mdif_acres:=arredonda(mdif_acres,DM1.Tb_PargerPCASAS.AsInteger);





if DM1.Tb_CPCAVALDES.Value>0 then
   begin
   mvaldescf:=DM1.Tb_CPCAVALDES.Value/mqtdd;
   mvaldescf:=arredonda(mvaldescf,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdf:=mvaldescf*mqtdd;
   mdifdf:=DM1.Tb_CPCAVALDES.Value-mdifdf;
   mdifdf :=arredonda(mdifdf,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifdf   :=0;
   mvaldescf:=0;;
   end;

mdatav:=DM1.Tb_CPCADTEMIS.Value;
mdatav:=mdatav+ValInt(PRAZO.Text);
 mpDescDia:=0;

for x:=1 to mqtdd do
   begin
   Tb_DivDup.Append;

{   if trim(DM1.Tb_CPCADESD.Text)='' then
      Tb_DivDupDESD.Value  :=chr(integer('A')+(x-1))
   else
      Tb_DivDupDESD.Value  :=chr(integer(DM1.Tb_CPCADESD.Value[1])+(x-1));}

   Tb_DivDupDESD.AsString  :=IntToStr(x);

   Tb_DivDupVALOR.Value :=mvaldup+mdif;
   Tb_DivDupDTVCTO.Value:=mdatav;
   Tb_DivDupVALOR_ACRES.Value :=mval_acres+mdif_acres;

   if DM1.Tb_CPCAVALDES.Value>0 then
      begin
      Tb_DivDupDESCFIN.Value:=mvaldescf+mdifdf;
      if DM1.Tb_CPCADTVCTO.Value=DM1.Tb_CPCADTDESC.Value then
         Tb_DivDupDTDESCFIN.Value:=mdatav
      else
         Tb_DivDupDTDESCFIN.Value:=DM1.Tb_CPCADTDESC.Value;
      end;
   if mpDescDia>0 then
      Tb_DivDupDESCANT.Value:=Arredonda( ((mvaldup+mdif)
                              *mpDescDia/100), DM1.Tb_PargerPCASAS.AsInteger)

   else
      Tb_DivDupDESCANT.Value:=0;
   Tb_DivDupCODBCO.Value    :=DM1.Tb_CPCABANCO.Value;
   mdatav:=mdatav+ValInt(INT.Text);
   mdif     :=0;
   mdifdf   :=0;
   mdif_acres:=0;
   Tb_DivDup.Post;

   end;
fTotdupDig(0);


end;

function TFrm_DivTit_Pagar.ftotdupdig(pTipo: Integer): Boolean;
var
mPosReg: TBookmark;

begin
mPosReg        :=Tb_DivDup.GetBookmark;
mQtdDup:=0;
mTotDup:=0;
mTotTar:=0;
Tb_DivDup.First;
While not Tb_DivDup.Eof do
   begin
   mQtdDup:=mQtdDup+1;
   mTotDup:=mTotDup+(Tb_DivDupVALOR.Value);
   Tb_DivDup.Next;
   end;
lbl_totdup.Caption:='Qtd.Dup:['+IntToStr(mQtdDup)+'] Total sem Tar.Banc:'
                    +DM1.Tb_PargerPMOEDA.Value+'['+FormatFloat(mcasas, mTotDup)+']'
                    +'Total Tar.Banc:'
                    +DM1.Tb_PargerPMOEDA.Value+'['+FormatFloat(mcasas, mTotTar)+']';
Tb_DivDup.GotoBookmark(mPosReg);
result:=true;

end;
procedure TFrm_DivTit_Pagar.Tb_DivDupCalcFields(DataSet: TDataSet);
begin
if Tb_DivDupCODBCO.Value=0 then
   Tb_DivDupnombco.Value:='Carteira '
else
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_DivDupCODBCO.AsString) then
      Tb_DivDupnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_DivTit_Pagar.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_DivTit_Pagar',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DivTit_Pagar.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if ValInt(CODBCO.Text)=0 then
   begin
   NOMBCO.Text:='Carteira ';
   end
else
   begin
   if flqr1('BCBANCO,BCTARIFA','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;


end;

procedure TFrm_DivTit_Pagar.PRAZOExit(Sender: TObject);
begin
PRAZO.Text:=fdeixanum2(PRAZO.Text);
if fsonumero(PRAZO.Text)>99999 then
   begin
   fmensagem('Prazo valor Muito grande!',0,['0'],0);
   PRAZO.SetFocus;
   end;

end;

procedure TFrm_DivTit_Pagar.QTDPExit(Sender: TObject);
begin
QTDP.Text:=fdeixanum2(QTDP.Text);
if fsonumero(QTDP.Text)>99999 then
   begin
   fmensagem('Quantidade de Parcelas valor Muito grande!',0,['0'],0);
   QTDP.SetFocus;
   end;

end;

procedure TFrm_DivTit_Pagar.INTExit(Sender: TObject);
begin
INT.Text:=fdeixanum2(INT.Text);
if fsonumero(INT.Text)>99999 then
   begin
   fmensagem('Intervalo valor Muito grande!',0,['0'],0);
   INT.SetFocus;
   end;

end;

procedure TFrm_DivTit_Pagar.bbGrarDupClick(Sender: TObject);
var
mDup: Integer;
mtIcmsr: Real;
mtFrete: Real;
mtComven: Real;
mtComV02: Real;
mtComV03: Real;
mtComTel: Real;
mtComSup: Real;
mtsemCom: Real;
mtTotDi01: Real;
mtTotDi02: Real;
mtTotDi03: Real;
mtTotDiVlr: Real;
mtValDes01: Real;
mtValDes02: Real;
mtVlrDes: Real;
mtValSeg: Real;
mtComasse: Real;
mtComV04: Real;
mtTotIPI: Real;
mtTotCGru: Real;
mtTotSGru: Real;
mtComis_Extra: Real;


begin
if Tb_DivDup.State in [dsEdit,dsInsert] then
   Tb_DivDup.Post;
ftotdupdig(0);
if (Arredonda(mTotDup,DM1.Tb_PargerPCASAS.AsInteger))<>
   (Arredonda(DM1.Tb_CPCAVALOR.Value,DM1.Tb_PargerPCASAS.AsInteger)) then
   begin
   fmensagem('O Valor das duplicatas não confere com o valor da Duplicata Original!',0,['0'],0);
   exit;
   end;
mdup:=1;
mtIcmsr   :=0;
mtFrete   :=0;
mtComven  :=0;
mtComV02  :=0;
mtComV03  :=0;
mtComTel  :=0;
mtComSup  :=0;
mtsemCom  :=0;
mtTotDi01 :=0;
mtTotDi02 :=0;
mtTotDi03 :=0;
mtTotDiVlr:=0;
mtValDes01:=0;
mtValDes02:=0;
mtVlrDes  :=0;
mtValSeg  :=0;
mtComasse :=0;
mtComV04  :=0;
mtTotIPI  :=0;
mtTotCGru :=0;
mtTotSGru :=0;
mtComis_Extra:=0;

if not Tb_DivDup.IsEmpty then
   begin
   Tb_DivDup.Next;
   While not Tb_DivDup.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADDAP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+DM1.Tb_CPCACODEMP.AsString+' and ' )
                     +' CACODFOR=0'+DM1.Tb_CPCACODFOR.AsString
                     +' and CANUMERO=0'+DM1.Tb_CPCANUMERO.AsString
                     +' and CADESD='+chr(39)+Tb_DivDupDESD.AsString+chr(39)
                     +' and CADUP=0'+DM1.Tb_CPCADUP.AsString
                     +' and CADTEMIS='+chr(39)+FormatDateTime(fdt, DM1.Tb_CPCADTEMIS.AsDateTime)+chr(39));
      try
         DM1.Query1.Open;
      except
         DM1.Query1.Sql.SaveToFile('C:\SQL.TXT');
         end;
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         fmensagem('Ja Existe uma duplicata com as mesmas caracteristicas '
                    +'Desdobramento: '+Tb_DivDupDESD.AsString
                    +'mude o desdobramento, ',0,['0'],0);
         exit;
         end;
      Tb_DivDup.Next;
      end;
   Tb_DivDup.First;
   Tb_Divdup.Next;
   mdup:=1;
   While not Tb_DivDup.Eof do
      begin
      mDup:=mdup+1;
      mcodldr:=fCriarLDR(DM1.Tb_CPCACODEMP.AsInteger
                  ,0 // Valor Real
                  ,Tb_DivDupVALOR.Value // Valor previsto
                  ,DM1.Tb_CPCACODFOR.Value        // Codigo Cliente
                  ,0
                  ,Tb_DivDupDTVCTO.Value // data prevista
                  ,pdatanula // data real
                  ,DM1.Tb_CPCADTEMIS.Value // data Referencia
                  ,pdatanula // data de alteracao
                  ,DM1.Tb_CPCACODCC.Value
                  ,DM1.Tb_CPCACODDEP.Value
                  ,DM1.Tb_CPCANATDC.Value
                  ,DM1.Tb_CPCADESCMV.Value
                  ,FormatFloat('000000',DM1.Tb_CPCANUMERO.Value)+'-'+Tb_DivDupDESD.Value
                  ,' '
                  ,'FR'
                  ,DM1.Tb_CPCANOMCTA.Value
                  ,DM1.Tb_CPCANOMDEP.Value
                  ,DM1.Tb_CPCANOMCC.Value
                  ,DM1.Tb_CPnomefor.Value
                  ,DM1.Tb_CPCAOBS.Value
                  ,1
                  ,iif(DM1.Tb_CPCACODCTA.AsInteger>0,DM1.Tb_CPCACODCTA.AsInteger,codcai)
                  ,lotmov
                  ,0 // status
                  ,03); // origem

      DM1.Query5.close;
      DM1.Query5.SQL.Clear;


      DM1.Query5.SQL.Add('Insert into CADDAP ('
                        +' CACODEMP'
                        +',CANUMERO'
                        +',CADESD'
                        +',CACODFOR'
                        +',CADUP'
                        +',CADTEMIS'
                        +',CAVALOR'
                        +',CAVALOR_ACRES'
                        +',CADTVCTO'
                        +',CADTDESC'
                        +',CADESC'
                        +',CASTATUS'
                        +',CAVALDES'
                        +',CAJUROS'
                        +',CABANCO'
                        +',CATEMBOL'
                        +',CALOTE'
                        +',CADTALT'
                        +',CADTINC'
                        +',CACHAVEP'
                        +',CALOTSEQ_CP'
                        +',CACODCTA'
                        +',CACODCC'
                        +',CACODDEP'
                        +',CADESCMV'
                        +',CANOMCTA'
                        +',CANOMCC'
                        +',CANOMDEP'
                        +',CANATDC'
                        +',CANUMPARC '
                        +',CAQTDPARC '
                        +',CACODLDR '
                        +',CAOBS '
                        +' ) values ('
                        +DM1.Tb_CPCACODEMP.AsString
                        +','+DM1.Tb_CPCANUMERO.AsString
                        +',:DESD'
                        +',0'+DM1.Tb_CPCACODFOR.AsString
                        +',0'+DM1.Tb_CPCADUP.AsString
                        +',:DTEMIS'
                        +','+mudaVP(Tb_DivDupVALOR.AsString)
                        +','+mudaVP(Tb_DivDupVALOR_ACRES.AsString)
                        +',:DTVCTO'
                        +',:DTDESC'
                        +','+mudaVP(DM1.Tb_CPCADESC.AsString)
                        +','+DM1.Tb_CPCASTATUS.AsString
                        +','+mudaVP(Tb_DivDupDESCFIN.AsString)
                        +',0' // valor do juros
                        +',0'+DM1.Tb_CPCABANCO.AsString
                        +',0'+DM1.Tb_CPCATEMBOL.AsString
                        +',0'+DM1.Tb_CPCALOTE.AsString
                        +',:DTALT'
                        +',:DTINC'
                        +',0'+DM1.Tb_CPCACHAVEP.AsString
                        +',0'+DM1.Tb_CPCALOTSEQ_CP.AsString
                        +',0'+DM1.Tb_CPCACODCTA.AsString
                        +',:CODCC'
                        +',:CODDEP'
                        +',:DESCMV'
                        +',:NOMCTA'
                        +',:NOMCC'
                        +',:NOMDEP'
                        +',:NATDC '
                        +',:NUMPARC '
                        +',:QTDPARC '
                        +',:CACODLDR'
                        +',:CAOBS'
                        +' )');


      DM1.Query5.ParambyName('DESD').AsString     :=Tb_DivDupDESD.AsString;
      DM1.Query5.ParambyName('DTEMIS').AsDateTime :=DM1.Tb_CPCADTEMIS.AsDateTime;
      DM1.Query5.ParambyName('DTVCTO').AsDateTime :=Tb_DivDupDTVCTO.AsDateTime;
      DM1.Query5.ParambyName('DTDESC').AsDateTime :=Tb_DivDupDTDESCFIN.AsDateTime;
      DM1.Query5.ParambyName('DTALT').AsDateTime  :=Now;
      DM1.Query5.ParambyName('DTINC').AsDateTime  :=DM1.Tb_CPCADTINC.AsDateTime;
      DM1.Query5.ParambyName('CODCC').AsString    :=DM1.Tb_CPCACODCC.AsString;
      DM1.Query5.ParambyName('CODDEP').AsString   :=DM1.Tb_CPCACODDEP.AsString;
      DM1.Query5.ParambyName('DESCMV').AsString   :=DM1.Tb_CPCADESCMV.AsString;
      DM1.Query5.ParambyName('NOMCTA').AsString   :=DM1.Tb_CPCANOMCTA.AsString;
      DM1.Query5.ParambyName('NOMCC').AsString    :=DM1.Tb_CPCANOMCC.AsString;
      DM1.Query5.ParambyName('NOMDEP').AsString   :=DM1.Tb_CPCANOMDEP.AsString;
      DM1.Query5.ParambyName('NATDC').AsString    :=DM1.Tb_CPCANATDC.AsString;
      DM1.Query5.ParambyName('NUMPARC').AsInteger :=mDup;
      DM1.Query5.ParambyName('QTDPARC').AsInteger :=mQtdDup;
      DM1.Query5.ParambyName('CACODLDR').value    :=mcodldr;
      DM1.Query5.ParambyName('CAOBS').AsString    :=DM1.Tb_CPCAOBS.AsString;

      try
         DM1.Query5.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query5.sql.savetofile('C:\SQL.TXT');

         end;
      Tb_DivDup.Next;
      end;

   Tb_DivDup.First;
   DM1.Tb_CP.Edit;

// inicio
   DM1.Tb_CPCADESD.Value         :=Tb_DivDupDESD.Value;
   DM1.Tb_CPCAVALOR.Value        :=Tb_DivDupVALOR.Value;
   DM1.Tb_CPCAVALOR_ACRES.Value        :=Tb_DivDupVALOR_ACRES.Value;
   DM1.Tb_CPCADTVCTO.AsDateTime  := Tb_DivDupDTVCTO.Value;
   DM1.Tb_CPCAVALDES.AsFloat      := Tb_DivDupDESCFIN.Value;
   DM1.Tb_CPCADTDESC.AsDateTime := Tb_DivDupDTDESCFIN.Value;
   DM1.Tb_CPCANUMPARC.AsFloat   := 01;
   DM1.Tb_CPCAQTDPARC.AsFloat   := mQtdDup;
   DM1.Tb_CP.Post;
// termino

   end;
close;
end;

procedure TFrm_DivTit_Pagar.Tb_DivDupAfterPost(DataSet: TDataSet);
begin
if (Tb_DivDupDESD.AsString='') and (Tb_DivDupVALOR.AsFloat<=0) then
  begin
  Tb_DivDup.Delete;
  end;
if (Tb_DivDup.RecordCount = ValInt(QTDP.Text)) then
  ftotdupdig(0);
end;

procedure TFrm_DivTit_Pagar.Tb_DivDupBeforePost(DataSet: TDataSet);
begin
{
Tb_DivDupPERCENT.Value:=Arredonda( ((Tb_DivDupVALOR.Value-Tb_DivDupTARBAN.Value)*100
                           /(DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCATARBAN.Value))
                           ,DM1.Tb_PargerPCASAS.AsInteger);
}
Tb_DivDupPERCENT.Value:=Arredonda( (Tb_DivDupVALOR.Value/DM1.Tb_CPCAVALOR.Value)
                           ,DM1.Tb_PargerPCASAS.AsInteger);

Tb_DivDupICMSR.Value:=0;

Tb_DivDupFRETE.Value:=0;

Tb_DivDupVALSEG.Value:=0;

Tb_DivDupTOTIPI.Value:=0;
end;

procedure TFrm_DivTit_Pagar.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DivTit_Pagar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   begin
   if (DBGrid1.SelectedField=Tb_DivDupVALOR) or
      (DBGrid1.SelectedField=Tb_DivDupDESCFIN) or
      (DBGrid1.SelectedField=Tb_DivDupTARBAN) then
      key:=DecimalSeparator;
   end;   
end;

procedure TFrm_DivTit_Pagar.bbgerardiafixoClick(Sender: TObject);
var
x,mqtdd: Integer;
mdif,mvaldup: Real;

mdif_acres,mval_acres: Real;

mpDescDia,mdifdf,mvaldescf: Real;
mdatav: TDateTime;
begin

if ValInt(edt_QTDP.text)<1 then
   begin
   fmensagem('Pelo memos uma parcela tem que ser colocada!',0,['0'],0);
   exit;
   end;
if fsonumero(edt_dtprimvcto.Text)<=0 then
   begin
   MessageDlg('Data do Primeiro Vencimento tem que ser colocado!',mtWarning,[mbok],0);
   exit;
   end;

Tb_DivDup.Close;
Tb_DivDup.CreateDataSet;
Tb_DivDup.Open;

mtotdup:=DM1.Tb_CPCAVALOR.AsFloat;

mqtdd:=ValInt(edt_QTDP.Text);

mvaldup:= mtotdup/mqtdd;
mvaldup:=arredonda(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
mdif:=mvaldup*mqtdd;
mdif:=mtotdup-mdif;
mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);



mval_acres:= DM1.Tb_CPCAVALOR_ACRES.AsFloat/mqtdd;
mval_acres:=arredonda(mval_acres,DM1.Tb_PargerPCASAS.AsInteger);
mdif_acres:=mval_acres*mqtdd;
mdif_acres:=DM1.Tb_CPCAVALOR_ACRES.AsFloat-mdif_acres;
mdif_acres:=arredonda(mdif_acres,DM1.Tb_PargerPCASAS.AsInteger);





if DM1.Tb_CPCAVALDES.Value>0 then
   begin
   mvaldescf:=DM1.Tb_CPCAVALDES.Value/mqtdd;
   mvaldescf:=arredonda(mvaldescf,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdf:=mvaldescf*mqtdd;
   mdifdf:=DM1.Tb_CPCAVALDES.Value-mdifdf;
   mdifdf :=arredonda(mdifdf,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifdf   :=0;
   mvaldescf:=0;;
   end;

mdatav:=edt_dtprimvcto.Date;
 mpDescDia:=0;

for x:=1 to mqtdd do
   begin
   Tb_DivDup.Append;

{   if trim(DM1.Tb_CPCADESD.Text)='' then
      Tb_DivDupDESD.Value  :=chr(integer('A')+(x-1))
   else
      Tb_DivDupDESD.Value  :=chr(integer(DM1.Tb_CPCADESD.Value[1])+(x-1));}

   Tb_DivDupDESD.AsString  :=IntToStr(x);

   Tb_DivDupVALOR.Value :=mvaldup+mdif;
   Tb_DivDupDTVCTO.Value:=mdatav;
   Tb_DivDupVALOR_ACRES.Value :=mval_acres+mdif_acres;

   if DM1.Tb_CPCAVALDES.Value>0 then
      begin
      Tb_DivDupDESCFIN.Value:=mvaldescf+mdifdf;
      if DM1.Tb_CPCADTVCTO.Value=DM1.Tb_CPCADTDESC.Value then
         Tb_DivDupDTDESCFIN.Value:=mdatav
      else
         Tb_DivDupDTDESCFIN.Value:=DM1.Tb_CPCADTDESC.Value;
      end;
   if mpDescDia>0 then
      Tb_DivDupDESCANT.Value:=Arredonda( ((mvaldup+mdif)
                              *mpDescDia/100), DM1.Tb_PargerPCASAS.AsInteger)

   else
      Tb_DivDupDESCANT.Value:=0;
   Tb_DivDupCODBCO.Value    :=DM1.Tb_CPCABANCO.Value;
   mdatav:=IncMonth(edt_dtprimvcto.Date,x);
   mdif     :=0;
   mdifdf   :=0;
   mdif_acres:=0;
   Tb_DivDup.Post;

   end;
fTotdupDig(0);



end;

end.
