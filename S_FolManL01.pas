unit S_FolManL01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, Buttons,
  S_Fun,lerarq, DB, DBTables,func,S_Eve, Mask;

type
  TFrm_FolManL01 = class(TForm)
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    bb_gravar: TBitBtn;
    SAIR: TBitBtn;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    CODFUN: TEdit;
    NOMFUN: TEdit;
    ATUALIZAR: TBitBtn;
    Qr_LFol: TQuery;
    Src_LFol: TDataSource;
    Qr_LFolLCCODEMP: TFloatField;
    Qr_LFolLCLOCAL: TFloatField;
    Qr_LFolLCMES: TFloatField;
    Qr_LFolLCANO: TFloatField;
    Qr_LFolLCCODFUN: TFloatField;
    Qr_LFolLCCODEVE: TFloatField;
    Qr_LFolLCQTD: TFloatField;
    Qr_LFolLCNAT: TFloatField;
    Qr_LFolLCTIPO: TFloatField;
    Qr_LFolLCVALOR: TFloatField;
    Qr_LFolLCINCINSS: TFloatField;
    Qr_LFolLCINCFGTS: TFloatField;
    Qr_LFolLCINCIR: TFloatField;
    Qr_LFolLCQTDPAD: TFloatField;
    Qr_LFolLCSOMA: TFloatField;
    Qr_LFolLCINCVT: TFloatField;
    Qr_LFolvencimentos: TFloatField;
    Qr_LFoldescontos: TFloatField;
    Qr_LFolnomeve: TStringField;
    U_LFol: TUpdateSQL;
    Edit1: TEdit;
    Edit2: TEdit;
    TOTVEN: TEdit;
    TOTDES: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    SALBASE: TEdit;
    Edit8: TEdit;
    BASEINSS: TEdit;
    Edit7: TEdit;
    BASEFGTS: TEdit;
    VALFGTS: TEdit;
    Edit10: TEdit;
    Edit9: TEdit;
    BASEIRRF: TEdit;
    Edit11: TEdit;
    FAIXAIRRF: TEdit;
    CANCELAR: TBitBtn;
    Qr_LFolLCTOTAL: TFloatField;
    EXCLUIR: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CCODFUN: TEdit;
    CODDEP: TEdit;
    NOMDEP: TEdit;
    CNOMFUN: TEdit;
    NOMCAR: TEdit;
    CODCAR: TEdit;
    CODEVE: TEdit;
    NOMEVE: TEdit;
    VALOR: TEdit;
    REF: TEdit;
    PADRAO: TEdit;
    VENCIMENTOS: TEdit;
    DESCONTOS: TEdit;
    STG2: TStringGrid;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    BitBtn6: TBitBtn;
    GB_FERIAS: TGroupBox;
    Label5: TLabel;
    MDTAQI: TMaskEdit;
    MDTAQF: TMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    MDTFERI: TMaskEdit;
    Label8: TLabel;
    MDTFERF: TMaskEdit;
    Label9: TLabel;
    QTDFNJ: TEdit;
    Tb_RFol: TQuery;
    Tb_RFolRFCODEMP: TFloatField;
    Tb_RFolRFLOCAL: TFloatField;
    Tb_RFolRFMES: TFloatField;
    Tb_RFolRFANO: TFloatField;
    Tb_RFolRFCODFUN: TFloatField;
    Tb_RFolRFTOTVEN: TFloatField;
    Tb_RFolRFTOTDES: TFloatField;
    Tb_RFolRFBASEFGTS: TFloatField;
    Tb_RFolRFALFGTS: TFloatField;
    Tb_RFolRFVLRFGTS: TFloatField;
    Tb_RFolRFBASEIR: TFloatField;
    Tb_RFolRFALIR: TFloatField;
    Tb_RFolRFVLRIR: TFloatField;
    Tb_RFolRFBASEINSS: TFloatField;
    Tb_RFolRFALINSS: TFloatField;
    Tb_RFolRFVLRINSS: TFloatField;
    Tb_RFolRFBASEVT: TFloatField;
    Tb_RFolRFALVT: TFloatField;
    Tb_RFolRFSALBASE: TFloatField;
    Tb_RFolRFVLRVT: TFloatField;
    Tb_RFolRFDTAQI: TDateTimeField;
    Tb_RFolRFDTAQF: TDateTimeField;
    Tb_RFolRFDTFERI: TDateTimeField;
    Tb_RFolRFDTFERF: TDateTimeField;
    Tb_RFolRFQTDFNJ: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure CODFUNExit(Sender: TObject);
    procedure CODFUNKeyPress(Sender: TObject; var Key: Char);
    procedure ATUALIZARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LFolCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Qr_LFolAfterInsert(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure Qr_LFolAfterPost(DataSet: TDataSet);
    procedure EXCLUIRClick(Sender: TObject);
    procedure Qr_LFolBeforeEdit(DataSet: TDataSet);
    procedure CODEVEExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure CODEVEKeyPress(Sender: TObject; var Key: Char);
    procedure REFExit(Sender: TObject);
    procedure PADRAOExit(Sender: TObject);
//    procedure PADRAOKeyPress(Sender: TObject; var Key: Char);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure MDTAQIExit(Sender: TObject);
    procedure MDTAQFExit(Sender: TObject);
    procedure MDTFERIExit(Sender: TObject);
    procedure MDTFERFExit(Sender: TObject);
    procedure QTDFNJExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VENCIMENTOSEnter(Sender: TObject);
    procedure VENCIMENTOSExit(Sender: TObject);
  private
    { Private declarations }
    function FFolManlCalc(ptipo: Integer): Boolean;
    function ffolmanlvencdesc(ptipo: Integer): Boolean;
  public
    { Public declarations }
     pf_local: Integer;
     mVctoDigitado: Real;
     mVctoDigitadoAnt: Real;

  end;

var
  Frm_FolManL01: TFrm_FolManL01;
  fmbinss, fminss, mvinss: Real;
  mbvt, mavt, mvvt: Real;
  mbfgts, mafgts, mvfgts: Real;
  mbir, mair, mvir: Real;
  mvenc, mdesc: Real;
  minserir: Integer=18;
  mcalcula: Boolean=True;
  msalbase: Real=0;
  mvergrava: Boolean=True;
  mqtd: Integer=0;
  moper: Integer=0;
  mcodevea: Integer=0;
implementation

uses S_DM1, S_DM2, S_FolMan, S_GFolha, func_excecoes;

{$R *.dfm}

procedure TFrm_FolManL01.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FolManL01.CODFUNExit(Sender: TObject);
begin
if (CANCELAR.Focused) or (SAIR.Focused) then
   begin
   exit;
   end;
if flcadfun(1,0,Trim(CODFUN.Text)) then
   begin
   NOMFUN.Text:=DM2.Tb_FunCFNOMFUN.AsString;
   if (DM2.Tb_FunCFSTATUS.AsInteger>7) then
      begin
      MessageDlg('Funcionario '+ iif(DM2.Tb_FunCFSTATUS.AsInteger=8,'Demitido','Excluido'),mtWarning,[mbOk],0);
      CODFUN.SetFocus;
      exit;
      end;
   end
else
   begin
   MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
   CODFUN.SetFocus;
   end;
end;

procedure TFrm_FolManL01.CODFUNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;
   Frm_Fun.Edit1.Text:=key;
   Frm_Fun.BBnAtu.Click;
   Frm_Fun.Edit1.SelStart:=1;
   Frm_Fun.Edit1.SelLength:=1;
   Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
   Frm_Fun.fun_ori:='Frm_FolManL01';
   if Frm_Fun.ShowModal=mrok then
      begin
      CODFUN.Text:=DM2.Tb_FunCFCODFUN.AsString;
      CODFUNExit(self);
      end;
   Frm_Fun.Free;
   Frm_Fun:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FolManL01.ATUALIZARClick(Sender: TObject);
begin
If bb_gravar.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: bb_Gravar.Click;
      mrNo : CANCELAR.Click;
      else exit;
      end;
   end;

Qr_Lfol.Close;
Qr_Lfol.SQL.Clear;
Qr_Lfol.SQL.Add('Select * from CADLFOL where '
               +iif(DM1.Qr_TID.locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+IntToStr(codemp)+' and ')
               +' LCLOCAL=0'+IntToStr(pf_local)
               +' and LCMES=0'+Trim(Frm_FolMan.MES.Text)
               +' and LCANO=0'+Trim(Frm_FolMan.ANO.Text)
               +' and LCCODFUN=0'+Trim(CODFUN.Text));
Qr_Lfol.Open;
if Qr_LFol.Eof then
   begin
   if fmensagem('Folha não encontrada. Deseja criar?',0,['1','2'],2)<>MrYes then
      begin
      CODFUN.SetFocus;
      exit;
      end;
   end;

if pf_local=4 then
   begin
   Tb_RFol.Close;
   Tb_RFol.SQL.Clear;
   Tb_RFol.SQL.Add('Select * from CADRFOL where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' RFLOCAL=0'+IntToStr(pf_local)
                  +' and RFMES=0'+Trim(Frm_FolMan.MES.Text)
                  +' and RFANO=0'+Trim(Frm_FolMan.ANO.Text)
                  +' and RFCODFUN=0'+Trim(CODFUN.Text));
   Tb_RFol.Open;
   MDTAQI.Text :=FormatDateTime(fdt2, Tb_RFolRFDTAQI.Value);
   MDTAQF.Text :=FormatDateTime(fdt2, Tb_RFolRFDTAQF.Value);
   MDTFERI.Text:=FormatDateTime(fdt2, Tb_RFolRFDTFERI.Value);
   MDTFERF.Text:=FormatDateTime(fdt2, Tb_RFolRFDTFERF.Value);
   QTDFNJ.Text :=FormatFloat(mcasas, Tb_RFolRFQTDFNJ.Value);
   end
else
   begin
   MDTAQI.Text :=FormatDateTime(fdt2, pdatanula);
   MDTAQF.Text :=FormatDateTime(fdt2, pdatanula);
   MDTFERI.Text:=FormatDateTime(fdt2, pdatanula);
   MDTFERF.Text:=FormatDateTime(fdt2, pdatanula);
   QTDFNJ.Text :=FormatFloat(mcasas, 0);
   end;
mqtd:=2;
STG2.RowCount:=mqtd;
While not Qr_LFol.Eof do
   begin
   STG2.Cells[00,mqtd-1]:=Qr_LFolLCCODEVE.AsString;
   STG2.Cells[01,mqtd-1]:=Qr_LFolnomeve.Value;
   STG2.Cells[02,mqtd-1]:=FormatFloat(mcasas3Dec, Qr_LFolLCVALOR.Value);
   STG2.Cells[03,mqtd-1]:=Qr_LFolLCQTD.AsString;
   STG2.Cells[04,mqtd-1]:=Qr_LFolLCQTDPAD.AsString;
   STG2.Cells[05,mqtd-1]:=FormatFloat(mcasas, Qr_LFolvencimentos.Value);
   STG2.Cells[06,mqtd-1]:=FormatFloat(mcasas, Qr_LFoldescontos.Value);
   STG2.Cells[07,mqtd-1]:=Qr_LFolLCNAT.AsString;
   STG2.Cells[08,mqtd-1]:=Qr_LFolLCTIPO.AsString;
   STG2.Cells[09,mqtd-1]:=Qr_LFolLCINCINSS.AsString;
   STG2.Cells[10,mqtd-1]:=Qr_LFolLCINCFGTS.AsString;
   STG2.Cells[11,mqtd-1]:=Qr_LFolLCINCIR.AsString;
   STG2.Cells[12,mqtd-1]:=Qr_LFolLCSOMA.AsString;
   STG2.Cells[13,mqtd-1]:=FormatFloat(mcasas, Qr_LFolLCTOTAL.Value);
   STG2.Cells[14,mqtd-1]:=Qr_LFolLCINCVT.AsString;
   mqtd:=mqtd+1;
   STG2.RowCount:=mqtd;
   STG2.Rows[mqtd-1].Clear;
   STG2.Rows[mqtd].Clear;
   Qr_LFol.Next;
   end;
CCODFUN.Text:=FormatFloat('00000',DM2.Tb_FunCFCODFUN.Value);
CNOMFUN.Text :=DM2.Tb_FunCFNOMFUN.Value;
CODCAR.Text :=FormatFloat('00000',DM2.Tb_FunCFCODCAR.Value);
NOMCAR.Text :=DM2.Tb_Funnomcar.Value;
CODDEP.Text :=FormatFloat('00000',DM2.Tb_FunCFCODDEP.Value);
NOMDEP.Text :=DM2.Tb_Funnomdep.Value;
FFolManlCalc(0);
CODFUN.Enabled   :=False;
bb_gravar.Enabled:=True;
ATUALIZAR.Enabled:=False;
end;

function TFrm_FolManL01.FFolManlCalc(ptipo: Integer): Boolean;
var
y: Integer;
begin
if not mcalcula then
   begin
   result:=true;
   exit;
   end;
mcalcula:=False;
fmbinss:=0; fminss:=0; mvinss:=0;
mbvt  :=0; mavt  :=0; mvvt  :=0;
mbfgts:=0; mafgts:=0; mvfgts:=0;
mbir  :=0; mair  :=0; mvir  :=0;
mvenc :=0; mdesc :=0;
for y:=1 to STG2.RowCount do
   begin
   if Trim(STG2.cells[00,y])='' then
      Continue;
   if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODSAL.Value then
      begin
      msalbase:=ValFloat(STG2.Cells[02,y]);
      end;
   if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODVT.Value then
      begin
      if flcadeve(1,0,Trim(STG2.Cells[00,y])) then
         mavt:= DM2.Tb_EveCEVALOR.Value;
      end;
   if ValInt(STG2.Cells[12,y])=1 then
      begin
      Continue;
      end;
   if ValInt(STG2.Cells[09,y])=0 then
      fmbinss:=fmbinss+ValFloat(STG2.Cells[13,y]);
   if ValInt(STG2.Cells[10,y])=0 then
      mbfgts:=mbfgts+ValFloat(STG2.Cells[13,y]);
   if ValInt(STG2.Cells[11,y])=0 then
      mbir  :=mbir  +ValFloat(STG2.Cells[13,Y]);
   if ValInt(STG2.Cells[14,y])=0 then
      mbvt  :=mbvt  +ValFloat(STG2.Cells[13,Y]);
   Qr_LFol.Next;
   end;
fminss:=fgfolhaFINSS(fmbinss);
mafgts:=fgfolhaFFGTS(mbfgts);
mair  :=fgfolhaFIR(mbir);

mvinss:=fmbinss*fminss/100;
mvinss:=Arredonda(mvinss,2);

mvfgts:=mbfgts*mafgts/100;
mvfgts:=Arredonda(mvfgts,2);

mvir  :=mbir*mair/100;
mvir  :=Arredonda(mvir,2);

mvvt  :=mbvt*mavt/100;
mvvt  :=Arredonda(mvvt,2);

for y:=1 to STG2.RowCount do
   begin
   if Trim(STG2.cells[00,y])='' then
      Continue;
   if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODINSS.Value then
      begin
      STG2.Cells[13,y]:=FormatFloat(mcasas, mvinss);
      end
   else if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODFGTS.Value then
      begin
      STG2.Cells[13,y]:=FormatFloat(mcasas, mvfgts);
      end
   else if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODIR.Value then
      begin
      STG2.Cells[13,y]:=FormatFloat(mcasas, mvir);
      end
   else if fsonumero(STG2.Cells[00,y])=DM2.Tb_ParFPagPFCODVT.Value then
      begin
      STG2.Cells[13,y]:=FormatFloat(mcasas, mvvt);
      end;
   end;

for y:=1 to STG2.RowCount do
   begin
   if Trim(STG2.cells[00,y])='' then
      Continue;
   if valint(STG2.Cells[12,y])=1 then
      begin
      Continue;
      end;
   if ValInt(STG2.Cells[07,y])=0 then
      mvenc:=mvenc+ValFloat(STG2.Cells[13,y])
   else
      mdesc:=mdesc+ValFloat(STG2.Cells[13,y]);
   end;
mcalcula:=True;
TOTVEN.Text   :=insere(FormatFloat(mcasas, mvenc),' ',minserir);
TOTDES.Text   :=insere(FormatFloat(mcasas, mdesc),' ',minserir);
SALBASE.Text  :=insere(FormatFloat(mcasas, msalbase),' ',minserir);
BASEINSS.Text :=insere(FormatFloat(mcasas, fmbinss),' ',minserir);
BASEFGTS.Text :=insere(FormatFloat(mcasas, mbfgts),' ',minserir);
VALFGTS.Text  :=insere(FormatFloat(mcasas, mvfgts),' ',minserir);
BASEIRRF.Text :=insere(FormatFloat(mcasas, mbir),' ',minserir);
FAIXAIRRF.Text:=insere(FormatFloat(mcasas, mair),' ',minserir);
result:=True;
end;
procedure TFrm_FolManL01.FormCreate(Sender: TObject);
begin
     mVctoDigitado:=0;

pf_local:=0;

STG2.RowCount:=2;
STG2.Cells[00,00]:='Código Evento';
STG2.Cells[01,00]:='Nome do Evento';
STG2.Cells[02,00]:='Valor';
STG2.Cells[03,00]:='Ref';
STG2.Cells[04,00]:='Padrão';
STG2.Cells[05,00]:='Vencimentos';
STG2.Cells[06,00]:='Descontos';
STG2.Cells[07,00]:='Nat';
STG2.Cells[08,00]:='Tipo';
STG2.Cells[09,00]:='Inc.INSS';
STG2.Cells[10,00]:='Inc.FGTS';
STG2.Cells[11,00]:='Inc.IR';
STG2.Cells[12,00]:='Soma';
STG2.Cells[13,00]:='Total';
STG2.Cells[14,00]:='Inc.VT';

STG2.Rows[1].Clear;
if pf_local=0 then
   Frm_FolManL01.Caption:='Lançamento Manual da Folha de Pagamento. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text
else if pf_local=4 then
   begin
   Frm_FolManL01.Caption:='Lançamento Manual de Ferias. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text;
   GB_FERIAS.Visible:=true;
   end
else if pf_local=1 then
   Frm_FolManL01.Caption:='Lançamento Manual do 13o. Unico. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text
else if pf_local=2 then
   Frm_FolManL01.Caption:='Lançamento Manual do 13o. Primeira Parcela. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text
else if pf_local=3 then
   Frm_FolManL01.Caption:='Lançamento Manual do 13o. Segunda Parcela. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text
else if pf_local=5 then
   Frm_FolManL01.Caption:='Recisao de Contrado. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text;
mqtddm:=30;
end;

procedure TFrm_FolManL01.Qr_LFolCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',Qr_LFolLCCODEVE.AsString) then
   Qr_LFolnomeve.Value:=DM1.Query1.Fields[0].AsString;
if Qr_LFolLCNAT.Value=0 then
   Qr_LFolvencimentos.Value:=Qr_LFolLCTOTAL.Value
else
   Qr_LFoldescontos.Value  :=Qr_LFolLCTOTAL.Value;
end;

procedure TFrm_FolManL01.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If bb_gravar.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: begin
             bb_gravar.Click;
             exit;
             end;
      mrNo : begin
             CANCELAR.Click;
             exit;
             end;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_FolManL01.Qr_LFolAfterInsert(DataSet: TDataSet);
begin
{
Qr_LFolLCQTDPAD.Value:=1;
Qr_LFolLCQTD.Value:=1;
moper:=0;
mcodevea:=0;
}
end;

procedure TFrm_FolManL01.DBGrid1ColExit(Sender: TObject);
begin
end;
{
var
x: Integer;
begin
if Qr_LFol.State in [dsInsert, DsEdit] then
   begin
   if (DBGrid1.SelectedField=Qr_LFolLCCODEVE) then
      begin
      if not flcadeve(1,0,Qr_LFolLCCODEVE.AsString) then
         begin
         MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
         abort;
         end
      else
         begin
         if (moper=0) or ((moper=1) and (mcodevea<>Qr_LFolLCCODEVE.AsInteger)) then
            begin
            for x:=1 to STG1.RowCount do
               begin
               if ValFloat(STG1.Cells[0,x-1])=Qr_LFolLCCODEVE.Value then
                  begin
                  MessageDlg('Não pode haver evento duplicado!',mtWarning,[mbOk],0);
                  abort;
                  end
               end;
            end;
         if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
            begin
            Qr_LFolLCVALOR.Value:=DM2.Tb_FunCFSALARIO.Value;
            msalbase            :=DM2.Tb_FunCFSALARIO.Value;
            Qr_LFolLCQTD.Value  :=mqtddm;
            Qr_LFolLCQTDPAD.Value:=mqtddm;
            end
         else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value then
            begin
            Qr_LFolLCVALOR.Value:=DM2.Tb_FunCFGRATIF.Value;
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
            Qr_LFolLCQTD.Value  :=mqtddm;
            Qr_LFolLCQTDPAD.Value:=mqtddm;
            end

         else
            Qr_LFolLCVALOR.Value  :=DM2.Tb_EveCEVALOR.Value;
         if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSFAM.Value then
            begin
            Qr_LFolLCQTD.Value:=DM2.Tb_FunCFN_DEP.Value;
            end;

         Qr_LFolLCNAT.Value    :=DM2.Tb_EveCENAT.Value;
         Qr_LFolLCTIPO.Value   :=DM2.Tb_EveCETIPO.Value;
         Qr_LFolLCINCINSS.Value:=DM2.Tb_EveCEINCINSS.Value;
         Qr_LFolLCINCFGTS.Value:=DM2.Tb_EveCEINCFGTS.Value;
         Qr_LFolLCINCIR.Value  :=DM2.Tb_EveCEINCIR.Value;
         if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value then
            Qr_LFolLCSOMA.Value   :=1
         else
            Qr_LFolLCSOMA.Value   :=0;
         if (Qr_LFolLCQTDPAD.Value>0) and (Qr_LFolLCVALOR.Value>0) and (Qr_LFolLCQTD.Value>0) then
            begin
            if DM2.Tb_EveCETIPO.Value=0 then
               begin
               if (Qr_LFolLCQTDPAD.Value>0) and (Qr_LFolLCVALOR.Value>0) and (Qr_LFolLCQTD.Value>0) then
                  Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
               end
            else
               begin
               Qr_LFolLCTOTAL.Value:=Qr_LFolLCVALOR.Value*msalbase/100;
               Arredonda(Qr_LFolLCTOTAL.Value,2);
               Qr_LFolLCTOTAL.Value:=Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value;
               end;
            end;
         end;
      end
   else if (DBGrid1.SelectedField=Qr_LFolLCVALOR) then
      begin
      if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
         msalbase            :=Qr_LFolLCVALOR.Value;
      end;
   end;
end;
}
procedure TFrm_FolManL01.CANCELARClick(Sender: TObject);
begin
CODFUN.Enabled   :=True;
CODFUN.Text      :='';
NOMFUN.Text      :='';
CCODFUN.Text     :='';
CNOMFUN.Text     :='';
CODCAR.Text      :='';
NOMCAR.Text      :='';
CODDEP.Text      :='';
NOMDEP.Text      :='';
TOTVEN.Text      :='';
TOTDES.Text      :='';
SALBASE.Text     :='';
BASEINSS.Text    :='';
BASEFGTS.Text    :='';
VALFGTS.Text     :='';
BASEIRRF.Text    :='';
FAIXAIRRF.Text   :='';
STG2.RowCount:=2;
STG2.Rows[1].Clear;
bb_gravar.Enabled:=False;
ATUALIZAR.Enabled:=True;
Qr_LFol.Close;
CODFUN.SetFocus;
end;

procedure TFrm_FolManL01.bb_gravarClick(Sender: TObject);
var
x: Integer;
begin
if pf_local=4 then
   begin
   if Trim(MDTAQI.Text)='/  /' then
      begin
      MessageDlg('Data inicial de Aquisição campo obrigatório!',mtWarning,[mbOk],0);
      MDTAQI.SetFocus;
      exit;
      end;
   if Trim(MDTAQF.Text)='/  /' then
      begin
      MessageDlg('Data Final de Aquisição campo obrigatório!',mtWarning,[mbOk],0);
      MDTAQF.SetFocus;
      exit;
      end;
   if Trim(MDTFERI.Text)='/  /' then
      begin
      MessageDlg('Data inicial das Férias campo obrigatório!',mtWarning,[mbOk],0);
      MDTAQI.SetFocus;
      exit;
      end;
   if Trim(MDTFERF.Text)='/  /' then
      begin
      MessageDlg('Data Final das Férias campo obrigatório!',mtWarning,[mbOk],0);
      MDTAQF.SetFocus;
      exit;
      end;
   if StrToDate(MDTAQI.Text)>StrTodate(MDTAQF.Text) then
      begin
      MessageDlg('Data de Aquisição Inicial maior que final!',mtWarning,[mbOk],0);
      MDTAQI.SetFocus;
      exit;
      end;

   if StrToDate(MDTFERI.Text)>StrTodate(MDTFERF.Text) then
      begin
      MessageDlg('Data das Férias Inicial maior que final!',mtWarning,[mbOk],0);
      MDTFERI.SetFocus;
      exit;
      end;


   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADLFOL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+IntToStr(codemp)+' and ')
                  +' LCLOCAL=0'+IntToStr(pf_local)+' and '
                  +' LCMES=0'+Trim(Frm_FolMan.MES.Text)+' and '
                  +' LCANO=0'+Trim(Frm_FolMan.ANO.Text)+' and '
                  +' LCCODFUN=0'+Trim(CCODFUN.Text));
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,539,'Frm_FolManL01','CADLFOL');
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADRFOL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' RFLOCAL=0'+IntToStr(pf_local)+' and '
                  +' RFMES=0'+Trim(Frm_FolMan.MES.Text)+' and '
                  +' RFANO=0'+Trim(Frm_FolMan.ANO.Text)+' and '
                  +' RFCODFUN=0'+Trim(CCODFUN.Text));
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,554,'Frm_FolManL01','CADLFOL');
   end;
