unit SR_Folha;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,func,db,dbtables,S_DM1,S_DM2;

type
  TQr_Folha = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    Qr_Periodo: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRImage1: TQRImage;
    Cod01: TQRLabel;
    Nomeve01: TQRLabel;
    Ref01: TQRLabel;
    Venc01: TQRLabel;
    Desc01: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    TOTLIQ: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    SALBASE: TQRLabel;
    BASEINSS: TQRLabel;
    BASEFGTS: TQRLabel;
    FGTSMES: TQRLabel;
    FAIXAIR: TQRLabel;
    BASEIR: TQRLabel;
    TOTVEN: TQRLabel;
    TOTDES: TQRLabel;
    PAGINA: TQRLabel;
    Cod02: TQRLabel;
    Nomeve02: TQRLabel;
    Ref02: TQRLabel;
    Venc02: TQRLabel;
    Desc02: TQRLabel;
    Desc03: TQRLabel;
    Ref03: TQRLabel;
    Nomeve03: TQRLabel;
    Cod03: TQRLabel;
    Venc03: TQRLabel;
    Cod04: TQRLabel;
    Nomeve04: TQRLabel;
    Ref04: TQRLabel;
    Venc04: TQRLabel;
    Desc04: TQRLabel;
    Cod05: TQRLabel;
    Nomeve05: TQRLabel;
    Ref05: TQRLabel;
    Venc05: TQRLabel;
    Desc05: TQRLabel;
    Cod06: TQRLabel;
    Nomeve06: TQRLabel;
    Ref06: TQRLabel;
    Venc06: TQRLabel;
    Desc06: TQRLabel;
    Cod07: TQRLabel;
    Nomeve07: TQRLabel;
    Ref07: TQRLabel;
    Venc07: TQRLabel;
    Desc07: TQRLabel;
    Cod08: TQRLabel;
    Nomeve08: TQRLabel;
    Ref08: TQRLabel;
    Venc08: TQRLabel;
    Desc08: TQRLabel;
    Cod09: TQRLabel;
    Nomeve09: TQRLabel;
    Ref09: TQRLabel;
    Venc09: TQRLabel;
    Desc09: TQRLabel;
    Cod10: TQRLabel;
    Nomeve10: TQRLabel;
    Ref10: TQRLabel;
    Venc10: TQRLabel;
    Desc10: TQRLabel;
    Cod11: TQRLabel;
    Nomeve11: TQRLabel;
    Ref11: TQRLabel;
    Venc11: TQRLabel;
    Desc11: TQRLabel;
    Cod12: TQRLabel;
    Nomeve12: TQRLabel;
    Ref12: TQRLabel;
    Venc12: TQRLabel;
    Desc12: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText10: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_Folha: TQr_Folha;
  mqtdeve: Integer=0;
  mpag: Integer=0;
  mtotven: Real=0;
  mtotdes: Real=0;
implementation

uses S_Imp_Folha;

{$R *.DFM}

procedure TQr_Folha.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
mqtd: Integer;
begin
mqtd:=0;
Cod01.Enabled:=False;
Cod02.Enabled:=False;
Cod03.Enabled:=False;
Cod04.Enabled:=False;
Cod05.Enabled:=False;
Cod06.Enabled:=False;
Cod07.Enabled:=False;
Cod08.Enabled:=False;
Cod09.Enabled:=False;
Cod10.Enabled:=False;
Cod11.Enabled:=False;
Cod12.Enabled:=False;

Nomeve01.Enabled:=False;
Nomeve02.Enabled:=False;
Nomeve03.Enabled:=False;
Nomeve04.Enabled:=False;
Nomeve05.Enabled:=False;
Nomeve06.Enabled:=False;
Nomeve07.Enabled:=False;
Nomeve08.Enabled:=False;
Nomeve09.Enabled:=False;
Nomeve10.Enabled:=False;
Nomeve11.Enabled:=False;
Nomeve12.Enabled:=False;

Ref01.Enabled:=False;
Ref02.Enabled:=False;
Ref03.Enabled:=False;
Ref04.Enabled:=False;
Ref05.Enabled:=False;
Ref06.Enabled:=False;
Ref07.Enabled:=False;
Ref08.Enabled:=False;
Ref09.Enabled:=False;
Ref10.Enabled:=False;
Ref11.Enabled:=False;
Ref12.Enabled:=False;

