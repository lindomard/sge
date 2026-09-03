unit S_FolManL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, Buttons,
  S_Fun,lerarq, DB, DBTables,func;

type
  TFrm_FolManL = class(TForm)
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
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
    STG1: TStringGrid;
    DBGrid1: TDBGrid;
    procedure SAIRClick(Sender: TObject);
    procedure CODFUNExit(Sender: TObject);
    procedure CODFUNKeyPress(Sender: TObject; var Key: Char);
    procedure ATUALIZARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LFolCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Qr_LFolAfterInsert(DataSet: TDataSet);
    procedure Qr_LFolBeforePost(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure Qr_LFolAfterPost(DataSet: TDataSet);
    procedure EXCLUIRClick(Sender: TObject);
    procedure Qr_LFolBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function FFolManlCalc(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_FolManL: TFrm_FolManL;
  pf_local: Integer=0;
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

uses S_DM1, S_DM2, S_FolMan, S_GFolha;

{$R *.dfm}

procedure TFrm_FolManL.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FolManL.CODFUNExit(Sender: TObject);
begin
if (CANCELAR.Focused) or (SAIR.Focused) then
   begin
   exit;
   end;
if flcadfun(1,0,Trim(CODFUN.Text)) then
   NOMFUN.Text:=DM2.Tb_FunCFNOMFUN.AsString
else
   begin
   MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
   CODFUN.SetFocus;
   end;
end;

procedure TFrm_FolManL.CODFUNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFUN.Text:=fChamafun(0,'frm_folman',key);
   CODFUNExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FolManL.ATUALIZARClick(Sender: TObject);
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
mqtd:=1;
STG1.RowCount:=mqtd;
While not Qr_LFol.Eof do
   begin
   STG1.Cells[0,mqtd-1]:=Qr_LFolLCCODEVE.AsString;
   mqtd:=mqtd+1;
   STG1.RowCount:=mqtd;
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
DBGrid1.ReadOnly:=False;

end;

function TFrm_FolManL.FFolManlCalc(ptipo: Integer): Boolean;
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
Qr_LFol.First;
While not Qr_LFol.Eof do
   begin
   if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
      begin
      msalbase:=Qr_LFolLCTOTAL.Value;
      end;

   if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
      begin
      if flcadeve(1,0,Qr_LFolLCCODEVE.AsString) then
         mavt:= DM2.Tb_EveCEVALOR.Value;
      end;
   if Qr_LFolLCSOMA.Value=1 then
      begin
      Qr_LFol.Next;
      Continue;
      end;
   if Qr_LFolLCINCINSS.Value=0 then
      fmbinss:=fmbinss+Qr_LFolLCTOTAL.Value;
   if Qr_LFolLCINCFGTS.Value=0 then
      mbfgts:=mbfgts+Qr_LFolLCTOTAL.Value;
   if Qr_LFolLCINCIR.Value=0 then
      mbir  :=mbir  +Qr_LFolLCTOTAL.Value;
   if Qr_LFolLCINCVT.Value=0 then
      mbvt  :=mbvt  +Qr_LFolLCTOTAL.Value;
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

Qr_LFol.First;
While not Qr_LFol.Eof do
   begin
   if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value then
      begin
      Qr_LFol.Edit;
      Qr_LFolLCTOTAL.Value:=mvinss;
      Qr_LFol.Post;
      end
   else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value then
      begin
      Qr_LFol.Edit;
      Qr_LFolLCTOTAL.Value:=mvfgts;
      Qr_LFol.Post;
      end
   else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value then
      begin
      Qr_LFol.Edit;
      Qr_LFolLCTOTAL.Value:=mvir;
      Qr_LFol.Post;
      end
   else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
      begin
      Qr_LFol.Edit;
      Qr_LFolLCTOTAL.Value:=mvvt;
      Qr_LFol.Post;
      end;
   Qr_LFol.Next;
   end;

Qr_LFol.First;
While not Qr_LFol.Eof do
   begin
   if Qr_LFolLCSOMA.Value=1 then
      begin
      Qr_LFol.Next;
      Continue;
      end;
   if Qr_LFolLCNAT.Value=0 then
      mvenc:=mvenc+Qr_LFolLCTOTAL.Value
   else
      mdesc:=mdesc+Qr_LFolLCTOTAL.Value;
   Qr_Lfol.Next;
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
procedure TFrm_FolManL.FormCreate(Sender: TObject);
begin
Frm_FolManL.Caption:='Lançamento Manual da Folha de Pagamento. Mês: '+Frm_FolMan.MES.Text+'/'+Frm_FolMan.ANO.Text;
mqtddm:=30;
end;

procedure TFrm_FolManL.Qr_LFolCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',Qr_LFolLCCODEVE.AsString) then
   Qr_LFolnomeve.Value:=DM1.Query1.Fields[0].AsString;
if Qr_LFolLCNAT.Value=0 then
   Qr_LFolvencimentos.Value:=Qr_LFolLCTOTAL.Value
else
   Qr_LFoldescontos.Value  :=Qr_LFolLCTOTAL.Value;
end;

procedure TFrm_FolManL.FormCloseQuery(Sender: TObject;
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

procedure TFrm_FolManL.Qr_LFolAfterInsert(DataSet: TDataSet);
begin
Qr_LFolLCQTDPAD.Value:=1;
Qr_LFolLCQTD.Value:=1;
moper:=0;
mcodevea:=0;
end;

procedure TFrm_FolManL.Qr_LFolBeforePost(DataSet: TDataSet);
var
x: Integer;
begin

if Qr_LFolLCCODEVE.IsNull then
   begin
   exit;
   end
else
   begin
   if (Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value) then
      begin
      Qr_LFolLCQTDPAD.Value:=30;
      if (Qr_LFolLCQTD.Value<1) or (Qr_LFolLCQTD.Value>Qr_LFolLCQTDPAD.Value) then
         begin
         MessageDlg('Quantidade de dias invalido!',mtWarning,[mbOk],0);
         abort;
         end;
      end
   else if (Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value) then
      begin
      Qr_LFolLCQTDPAD.Value:=30;
      if (Qr_LFolLCQTD.Value<1) or (Qr_LFolLCQTD.Value>Qr_LFolLCQTDPAD.Value) then
         begin
         MessageDlg('Quantidade de dias invalido!',mtWarning,[mbOk],0);
         abort;
         end;
      end
   else
      begin
      if Qr_LFolLCQTD.Value<1 then
         begin
         MessageDlg('Quantidade Referencia Invalido!',mtWarning,[mbOk],0);
         abort;
         end;
      end;
  if (Qr_LFolLCQTDPAD.Value>0) and (Qr_LFolLCVALOR.Value>0) and (Qr_LFolLCQTD.Value>0) then
      begin
//inicio
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
//fim


      if Qr_LFolLCTIPO.Value=0 then
         Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value
      else
         begin
         if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value then
            begin
            Qr_LFolLCVALOR.Value:=fminss;
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*fmbinss/100);
            Qr_LFolLCTOTAL.Value:=Arredonda(Qr_LFolLCTOTAL.Value,2);
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
            end
         else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value then
            begin
            Qr_LFolLCVALOR.Value:=mafgts;
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*mbfgts/100);
            Qr_LFolLCTOTAL.Value:=Arredonda(Qr_LFolLCTOTAL.Value,2);
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
            end
         else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value then
            begin
            Qr_LFolLCVALOR.Value:=mair;
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*mbir/100);
            Qr_LFolLCTOTAL.Value:=Arredonda(Qr_LFolLCTOTAL.Value,2);
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
            end
         else if Qr_LFolLCCODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
            begin
            Qr_LFolLCVALOR.Value:=mavt;
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*mbvt/100);
            Qr_LFolLCTOTAL.Value:=Arredonda(Qr_LFolLCTOTAL.Value,2);
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
            end
         else
            begin
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCVALOR.Value*msalbase/100);
            Qr_LFolLCTOTAL.Value:=Arredonda(Qr_LFolLCTOTAL.Value,2);
            Qr_LFolLCTOTAL.Value:=(Qr_LFolLCTOTAL.Value*Qr_LFolLCQTD.Value)/Qr_LFolLCQTDPAD.Value;
            end;
         end;
      end;
   end;