for x:=1 to STG2.Rowcount do
   begin
   if Trim(STG2.Cells[0,x])='' then
      Continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Insert into CADLFOL ('
                     +' LCCODEMP, '
                     +' LCLOCAL, '
                     +' LCMES, '
                     +' LCANO, '
                     +' LCCODFUN, '
                     +' LCCODEVE, '
                     +' LCQTD, '
                     +' LCNAT, '
                     +' LCTIPO, '
                     +' LCVALOR, '
                     +' LCTOTAL, '
                     +' LCINCINSS, '
                     +' LCINCFGTS, '
                     +' LCINCIR, '
                     +' LCINCVT, '
                     +' LCQTDPAD, '
                     +' LCSOMA) values (0'
                     +IntToStr(codemp)+',0'
                     +IntTosTr(pf_local)+',0'
                     +Trim(Frm_FolMan.MES.Text)+',0'
                     +Trim(Frm_FolMan.ANO.Text)+',0'
                     +Trim(CCODFUN.Text)+',0'
                     +Trim(STG2.Cells[00,x])+',0' // codigo evento
                     +mudavp(STG2.Cells[03,x])+',0' // quantidade referencia
                     +Trim(STG2.cells[07,x])+',0'   // natureza
                     +Trim(STG2.cells[08,x])+',0'   // tipo
                     +mudavp(STG2.Cells[02,x])+',0' // valor
                     +mudavp(STG2.Cells[13,x])+',0' // total
                     +Trim(STG2.Cells[09,x])+',0'   // incidente no inss
                     +Trim(STG2.Cells[10,x])+',0'   // incidente no fgts
                     +Trim(STG2.Cells[11,x])+',0'   // incidente no imposto de renda
                     +Trim(STG2.Cells[14,x])+',0'   // incidente no valor total
                     +mudavp(STG2.Cells[04,x])+',0'
                     +trim(STG2.Cells[12,x])+')');
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,603,'Frm_FolManL01','CADLFOL');
      end;
   end;
