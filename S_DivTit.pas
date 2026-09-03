unit S_DivTit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,lerarq,func,
  dbcgrids, DB, DBTables, Grids, DBGrids,S_Bco,func2, DBClient, ToolEdit;

type
  TFrm_DivTit = class(TForm)
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
    Label10: TLabel;
    DBE_DESCD: TDBEdit;
    Label11: TLabel;
    DBE_COMIS: TDBEdit;
    Label12: TLabel;
    DBE_CODCLI: TDBEdit;
    DBE_NOMCLI: TDBEdit;
    Label13: TLabel;
    DBE_CODVEN: TDBEdit;
    DBE_NOMVEN: TDBEdit;
    Label14: TLabel;
    DBE_CODBCO: TDBEdit;
    DBE_NOMBCO: TDBEdit;
    Label15: TLabel;
    DBE_TARBAN: TDBEdit;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label16: TLabel;
    NOMBCO: TEdit;
    CODBCO: TEdit;
    Src_DivDup: TDataSource;
    TARBAN: TEdit;
    Label17: TLabel;
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
    Tb_DivDupDESCANT: TFloatField;
    Tb_DivDupCODBCO: TFloatField;
    Tb_DivDupTARBAN: TFloatField;
    Tb_DivDupICMSR: TFloatField;
    Tb_DivDupFRETE: TFloatField;
    Tb_DivDupCOMVEN: TFloatField;
    Tb_DivDupCOMV02: TFloatField;
    Tb_DivDupCOMV03: TFloatField;
    Tb_DivDupCOMTEL: TFloatField;
    Tb_DivDupCOMSUP: TFloatField;
    Tb_DivDupSEMCOM: TFloatField;
    Tb_DivDupTOTDI01: TFloatField;
    Tb_DivDupTOTDI02: TFloatField;
    Tb_DivDupTOTDI03: TFloatField;
    Tb_DivDupTOTDIVLR: TFloatField;
    Tb_DivDupVALDES01: TFloatField;
    Tb_DivDupVALDES02: TFloatField;
    Tb_DivDupVALSEG: TFloatField;
    Tb_DivDupVCOMASSE: TFloatField;
    Tb_DivDupCOMV04: TFloatField;
    Tb_DivDupTOTIPI: TFloatField;
    Tb_DivDupTOTCGRU: TFloatField;
    Tb_DivDupTOTSGRU: TFloatField;
    Tb_DivDupCOMIS_EXTRA: TFloatField;
    Tb_DivDupPERCENT: TFloatField;
    Tb_DivDupDTDESCFIN: TDateField;
    Tb_DivDupnombco: TStringField;
    Tb_DivDupVLRDES: TFloatField;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    edt_dtprimvcto: TDateEdit;
    edt_QTDP: TEdit;
    bbgerardiafixo: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbGerarDuplicClick(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure TARBANExit(Sender: TObject);
    procedure PRAZOExit(Sender: TObject);
    procedure QTDPExit(Sender: TObject);
    procedure INTExit(Sender: TObject);
    procedure bbGrarDupClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Tb_DivDupAfterPost(DataSet: TDataSet);
    procedure Tb_DivDupBeforePost(DataSet: TDataSet);
    procedure Tb_DivDupCalcFields(DataSet: TDataSet);
    procedure bbgerardiafixoClick(Sender: TObject);
    procedure copiar(DataSet: TDataSet);
  private
    { Private declarations }

    cds_novo_ant: TClientDataSet;

    function ftotdupdig(pTipo: Integer): Boolean;

    function fVerificaDuplicidade:boolean;


  public
    { Public declarations }
  end;

var
  Frm_DivTit: TFrm_DivTit;
  mtabtemp01: String;
  mQtdDup: Integer;
  mTotDup: Real;
  mTotTar: Real;
implementation

uses S_DM5, S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_DivTit.FormCreate(Sender: TObject);
begin
Tb_DivDup.CreateDataSet;
Tb_DivDup.Open;
Tb_DivDupVALOR.DisplayFormat    :=mcasas;
Tb_DivDupDTVCTO.DisplayFormat   :=fdt2;
Tb_DivDupDTVCTO.EditMask        :=pEditMascData;
Tb_DivDupDESCFIN.DisplayFormat  :=mcasas;
Tb_DivDupDTDESCFIN.DisplayFormat:=fdt2;
Tb_DivDupDTDESCFIN.EditMask     :=pEditMascData;
Tb_DivDupTARBAN.DisplayFormat   :=mcasas;
Tb_DivDupDESCANT.DisplayFormat  :=mcasas;
cds_novo_ant:=TClientDataSet.Create(nil);


end;

procedure TFrm_DivTit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Tb_DivDup.Close;
fdeletaTemp(mtabtemp01);
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_DivTit.bbGerarDuplicClick(Sender: TObject);
var
x,mqtdd: Integer;
mdif,mvaldup: Real;
mpDescDia,mdifdf,mvaldescf: Real;
mdatav: TDateTime;
ult_Carac: String;
begin
if ValInt(QTDP.Text)<1 then
   begin
   fmensagem('Pelo memos uma parcela tem que ser colocada!',0,['0'],0);
   exit;
   end;

if ValInt(INT.Text)<1 then
   begin
   fmensagem('Intervalo tem que ser maior que zero!',0,['0'],0);
   exit;
   end;

if not Tb_DivDup.IsEmpty then
   begin
   Tb_DivDup.Close;
   Tb_DivDup.CreateDataSet;
   Tb_DivDup.Open;
   end;

if Arredonda(DM1.Tb_DarCRVALOR.Value,DM1.Tb_PargerPCASAS.AsInteger)<>
   Arredonda(DM1.Tb_DarCRTOTNF.Value,DM1.Tb_PargerPCASAS.AsInteger) then
   mtotdup:=(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRTARBAN.Value)
else
   mtotdup:=DM1.Tb_DarCRVALOR.Value;

mqtdd:=ValInt(QTDP.Text);
if valint(CODBCO.Text)>0 then
   mtotdup:=mtotdup+(ValFloat(TARBAN.Text)*mqtdd);

mvaldup:= mtotdup/mqtdd;
mvaldup:=arredonda(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
mdif:=mvaldup*mqtdd;
mdif:=mtotdup-mdif;
mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRDESCF.Value>0 then
   begin
   mvaldescf:=DM1.Tb_DarCRDESCF.Value/mqtdd;
   mvaldescf:=arredonda(mvaldescf,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdf:=mvaldescf*mqtdd;
   mdifdf:=DM1.Tb_DarCRDESCF.Value-mdifdf;
   mdifdf :=arredonda(mdifdf,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifdf   :=0;
   mvaldescf:=0;;
   end;

mdatav:=DM1.Tb_DarCRDTEMIS.Value;
mdatav:=mdatav+ValInt(PRAZO.Text);
if DM1.Tb_DarCRDESCD.Value>0 then
   mpDescDia:=DM1.Tb_DarCRDESCD.Value*100/(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRTARBAN.Value)
else
   mpDescDia:=0;

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add('Select max(CRDESD) from CADDAR where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ' )
                  +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                  +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                  +' and CRNPED=0'+DM1.Tb_DarCRNPED.AsString
                  +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                  +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, DM1.Tb_DarCRDTEMIS.AsDateTime)+chr(39));
DM1.Query6.Open;
//ult_Carac:=inttostr( Ord(Copy(DM1.Query6.Fields[0].AsString,1,1)[1]));
ult_Carac:=DM1.Query6.Fields[0].AsString;

for x:=1 to mqtdd do
   begin
   Tb_DivDup.Append;
//   Tb_DivDupDESD.Value  :=chr(integer(DM1.Tb_DarCRDESD.Value[1])+(x-1));
//   Tb_DivDupDESD.Value  :=chr(Ord(Copy(ult_Carac,1,1)[1])+(x));

   Tb_DivDupDESD.AsString  :=IntToStr(x);
   
   Tb_DivDupVALOR.Value :=mvaldup+mdif;
   Tb_DivDupTARBAN.Value:=ValFloat(TARBAN.Text);
   Tb_DivDupDTVCTO.Value:=mdatav;
   if DM1.Tb_DarCRDESCF.Value>0 then
      begin
      Tb_DivDupDESCFIN.Value:=mvaldescf+mdifdf;
      if DM1.Tb_DarCRDTVCTO.Value=DM1.Tb_DarCRDTDESCF.Value then
         Tb_DivDupDTDESCFIN.Value:=mdatav
      else
         Tb_DivDupDTDESCFIN.Value:=DM1.Tb_DarCRDTDESCF.Value;
      end;
   if mpDescDia>0 then
      Tb_DivDupDESCANT.Value:=Arredonda( ((mvaldup+mdif)
                              *mpDescDia/100), DM1.Tb_PargerPCASAS.AsInteger)

   else
      Tb_DivDupDESCANT.Value:=0;
   Tb_DivDupCODBCO.Value    :=DM1.Tb_DarCRCODBCO.Value;
   mdatav:=mdatav+ValInt(INT.Text);
   mdif     :=0;
   mdifdf   :=0;
   Tb_DivDup.Post;
   end;
fTotdupDig(0);


end;

function TFrm_DivTit.ftotdupdig(pTipo: Integer): Boolean;
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
   mTotDup:=mTotDup+(Tb_DivDupVALOR.Value-Tb_DivDupTARBAN.Value);
   mTotTar:=mTotTar+Tb_DivDupTARBAN.Value;
   Tb_DivDup.Next;
   end;
lbl_totdup.Caption:='Qtd.Dup:['+IntToStr(mQtdDup)+'] Total sem Tar.Banc:'
                    +DM1.Tb_PargerPMOEDA.Value+'['+FormatFloat(mcasas, mTotDup)+']'
                    +'Total Tar.Banc:'
                    +DM1.Tb_PargerPMOEDA.Value+'['+FormatFloat(mcasas, mTotTar)+']';
Tb_DivDup.GotoBookmark(mPosReg);
result:=true;

end;
procedure TFrm_DivTit.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_DivTit',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DivTit.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if ValInt(CODBCO.Text)=0 then
   begin
   NOMBCO.Text:='Carteira ';
   TARBAN.Text:=FormatFloat(mcasas,0);
   end
else
   begin
   if flqr1('BCBANCO,BCTARIFA','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
      TARBAN.Text:=FormatFloat(mcasas, DM1.Query1.Fields[1].AsFloat);
      end;
   end;


end;

procedure TFrm_DivTit.TARBANExit(Sender: TObject);
begin
TARBAN.Text:=Formatfloat(mcasas, ValFloat(TARBAN.Text));
if (ValFloat(TARBAN.Text)>999999) or (ValFloat(TARBAN.Text)<0) then
   begin
   fmensagem('Favor Digitar um valor válido!',0,['0'],0);
   TARBAN.SetFocus;
   end;
end;

procedure TFrm_DivTit.PRAZOExit(Sender: TObject);
begin
PRAZO.Text:=fdeixanum2(PRAZO.Text);
if fsonumero(PRAZO.Text)>99999 then
   begin
   fmensagem('Prazo valor Muito grande!',0,['0'],0);
   PRAZO.SetFocus;
   end;

end;

procedure TFrm_DivTit.QTDPExit(Sender: TObject);
begin
QTDP.Text:=fdeixanum2(QTDP.Text);
if fsonumero(QTDP.Text)>99999 then
   begin
   fmensagem('Quantidade de Parcelas valor Muito grande!',0,['0'],0);
   QTDP.SetFocus;
   end;

end;

procedure TFrm_DivTit.INTExit(Sender: TObject);
begin
INT.Text:=fdeixanum2(INT.Text);
if fsonumero(INT.Text)>99999 then
   begin
   fmensagem('Intervalo valor Muito grande!',0,['0'],0);
   INT.SetFocus;
   end;

end;

procedure TFrm_DivTit.bbGrarDupClick(Sender: TObject);
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
   (Arredonda(DM1.Tb_DarCRVALOR.Value,DM1.Tb_PargerPCASAS.AsInteger)) then
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
   Tb_DivDup.first;
   While not Tb_DivDup.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADDAR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ' )
                     +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                     +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                     +' and CRDESD='+chr(39)+trim(Tb_DivDupDESD.AsString)+chr(39)
                     +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                     +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, DM1.Tb_DarCRDTEMIS.AsDateTime)+chr(39));

      try
         DM1.Query1.Open;
      except
         DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.TXT');
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

   DM1.Tb_Dar.Edit;

// inicio
   DM1.Tb_DarCRDESD.Value         :=trim(Tb_DivDupDESD.Value);
   DM1.Tb_DarCRVALOR.Value        :=Tb_DivDupVALOR.Value;
   DM1.Tb_DarCRTARBAN.Value       :=Tb_DivDupTARBAN.Value;
   DM1.Tb_DarCRQTDPARC.AsFloat    := mqtddup;
   DM1.Tb_DarCRNUMPARC.AsFloat    := 01;
   DM1.Tb_DarCRDTVCTO.AsDateTime  := Tb_DivDupDTVCTO.Value;
   DM1.Tb_DarCRICMSR.AsFloat      := DM1.Tb_DarCRICMSR.Value-mtIcmsr;
   DM1.Tb_DarCRDESCF.AsFloat      := Tb_DivDupDESCFIN.Value;
   DM1.Tb_DarCRDTDESCF.AsDateTime := Tb_DivDupDTDESCFIN.Value;
   DM1.Tb_DarCRJURD.AsFloat       := arredonda(((Tb_DivDupVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
   DM1.Tb_DarCRDESCD.AsFloat      := Tb_DivDupDESCANT.Value;
   DM1.Tb_DarCRMULTA.AsFloat      := arredonda((Tb_DivDupVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
   DM1.Tb_DarCRVALFRE.AsFloat     := DM1.Tb_DarCRVALFRE.Value-mtFrete;
   DM1.Tb_DarCRCOMVEN.AsFloat     := DM1.Tb_DarCRCOMVEN.Value-mtComven;
   DM1.Tb_DarCRCOMV02.AsFloat     := DM1.Tb_DarCRCOMV02.Value-mtComV02;
   DM1.Tb_DarCRCOMV03.AsFloat     := DM1.Tb_DarCRCOMV03.Value-mtComV03;
   DM1.Tb_DarCRCOMTEL.AsFloat     := DM1.Tb_DarCRCOMTEL.Value-mtComTel;
   DM1.Tb_DarCRCOMSUP.AsFloat     := DM1.Tb_DarCRCOMSUP.Value-mtComSup;
   DM1.Tb_DarCRSEMCOM.AsFloat     := DM1.Tb_DarCRSEMCOM.Value-mtsemCom;
   DM1.Tb_DarCRTOTDI01.AsFloat    := DM1.Tb_DarCRTOTDI01.Value-mtTotDi01;
   DM1.Tb_DarCRTOTDI02.AsFloat    := DM1.Tb_DarCRTOTDI02.Value-mtTotDi02;
   DM1.Tb_DarCRTOTDI03.AsFloat    := DM1.Tb_DarCRTOTDI03.Value-mtTotDi03;
   DM1.Tb_DarCRTOTDIVL.AsFloat    := DM1.Tb_DarCRTOTDIVL.Value-mtTotDiVlr;
   DM1.Tb_DarCRVALDES01.AsFloat   := DM1.Tb_DarCRVALDES01.Value-mtValDes01;
   DM1.Tb_DarCRVALDES02.AsFloat   := DM1.Tb_DarCRVALDES02.Value-mtValDes02;
   DM1.Tb_DarCRVLRDES.AsFloat     := DM1.Tb_DarCRVLRDES.Value-mtVlrDes;
   DM1.Tb_DarCRCOMASSE.AsFloat    := DM1.Tb_DarCRCOMASSE.Value-mtComasse;
   DM1.Tb_DarCRVALSEG.AsFloat     := DM1.Tb_DarCRVALSEG.Value-mtValSeg;
   DM1.Tb_DarCRCOMV04.AsFloat     := DM1.Tb_DarCRCOMV04.Value-mtComV04;
   DM1.Tb_DarCRTOTIPI.AsFloat     := DM1.Tb_DarCRTOTIPI.Value-mtTotIPI;
   DM1.Tb_DarCRTOTCGRU.AsFloat    := DM1.Tb_DarCRTOTCGRU.Value-mtTotCGru;
   DM1.Tb_DarCRTOTSGRU.AsFloat    := DM1.Tb_DarCRTOTSGRU.Value-mtTotSGru;
   DM1.Tb_DarCRCOMIS_EXTRA.AsFloat:= DM1.Tb_DarCRCOMIS_EXTRA.Value-mtComis_Extra;
   DM1.Tb_DarCRVLRDES.AsFloat    := DM1.Tb_DarCRVLRDES.Value-mtVlrDes;
   DM1.Tb_Dar.post;

   Tb_Divdup.Next;
   mdup:=1;
   While not Tb_DivDup.Eof do
      begin
      mDup:=mdup+1;

      mChaveIdLdr :=fCriarLDR(DM1.Tb_DarCRCODEMP.AsInteger
                  ,0 // Valor Real
                  ,Tb_DivDupVALOR.Value // Valor previsto
                  ,DM1.Tb_DarCRCODCLI.Value        // Codigo Cliente
                  ,DM1.Tb_DarCRVINC02.Value
                  ,Tb_DivDupDTVCTO.Value // data prevista
                  ,pdatanula // data real
                  ,DM1.Tb_DarCRDTEMIS.Value // data Referencia
                  ,pdatanula // data de alteracao
                  ,DM1.Tb_DarCRCODCC.Value
                  ,DM1.Tb_DarCRCODDEP.Value
                  ,DM1.Tb_DarCRNATDC.Value
                  ,DM1.Tb_DarCRDESCMV.Value
                  ,DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value)+'-'+Tb_DivDupDESD.Value
                  ,DM1.Tb_DarCRNOMFPGTO.Value
                  ,'CL'
                  ,DM1.Tb_DarCRNOMCTA.Value
                  ,DM1.Tb_DarCRNOMDEP.Value
                  ,DM1.Tb_DarCRNOMCC.Value
                  ,DM1.Tb_Darrazaocli.Value
                  ,DM1.Tb_DarCROBS.AsString
                  ,3
                  ,iif(DM1.Tb_DarCRCODCTA.AsInteger>0,DM1.Tb_DarCRCODCTA.AsInteger,codcai)
                  ,lotmov
                  ,0 // status
                  ,03); // origem
      DM4.Qr_IncDar.Close;
      DM4.Qr_IncDar.ParambyName('CRCODEMP').AsFloat    := DM1.Tb_DarCRCODEMP.Value;
      DM4.Qr_IncDar.ParambyName('CRCODECF').AsFloat    := DM1.Tb_DarCRCODECF.Value;
      DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := DM1.Tb_DarCRNUMERO.Value;
      DM4.Qr_IncDar.ParambyName('CRDESD').AsString     := TRIM(Tb_DivDupDESD.Value);
      DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat       := DM1.Tb_darcrdup.Value;
      DM4.Qr_IncDar.ParambyName('CRCODCLI').AsFloat    := DM1.Tb_DarCRCODCLI.Value;
      DM4.Qr_IncDar.ParambyName('CRNUMCUP').AsFloat    := DM1.Tb_DarCRNUMCUP.Value;
      DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := DM1.Tb_DarCRDATCUP.Value;
      DM4.Qr_IncDar.ParambyName('CRTOTNF').AsFloat     := DM1.Tb_DarCRTOTNF.Value;
      DM4.Qr_IncDar.ParambyName('CRVALOR').AsFloat     := Tb_DivDupVALOR.Value;
      DM4.Qr_IncDar.ParambyName('CRTARBAN').AsFloat    := Tb_DivDupTARBAN.Value;
      DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime := DM1.Tb_DarCRDTEMIS.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_DTINICIO').AsDateTime := strtodatetime('01/'+formatdatetime('mm/yyyy', DM1.Tb_darCRDTEMIS.AsDateTime));

      DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_TIPO').AsInteger      := DM1.Tb_DarCRCOMPETENCIA_TIPO.AsInteger;

      DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDateTime := Tb_DivDupDTVCTO.Value;
      DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
                                                                                              
      DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   := mqtddup;
      DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   := mDup;
      DM4.Qr_IncDar.ParambyName('CRNPED').AsFloat      := DM1.Tb_DarCRNPED.Value;
      DM4.Qr_IncDar.ParambyName('CRNPED_NIVEL').AsFloat:= DM1.Tb_DarCRNPED_NIVEL.Value;
      DM4.Qr_IncDar.ParambyName('CRORDEM').AsFloat     := DM1.Tb_DarCRORDEM.Value;
      DM4.Qr_IncDar.ParambyName('CRCODCC').AsString    := DM1.Tb_DarCRCODCC.Value;
      DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString   := DM1.Tb_DarCRCODDEP.Value;
      DM4.Qr_IncDar.ParambyName('CRDESCMV').AsString   := DM1.Tb_DarCRDESCMV.Value;
      DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString    := DM1.Tb_DarCRNOMCC.Value;
      DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString   := DM1.Tb_DarCRNOMDEP.Value;
      DM4.Qr_IncDar.ParambyName('CRNOMCTA').AsString   := DM1.Tb_DarCRNOMCTA.Value;
      DM4.Qr_IncDar.ParambyName('CRCODCTA').AsInteger  := DM1.Tb_DarCRCODCTA.AsInteger;
      DM4.Qr_IncDar.ParambyName('CRNATDC').AsString    := DM1.Tb_DarCRNATDC.Value;
      DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat    := 0;
      DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat    := 0;
      DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_LB').AsFloat := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat      := 0;
      DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;
      DM4.Qr_IncDar.ParambyName('CRCODLDR').AsFloat  := mChaveIdLdr.codldr;
      DM4.Qr_IncDar.ParambyName('CRCODVEN').AsFloat    := DM1.Tb_DarCRCODVEN.Value;
      DM4.Qr_IncDar.ParambyName('CRCODTLV').AsFloat    := DM1.Tb_DarCRCODTLV.Value;
      DM4.Qr_IncDar.ParambyName('CROBS').AsString      := DM1.Tb_DarCROBS.Value;
      DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat      := 0;
      DM4.Qr_IncDar.ParambyName('CRDEVOL').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRICMSR').AsFloat     := Tb_DivDupICMSR.Value;
      mtIcmsr:=mtIcmsr+Tb_DivDupICMSR.Value;
      DM4.Qr_IncDar.ParambyName('CRDESCF').AsFloat     := Tb_DivDupDESCFIN.Value;
      DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:= Tb_DivDupDTDESCFIN.Value;
      DM4.Qr_IncDar.ParambyName('CRJURD').AsFloat      := arredonda(((Tb_DivDupVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
      DM4.Qr_IncDar.ParambyName('CRDESCD').AsFloat     := Tb_DivDupDESCANT.Value;
      DM4.Qr_IncDar.ParambyName('CRMULTA').AsFloat     := arredonda((Tb_DivDupVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
      DM4.Qr_IncDar.ParambyName('CRQTDDM').AsFloat     := DM4.Tb_Par01PQTDDM.Value;
      DM4.Qr_IncDar.ParambyName('CREMIDUP').AsFloat    := 0;
      DM4.Qr_IncDar.ParambyName('CREMIBLQ').AsFloat    := 0;
      DM4.Qr_IncDar.ParambyName('CRVALFRE').AsFloat    := Tb_DivDupFRETE.Value;
      mtFrete:=mtFrete+Tb_DivDupFRETE.Value;
      DM4.Qr_IncDar.ParambyName('CRNOSNUM').AsString   := ' ';
      DM4.Qr_IncDar.ParambyName('CRDNOSNUM').AsString  := ' ';
      DM4.Qr_IncDar.ParambyName('CRNFACUM').AsString   := dm1.Tb_DarCRNFACUM.Value;
      DM4.Qr_IncDar.ParambyName('CRTIPCOB').AsFloat    := dm1.Tb_DarCRTIPCOB.Value;
      DM4.Qr_IncDar.ParambyName('CRDTALT').AsDateTime  := DM1.Tb_DarCRDTALT.Value;
      DM4.Qr_IncDar.ParambyName('CRUSRALT').AsFloat    := DM1.Tb_DarCRUSRALT.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMVEN').AsFloat    := Tb_DivDupCOMVEN.Value;
      mtComven:=mtComven+Tb_DivDupCOMVEN.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMV02').AsFloat    := Tb_DivDupCOMV02.Value;
      mtComV02:=mtComV02+Tb_DivDupCOMV02.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMV03').AsFloat    := Tb_DivDupCOMV03.Value;
      mtComV03:=mtComV03+Tb_DivDupCOMV03.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMTEL').AsFloat    := Tb_DivDupCOMTEL.Value;
      mtComTel:=mtComTel+Tb_DivDupCOMTEL.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMSUP').AsFloat    := Tb_DivDupCOMSUP.Value;
      mtComSup:=mtComSup+Tb_DivDupCOMSUP.Value;
      DM4.Qr_IncDar.ParambyName('CRSEMCOM').AsFloat    := Tb_DivDupSEMCOM.Value;
      mtsemCom:=mtsemCom+Tb_DivDupSEMCOM.Value;
      DM4.Qr_IncDar.ParambyName('CRTOTDI01').AsFloat   := Tb_DivDupTOTDI01.Value;
      mtTotDi01:=mtTotDi01+Tb_DivDupTOTDI01.Value;
      DM4.Qr_IncDar.ParambyName('CRTOTDI02').AsFloat   := Tb_DivDupTOTDI02.Value;
      mtTotDi02:=mtTotDi02+Tb_DivDupTOTDI02.Value;
      DM4.Qr_IncDar.ParambyName('CRTOTDI03').AsFloat   := Tb_DivDupTOTDI03.Value;
      mtTotDi03:=mtTotDi03+Tb_DivDupTOTDI03.Value;
      DM4.Qr_IncDar.ParambyName('CRTOTDIVL').AsFloat   := Tb_DivDupTOTDIVLR.Value;
      mtTotDiVlr:=mtTotDiVlr+Tb_DivDupTOTDIVLR.Value;
      DM4.Qr_IncDar.ParambyName('CRVALDES01').AsFloat  := Tb_DivDupVALDES01.Value;
      mtValDes01:=mtValDes01+Tb_DivDupVALDES01.Value;

      DM4.Qr_IncDar.ParambyName('CRVALDES02').AsFloat  := Tb_DivDupVALDES02.Value;
      mtValDes02:=mtValDes02+Tb_DivDupVALDES02.Value;
      DM4.Qr_IncDar.ParambyName('CRVLRDES').AsFloat    := Tb_DivDupVLRDES.Value;
      mtVlrDes:=mtVlrDes+Tb_DivDupVLRDES.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_FC').AsFloat := ls_codldr;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CP').AsFloat := DM1.Tb_Ped01P1LOTSEQ.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV').AsFloat  := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV02').AsFloat:= 0;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV03').AsFloat:= 0;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CS').AsFloat  := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CT').AsFloat  := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTCV').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTCV02').AsFloat   := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTCV03').AsFloat   := 0;
      DM4.Qr_IncDar.ParambyName('CRLOTCS').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRCODORI').AsFloat    := DM1.Tb_DarCRCODORI.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTCT').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRCODUSR').AsFloat    := DM1.Tb_DarCRCODUSR.Value;
      DM4.Qr_IncDar.ParambyName('CRHRALT').AsString    := ' ';
      DM4.Qr_IncDar.ParambyName('CRCODV02').AsFloat    := DM1.Tb_DarCRCODV02.Value;
      DM4.Qr_IncDar.ParambyName('CRCODV03').AsFloat    := DM1.Tb_DarCRCODV03.Value;
      DM4.Qr_IncDar.ParambyName('CRCODCV').AsFloat     := DM1.Tb_DarCRCODCV.Value;
      DM4.Qr_IncDar.ParambyName('CRCODBAR').AsString   := ' ';
      DM4.Qr_IncDar.ParambyName('CRCODDIG').AsString   := ' ';
      DM4.Qr_IncDar.ParambyName('CRACEITE').AsString   := DM1.Tb_DarCRACEITE.Value;
      DM4.Qr_IncDar.ParambyName('CRESPECIE').AsString  := DM1.Tb_DarCRESPECIE.Value;
      DM4.Qr_IncDar.ParambyName('CRLEMAT').AsFloat     := 0;
      DM4.Qr_IncDar.ParambyName('CRCODASSE').AsFloat   := DM1.Tb_DarCRCODASSE.Value;
      DM4.Qr_IncDar.ParambyName('CRCOMASSE').AsFloat   := Tb_DivDupVCOMASSE.Value;
      mtComasse:=mtComasse+Tb_DivDupVCOMASSE.Value;

      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
      DM4.Qr_IncDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
      DM4.Qr_IncDar.ParambyName('CRVALSEG').AsFloat      :=Tb_DivDupVALSEG.Value;
      mtValSeg:=mtValSeg+Tb_DivDupVALSEG.Value;

      DM4.Qr_IncDar.ParambyName('CRINST01').AsString     := ' ';
      DM4.Qr_IncDar.ParambyName('CRINST02').AsString     := ' ';
      DM4.Qr_IncDar.ParambyName('CRINST03').AsString     := ' ';
      DM4.Qr_IncDar.ParambyName('CRINST04').AsString     := ' ';
      DM4.Qr_IncDar.ParambyName('CRTBCOCOB').AsFloat     :=0;
      DM4.Qr_IncDar.ParambyName('CREMIBOR').AsFloat      :=0;
      DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
      DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
      DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsFloat      :=0;
      DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
      DM4.Qr_IncDar.ParambyName('CRCODBCO').AsFloat      :=Tb_DivDupCODBCO.Value;
      if Tb_DivDupCODBCO.AsInteger>0 then
         DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=1
      else
         DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=0;
      DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
      DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat      :=0;
      DM4.Qr_IncDar.ParambyName('CRDTCAU').AsDateTime    :=pdatanula;
      DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsDateTime:=pdatanula;;
      DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsDateTime:=pdatanula;;
      DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;;
      DM4.Qr_IncDar.ParambyName('CRNR').AsFloat          :=0;
      DM4.Qr_IncDar.ParambyName('CRCODV04').AsFloat      :=DM1.Tb_Ped01P1CODV04.Value;
      mtComV04:=mtComV04+Tb_DivDupCOMV04.Value;

      DM4.Qr_IncDar.ParambyName('CRCOMV04').AsFloat      :=Tb_DivDupCOMV04.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
      DM4.Qr_IncDar.ParambyName('CRLOTCV04').AsFloat     :=0;
      DM4.Qr_IncDar.ParambyName('CRTOTIPI').AsFloat      :=Tb_DivDupTOTIPI.Value;
      mtTotIPI:=mtTotIPI+Tb_DivDupTOTIPI.Value;

      DM4.Qr_IncDar.ParambyName('CRTOTCGRU').AsFloat     :=Tb_DivDupTOTCGRU.Value;
      mtTotCGru:=mtTotCGru+Tb_DivDupTOTCGRU.Value;

      DM4.Qr_IncDar.ParambyName('CRTOTSGRU').AsFloat     :=Tb_DivDupTOTSGRU.Value;
      mtTotSGru:=mtTotSGru+Tb_DivDupTOTSGRU.Value;
      DM4.Qr_IncDar.ParambyName('CRCUSBCO').AsFloat      :=0;
      DM4.Qr_IncDar.ParambyName('CRCOMIS_EXTRA').AsFloat :=Tb_DivDupCOMIS_EXTRA.Value;
      mtComis_Extra:=mtComis_Extra+Tb_DivDupCOMIS_EXTRA.Value;
      DM4.Qr_IncDar.ParambyName('CRSEQ').AsFloat         :=0;
      DM4.Qr_IncDar.ParambyName('CRPFPGTO').AsFloat      :=DM1.Tb_DarCRPFPGTO.Value;
      DM4.Qr_IncDar.ParambyName('CRTABPV').AsString      :=DM1.Tb_DarCRTABPV.Value;
      DM4.Qr_IncDar.ParambyName('CRCODPV').AsFloat       :=DM1.Tb_DarCRCODPV.Value;
      DM4.Qr_IncDar.ParambyName('CRVINC02').AsFloat      :=DM1.Tb_DarCRVINC02.Value;
      DM4.Qr_IncDar.ParambyName('CRCODFPGTO').AsFloat    :=DM1.Tb_DarCRCODFPGTO.Value;
      DM4.Qr_IncDar.ParambyName('CRNOMFPGTO').AsString   :=DM1.Tb_DarCRNOMFPGTO.Value;

      DM4.Qr_IncDar.ParambyName('CRFIN_CODFIN').AsFloat   :=DM1.Tb_DarCRFIN_CODFIN.Value;
      DM4.Qr_IncDar.ParambyName('CRLANCFIN').AsFLoat      :=DM1.Tb_DarCRLANCFIN.Value;
      DM4.Qr_IncDar.ParambyName('CRDATPED').AsDateTime    :=DM1.Tb_DarCRDATPED.AsDateTime;
      DM4.Qr_IncDar.ParambyName('CRCX_CODCAI').AsFloat    :=DM1.Tb_DarCRCX_CODCAI.Value;
      DM4.Qr_IncDar.ParambyName('CRCX_LOTMOV').AsFloat    :=DM1.Tb_DarCRCX_LOTMOV.Value;
      DM4.Qr_IncDar.ParambyName('CRCODCAR').AsFloat       :=DM1.Tb_DarCRCODCAR.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=DM1.Tb_DarCRLOTSEQ_EC.Value;
      DM4.Qr_IncDar.ParambyName('CRLOTE_EC').AsFloat      :=DM1.Tb_DarCRLOTE_EC.Value;
      DM4.Qr_IncDar.ParambyName('CRTITPROT').AsFloat      :=DM1.Tb_DarCRTITPROT.Value;
      DM4.Qr_IncDar.ParambyName('CRCHD_EMITENTE').AsString:='';
      DM4.Qr_IncDar.ParambyName('CRCHAVE_ID_ANO').AsInteger :=valint(formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));
      DM4.Qr_IncDar.ParambyName('CRCHAVE_ID').AsInteger    :=fBuscareTestarID('CADDAR_'+formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));


      DM4.Qr_IncDar.ParambyName('CRID_NEW').AsInteger        :=fBuscarProximoId('CADDAR_SEQ');
      DM4.Qr_IncDar.ParambyName('CRID_PED01_NEW').AsInteger  :=DM1.Tb_DarCRID_PED01_NEW.AsInteger;
      DM4.Qr_IncDar.ParambyName('CRID_LDR_NEW').AsFloat    :=mChaveIdLdr.idNew;


      Try
         DM4.Qr_IncDar.ExecSQL;
         fdm1StartCommit;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(DM4.Qr_IncDar,692,'_stru '+e.message,'user');
         end;
         end;
      Tb_DivDup.Next;
      end;


// termino

   end;
close;
end;

procedure TFrm_DivTit.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DivTit.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   begin
   if (DBGrid1.SelectedField=Tb_DivDupVALOR) or
      (DBGrid1.SelectedField=Tb_DivDupDESCFIN) or
      (DBGrid1.SelectedField=Tb_DivDupTARBAN) then
      key:=DecimalSeparator;
   end;   
end;

procedure TFrm_DivTit.Tb_DivDupAfterPost(DataSet: TDataSet);
begin
if (Tb_DivDupDESD.AsString='') and (Tb_DivDupVALOR.AsFloat<=0) then
  begin
  Tb_DivDup.Delete;
  end;
if (Tb_DivDup.RecordCount = ValInt(QTDP.Text)) then
  ftotdupdig(0);
end;

procedure TFrm_DivTit.Tb_DivDupBeforePost(DataSet: TDataSet);
begin
if (trim(Tb_DivDupDESD.AsString)='')  then
   begin
   MessageDlg('Desdobramento, campo obrigatório!',mtWarning,[mbok],0);
   abort;
   end;

if (not fVerificaDuplicidade) then
   begin
   MessageDlg('Desdobramento Duplicado, mude para continuar!',mtWarning,[mbok],0);
   abort;
   end;


Tb_DivDupPERCENT.Value:=Arredonda( ((Tb_DivDupVALOR.Value-Tb_DivDupTARBAN.Value)*100
                           /(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRTARBAN.Value))
                           ,DM1.Tb_PargerPCASAS.AsInteger);
if DM1.Tb_DarCRICMSR.Value=0 then
   Tb_DivDupICMSR.Value:=0
else
   Tb_DivDupICMSR.Value:=Arredonda( (DM1.Tb_DarCRICMSR.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRVALFRE.Value=0 then
   Tb_DivDupFRETE.Value:=0
else
   Tb_DivDupFRETE.Value:=Arredonda( (DM1.Tb_DarCRVALFRE.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMVEN.Value=0 then
   Tb_DivDupCOMVEN.Value:=0
else
   Tb_DivDupCOMVEN.Value:=Arredonda( (DM1.Tb_DarCRCOMVEN.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMV02.Value=0 then
   Tb_DivDupCOMV02.Value:=0
else
   Tb_DivDupCOMV02.Value:=Arredonda( (DM1.Tb_DarCRCOMV02.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMV03.Value=0 then
   Tb_DivDupCOMV03.Value:=0
else
   Tb_DivDupCOMV03.Value:=Arredonda( (DM1.Tb_DarCRCOMV03.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMV04.Value=0 then
   Tb_DivDupCOMV04.Value:=0
else
   Tb_DivDupCOMV04.Value:=Arredonda( (DM1.Tb_DarCRCOMV04.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);


if DM1.Tb_DarCRCOMTEL.Value=0 then
   Tb_DivDupCOMTEL.Value:=0
else
   Tb_DivDupCOMTEL.Value:=Arredonda( (DM1.Tb_DarCRCOMTEL.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMSUP.Value=0 then
   Tb_DivDupCOMSUP.Value:=0
else
   Tb_DivDupCOMSUP.Value:=Arredonda( (DM1.Tb_DarCRCOMSUP.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);
if DM1.Tb_DarCRSEMCOM.Value=0 then
   Tb_DivDupSEMCOM.Value:=0
else
   Tb_DivDupSEMCOM.Value:=Arredonda( (DM1.Tb_DarCRSEMCOM.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);
if DM1.Tb_DarCRTOTDI01.Value=0 then
   Tb_DivDupTOTDI01.Value:=0
else
   Tb_DivDupTOTDI01.Value:=Arredonda( (DM1.Tb_DarCRTOTDI01.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);



if DM1.Tb_DarCRTOTDI02.Value=0 then
   Tb_DivDupTOTDI02.Value:=0
else
   Tb_DivDupTOTDI02.Value:=Arredonda( (DM1.Tb_DarCRTOTDI02.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRTOTDI03.Value=0 then
   Tb_DivDupTOTDI03.Value:=0
else
   Tb_DivDupTOTDI03.Value:=Arredonda( (DM1.Tb_DarCRTOTDI03.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);


if DM1.Tb_DarCRTOTDIVL.Value=0 then
   Tb_DivDupTOTDIVLR.Value:=0
else
   Tb_DivDupTOTDIVLR.Value:=Arredonda( (DM1.Tb_DarCRTOTDIVL.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);


if DM1.Tb_DarCRVALDES01.Value=0 then
   Tb_DivDupVALDES01.Value:=0
else
   Tb_DivDupVALDES01.Value:=Arredonda( (DM1.Tb_DarCRVALDES01.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRVALDES02.Value=0 then
   Tb_DivDupVALDES02.Value:=0
else
   Tb_DivDupVALDES02.Value:=Arredonda( (DM1.Tb_DarCRVALDES02.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRVLRDES.Value=0 then
   Tb_DivDupVLRDES.Value:=0
else
   Tb_DivDupVLRDES.Value:=Arredonda( (DM1.Tb_DarCRVLRDES.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRVALSEG.Value=0 then
   Tb_DivDupVALSEG.Value:=0
else
   Tb_DivDupVALSEG.Value:=Arredonda( (DM1.Tb_DarCRVALSEG.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMASSE.Value=0 then
   Tb_DivDupVCOMASSE.Value:=0
else
   Tb_DivDupVCOMASSE.Value:=Arredonda( (DM1.Tb_DarCRCOMASSE.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);


if DM1.Tb_DarCRTOTIPI.Value=0 then
   Tb_DivDupTOTIPI.Value:=0
else
   Tb_DivDupTOTIPI.Value:=Arredonda( (DM1.Tb_DarCRTOTIPI.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRTOTCGRU.Value=0 then
   Tb_DivDupTOTCGRU.Value:=0
else
   Tb_DivDupTOTCGRU.Value:=Arredonda( (DM1.Tb_DarCRTOTCGRU.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRTOTSGRU.Value=0 then
   Tb_DivDupTOTSGRU.Value:=0
else
   Tb_DivDupTOTSGRU.Value:=Arredonda( (DM1.Tb_DarCRTOTSGRU.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRCOMIS_EXTRA.Value=0 then
   Tb_DivDupCOMIS_EXTRA.Value:=0
else
   Tb_DivDupCOMIS_EXTRA.Value:=Arredonda( (DM1.Tb_DarCRCOMIS_EXTRA.Value*Tb_DivDupPERCENT.Value/100)
                         ,DM1.Tb_PargerPCASAS.AsInteger);
end;

procedure TFrm_DivTit.Tb_DivDupCalcFields(DataSet: TDataSet);
begin
if Tb_DivDupCODBCO.Value=0 then
   Tb_DivDupnombco.Value:='Carteira '
else
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_DivDupCODBCO.AsString) then
      Tb_DivDupnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_DivTit.bbgerardiafixoClick(Sender: TObject);
var
x,mqtdd: Integer;
mdif,mvaldup: Real;
mpDescDia,mdifdf,mvaldescf: Real;
mdatav: TDateTime;
ult_Carac: String;
begin
if ValInt(edt_QTDP.Text)<1 then
   begin
   fmensagem('Pelo memos uma parcela tem que ser colocada!',0,['0'],0);
   exit;
   end;

if not Tb_DivDup.IsEmpty then
   begin
   Tb_DivDup.Close;
   Tb_DivDup.CreateDataSet;
   Tb_DivDup.Open;
   end;

if Arredonda(DM1.Tb_DarCRVALOR.Value,DM1.Tb_PargerPCASAS.AsInteger)<>
   Arredonda(DM1.Tb_DarCRTOTNF.Value,DM1.Tb_PargerPCASAS.AsInteger) then
   mtotdup:=(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRTARBAN.Value)
else
   mtotdup:=DM1.Tb_DarCRVALOR.Value;

mqtdd:=ValInt(edt_QTDP.Text);
if valint(CODBCO.Text)>0 then
   mtotdup:=mtotdup+(ValFloat(TARBAN.Text)*mqtdd);

mvaldup:= mtotdup/mqtdd;
mvaldup:=arredonda(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
mdif:=mvaldup*mqtdd;
mdif:=mtotdup-mdif;
mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);

if DM1.Tb_DarCRDESCF.Value>0 then
   begin
   mvaldescf:=DM1.Tb_DarCRDESCF.Value/mqtdd;
   mvaldescf:=arredonda(mvaldescf,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdf:=mvaldescf*mqtdd;
   mdifdf:=DM1.Tb_DarCRDESCF.Value-mdifdf;
   mdifdf :=arredonda(mdifdf,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifdf   :=0;
   mvaldescf:=0;;
   end;

mdatav:=DM1.Tb_DarCRDTEMIS.Value;
mdatav:=mdatav+ValInt(PRAZO.Text);
if DM1.Tb_DarCRDESCD.Value>0 then
   mpDescDia:=DM1.Tb_DarCRDESCD.Value*100/(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRTARBAN.Value)
else
   mpDescDia:=0;

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add('Select max(CRDESD) from CADDAR where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString+' and ' )
                  +' CRCODECF=0'+DM1.Tb_DarCRCODECF.AsString
                  +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                  +' and CRNPED=0'+DM1.Tb_DarCRNPED.AsString
                  +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString
                  +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, DM1.Tb_DarCRDTEMIS.AsDateTime)+chr(39));
DM1.Query6.Open;
//ult_Carac:=inttostr( Ord(Copy(DM1.Query6.Fields[0].AsString,1,1)[1]));
ult_Carac:=DM1.Query6.Fields[0].AsString;

for x:=1 to mqtdd do
   begin
   Tb_DivDup.Append;
//   Tb_DivDupDESD.Value  :=chr(integer(DM1.Tb_DarCRDESD.Value[1])+(x-1));
//   Tb_DivDupDESD.Value  :=chr(Ord(Copy(ult_Carac,1,1)[1])+(x));

   Tb_DivDupDESD.AsString  :=IntToStr(x);

   Tb_DivDupVALOR.Value :=mvaldup+mdif;
   Tb_DivDupTARBAN.Value:=ValFloat(TARBAN.Text);
   Tb_DivDupDTVCTO.Value:=mdatav;
   if DM1.Tb_DarCRDESCF.Value>0 then
      begin
      Tb_DivDupDESCFIN.Value:=mvaldescf+mdifdf;
      if DM1.Tb_DarCRDTVCTO.Value=DM1.Tb_DarCRDTDESCF.Value then
         Tb_DivDupDTDESCFIN.Value:=mdatav
      else
         Tb_DivDupDTDESCFIN.Value:=DM1.Tb_DarCRDTDESCF.Value;
      end;
   if mpDescDia>0 then
      Tb_DivDupDESCANT.Value:=Arredonda( ((mvaldup+mdif)
                              *mpDescDia/100), DM1.Tb_PargerPCASAS.AsInteger)

   else
      Tb_DivDupDESCANT.Value:=0;
   Tb_DivDupCODBCO.Value    :=DM1.Tb_DarCRCODBCO.Value;
   mdatav:=IncMonth(edt_dtprimvcto.Date,x);
   mdif     :=0;
   mdifdf   :=0;
   Tb_DivDup.Post;
   end;
fTotdupDig(0);


end;

function TFrm_DivTit.fVerificaDuplicidade:boolean;
begin
result:=true;
cds_novo_ant.First;
While not cds_novo_ant.eof do
   begin
   if (cds_novo_ant.FieldByName('DESD').AsString=Tb_DivDupDESD.AsString) then
      begin
      if (cds_novo_ant.FieldByName('DTVCTO').AsDateTime =Tb_DivDup.FieldByName('DTVCTO').AsDateTime) then
         begin
         cds_novo_ant.next;
         continue;
         end;
      result:=false;
      break;
      end;
   cds_novo_ant.Next;
   end;

end;

procedure TFrm_DivTit.copiar(DataSet: TDataSet);
begin
cds_novo_ant.Data :=Tb_DivDup.Data;
end;

end.
