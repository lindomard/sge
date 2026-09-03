unit S_CEC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, func, S_DM1, db, dbtables, DBCtrls, Grids,
  DBGrids,lerarq;

type
  TFrm_CEC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DATAP: TEdit;
    VALOR: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Tb_CEleLei: TQuery;
    Tb_CEleLeiCEITEM: TFloatField;
    Tb_CEleLeiCECODPRO: TFloatField;
    Tb_CEleLeiCEQTD: TFloatField;
    U_EleLei: TUpdateSQL;
    Src_EleLei: TDataSource;
    Tb_CEleLeidescricao: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Tb_CeleRes: TQuery;
    U_CeleRes: TUpdateSQL;
    Src_CeleRes: TDataSource;
    Tb_CeleResCECODBAR: TFloatField;
    Tb_CeleResCEQTDL: TFloatField;
    Tb_CeleResCEQTDP: TFloatField;
    Tb_CeleResdescricao: TStringField;
    NOMASS: TEdit;
    BitBtn5: TBitBtn;
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Tb_CEleLeiAfterInsert(DataSet: TDataSet);
    procedure Tb_CEleLeiCalcFields(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Tb_CeleResCalcFields(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure NUMBOXKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure Tb_CEleLeiBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CEC: TFrm_CEC;
  mitem: Integer;
implementation

uses S_CECR, S_PesqProd;

{$R *.DFM}

procedure TFrm_CEC.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CEC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CEC.CHAVEExit(Sender: TObject);
begin
if BitBtn2.Focused then
   exit;
CHAVE.Text:=IntToStr(ValInt(CHAVE.Text));
flcadpf1( 0,ls_numpf,CHAVE.Text);
if DM1.Tb_PF1.Eof then
   begin
   MessageDlg('Chave não Encontrada!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end;
flcadpf2(0,ls_numpf,CHAVE.text);

DATAP.Text:=FormatDateTime(fdt2,DM1.Tb_PF1PF1DATA.Value);
VALOR.Text:=Formatfloat('###,##0.00',DM1.Tb_PF1PF1TOTBRU.Value-DM1.Tb_PF1PF1TOTDES.Value);
flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_PF1PF1CODFOR.AsString);
NOMASS.Text:=DM1.Query1.fields[0].AsString;
BitBtn5.Click;
end;

procedure TFrm_CEC.BitBtn1Click(Sender: TObject);
begin
Tb_CEleLei.Close;
Tb_CEleLei.Open;
mitem:=0;
Tb_CElelei.Insert;
dbgrid1.SetFocus;
end;

procedure TFrm_CEC.Tb_CEleLeiAfterInsert(DataSet: TDataSet);
begin
mitem:=mitem+1;
Tb_CEleLeiCEITEM.Value:=mitem;
Tb_CEleLeiCEQTD.Value :=1;
end;

procedure TFrm_CEC.Tb_CEleLeiCalcFields(DataSet: TDataSet);
begin
if not Tb_CEleLeiCECODPRO.IsNull then
   begin
   flqr1('PDNOME','PD','CADPRO','N','PDCODBAR',Tb_CEleLeiCECODPRO.AsString);
   if DM1.Query1.Fields[0].IsNull then
     flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Tb_CEleLeiCECODPRO.AsString);
   Tb_CEleLeidescricao.Value:=DM1.Query1.Fields[0].AsString;

   end;
end;

procedure TFrm_CEC.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CEC.BitBtn3Click(Sender: TObject);
begin
if Tb_CEleLeiCECODPRO.IsNull then
   Tb_CEleLei.Cancel;
Tb_CeleRes.close;
Tb_CeleRes.Open;
DM1.Tb_PF2.First;
While not DM1.Tb_PF2.Eof do
   begin
   if Tb_CeleRes.Locate('CECODBAR',DM1.Tb_PF2PF2CODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDP.Value:=Tb_CeleResCEQTDP.Value+DM1.Tb_PF2PF2QTDP.Value;
      end
   else
      begin
      Tb_CeleRes.Append;
      Tb_CeleResCECODBAR.Value:=DM1.Tb_PF2PF2CODPRO.Value;
      Tb_CeleResCEQTDP.Value  :=DM1.Tb_PF2PF2QTDP.Value;
      Tb_CeleResCEQTDL.Value  :=0;
      end;
   Tb_CeleRes.Post;
   DM1.Tb_PF2.Next;
   end;
Tb_CEleLei.First;
While not Tb_CEleLei.Eof do
   begin
   if Tb_Celeres.Locate('CECODBAR',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDL.Value:=Tb_CeleResCEQTDL.Value+Tb_CEleLeiCEQTD.Value;
      end
   else
      Begin
      Tb_CeleRes.Append;
      Tb_CeleResCECODBAR.Value:=Tb_CEleLeiCECODPRO.Value;
      Tb_CeleResCEQTDP.Value  :=0;
      Tb_CeleResCEQTDL.Value  :=Tb_CEleLeiCEQTD.Value;
      end;
   Tb_CeleRes.Post;
   Tb_CeleLei.Next;
   end;
Application.CreateForm(TFrm_CECR, Frm_CECR);
if Frm_CECR.ShowModal=mrOk then
   begin
   Frm_CECR.Free;
   DBGrid1.SetFocus;
   end
else
   begin
   Frm_CECR.Free;
   tb_Celelei.close;
   end;
end;

procedure TFrm_CEC.Tb_CeleResCalcFields(DataSet: TDataSet);
begin
if not Tb_CEleResCECODBAR.IsNull then
   begin
   flqr1('PDNOME','PD','CADPRO','N','PDCODBAR',Tb_CEleResCECODBAR.AsString);
   if DM1.Query1.Fields[0].IsNull then
     flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Tb_CEleLeiCECODPRO.AsString);
   Tb_CEleResdescricao.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_CEC.DBGrid1ColEnter(Sender: TObject);
begin
If (DBGrid1.SelectedField=Tb_CEleLeiCEQTD) and (Tb_CEleLei.State in [dsInsert, dsEdit]) then
   begin
   DBGrid1.SelectedField:=Tb_CEleLeiCECODPRO;
   Tb_CEleLei.Append;
   end;

end;

procedure TFrm_CEC.NUMBOXKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CEC.BitBtn5Click(Sender: TObject);
begin
flcadpf2(0,ls_numpf,CHAVE.text);
Tb_CeleRes.close;
Tb_CeleRes.Open;
DM1.Tb_PF2.First;
While not DM1.Tb_PF2.Eof do
   begin
   if Tb_CeleRes.Locate('CECODBAR',DM1.Tb_PF2PF2CODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDP.Value:=Tb_CeleResCEQTDP.Value+DM1.Tb_PF2PF2QTDP.Value;
      end
   else
      begin
      Tb_CeleRes.Append;
      Tb_CeleResCECODBAR.Value:=DM1.Tb_PF2PF2CODPRO.Value;
      Tb_CeleResCEQTDP.Value  :=DM1.Tb_PF2PF2QTDP.Value;
      Tb_CeleResCEQTDL.Value  :=0;
      end;
   Tb_CeleRes.Post;
   DM1.Tb_PF2.Next;
   end;
{
Tb_CEleLei.First;
While not Tb_CEleLei.Eof do
   begin
   if Tb_Celeres.Locate('CECODBAR',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCEQTDL.Value:=Tb_CeleResCEQTDL.Value+Tb_CEleLeiCEQTD.Value;
      end
   else
      Begin
      Tb_CeleRes.Append;
      Tb_CeleResCECODBAR.Value:=Tb_CEleLeiCECODPRO.Value;
      Tb_CeleResCEQTDP.Value  :=0;
      Tb_CeleResCEQTDL.Value  :=Tb_CEleLeiCEQTD.Value;
      end;
   Tb_CeleRes.Post;
   Tb_CeleLei.Next;
   end;
}
end;

procedure TFrm_CEC.Tb_CEleLeiBeforePost(DataSet: TDataSet);
begin
Tb_CEleLeiCECODPRO.AsFloat:=fAchaCodigoOri(Tb_CEleLeiCECODPRO.AsString);
if pRet_Qtd>0 then
  Tb_CEleLeiCEQTD.AsFloat:=pRet_Qtd;

if not Tb_CEleLeiCECODPRO.IsNull then
   begin
   if not Tb_Celeres.Locate('CECODBAR',Tb_CEleLeiCECODPRO.Value,[]) then
      begin
      AvisoSonoro(0);
      AvisoSonoro(1);
//   AvisoSonoro(2);
//   AvisoSonoro(3);
     MessageDlg('Este Produto não se Encontra no Pedido de Origem',mtWarning,[mbok],0);
      abort;
      end;
   end
else
  begin
  Abort;
  end;
end;

procedure TFrm_CEC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CEC.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key in ['A'..'Z']) or (Key in ['a'..'z']) or (Key in ['%']) then
  begin
  if DBGrid1.SelectedField=Tb_CEleLeiCECODPRO then
    begin
    Application.CreateForm(Tfrm_pesqprod,frm_pesqprod);
    frm_pesqprod.FormStyle:=fsNormal;
    frm_pesqprod.Visible  :=False;
    frm_pesqprod.ShowModal;
    Tb_CEleLeiCECODPRO.AsFloat:=frm_pesqprod.Qr_ProPDCODPRO.AsFloat;
    FreeAndNil(frm_pesqprod);
    end;
  end;

end;

end.