if Trim(MDTAQI.Text)='/  /' then
   FormatDateTime(fdt, StrToDate(MDTAQI.Text));
if Trim(MDTAQF.Text)='/  /' then
   FormatDateTime(fdt, StrToDate(MDTAQF.Text));
if Trim(MDTFERI.Text)='/  /' then
   FormatDateTime(fdt, StrToDate(MDTFERI.Text));
if Trim(MDTFERF.Text)='/  /' then
   FormatDateTime(fdt, StrToDate(MDTFERF.Text));

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADRFOL ('
                  +'RFCODEMP, '
                  +'RFLOCAL, '
                  +'RFMES, '
                  +'RFANO, '
                  +'RFCODFUN, '
                  +'RFBASEFGTS, '
                  +'RFVLRFGTS, '
                  +'RFBASEINSS, '
                  +'RFVLRINSS, '
                  +'RFBASEVT, '
                  +'RFALFGTS, '
                  +'RFALINSS, '
                  +'RFALVT, '
                  +'RFBASEIR, '
                  +'RFALIR, '
                  +'RFVLRIR, '
                  +'RFTOTVEN, '
                  +'RFTOTDES,'
                  +'RFSALBASE,'
                  +'RFDTAQI,'
                  +'RFDTAQF,'
                  +'RFDTFERI,'
                  +'RFDTFERF,'
                  +'RFQTDFNJ) values ('
                  +IntToStr(codemp)+',0'
                  +intToStr(pf_local)+',0'
                  +Trim(Frm_FolMan.MES.Text)+',0'
                  +Trim(Frm_FolMan.ANO.Text)+',0'
                  +Trim(CCODFUN.Text)+',0'
                  +mudavp(FloatToStr(mbfgts))+',0'
                  +mudavp(FloatToStr(mvfgts))+',0'
                  +mudavp(FloatToStr(fmbinss))+',0'
                  +mudavp(FloatToStr(mvinss))+',0'
                  +mudavp(FloatToStr(mbvt))+',0'
                  +mudavp(FloatToStr(mafgts))+',0'
                  +mudavp(FloatToStr(fminss))+',0'
                  +mudavp(FloatToStr(mavt))+',0'
                  +mudavp(FloatToStr(mbir))+',0'
                  +mudavp(FloatToStr(mair))+',0'
                  +mudavp(FloatToStr(mvir))+',0'
                  +mudavp(FloatToStr(mvenc))+',0'
                  +mudavp(FloatToStr(mdesc))+',0'
                  +mudavp(FloatToStr(msalbase))+','
                  +chr(39)+FormatDateTime(fdt, StrToDate(MDTAQI.Text) )+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrToDate(MDTAQF.Text) )+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrToDate(MDTFERI.Text))+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrToDate(MDTFERF.Text))+chr(39)+','
                  +mudavp(QTDFNJ.Text)+')');
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,652,'Frm_FolManL01','CADRFOL');
   end;

