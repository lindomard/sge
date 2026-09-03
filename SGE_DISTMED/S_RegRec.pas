unit S_RegRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBCtrls, Mask, Grids,
  DBGrids, ToolEdit, RXDBCtrl, RxDBComb, lerarq, RLReport;

type
  TFrm_RegRec = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsLista: TTabSheet;
    StatusBar1: TStatusBar;
    btncancelar: TBitBtn;
    btngravar: TBitBtn;
    btnexcluir: TBitBtn;
    btnalterar: TBitBtn;
    btnincluir: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edtBusca: TEdit;
    btnBusca: TBitBtn;
    lblProtocolo: TLabel;
    dbeProtocolo: TDBEdit;
    lblOrigem: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    dbeDatOco: TDBDateEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    dbeMemo: TDBMemo;
    dbeCODIGO: TDBEdit;
    dbCODPRO: TDBEdit;
    DBEdit3: TDBEdit;
    dbLoteVenc: TDBEdit;
    dbrg_parecer: TDBRadioGroup;
    dbnomcod: TDBEdit;
    dbnompro: TDBEdit;
    rbxTipo: TRxDBComboBox;
    bbImprimir: TBitBtn;
    TabSheet1: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLAngleLabel1: TRLAngleLabel;
    RLDBText1: TRLDBText;
    RLAngleLabel2: TRLAngleLabel;
    RLDBText2: TRLDBText;
    RLAngleLabel3: TRLAngleLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLAngleLabel4: TRLAngleLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLAngleLabel5: TRLAngleLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLAngleLabel6: TRLAngleLabel;
    rlTipo: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLLabel5: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBText9: TRLDBText;
    RLLabel6: TRLLabel;
    rlparecer: TRLLabel;
    procedure btnincluirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure dbCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure dbCODPROExit(Sender: TObject);
    procedure dbeCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCODIGOExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure MudaStatus(Op: Boolean);
  public
    { Public declarations }
  end;

var
  Frm_RegRec: TFrm_RegRec;

implementation

uses Func, S_DM1, S_DM4, DB, flerarq, s_lerarq_geral;

{$R *.dfm}
procedure TFrm_RegRec.MudaStatus(Op: Boolean);
begin
//
btnincluir.Enabled := Op;
btnalterar.Enabled := Op;
btncancelar.Enabled:= not Op;
btngravar.Enabled  := not Op;
btnexcluir.Enabled := Op;

btnBusca.Enabled   := Op;

tsLista.TabVisible := Op;
end;

procedure TFrm_RegRec.btnincluirClick(Sender: TObject);
begin
MudaStatus(false);
DM1.Tb_RegRec.Insert;
end;

procedure TFrm_RegRec.btnalterarClick(Sender: TObject);
begin
MudaStatus(false);
DM1.Tb_RegRec.Edit;
end;

procedure TFrm_RegRec.btngravarClick(Sender: TObject);
begin
MudaStatus(true);
DM1.Tb_RegRec.Post;
end;

procedure TFrm_RegRec.btncancelarClick(Sender: TObject);
begin
MudaStatus(true);
DM1.Tb_RegRec.Cancel;
btnBuscaClick(Self);
end;

procedure TFrm_RegRec.FormCreate(Sender: TObject);
begin
btncancelarClick(Self);

if not flcadusr(1,0,IntToStr(codusr)) then
  StatusBar1.Panels[1].Text :='USUÁRIO: 1111 / MASTER - Programador/Analista'
else
  StatusBar1.Panels[1].Text :='USUÁRIO:'+DM4.Tb_UsrCODUSR.AsString+' / '+DM4.Tb_UsrNOMUSR.AsString;
end;

procedure TFrm_RegRec.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text := FormatDateTime('dd/mm/yyyy',Now)+' '+FormatDateTime('hh:mm:ss',Now);
end;

procedure TFrm_RegRec.btnBuscaClick(Sender: TObject);
begin
DM1.Tb_RegRec.Close;
DM1.Tb_RegRec.SQL.Clear;
DM1.Tb_RegRec.SQL.Add('select * from CADREGREC');
if (Trim(edtBusca.Text)<>'') then
  DM1.Tb_RegRec.SQL.Add(' where RRPROTOCOLO='+QuotedStr(edtBusca.Text));
DM1.Tb_RegRec.Open;
end;

