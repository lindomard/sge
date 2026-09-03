unit S_DadSint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,lerarq,S_DM1,S_CapRedZ;

type
  TFrm_DadSint = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    CAPTURAR: TBitBtn;
    procedure DBEdit1Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure CAMPOExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CAPTURARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DadSint: TFrm_DadSint;
  moper: Integer=0;
  maltant: Real=0;
  codmin_ant: Real=0;
  data_ant  : TDateTime;
implementation


{$R *.dfm}

procedure TFrm_DadSint.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if flcadecf(1,0,DM1.Tb_RSin01RSCODIMP.AsString) then
   DM1.Tb_MI01nomeimp.Value:=DM1.Tb_ECFCFNOME.Value
else
   begin
   MessageDlg('Impressora não Cadastrada!',mtWarning,[mbOk],0);
   DBEdit1.SetFocus;
   end;

end;

procedure TFrm_DadSint.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM1.Tb_RSin01.Append;
DBEdit1.SetFocus;
flcadRSin02(0,0,'9999',FormatDateTime(fdt, StrToDate(Edit1.Text)),'');
moper:=0;
end;

procedure TFrm_DadSint.ALTERARClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_RSin01RSCODIMP.IsNull then
   begin
   MessageDlg('Não há registro a ser alterado!',mtWarning,[mbOk],0);
   CANCELAR.Click;
   exit;
   end;
codmin_ant:=DM1.Tb_RSin01RSCODIMP.Value;
data_ant  :=DM1.Tb_RSin01RSDATA.Value;
moper:=8;
DM1.Tb_RSin01.Edit;
DBEdit1.SetFocus;

end;

procedure TFrm_DadSint.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_RSin01.Cancel;
end;

procedure TFrm_DadSint.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
if DBGrid2.SelectedField=DM1.Tb_RSin02RS2ALIQ then
   begin
   if (((moper=1) and (maltant<>DM1.Tb_RSin02RS2ALIQ.Value)) or
       (moper=0)) then
      begin
      if flqr1('CM2ALIQ','CM2','CADMI02','N','CM2ALIQ',mudavp(DM1.Tb_RSin02RS2ALIQ.AsString)) then
         begin
         MessageDlg('Esta alíquota já existe!',mtWarning,[mbOk],0);
         abort;
         end;
      end;
   end;
end;

procedure TFrm_DadSint.BBnAtuClick(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=0 then
   begin
   if (Trim(Edit1.Text)='/  /') or (Trim(Edit1.Text)='') then
      flcadRSin01(CAMPO.ItemIndex,1,'','')
   else
      flcadRSin01(CAMPO.ItemIndex,1,FormatDateTime(fdt, StrToDate(Edit1.Text)),'')
   end
else
   flcadRSin01(CAMPO.ItemIndex,1,Trim(Edit1.Text),'');


end;

procedure TFrm_DadSint.CAMPOExit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex<1 then
   Edit1.EditMask:='!99/99/9999;1; '
else
   edit1.EditMask:='##############;1; ';

end;

procedure TFrm_DadSint.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_RSin01RSCODIMP.AsInteger=0 then
   begin
   MessageDlg('Código da impressora tem que ser maior que zero!',mtWarning,[mbOk],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_RSin01RSDATA.IsNull then
   begin
   MessageDlg('Data tem que ser definada!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;
if moper=8 then
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CM2CODIMP=0'+FloatToStr(codmin_ant)
                     +' and CM2DATA='+chr(39)+FormatDateTime(fdt, data_ant)+chr(39));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;
DM1.Tb_RSin02.First;
While not DM1.Tb_RSin02.Eof do
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.add('Insert into CADRSIN02 ('
                     +' RS2CODEMP, '
                     +' RS2CODIMP, '
                     +' RS2DATA, '
                     +' RS2ALIQ, '
                     +' RS2VALOR) values ('
                     +IntToStr(codemp)+','
                     +DM1.Tb_RSin01RSCODIMP.AsString+','
                     +chr(39)+FormatDateTime(fdt, DM1.Tb_RSin02RS2DATA.Value)+chr(39)+','
                     +mudavp(DM1.Tb_RSin02RS2ALIQ.AsString)+','
                     +mudavp(DM1.Tb_RSin02RS2VALOR.AsString)+')');
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   DM1.Tb_RSin02.Next;
   end;

DM1.Tb_MI01.Post;
CANCELAR.Click;


end;

procedure TFrm_DadSint.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_RSin01RSCODIMP.IsNull then
   begin
   MessageDlg('Não há registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADRSIN02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' RS2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' RS2CODIMP=0'+DM1.Tb_RSin01RSCODIMP.AsString
                     +' and RS2DATA='+chr(39)+FormatDateTime(fdt, DM1.Tb_RSin01RSDATA.Value)+chr(39));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   DM1.Tb_RSin01.Delete;
   end;
MessageDlg('Registro Excluido!',mtWarning,[mbOk],0);
end;

procedure TFrm_DadSint.CAPTURARClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_CapRedZ, Frm_CapRedZ);
Frm_CapRedZ.ShowModal;
Frm_CapRedZ.Free;
end;

procedure TFrm_DadSint.FormCreate(Sender: TObject);
begin
  inherited;
DM1.Tb_RSin01RSDATA.DisplayFormat    :=fdt2;
DM1.Tb_RSin01RSCUPCAN.DisplayFormat  :=mcasas;
DM1.Tb_RSin01RSACRECUP.DisplayFormat :=mcasas;
DM1.Tb_RSin01RSDESCUP.DisplayFormat  :=mcasas;
DM1.Tb_RSin01RSISSCUP.DisplayFormat  :=mcasas;
DM1.Tb_RSin01RSISENTAS.DisplayFormat :=mcasas;
DM1.Tb_RSin01RSNAOINC.DisplayFormat  :=mcasas;
DM1.Tb_RSin01RSSUBTRI.DisplayFormat  :=mcasas;
DM1.Tb_RSin01RSVDABRUT.DisplayFormat :=mcasas;
DM1.Tb_RSin01RSVDALIQ.DisplayFormat  :=mcasas;

DM1.Tb_RSin02RS2DATA.DisplayFormat   :=fdt2;
DM1.Tb_RSin02RS2ALIQ.DisplayFormat   :=mcasas;
DM1.Tb_RSin02RS2VALOR.DisplayFormat  :=mcasas;

DM1.Tb_RSin01RSDATA.EditMask     :='!99/99/9999;1; ';
DM1.Tb_RSin02RS2DATA.EditMask    :='!99/99/9999;1; ';

end;

procedure TFrm_DadSint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