Venc01.Enabled:=False;
Venc02.Enabled:=False;
Venc03.Enabled:=False;
Venc04.Enabled:=False;
Venc05.Enabled:=False;
Venc06.Enabled:=False;
Venc07.Enabled:=False;
Venc08.Enabled:=False;
Venc09.Enabled:=False;
Venc10.Enabled:=False;
Venc11.Enabled:=False;
Venc12.Enabled:=False;

Desc01.Enabled:=False;
Desc02.Enabled:=False;
Desc03.Enabled:=False;
Desc04.Enabled:=False;
Desc05.Enabled:=False;
Desc06.Enabled:=False;
Desc07.Enabled:=False;
Desc08.Enabled:=False;
Desc09.Enabled:=False;
Desc10.Enabled:=False;
Desc11.Enabled:=False;
Desc12.Enabled:=False;

if mqtdeve=0 then
   begin
   Frm_Imp_Folha.Qr_LFol.Close;
   Frm_Imp_Folha.Qr_LFol.Sql.Clear;
   Frm_Imp_Folha.Qr_LFol.Sql.add('Select * From CADLFOL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+Frm_Imp_Folha.Qr_RFolRFCODEMP.AsString+' and ')
                  +' LCLOCAL=0'+Frm_Imp_Folha.Qr_RFolRFLOCAL.AsString
                  +' and LCMES=0'+Frm_Imp_Folha.Qr_RFolRFMES.AsString
                  +' and LCANO=0'+Frm_Imp_Folha.Qr_RFolRFANO.AsString
                  +' and LCCODFUN=0'+Frm_Imp_Folha.Qr_RFolRFCODFUN.AsString
                  +' order by LCNAT,LCCODEVE');
   Frm_Imp_Folha.Qr_LFol.Open;
   end;