CANCELAR.Click;
end;

procedure TFrm_FolManL01.Qr_LFolAfterPost(DataSet: TDataSet);
begin
end;
{
var
x: Integer;
begin
if not mvergrava then
   exit;
mvergrava:=False;
if Qr_LFolLCCODEVE.IsNull then
   Qr_Lfol.Delete;
if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
   begin
   Qr_LFol.First;
   while not Qr_Lfol.Eof do
      begin
      Qr_Lfol.Edit;
      Qr_LFol.Post;
      Qr_LFol.Next;
      end;
   end;
if moper=0 then
   begin
   x:=STG1.RowCount;
   STG1.Cells[0,x-1]:=Qr_LFolLCCODEVE.AsString;
   STG1.RowCount:=x+1;
   end
else if (moper=1) and (mcodevea<>Qr_LFolLCCODEVE.AsInteger) then
   begin
   for x:=1 to STG1.RowCount do
      begin
      if ValFloat(STG1.Cells[0,x-1])=Qr_LFolLCCODEVE.Value then
         begin
         STG1.Cells[0,x-1]:=Qr_LFolLCCODEVE.AsString;
         end;
      end;
   end;

if flcadeve(1,0,Qr_LFolLCCODEVE.AsString) then
   begin
   if DM2.Tb_EveCECODEDSR.Value>0 then
      begin
      if flcadeve(1,0,DM2.Tb_EveCECODEDSR.AsString) then
         begin
         if Qr_LFol.Locate('LCCODEVE',DM2.Tb_EveCECODEDSR.Value,[]) then
            Qr_LFol.Edit
         else
            Qr_LFol.Append;
         end;
      Qr_LFolLCQTD.Value   :=1;
      Qr_LFolLCQTDPAD.Value:=1;
      Qr_LFolLCCODEVE.Value:=DM2.Tb_EveCECODEVE.Value;
      if (Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value) then
         begin
         Qr_LFolLCQTDPAD.Value:=30;
         Qr_LFolLCQTD.Value   :=30;
         Qr_LFolLCVALOR.Value:=DM2.Tb_FunCFSALARIO.Value;
         end
      else if (Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value) then
         begin
         Qr_LFolLCQTDPAD.Value:=30;
         Qr_LFolLCQTD.Value   :=30;
         Qr_LFolLCVALOR.Value:=DM2.Tb_FunCFGRATIF.Value;
         end
      else
         Qr_LFolLCVALOR.Value:=DM2.Tb_EveCEVALOR.Value;
      end;
   end;

FFolManlCalc(1);
mvergrava:=True;

end;
}
procedure TFrm_FolManL01.EXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir Esta Folha?',0,['1','2'],2)<>mrYes then
   Exit;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADLFOL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+IntToStr(codemp)+' and ')
                  +' LCLOCAL=0'+IntToStr(pf_local)+' and '
                  +' LCMES=0'+Trim(Frm_FolMan.MES.Text)+' and '
                  +' LCANO=0'+Trim(Frm_FolMan.ANO.Text)+' and '
                  +' LCCODFUN=0'+Trim(CCODFUN.Text));
