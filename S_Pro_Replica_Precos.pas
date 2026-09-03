unit S_Pro_Replica_Precos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons, DB, DBTables, Grids, DBGrids;

type
  TFrm_Pro_Replica_Precos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    mdtini: TMaskEdit;
    Label2: TLabel;
    mdtfin: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    Qr_ProSel: TQuery;
    Qr_ProSelSELECIONADO: TStringField;
    Qr_ProSelPDNOME: TStringField;
    Qr_ProSelPDCODPRO: TFloatField;
    Qr_ProSelPDCODBAR: TFloatField;
    Qr_ProSelPDPRECO1: TFloatField;
    Qr_ProSelPDPRECO2: TFloatField;
    Qr_ProSelPDPRECO3: TFloatField;
    Qr_ProSelPDMARCA: TStringField;
    Qr_ProSelPDCODFOR: TFloatField;
    Qr_ProSelPDNOMFOR: TStringField;
    Src_ProSel: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    bbReplica: TBitBtn;
    sbMarcar: TSpeedButton;
    sbDesmarcar: TSpeedButton;
    u_ProSel: TUpdateSQL;
    procedure bbSairClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure sbMarcarClick(Sender: TObject);
    procedure sbDesmarcarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbReplicaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function FAtualizaProd(pSeleciona: String): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Pro_Replica_Precos: TFrm_Pro_Replica_Precos;

implementation

uses S_WebService, S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_Pro_Replica_Precos.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_Replica_Precos.bbAplicarClick(Sender: TObject);
begin
sbMarcarclick(self);


end;

function TFrm_Pro_Replica_precos.FAtualizaProd(pSeleciona: String): Boolean;
begin
Qr_ProSel.Close;
Qr_ProSel.SQL.Clear;
Qr_ProSel.SQL.Add('Select :pSeleciona AS SELECIONADO,PDNOME,PDCODPRO,PDCODBAR,'
                 +'PDPRECO1,PDPRECO2,PDPRECO3,PDMARCA,PDCODFOR,PDNOMFOR FROM '
                 +' CADPRO where PDSTATUS<9 ');