While not Frm_Imp_Folha.Qr_LFol.Eof do
   begin
   mqtd:=mqtd+1;
   mqtdeve:=mqtdeve+1;
   if mqtd=1 then
      begin
      Cod01.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve01.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref01.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc01.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc01.Enabled:=True;
         end
      else
         begin
         Desc01.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc01.Enabled:=True;
         end;
      Cod01.Enabled   :=True;
      Nomeve01.Enabled:=True;
      Ref01.Enabled   :=True;
      end
   else if mqtd=2 then
      begin
      Cod02.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve02.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref02.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc02.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc02.Enabled:=True;
         end
      else
         begin
         Desc02.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc02.Enabled:=True;
         end;
      Cod02.Enabled   :=True;
      Nomeve02.Enabled:=True;
      Ref02.Enabled   :=True;
      end
   else if mqtd=3 then
      begin
      Cod03.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve03.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref03.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc03.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc03.Enabled:=True;
         end
      else
         begin
         Desc03.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc03.Enabled:=True;
         end;
      Cod03.Enabled   :=True;
      Nomeve03.Enabled:=True;
      Ref03.Enabled   :=True;
      end
   else if mqtd=4 then
      begin
      Cod04.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve04.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref04.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc04.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc04.Enabled:=True;
         end
      else
         begin
         Desc04.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc04.Enabled:=True;
         end;
      Cod04.Enabled   :=True;
      Nomeve04.Enabled:=True;
      Ref04.Enabled   :=True;
      end
   else if mqtd=5 then
      begin
      Cod05.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve05.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref05.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc05.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc05.Enabled:=True;
         end
      else
         begin
         Desc05.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc05.Enabled:=True;
         end;
      Cod05.Enabled   :=True;
      Nomeve05.Enabled:=True;
      Ref05.Enabled   :=True;
      end
   else if mqtd=6 then
      begin
      Cod06.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve06.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref06.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc06.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc06.Enabled:=True;
         end
      else
         begin
         Desc06.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc06.Enabled:=True;
         end;
      Cod06.Enabled   :=True;
      Nomeve06.Enabled:=True;
      Ref06.Enabled   :=True;
      end
   else if mqtd=7 then
      begin
      Cod07.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve07.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref07.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc07.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc07.Enabled:=True;
         end
      else
         begin
         Desc07.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc07.Enabled:=True;
         end;
      Cod07.Enabled   :=True;
      Nomeve07.Enabled:=True;
      Ref07.Enabled   :=True;
      end
   else if mqtd=8 then
      begin
      Cod08.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve08.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref08.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc08.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc08.Enabled:=True;
         end
      else
         begin
         Desc08.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc08.Enabled:=True;
         end;
      Cod08.Enabled   :=True;
      Nomeve08.Enabled:=True;
      Ref08.Enabled   :=True;
      end
   else if mqtd=9 then
      begin
      Cod09.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve09.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref09.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc09.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc09.Enabled:=True;
         end
      else
         begin
         Desc09.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc09.Enabled:=True;
         end;
      Cod09.Enabled   :=True;
      Nomeve09.Enabled:=True;
      Ref09.Enabled   :=True;
      end
   else if mqtd=10 then
      begin
      Cod10.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve10.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref10.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc10.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc10.Enabled:=True;
         end
      else
         begin
         Desc10.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc10.Enabled:=True;
         end;
      Cod10.Enabled   :=True;
      Nomeve10.Enabled:=True;
      Ref10.Enabled   :=True;
      end
   else if mqtd=11 then
      begin
      Cod11.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve11.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref11.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc11.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc11.Enabled:=True;
         end
      else
         begin
         Desc11.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc11.Enabled:=True;
         end;
      Cod11.Enabled   :=True;
      Nomeve11.Enabled:=True;
      Ref11.Enabled   :=True;
      end
   else if mqtd=12 then
      begin
      Cod12.Caption   :=FormatFloat('0000',Frm_Imp_Folha.Qr_LFolLCCODEVE.Value);
      Nomeve12.Caption:=Frm_Imp_Folha.Qr_LFolnomeve.Value;
      Ref12.Caption   :=Frm_Imp_Folha.Qr_LFolreferencia.Value;
      if Frm_Imp_Folha.Qr_LFolvecimentos.Value>0 then
         begin
         Venc12.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFolvecimentos.Value);
         Venc12.Enabled:=True;
         end
      else
         begin
         Desc12.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_LFoldescontos.Value);
         Desc12.Enabled:=True;
         end;
      Cod12.Enabled   :=True;
      Nomeve12.Enabled:=True;
      Ref12.Enabled   :=True;
      end
   else
      break;
   if Frm_Imp_Folha.Qr_LFolLCSOMA.Value<>1 then
      begin
      mtotven:=mtotven+Frm_Imp_Folha.Qr_LFolvecimentos.Value;
      mtotdes:=mtotdes+Frm_Imp_Folha.Qr_LFoldescontos.Value;
      end;

   Frm_Imp_Folha.Qr_LFol.Next;
   end;
mpag:=mpag+1;
if (mqtd<12) or (Frm_Imp_Folha.Qr_LFol.Eof) then
   begin
   mqtdeve:=0;
   TOTVEN.Caption  :=FormatFloat(mcasas, mtotven);
   TOTDES.Caption  :=FormatFloat(mcasas, mtotdes);
   TOTLIQ.Caption  :=FormatFloat(mcasas, (Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-Frm_Imp_Folha.Qr_RFolRFTOTDES.Value));
   SALBASE.Caption :=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFSALBASE.Value);
   BASEINSS.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEINSS.Value);
   BASEFGTS.Caption:=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEFGTS.Value);
   FGTSMES.Caption :=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFVLRFGTS.Value);
   BASEIR.Caption  :=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEIR.Value);
   FAIXAIR.Caption :=FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFALIR.Value);
   PAGINA.Caption  :=FormatFloat('00',mpag);
   mtotven:=0;
   mtotdes:=0;
   mpag:=0;
   end
else
   begin
   TOTVEN.Caption  :=FormatFloat(mcasas, mtotven);
   TOTDES.Caption  :=FormatFloat(mcasas, mtotdes);
   TOTLIQ.Caption  :='';
   SALBASE.Caption :='';
   BASEINSS.Caption:='';
   BASEFGTS.Caption:='';
   FGTSMES.Caption :='';
   BASEIR.Caption  :='';
   FAIXAIR.Caption :='';
   PAGINA.Caption  :=FormatFloat('00',mpag);
   end;

end;

end.