DM1.Query2.ExecSQL;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADRFOL where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' RFLOCAL=0'+IntToStr(pf_local)+' and '
                  +' RFMES=0'+Trim(Frm_FolMan.MES.Text)+' and '
                  +' RFANO=0'+Trim(Frm_FolMan.ANO.Text)+' and '
                  +' RFCODFUN=0'+Trim(CCODFUN.Text));
DM1.Query2.ExecSQL;
CANCELAR.Click;

end;

procedure TFrm_FolManL01.Qr_LFolBeforeEdit(DataSet: TDataSet);
begin
moper:=1;
mcodevea:=Qr_LFolLCCODEVE.AsInteger;
end;

procedure TFrm_FolManL01.CODEVEExit(Sender: TObject);
var
x: Integer;
begin
CODEVE.Text:=FloatToStr(fsonumero(CODEVE.Text));
if fsonumero(CODEVE.Text)<=0 then
   CODEVE.Text:='';
if trim(CODEVE.Text)<>'' then
   begin
   if not flcadeve(1,0,CODEVE.Text) then
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODEVE.SetFocus;
      exit;
      end
   else
      begin
      NOMEVE.Text:=DM2.Tb_EveCENOMEVE.Value;
      if (moper=0) or ((moper=1) and (mcodevea<>fsonumero(CODEVE.Text))) then
         begin
         for x:=1 to STG2.RowCount do
            begin
            if fsonumero(STG2.Cells[0,x-1])=fsonumero(CODEVE.Text) then
               begin
               MessageDlg('Não pode haver evento duplicado!',mtWarning,[mbOk],0);
               exit
               end;
            end;
         end;
      if (fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODSAL.Value) OR
         (fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODRES.Value) then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFSALARIO.Value);
         msalbase            :=DM2.Tb_FunCFSALARIO.Value;
         REF.Text            :=FormatFloat(mcasas, mqtddm);
         PADRAO.Text         :=FormatFloat(mcasas, mqtddm);
         end
      else if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODGRA.Value then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFGRATIF.Value);
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
         REF.Text            :=FormatFloat(mcasas, mqtddm);
         PADRAO.Text         :=FormatFloat(mcasas, mqtddm);
         end
      else if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODFER.Value then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFSALARIO.Value);
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
         REF.Text            :=FormatFloat(mcasas, 12);
         PADRAO.Text         :=FormatFloat(mcasas, 12);
         end
      else if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODDTERUN.Value then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFSALARIO.Value);
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
         REF.Text            :=FormatFloat(mcasas, 12);
         PADRAO.Text         :=FormatFloat(mcasas, 12);
         end
      else if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODDTER01.Value then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFSALARIO.Value);
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
         REF.Text            :=FormatFloat(mcasas, 12);
         PADRAO.Text         :=FormatFloat(mcasas, 12);
         end
      else if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODDTER02.Value then
         begin
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_FunCFSALARIO.Value);
//            msalbase            :=DM2.Tb_FunCFGRATIF.Value;
         REF.Text            :=FormatFloat(mcasas, 12);
         PADRAO.Text         :=FormatFloat(mcasas, 12);
         end
      else
         VALOR.Text          :=Formatfloat(mcasas3Dec, DM2.Tb_EveCEVALOR.Value);
      if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODSFAM.Value then
         begin
         REF.Text            :=FormatFloat(mcasas, DM2.Tb_FunCFN_DEP.value);
         end;
      end;
   end;