procedure TFrm_RegRec.dbCODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_RegRecRRCODPRO.Value:=ValFloat(fChamaPro(0,'Frm_RegRec',key));
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  begin
  key:=#0;
  end;

end;

procedure TFrm_RegRec.dbCODPROExit(Sender: TObject);
begin
dbCODPRO.Text:=fdeixanum2(dbCODPRO.Text);
if not (flcadpro(1,0,0,Trim(dbCODPRO.Text))) and (Trim(dbCODPRO.Text)<>'') then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  dbCODPRO.setfocus;
  exit;
  end
else
  begin
  DM1.Tb_RegRecRRCODPRO.AsString:=DM1.Tb_ProPDCODPRO.AsString;
  end;

end;

procedure TFrm_RegRec.dbeCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') and (DM1.Tb_RegRec.State in [dsEdit,dsInsert]) then
   begin
   if DM1.Tb_RegRecRRTIPO.AsInteger=0 then
      begin
      DM1.Tb_RegRecRRCODIGO.Value:=ValFloat(fChamaCli(0,'frm_REGREC',Key));
      dbeCODIGOExit(self);
      key:=#0;
      end
   else if DM1.Tb_RegRecRRTIPO.AsInteger=1 then
      begin
      DM1.Tb_RegRecRRCODIGO.Value:=ValFloat(fChamaFor(0,'frm_REGREC',Key));
      dbeCODIGOExit(self);
      key:=#0;
      end
   else if DM1.Tb_RegRecRRTIPO.AsInteger=2 then
      begin
      DM1.Tb_RegRecRRCODIGO.Value:=ValFloat(fChamaTra(0,'frm_REGREC',Key));
      dbeCODIGOExit(self);
      key:=#0;
      end
   else if DM1.Tb_RegRecRRTIPO.AsInteger=3 then
      begin
      DM1.Tb_RegRecRRCODIGO.Value:=ValFloat(fChamaFor(0,'frm_REGREC',Key));
      dbeCODIGOExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_RegRec.dbeCODIGOExit(Sender: TObject);
begin
if DM1.Tb_RegRecRRTIPO.AsInteger=0 then
  begin
  if not flqr2('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_RegRecRRCODIGO.AsString) then
    fmensagem('Cliente não Cadastrado!',0,['0'],0)
  else
    DM1.Tb_RegRecNOMCOD.Value:=DM1.Query2.Fields[0].AsString;
  end
else if DM1.Tb_RegRecRRTIPO.AsInteger=1 then
  begin
  if not flqr2('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_RegRecRRCODIGO.AsString) then
    fmensagem('Fornecedor não Cadastrado!',0,['0'],0)
  else
    DM1.Tb_RegRecNOMCOD.Value:=DM1.Query2.Fields[0].AsString;
  end
else if DM1.Tb_RegRecRRTIPO.AsInteger=2 then
  begin
  if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_RegRecRRCODIGO.AsString) then
    fmensagem('Transportadora não Cadastrado!',0,['0'],0)
  else
    DM1.Tb_RegRecNOMCOD.Value:=DM1.Query2.Fields[0].AsString;
  end
else if DM1.Tb_RegRecRRTIPO.AsInteger=3 then
  begin
  if not flqr2('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_RegRecRRCODIGO.AsString) then
    fmensagem('Fornecedor não Cadastrado!',0,['0'],0)
  else
    DM1.Tb_RegRecNOMCOD.Value:=DM1.Query2.Fields[0].AsString;
  end;
end;

procedure TFrm_RegRec.bbImprimirClick(Sender: TObject);
var
  busca_old: String;
  prot_old: String;
begin
busca_old:=edtBusca.Text;
prot_old:=DM1.Tb_RegRecRRPROTOCOLO.AsString;
edtBusca.Text:=prot_old;
btnBuscaClick(self);
RLReport1.PreviewModal;
edtBusca.Text:=busca_old;
btnBuscaClick(self);
DM1.Tb_RegRec.Locate('RRPROTOCOLO',prot_old,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_RegRec.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlTipo.Caption:=rbxTipo.Text;
if DM1.Tb_RegRecRRPARECER.AsInteger=0 then
  rlparecer.Caption:='Procede'
else if DM1.Tb_RegRecRRPARECER.AsInteger=0 then
  rlparecer.Caption:='Não procede'
else
  rlparecer.Caption:='Não Avaliado';
end;

procedure TFrm_RegRec.DBGrid1DblClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

end.
