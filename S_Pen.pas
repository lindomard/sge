unit S_Pen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,db,dbtables,func,s_DM1, StdCtrls, Grids, DBGrids,
  Buttons,lerarq, DBCtrls;

type
  TFrm_Pen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    DTPED: TEdit;
    Label3: TLabel;
    Src_Pen: TDataSource;
    DBGrid1: TDBGrid;
    Qr_Pen: TQuery;
    Qr_PenPECODEMP: TFloatField;
    Qr_PenPECHAVE: TFloatField;
    Qr_PenPEITEM: TFloatField;
    Qr_PenPECODPRO: TFloatField;
    Qr_PenPEQTDPED: TFloatField;
    Qr_PenPEQTDENV: TFloatField;
    Qr_PenPEQTDPEN: TFloatField;
    Qr_PenPEDESC01: TFloatField;
    Qr_PenPEDESC02: TFloatField;
    Qr_PenPEDESC03: TFloatField;
    Qr_PenPEVALDES: TFloatField;
    Qr_PenPEPRECO: TFloatField;
    Qr_Pennompro: TStringField;
    Qr_Penund: TStringField;
    Qr_Pentotal: TFloatField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    U_Pen: TUpdateSQL;
    Qr_PenPELOTSEQ: TFloatField;
    Qr_PenPECODCLI: TFloatField;
    Qr_PenPECODVEN: TFloatField;
    Qr_PenPEDATA: TDateTimeField;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Qr_PenPEGRADE: TStringField;
    edt_lotseq: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure Qr_PenCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure Qr_PenBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Qr_PenBeforePost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Qr_PenAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pen: TFrm_Pen;
  mitem_pen: Integer;
implementation



{$R *.dfm}

procedure TFrm_Pen.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Pen.Qr_PenCalcFields(DataSet: TDataSet);
begin
if flcadpro(1,0,0,Qr_PenPECODPRO.AsString) then
   begin
   Qr_Pennompro.Value:=DM1.Tb_ProPDNOME.Value;
   Qr_Penund.Value   :=DM1.Tb_ProPDUND.Value;
   end;
Qr_Pentotal.Value:=Qr_PenPEQTDPEN.Value*Qr_PenPEPRECO.Value;

end;

procedure TFrm_Pen.FormCreate(Sender: TObject);
begin

Qr_PenPEQTDPEN.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_PenPEQTDENV.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_PenPEQTDPEN.DisplayFormat:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_PenPEDESC01.DisplayFormat:=mcasas;
Qr_PenPEDESC02.DisplayFormat:=mcasas;
Qr_PenPEDESC03.DisplayFormat:=mcasas;
Qr_PenPEVALDES.DisplayFormat:=mcasas;
Qr_PenPEPRECO.DisplayFormat :=mcasas;
Qr_Pentotal.DisplayFormat   :=mcasas;

end;

procedure TFrm_Pen.c(DataSet: TDataSet);
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

procedure TFrm_Pen.Qr_PenBeforeInsert(DataSet: TDataSet);
begin
mitem_pen:=mitem_pen+1;
end;

procedure TFrm_Pen.DBGrid1ColExit(Sender: TObject);
begin
if Qr_Pen.state in [dsEdit,dsInsert] then
   begin
   if DBGrid1.SelectedField=Qr_PenPECODPRO then
      begin
      if not flcadpro(1,0,0,Qr_PenPECODPRO.AsString) then
         begin
         MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
         abort;
         end
      else
         Qr_PenPEPRECO.Value:=DM1.Tb_ProPDPRECO1.Value;
      end;
   end;   
end;

procedure TFrm_Pen.Qr_PenBeforePost(DataSet: TDataSet);
var
i: Integer;
begin
if Qr_PenPECODPRO.IsNull then
   begin
   Qr_Pen.Cancel;
   abort;
   exit;
   end;
if Qr_PenPEQTDPEN.IsNull then
   begin
   MessageDlg('Quantidade da Pendencia, campo obrigatório!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;
if (Qr_PenPEQTDPED.Value=0) or (Qr_PenPEQTDPED.IsNull) then
   Qr_PenPEQTDPED.Value:=Qr_PenPEQTDPEN.Value;

for i:=0 to Qr_Pen.FieldCount-1 do
   begin
   if not Qr_Pen.Fields[i].IsNull then
      Continue;
   if Qr_Pen.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      Qr_Pen.Fields[i].Value:=0
//   else if Qr_Pen.fields[i].DataType in [ftDate,ftDateTime] then
//      Qr_Pen.Fields[i].Value:=0
   else if Qr_Pen.Fields[i].DataType in [ftString,ftMemo] then
      Qr_Pen.Fields[i].Value:=' ';
   end;




end;

procedure TFrm_Pen.DBGrid1Exit(Sender: TObject);
begin
if Qr_Pen.State in [dsinsert,dsEdit] then
   Qr_Pen.Post;
end;

procedure TFrm_Pen.Qr_PenAfterInsert(DataSet: TDataSet);
begin
Qr_PenPECODEMP.Value:=codemp;
Qr_PenPECHAVE.Value :=fsonumero(CHAVE.Text);
Qr_PenPEITEM.Value  :=mitem_pen;
Qr_PenPELOTSEQ.Value:=ValFloat(edt_lotseq.Text);
Qr_PenPECODCLI.Value:=ValFloat(CODCLI.Text);
Qr_PenPEDATA.Value  :=StrToDate(DTPED.Text);

end;

procedure TFrm_Pen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