ffolmanlvencdesc(0);

end;

procedure TFrm_FolManL01.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
machou: Boolean;
begin

if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODSAL.Value then
   begin
   PADRAO.Text:=Formatfloat(mcasas, 30);
   if (ValFloat(REF.Text)<1) or (ValFloat(REF.Text)>ValFloat(PADRAO.Text)) then
      begin
      MessageDlg('Quantidade de dias invalido!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else if (fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODGRA.Value) then
   begin
   PADRAO.Text:=FormatFloat(mcasas, 30);
   if (ValFloat(REF.Text)<1) or (ValFloat(REF.Text)>ValFloat(PADRAO.Text)) then
       begin
       MessageDlg('Quantidade de dias invalido!',mtWarning,[mbOk],0);
       exit;
      end;
   end
else
   begin
   if ValFloat(REF.Text)<1 then
      begin
      MessageDlg('Quantidade Referencia Invalido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
if (ValFloat(REF.Text)<=0) then
   begin
   MessageDlg('Referencia campo Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;

if (ValFloat(PADRAO.Text)<=0) then
   begin
   MessageDlg('Quantidade Padrão campo Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;

if (ValFloat(VALOR.Text)<=0) then
   begin
   MessageDlg('Valor campo Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;


if not flcadeve(1,0,Trim(CODEVE.Text)) then
   begin
   MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
   exit;
   end;

if (moper=0) or ((moper=1) and (mcodevea<>fsonumero(CODEVE.Text))) then
   begin
   for x:=1 to STG2.RowCount do
      begin
      if ValFloat(STG2.Cells[0,x-1])=DM2.Tb_EveCECODEVE.Value then
         begin
         MessageDlg('Não pode haver evento duplicado!',mtWarning,[mbOk],0);
         exit;
         end
      end;
   end;
if moper=0 then
   begin
   x:=STG2.RowCount-1;
   STG2.RowCount:=x+2;
   STG2.Rows[x].Clear;
   STG2.Rows[x+1].Clear;
   STG2.Rows[x+2].Clear;
   end
else
   x:=STG2.Row;


STG2.Cells[00,x]:=CODEVE.Text;
STG2.Cells[01,x]:=DM2.Tb_EveCENOMEVE.Value;
STG2.Cells[02,x]:=VALOR.Text;
STG2.Cells[03,x]:=REF.Text;
STG2.Cells[04,x]:=PADRAO.Text;
STG2.Cells[05,x]:=VENCIMENTOS.Text;
STG2.Cells[06,x]:=DESCONTOS.Text;
STG2.Cells[07,x]:=DM2.Tb_EveCENAT.AsString;
STG2.Cells[08,x]:=DM2.Tb_EveCETIPO.AsString;
STG2.Cells[09,x]:=DM2.Tb_EveCEINCINSS.AsString;
STG2.Cells[10,x]:=DM2.Tb_EveCEINCFGTS.AsString;
STG2.Cells[11,x]:=DM2.Tb_EveCEINCIR.AsString;
if fsonumero(CODEVE.Text)=DM2.Tb_ParFPagPFCODFGTS.Value then
   STG2.Cells[12,x]:='1'
else
   STG2.Cells[12,x]:='0';
STG2.Cells[14,x]:=DM2.Tb_EveCEINCVT.AsString;

//ShowMessage('STG02'+STG2.Cells[02,x]+' STG03'+STG2.Cells[03,x]+' STG04'+STG2.Cells[04,x]);

if (Valint(STG2.cells[08,x])=0) and (ValFloat(STG2.cells[02,x])>0) then // tipo
   begin
   STG2.Cells[13,x]:=FormatFloat(mcasas, (ValFloat(STG2.Cells[02,x])*ValFloat(STG2.Cells[03,x]))/valfloat(STG2.Cells[04,x]));
   end
else
   begin
   STG2.Cells[13,x]    :=FormatFloat(mcasas, ValFloat(STG2.cells[02,x])*msalbase/100);
   STG2.Cells[13,x]    :=FormatFloat(mcasas, ValFloat(STG2.Cells[13,x])*ValFloat(STG2.cells[03,x]));
   end;
//

if ValInt(STG2.Cells[08,x])=0 then // TIPO
   STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[02,x])*valFloat(STG2.Cells[03,x]))/valFloat(STG2.Cells[04,x]))
else
   begin
   if valFloat(STG2.Cells[00,x])=DM2.Tb_ParFPagPFCODINSS.Value then
      begin
      STG2.Cells[02,x]    :=FormatFloat(mcasas, fminss);
      STG2.Cells[13,x]    :=Formatfloat(mcasas, (ValFloat(STG2.Cells[02,x])*fmbinss/100));
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[13,x])*ValFloat(STG2.Cells[03,x]))/ValFloat(STG2.Cells[04,x]));
      end
   else if ValFloat(STG2.Cells[00,x])=DM2.Tb_ParFPagPFCODFGTS.Value then
      begin
      STG2.Cells[02,x]    :=FormatFloat(mcasas, mafgts);
      STG2.Cells[13,x]    :=Formatfloat(mcasas, (ValFloat(STG2.Cells[02,x])*mbfgts/100));
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[13,x])*ValFloat(STG2.Cells[03,x]))/ValFloat(STG2.Cells[04,x]));
      end
   else if ValFloat(STG2.Cells[00,x])=DM2.Tb_ParFPagPFCODIR.Value then
      begin
      STG2.Cells[02,x]    :=FormatFloat(mcasas, mair);
      STG2.Cells[13,x]    :=Formatfloat(mcasas, (ValFloat(STG2.Cells[02,x])*mbir/100));
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[13,x])*ValFloat(STG2.Cells[03,x]))/ValFloat(STG2.Cells[04,x]));
      end
   else if ValFloat(STG2.Cells[00,x])=DM2.Tb_ParFPagPFCODVT.Value then
      begin
      STG2.Cells[02,x]    :=FormatFloat(mcasas, mavt);
      STG2.Cells[13,x]    :=Formatfloat(mcasas, (ValFloat(STG2.Cells[02,x])*mbvt/100));
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[13,x])*ValFloat(STG2.Cells[03,x]))/ValFloat(STG2.Cells[04,x]));
      end
   else
      begin
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[02,x])*msalbase/100));
      STG2.Cells[13,x]    :=FormatFloat(mcasas, (ValFloat(STG2.Cells[13,x])*ValFloat(STG2.Cells[03,x]))/ValFloat(STG2.Cells[04,x]));
      end;
   end;
