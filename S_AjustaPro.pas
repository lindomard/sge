unit S_AjustaPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,db,dbtables,lerarq,func;

type
  TFrm_AjustaPro = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Tb_Pro: TQuery;
    U_Pro: TUpdateSQL;
    Src_Pro: TDataSource;
    Tb_ProPDCODEMP: TFloatField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDPRECOA1: TFloatField;
    Tb_ProPDPRECOA2: TFloatField;
    Tb_ProPDPRECOA3: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDDESC1A: TFloatField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDDTUATP1: TDateTimeField;
    Tb_ProPDUSRALT1: TFloatField;
    Tb_ProPDDTUATP2: TDateTimeField;
    Tb_ProPDUSRALT2: TFloatField;
    Tb_ProPDDTUATP3: TDateTimeField;
    Tb_ProPDUSRALT3: TFloatField;
    Tb_ProPDDATAUA: TDateTimeField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDSEMCOM: TFloatField;
    Tb_ProPDPRZVAL: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDCODUSR: TFloatField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDDTALT: TDateTimeField;
    Tb_ProPDHRALT: TStringField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_ProPDCODPROC: TFloatField;
    Tb_ProPDPROALT: TFloatField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_ProPDVDAMAXM: TFloatField;
    Tb_ProPDREST: TFloatField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_ProPDBAIXO: TFloatField;
    Tb_ProPDALTO: TFloatField;
    Tb_ProPDDATCAD: TDateTimeField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDNOMPROC: TStringField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDNOMPROALT: TStringField;
    Tb_ProPDSTATUS02: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AjustaPro: TFrm_AjustaPro;

implementation

{$R *.dfm}

procedure TFrm_AjustaPro.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_AjustaPro.DBGrid1Exit(Sender: TObject);
begin
if Tb_Pro.State in [dsedit, dsInsert] then
   Tb_Pro.Post;

end;

procedure TFrm_AjustaPro.FormCreate(Sender: TObject);
begin
Tb_Pro.close;
Tb_Pro.SQL.Clear;
   DM1.Tb_Pro.SQL.Add('Select CADPRO.* '
                     +',case when nvl(PDPRECO_CODINDEX,0)=0 then null else (SELECT max(MNOME) from CADMOE where MCODMOE=PDPRECO_CODINDEX) end as preco_index_nome '
                     +' from CADPRO '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'', ' where PDCODEMP=0'+IntToStr(codemp))
              +' order by PDNOME ');
Tb_PRo.Open;
end;

procedure TFrm_AjustaPro.C(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;


end;

procedure TFrm_AjustaPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