if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   Qr_ProSel.SQL.add(' and PDCODEMP=0'+IntToStr(codemp));
if trim(mdtini.Text)<>'/  /' then
   Qr_ProSel.SQL.add(' and PDDATAUA>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdtini.Text))+chr(39));
if trim(mdtfin.Text)<>'/  /' then
   Qr_ProSel.SQL.add(' and PDDATAUA<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdtfin.Text))+chr(39));
Qr_ProSel.SQL.add(' and (  (PDDATA_REPLICA is null or PDDATA_REPLICA<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');

Qr_ProSel.SQL.add(' or  (PDDATA_REPLICA>='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                 +' and PDDATA_REPLICA<PDDATAUA ) )');
Qr_ProSel.SQL.add(' order by PDNOME ');
Qr_ProSel.ParamByName('pseleciona').AsString:=pSeleciona;
try
   Qr_ProSel.Open;
   result:=true;
except
   Qr_ProSel.SQL.SaveToFile(mpastatemp +'sql.txt');
   result:=false;
   end;

end;
procedure TFrm_Pro_Replica_Precos.sbMarcarClick(Sender: TObject);
begin
FAtualizaProd('P');

end;

procedure TFrm_Pro_Replica_Precos.sbDesmarcarClick(Sender: TObject);
begin
FAtualizaProd(' ');

end;

procedure TFrm_Pro_Replica_Precos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_ProSelSELECIONADO.Value<>' ' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Pro_Replica_Precos.DBGrid1DblClick(Sender: TObject);
begin
Qr_ProSel.Edit;
if trim(Qr_ProSelSELECIONADO.AsString)='' then
   Qr_ProSelSELECIONADO.Value:='P'
else
   Qr_ProSelSELECIONADO.Value:=' ';
Qr_ProSel.Post;

end;

procedure TFrm_Pro_Replica_Precos.FormCreate(Sender: TObject);
begin
Qr_ProSelPDPRECO1.DisplayFormat:=mcasaspu;
Qr_ProSelPDPRECO2.DisplayFormat:=mcasaspu;
Qr_ProSelPDPRECO3.DisplayFormat:=mcasaspu;

end;

procedure TFrm_Pro_Replica_Precos.bbReplicaClick(Sender: TObject);
begin
if frm_WebService=nil then
   application.CreateForm(TFrm_WebService, Frm_WebService)
else
   begin
   Frm_WebService.Free;
   Frm_WebService:=nil;
   application.CreateForm(TFrm_WebService, Frm_WebService);
   end;

Qr_ProSel.First;
While not Qr_ProSel.Eof do
   begin
   if trim(Qr_ProSelSELECIONADO.AsString)='' then
      begin
      Qr_ProSel.Next;
      Continue;
      end;
   if not flcadpro(1,0,0,Qr_ProSelPDCODPRO.AsString) then
      begin
      Qr_ProSel.Next;
      Continue;
      end;

   mcinst4:=Frm_WebService.fAtualizaPrecosProdFilial(0,DM1.Tb_ProPDCODPRO.AsFloat,DM1.Tb_ProPDCODEMP.AsFloat,
   DM1.Tb_ProPDCODBAR.AsFloat,DM1.Tb_ProPDNIVEL.AsFloat,DM1.Tb_ProPDPRECO1.AsFloat,
   DM1.Tb_ProPDPMC.AsFloat,DM1.Tb_ProPDPRECO2.AsFloat,DM1.Tb_ProPDPMC02.AsFloat,
   DM1.Tb_ProPDPRECO3.AsFloat,DM1.Tb_ProPDPMC03.AsFloat,DM1.Tb_ProPDDESFIN.AsFloat,
   DM1.Tb_ProPDCODGRU.AsFloat,DM1.Tb_ProPDCODCON.AsFloat,DM1.Tb_ProPDCODRAM.AsFloat,
   DM1.Tb_ProPDCODTIP.AsFloat,DM1.Tb_ProPDLISTA.AsFloat,DM1.Tb_ProPDPRECOC.AsFloat,
   DM1.Tb_ProPDPCOMC.AsFloat,DM1.Tb_ProPDPCOFAB.AsFloat,DM1.Tb_ProPDEMBPAD.AsFloat,
   DM1.Tb_ProPDEMBMUL.AsFloat,DM1.Tb_ProPDCOMIS.AsFloat,DM1.Tb_ProPDUCPR.AsFloat,
   DM1.Tb_ProPDPESOB.AsFloat,DM1.Tb_ProPDPESOL.AsFloat,
   DM1.Tb_ProPDFRACAO.AsFloat,
   DM1.Tb_ProPDCODFOR.AsFloat,DM1.Tb_ProPDQTDM3.AsFloat,
   DM1.Tb_ProPDUNDVDA.AsFloat,
   DM1.Tb_ProPDVDAMAXM.AsFloat,DM1.Tb_ProPDIPI.AsFloat,
   DM1.Tb_ProPDPRZVAL_ANOS.AsFloat,DM1.Tb_ProPDPRZVAL.AsFloat,
   DM1.Tb_ProPDPRZVAL_DIAS.AsFloat,DM1.Tb_ProPDPRAZO.AsFloat,
   DM1.Tb_ProPDNOME.AsString,
   DM1.Tb_ProPDNOME2.AsString,DM1.Tb_ProPDMARCA.AsString,DM1.Tb_ProPDSIT.AsString,
   DM1.Tb_ProPDUND.AsString,DM1.Tb_ProPDTABICM.AsString,DM1.Tb_ProPDREGMS.AsString,
   DM1.Tb_ProPDCLAS.AsString,DM1.Tb_ProPDCODNCM.AsString,DM1.Tb_ProPDSITCF.AsString,
   DM1.Tb_ProPDREFER.AsString,DM1.Tb_ProPDAPRES.AsString,
   DM1.Tb_ProPDDTUATP1.Value,
   DM1.Tb_ProPDDTUATP2.Value,
   DM1.Tb_ProPDDTUATP3.Value,
   DM1.Tb_ProPDDATAUA.Value,
   DM1.Tb_ProPDDATA_REPLICA.Value
   );
   if mcinst4='-1' then
      begin
      DM1.Query2.close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('UPDATE CADPRO set PDDATA_REPLICA=:DATA_REPLICA '
                        +' where PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString
                        +' and PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
     DM1.Query2.ParamByName('DATA_REPLICA').AsDateTime:=Date;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   Qr_ProSel.Next;
   end;



Frm_WebService.free;
Frm_WebService:=nil;
SetDecimalSeparator(sys_decimal);


end;

procedure TFrm_Pro_Replica_Precos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