if DM2.Tb_EveCENAT.Value=0 then
   begin
   if (mVctoDigitado=0) then
       STG2.cells[05,x]:=STG2.Cells[13,x];
   STG2.cells[06,x]:='';
   end
else
   begin
   if (mVctoDigitado=0) then
      STG2.cells[06,x]:=STG2.Cells[13,x];
   STG2.cells[05,x]:='';
   end;



//

mvergrava:=False;

if DM2.Tb_EveCECODEDSR.Value>0 then
   begin
   machou:=False;
   if flcadeve(1,0,DM2.Tb_EveCECODEDSR.AsString) then
      begin
      for x:=1 to STG2.RowCount do
         begin
         if ValFloat(STG2.Cells[0,x-1])=DM2.Tb_EveCECODEDSR.Value then
            begin
            machou:=True;
            break;
            end;
         end
      end;
   if not machou then
      begin
      x:=STG2.RowCount-1;
      STG2.RowCount:=x+2;
      end;
   STG2.Cells[00,x]:=DM2.Tb_EveCECODEVE.AsString;
   STG2.Cells[01,x]:=DM2.Tb_EveCENOMEVE.Value;
   STG2.Cells[04,x]:='1.00'; // quantidade padrao
   STG2.Cells[03,x]:='1.00'; // REFERENCIA

   if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
      begin
      STG2.Cells[04,x]:=FormatFloat(mcasas, 30); // quantidade padrao
      STG2.Cells[03,x]:=Formatfloat(mcasas, 30); // REFERENCIA
      STG2.Cells[02,x]:=FormatFloat(mcasas, DM2.Tb_FunCFSALARIO.Value);
      end
   else if (DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value) then
      begin
      STG2.Cells[04,x]:=Formatfloat(mcasas, 30); // quantidade padrao
      STG2.Cells[03,x]:=Formatfloat(mcasas, 30); // REFERENCIA
      STG2.Cells[02,x]:=FormatFloat(mcasas, DM2.Tb_FunCFGRATIF.Value);
      end
   else
      STG2.Cells[02,x]:=FormatFloat(mcasas, DM2.Tb_EveCEVALOR.Value);
   end;

FFolManlCalc(1);
mvergrava:=True;


//



moper           :=0;
REF.Text        :=Formatfloat(mcasas, 1);
PADRAO.Text     :=FormatFloat(mcasas, 1);
CODEVE.Text     :='';
NOMEVE.Text     :='';
VALOR.Text      :='';
VENCIMENTOS.Text:='';
DESCONTOS.Text  :='';
mcodevea        :=0;
CODEVE.SetFocus;
end;

procedure TFrm_FolManL01.VALORExit(Sender: TObject);
begin
if ValFloat(CODEVE.Text)=DM2.Tb_ParFPagPFCODSAL.Value then
   msalbase            :=ValFloat(VALOR.Text);
VALOR.Text:=FormatFloat(mcasas3Dec, ValFloat(VALOR.Text));
ffolmanlvencdesc(0);

end;

procedure TFrm_FolManL01.ITEM_EDITARClick(Sender: TObject);
begin
if Trim(STG2.Cells[00,STG2.Row])='' then
   begin
   MessageDlg('Não ha Registro Selecionado para Alteração!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=1;
mcodevea:=ValInt(STG2.cells[00,STG2.Row]);
CODEVE.Text     :=STG2.Cells[00,STG2.Row];
NOMEVE.Text     :=STG2.Cells[01,STG2.Row];
VALOR.Text      :=STG2.Cells[02,STG2.Row];
REF.Text        :=STG2.Cells[03,STG2.Row];
PADRAO.Text     :=STG2.Cells[04,STG2.Row];
VENCIMENTOS.Text:=STG2.Cells[05,STG2.Row];
DESCONTOS.Text  :=STG2.Cells[05,STG2.Row];
CODEVE.SetFocus;
end;

procedure TFrm_FolManL01.CODEVEKeyPress(Sender: TObject; var Key: Char);
var
form_eveFolha: TFrm_Eve;
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, form_eveFolha);
   form_eveFolha.Edit1.Text:=key;
   form_eveFolha.BBnAtu.Click;
   form_eveFolha.Edit1.SelStart:=1;
   form_eveFolha.Edit1.SelLength:=1;
   form_eveFolha.PC1.ActivePageIndex:=1;
   eve_ori:='Frm_FolManL01';
   if form_eveFolha.ShowModal=mrok then
      begin
      CODEVE.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   freeandnil(form_eveFolha);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FolManL01.REFExit(Sender: TObject);