end;

procedure TFrm_FolManL.DBGrid1ColExit(Sender: TObject);
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

procedure TFrm_FolManL.CANCELARClick(Sender: TObject);
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
bb_gravar.Enabled:=False;
ATUALIZAR.Enabled:=True;
Qr_LFol.Close;
DBGrid1.ReadOnly:=True;
CODFUN.SetFocus;
end;

procedure TFrm_FolManL.bb_gravarClick(Sender: TObject);
begin
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

Qr_LFol.First;
While not Qr_Lfol.Eof do
   begin
   if Qr_LFolLCCODEVE.AsInteger<1 then
      begin
      Qr_LFol.Next;
      Continue;
      end;
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
                     +Qr_LFolLCCODEVE.AsString+',0'
                     +mudavp(Qr_LFolLCQTD.AsString)+',0'
                     +Qr_LFolLCNAT.AsString+',0'
                     +Qr_LFolLCTIPO.AsString+',0'
                     +mudavp(Qr_LFolLCVALOR.AsString)+',0'
                     +mudavp(Qr_LFolLCTOTAL.AsString)+',0'
                     +Qr_LFolLCINCINSS.AsString+',0'
                     +Qr_LFolLCINCFGTS.AsString+',0'
                     +Qr_LFolLCINCIR.AsString+',0'
                     +Qr_LFolLCINCVT.AsString+',0'
                     +mudavp(Qr_LFolLCQTDPAD.AsString)+',0'
                     +Qr_LFolLCSOMA.AsString+')');
   DM1.Query2.ExecSQL;
   Qr_LFol.Next;
   end;

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
                  +'RFSALBASE) values ('
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
                  +mudavp(FloatToStr(msalbase))+')');
DM1.Query2.ExecSQL;

CANCELAR.Click;
end;

procedure TFrm_FolManL.Qr_LFolAfterPost(DataSet: TDataSet);
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

procedure TFrm_FolManL.EXCLUIRClick(Sender: TObject);
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

procedure TFrm_FolManL.Qr_LFolBeforeEdit(DataSet: TDataSet);
begin
moper:=1;
mcodevea:=Qr_LFolLCCODEVE.AsInteger;
end;

procedure TFrm_FolManL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