begin
REF.Text:=Formatfloat(mcasas, ValFloat(REF.Text));
ffolmanlvencdesc(0);
end;

procedure TFrm_FolManL01.PADRAOExit(Sender: TObject);
begin
PADRAO.Text:=Formatfloat(mcasas, ValFloat(PADRAO.Text));
ffolmanlvencdesc(0);

end;
function TFrm_FolManL01.ffolmanlvencdesc(ptipo: Integer): Boolean;
var
mvalor: Real;
mtotal: Real;
begin

if DM2.Tb_EveCETIPO.Value=0 then // TIPO
   begin
   mvalor :=ValFloat(VALOR.Text);
   mtotal :=ValFloat(VALOR.Text)*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
   end
else
   begin
   mvalor:=ValFloat(VALOR.Text);
   if ptipo=0 then
      begin
      if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value then
         begin
         mvalor  := fminss;
         mtotal  := mvalor*fmbinss/100;
         mtotal  := mtotal*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
         end
     else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value then
         begin
         mvalor  := mafgts;
         mtotal  := mvalor*mbfgts/100;
         mtotal  := mtotal*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value then
         begin
         mvalor  := mair;
         mtotal  := mvalor*mbir/100;
         mtotal  := mtotal*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
         begin
         mvalor  := mavt;
         mtotal  := mvalor*mbvt/100;
         mtotal  := mtotal*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
         end
      else
         begin
         mtotal  := mvalor*msalbase/100;
         mtotal  := mtotal*ValFloat(REF.Text)/ValFloat(PADRAO.Text);
         end;
      end;
   end;

VALOR.Text      :=FormatFloat(mcasas3Dec, mvalor);
VENCIMENTOS.Text:='';
DESCONTOS.Text  :='';

if DM2.Tb_EveCENAT.Value=0 then
   VENCIMENTOS.Text:=FormatFloat(mcasas, mtotal)
else
   DESCONTOS.Text:=FormatFloat(mcasas, mtotal);
result:=True;

end;

procedure TFrm_FolManL01.VALORKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_FolManL01.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
if Trim(STG2.Cells[00,STG2.Row])='' then
   begin
   MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG2.RowCount=2 then
   STG2.Rows[1].Clear
else
   begin
   for x:=STG2.Row to STG2.RowCount-2 do
      begin
      STG2.Cells[00,x]:=STG2.Cells[00,x+1];
      STG2.Cells[01,x]:=STG2.Cells[01,x+1];
      STG2.Cells[02,x]:=STG2.Cells[02,x+1];
      STG2.Cells[03,x]:=STG2.Cells[03,x+1];
      STG2.Cells[04,x]:=STG2.Cells[04,x+1];
      STG2.Cells[05,x]:=STG2.Cells[05,x+1];
      STG2.Cells[06,x]:=STG2.Cells[06,x+1];
      STG2.Cells[07,x]:=STG2.Cells[07,x+1];
      STG2.Cells[08,x]:=STG2.Cells[08,x+1];
      STG2.Cells[09,x]:=STG2.Cells[09,x+1];
      STG2.Cells[10,x]:=STG2.Cells[10,x+1];
      STG2.Cells[11,x]:=STG2.Cells[11,x+1];
      STG2.Cells[12,x]:=STG2.Cells[12,x+1];
      STG2.Cells[13,x]:=STG2.Cells[13,x+1];
      STG2.Cells[14,x]:=STG2.Cells[14,x+1];
//      STG2.Cells[15,x]:=STG2.Cells[15,x+1];
      end;
   STG2.RowCount:=STG2.RowCount-1;
   end;
FFolManlCalc(1);

end;

procedure TFrm_FolManL01.ITEM_CANCELARClick(Sender: TObject);
begin
moper           :=0;
REF.Text        :=Formatfloat(mcasas, 1);
PADRAO.Text     :=FormatFloat(mcasas, 1);
CODEVE.Text     :='';
NOMEVE.Text     :='';
VALOR.Text      :='';
VENCIMENTOS.Text:='';
DESCONTOS.Text  :='';
mcodevea        :=0;

end;

procedure TFrm_FolManL01.MDTAQIExit(Sender: TObject);
begin
if Trim(MDTAQI.Text)<>'/  /' then
   begin
   try
      MDTAQI.Text:=FormatDatetime(fdt2, StrtoDate(MDTAQI.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOK],0);
      MDTAQI.SetFocus;
      end;
   end;

end;

procedure TFrm_FolManL01.MDTAQFExit(Sender: TObject);
begin
if Trim(MDTAQF.Text)<>'/  /' then
   begin
   try
      MDTAQF.Text:=FormatDatetime(fdt2, StrtoDate(MDTAQF.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOK],0);
      MDTAQF.SetFocus;
      end;
   end;

end;

procedure TFrm_FolManL01.MDTFERIExit(Sender: TObject);
begin
if Trim(MDTFERI.Text)<>'/  /' then
   begin
   try
      MDTFERI.Text:=FormatDatetime(fdt2, StrtoDate(MDTFERI.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOK],0);
      MDTFERI.SetFocus;
      end;
   end;

end;

procedure TFrm_FolManL01.MDTFERFExit(Sender: TObject);
begin
if Trim(MDTFERF.Text)<>'/  /' then
   begin
   try
      MDTFERF.Text:=FormatDatetime(fdt2, StrtoDate(MDTFERF.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOK],0);
      MDTFERF.SetFocus;
      end;
   end;

end;

procedure TFrm_FolManL01.QTDFNJExit(Sender: TObject);
begin
QTDFNJ.Text:=FormatDatetime(mcasas, ValFloat(QTDFNJ.Text));
end;

procedure TFrm_FolManL01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_FolManL01.VENCIMENTOSEnter(Sender: TObject);
begin
     mVctoDigitadoAnt:=0;

end;

procedure TFrm_FolManL01.VENCIMENTOSExit(Sender: TObject);
begin

VENCIMENTOS.Text:=FormatFloat(mcasas3Dec, ValFloat(VENCIMENTOS.Text));

if valfloat(VENCIMENTOS.TEXT)<>mVctoDigitadoAnt then
   mVctoDigitado := valfloat(VENCIMENTOS.TEXT)
else
   mVctoDigitado := 0;

end;

end.
