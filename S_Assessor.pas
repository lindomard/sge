unit S_Assessor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,S_DM2,db,dbtables,func,lerarq,S_Bai,S_UF, ToolWin;

type
  TFrm_Assessor = class(TFrm_C)
    Label1: TLabel;
    edt_codas: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    RAZAO: TLabel;
    edt_nome: TDBEdit;
    NOMFAN: TLabel;
    FANTASIA: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    CODBAI: TDBEdit;
    NOMBAI: TDBEdit;
    Label8: TLabel;
    CODLOC: TDBEdit;
    NOMCID: TDBEdit;
    Label4: TLabel;
    ESTADO: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label55: TLabel;
    DBEdit54: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label51: TLabel;
    DBEdit93: TDBEdit;
    CNPJ: TLabel;
    DB_CNPJ: TDBEdit;
    IE: TLabel;
    DBEdit12: TDBEdit;
    CNPF: TLabel;
    DB_CNPF: TDBEdit;
    rg: TLabel;
    DBEdit20: TDBEdit;
    tab_ad: TTabSheet;
    GroupBox8: TGroupBox;
    DBEdit39: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox10: TGroupBox;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox11: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit44: TDBEdit;
    GroupBox13: TGroupBox;
    Label10: TLabel;
    Label53: TLabel;
    DBEdit11: TDBEdit;
    DBEdit96: TDBEdit;
    Label54: TLabel;
    DBEdit97: TDBEdit;
    Label56: TLabel;
    DBEdit98: TDBEdit;
    DBEdit65: TDBEdit;
    Label39: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    dtnas: TMaskEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    bbProxima: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure edt_codasExit(Sender: TObject);
    procedure DB_CNPJExit(Sender: TObject);
    procedure DB_CNPFExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure ESTADOExit(Sender: TObject);
    procedure ESTADOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ESTADOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtnasExit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit12Exit(Sender: TObject);
    procedure bbProximaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    function fAssessorlerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;
function fAssessorgant(ptipo: Integer): Boolean;

var
  Frm_Assessor: TFrm_Assessor;
  assessor_ori: String;

  mopasse       : Integer = 0;
  bbaalt_true   : Boolean = True;
  bbainc_true   : Boolean = True;
  bbaexc_true   : Boolean = True;
  pAssePagLista : Integer = 2;
  mcodas_ant    : Real;

implementation


uses S_DM4;
{$R *.dfm}

procedure TFrm_Assessor.INCLUIRClick(Sender: TObject);
begin
  inherited;
  Self.Caption   := 'Manutenção no Cadastro de Assessor - [Inclusão]';
  DM2.Tb_Assessor.Append;
  DM2.Tb_AssessorCATPPESSOA.Value := 0;
  DM2.Tb_AssessorCADTCAD.Value    := now;
  DM2.Tb_AssessorCACODUSR.Value   := codusr;
  dtnas.Text      :='/  /';
  DBEdit65.Visible:=false;
  dtnas.Visible   :=true;
  DBRadioGroup1.SetFocus;
  PC1.ActivePageIndex:=0;
  mCodas_Ant     := DM2.Tb_AssessorCACODASS.AsFloat;
  Tab_ad.Enabled := True;
  mOpasse        := 0;
  edt_codas.Enabled := True;
  edt_codas.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled       := false;
end;

procedure TFrm_Assessor.ALTERARClick(Sender: TObject);
begin
   inherited;
   if DM2.Tb_AssessorCACODASS.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   Self.Caption := 'Manutenção no Cadastro de Assessor - [Alteração]';


   DM2.Tb_Assessor.Edit;
   DM2.Tb_AssessorCADTALT.AsDateTime:=now;
   mCodas_Ant       := DM2.Tb_AssessorCACODASS.AsFloat;
   dtnas.Text       := DM2.Tb_Assessordatnas.Value;
   DBEdit65.Visible := false;
   dtnas.Visible    := true;
   DBRadioGroup1.SetFocus;
   edt_codas.Enabled:= False;

   mOpasse          := 1;
   Tab_ad.Enabled   := True;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   DBGrid1.Enabled      := False;
   DBNavigator2.Enabled := False;
   BBnAtu.Enabled       := False;
end;

function fAssessorgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CACODNOV) from OLD_CADASSE');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADASSE (';
v:='';
for x:=0 to DM2.Tb_Assessor.FieldCount-1 do
   begin
   if DM2.Tb_Assessor.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Assessor.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CACODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_Assessor.FieldCount-1 do
   begin
   if DM2.Tb_Assessor.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM2.Tb_Assessor.Fields[x].FieldName='CACODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CACODUSR '
   else if DM2.Tb_Assessor.Fields[x].FieldName='CADTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as CADTALT '
   else if DM2.Tb_Assessor.Fields[x].FieldName='CAHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CAHRALT '
   else
      minstru:=minstru+v+DM2.Tb_Assessor.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CACODNOV ';
minstru:=minstru+' from CADASSE where CACODEMP=0'+DM2.Tb_AssessorCACODEMP.AsString
                +' and CACODASS=0'+DM2.Tb_AssessorCACODASS.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Fazer o Backup da Alteracao AC00953. Contactar Suporte',mtError,[mbOk],0);
   end;
result:=True;



end;

procedure TFrm_Assessor.EXCLUIRClick(Sender: TObject);
begin
   inherited;
   if DM2.Tb_AssessorCACODASS.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.Asstring,
                  'CACODNOV','CADATHOR','CACODUSR2',
                  'CASTATUS2',['CACODASS'],[FloatToStr(DM2.Tb_AssessorCACODASS.AsFloat)]
                  ,DM2.Tb_Assessor);
       FAtualizaBanco(2,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.AsString
       ,['CACODASS'],[FloatToStr(DM2.Tb_AssessorCACODASS.AsFloat)]
       ,DM2.Tb_Assessor);
       DM2.Tb_Assessor.Delete;
   end;
end;

procedure TFrm_Assessor.GRAVARClick(Sender: TObject);
begin
   inherited;
if (DM2.Tb_AssessorCACODASS.IsNull) then
   begin
   fmensagem('Favor informar Código do Assessor!',0,['0'],0);
   edt_codas.SetFocus;
   Exit;
   end;

if (DM2.Tb_AssessorCARAZAO.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

if trim(dtnas.Text) = '/  /' then
   DM2.Tb_AssessorCADTNAS.Value:=pdatanula
else
   DM2.Tb_AssessorCADTNAS.Value:=StrtoDate(dtnas.Text);
DM2.Tb_AssessorCADTALT.Value:=Now;
DM2.Tb_AssessorCACODUSR_ALT.Value:=codusr;

if mopasse=1 then
   begin
   FGerarAntes(8,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.Asstring,
              'CACODNOV','CADATHOR','CACODUSR2',
              'CASTATUS2',['CACODASS'],[FloatToStr(DM2.Tb_AssessorCACODASS.AsFloat)]
              ,DM2.Tb_Assessor);
   end;

DM2.Tb_Assessor.Post;

FAtualizaBanco(1,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.AsString
  ,['CACODASS'],[FloatToStr(mCodas_Ant)]
  ,DM2.Tb_Assessor);
  mOpasse:=-1;

  CancelarClick(self);


end;

procedure TFrm_Assessor.CANCELARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Assessor';

   if (mOpasse = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADASSE','CACODEMP',DM2.Tb_AssessorCACODEMP.AsString
      ,['CACODASS'],[FloatToStr(mcodas_ant)]
      ,DM2.Tb_Assessor);
   end;

   if DM2.Tb_Assessor.State in [dsEdit,dsInsert] then
      DM2.Tb_Assessor.Cancel;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   Tab_ad.Enabled       := False;
   DBNavigator2.Enabled := True;
   BBnAtu.Enabled       := true;
   mOpasse              := -1;
   dtnas.Text           :='/  /';
   DBEdit65.Visible     :=true;
   dtnas.Visible        :=false;
end;

procedure TFrm_Assessor.edt_codasExit(Sender: TObject);
begin
  inherited;
   if btn_cancelar.Focused then begin
      DM2.Tb_AssessorCACODASS.Value := 0;
      Exit;
   end;

   if DM2.Tb_AssessorCACODASS.Isnull then
      Exit;

   if (mOPasse = 0) and (DM2.Tb_AssessorCACODASS.AsFloat <> mCodas_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CARAZAO from CADASSE  '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADASSE',[]),'',' where CACODEMP=0'+IntToStr(codemp)+' and ')
                        +' CACODASS=:CODASS ');
      DM1.Query1.ParambyName('CODASS').AsFloat := DM2.Tb_AssessorCACODASS.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CARAZAO').AsString,0,['0'],0);
         edt_codas.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_Assessor.DB_CNPJExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
DM2.Tb_AssessorCACNPJ.Value:=fsonumero(DM2.Tb_AssessorCACNPJ.AsString);

if not (DM2.Tb_AssessorCACNPJ.IsNull) and  (DM2.Tb_AssessorCACNPJ.Value<>0) then
   begin
   if DM1.Tb_PargerPDUPCNPJ.Value=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CARAZAO,CACODASS from CADASSE where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CACODEMP=0'+InttoStr(codemp)+' and ')
                        +' CACODASS<>0'+DM2.Tb_AssessorCACODASS.AsString
                        +' and CACNPJ=0'+DM2.Tb_AssessorCACNPJ.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         MessageDlg('O CNPJ.: '+FormatFloat('000"."000"."000"."000"-"00',DM2.Tb_AssessorCACNPJ.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString,mtWarning,[mbOk],0);
         DB_CNPJ.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_PargerPDUPCNPJ.Value=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CARAZAO,CACODASS from CADASSE where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CACODEMP=0'+InttoStr(codemp)+' and ')
                        +' CACODASS<>0'+DM2.Tb_AssessorCACODASS.AsString
                        +' and CACNPJ=0'+DM2.Tb_AssessorCACNPJ.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         mcinst:='O CNPJ.: '+FormatFloat('000"."000"."000"."000"-"00',DM2.Tb_AssessorCACNPJ.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString;
         if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
            begin
            DB_CNPJ.SetFocus;
            exit;
            end;
         end;
      end;
   end;


if DM1.Tb_PargerPCRITCNPJ.Value=1 then
   begin
   if DM2.Tb_AssessorCACNPJ.Value>0 then
      begin
      if not FCGC(DM2.Tb_AssessorCACNPJ.Value) then
         begin
         MessageDlg('CNPJ digito não confere!',mtWarning,[mbOk],0);
         DB_CNPJ.SetFocus;
         exit;
         end;
      end;
   end;


end;

procedure TFrm_Assessor.DB_CNPFExit(Sender: TObject);
begin
  inherited;
DM2.Tb_AssessorCACPF.Value:=fsonumero(DM2.Tb_AssessorCACPF.AsString);
if CANCELAR.Focused then
   exit;
if not (DM2.Tb_AssessorCACPF.IsNull) and  (DM2.Tb_AssessorCACPF.Value<>0) then
   begin
   if DM1.Tb_PargerPDUPCNPJ.Value=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CARAZAO,CACODASS from CADASSE where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CACODEMP=0'+InttoStr(codemp)+' and ')
                        +' CACODASS<>0'+DM2.Tb_AssessorCACODASS.AsString
                        +' and CACPF=0'+DM2.Tb_AssessorCACPF.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         MessageDlg('O CPF.: '+FormatFloat('000"."000"."000"."000"-"00',DM2.Tb_AssessorCACPF.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString,mtWarning,[mbOk],0);
         DB_CNPF.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_PargerPDUPCNPJ.Value=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CARAZAO,CACODASS from CADASSE where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CACODEMP=0'+InttoStr(codemp)+' and ')
                        +' CACODASS<>0'+DM2.Tb_AssessorCACODASS.AsString
                        +' and CACPF=0'+DM2.Tb_AssessorCACPF.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         mcinst:='O CPF.: '+FormatFloat('000"."000"."000"."000"-"00',DM2.Tb_AssessorCACPF.Value)+' Ja Esta Cadastrado'+#13
                 +' Codigo: '+DM1.Query1.Fields[1].AsString+' '+DM1.Query1.Fields[0].AsString;
         if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
            begin
            DB_CNPF.SetFocus;
            exit;
            end;
         end;
      end;
   end;
if DM1.Tb_PargerPCRITCNPJ.Value=1 then
   begin
   if DM2.Tb_AssessorCACPF.Value>0 then
      begin
      if not FCPF(FORMATFLOAT('00000000000',DM2.Tb_AssessorCACPF.Value)) then
         begin
         MessageDlg('CNPF digito não confere!',mtWarning,[mbOk],0);
         DB_CNPF.SetFocus;
         exit;
         end;
      end;
   end;


end;

procedure TFrm_Assessor.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM2.Tb_Assessor.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM2.Tb_AssessorCACODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Assessor',Key));
      DM2.Tb_AssessorCACIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM2.Tb_AssessorCAUF.Value    :=DM1.Tb_LocLUF.Value;
      if trim(CODLOC.Text)<>'' then
         CODLOCExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Assessor.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM2.Tb_AssessorCACODLOC.AsString) then
   begin
   MessageDlg('Localidade/Cidade não Cadastrada.',mtWarning,[mbOk],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM2.Tb_AssessorCACODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM2.Tb_AssessorCACIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM2.Tb_AssessorCAUF.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_Assessor.ESTADOExit(Sender: TObject);
begin
  inherited;
if not flcaduf(0,0,0,DM2.Tb_AssessorCAUF.Value) then
   begin
   MessageDlg('Estado Não Cadastrado!',mtWarning,[mbOk],0);
   ESTADO.SetFocus;
   exit;
   end;


end;

procedure TFrm_Assessor.ESTADOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=113 then
   begin
   DM2.Tb_AssessorCAUF.Value:=fChamaUF(0,'frm_Assessor','');
   end;

end;

procedure TFrm_Assessor.ESTADOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key='''') or (key='"')  then
   key:=#0;

end;

procedure TFrm_Assessor.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM2.Tb_Assessor.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM2.Tb_AssessorCACODBAI.Value:=ValFloat(fChamaBai(0,'frm_Assessor',Key));
      DM2.Tb_AssessorCABAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      if trim(CODBAI.Text)<>'' then
         CODBAIExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Assessor.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM2.Tb_AssessorCACODBAI.Value=0) or (DM2.Tb_AssessorCACODBAI.IsNull) then
   begin
   DM2.Tb_AssessorCACODBAI.Value:=0;
   DM2.Tb_AssessorCABAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM2.Tb_AssessorCACODBAI.AsString) then
   begin
   MessageDlg('Bairro não Cadastrada.',mtWarning,[mbOk],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM2.Tb_AssessorCACODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM2.Tb_AssessorCABAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;

end;

procedure TFrm_Assessor.FormCreate(Sender: TObject);
begin
  inherited;
  assessor_ori:='';

  if DM1.Tb_PargerPCODLOC.Value=1 then begin
     CODLOC.Visible:=True;
     NOMCID.Enabled:=False;
     NOMCID.ParentColor:=True;
     NOMCID.Ctl3D:=True;
     ESTADO.Enabled:=False;
     ESTADO.ParentColor:=True;
     ESTADO.Ctl3D:=True;
  end else begin
     CODLOC.Visible:=False;
     NOMCID.Left:=118;
  end;

  if DM1.Tb_PargerPCODBAI.Value=1 then begin
     CODBAI.Visible:=True;
     NOMBAI.Enabled:=False;
     NOMBAI.ParentColor:=True;
     NOMBAI.Ctl3D:=True;
  end else begin
     CODBAI.Visible:=False;
     NOMBAI.Left:=481;
     NOMBAI.Visible:=True;
  end;

   Self.Caption := 'Manutenção no Cadastro de Assessor';
   Campo.ItemIndex := 0;

   if DM1.Tb_PargerPCODLOC.Value = 1 then begin
      CODLOC.Visible:=True;
      NOMCID.Enabled:=False;
      NOMCID.ParentColor:=True;
      NOMCID.Ctl3D:=True;
      ESTADO.Enabled:=False;
      ESTADO.ParentColor:=True;
      ESTADO.Ctl3D:=True;
   end else begin
      CODLOC.Visible:=False;
      NOMCID.Left:=3;
   end;

   if DM1.Tb_PargerPCODBAI.Value = 1 then begin
      CODBAI.Visible:=True;
      NOMBAI.Enabled:=False;
      NOMBAI.ParentColor:=True;
      NOMBAI.Ctl3D:=True;
   end else begin
      CODBAI.Visible:=False;
      NOMBAI.Left:=333;
      NOMBAI.Visible:=True;
   end;

   mopasse := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADASSE') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true := False;
   end else begin
      bbinc_true := true;
      bbalt_true := true;
      bbexc_true := true;
   end;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   BBnAtuClick(self);
end;

procedure TFrm_Assessor.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if btn_gravar.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
     else
        btn_cancelar.Click;
     end;
   end;
   flcadassessor(campo.ItemIndex,1,edit1.Text);
end;

function tfrm_Assessor.fAssessorlerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM2.Tb_Assessor.FieldCount-1 do
   begin
   if DM2.Tb_Assessor.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_Assessor.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADASSE where CACODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM2.Tb_Assessor.Close;
DM2.Tb_Assessor.SQL.Clear;
DM2.Tb_Assessor.SQL.add(minstru);
DM2.Tb_Assessor.Open;
if DM1.Qr_EventoSTATUS.Value=8 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select * from CADASSE where CACODEMP=0'+DM2.Tb_AssessorCACODEMP.AsString
                     +' and CACODASS=0'+DM2.Tb_AssessorCACODASS.AsString);
   DM1.Query1.Open;
   end;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;


procedure TFrm_Assessor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if btn_gravar.enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
        mrYes: Gravar.Click;
        mrNo : cancelar.Click;
     else
        CanClose := False;
     end;
  end;
end;

procedure TFrm_Assessor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if assessor_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   assessor_ori := '';
   end;

end;

procedure TFrm_Assessor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if assessor_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      assessor_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Assessor.dtnasExit(Sender: TObject);
begin
  inherited;
if trim(dtnas.Text)<>'/  /' then
   begin
   try
      dtnas.Text:=FormatDatetime(fdt2, StrtoDate(dtnas.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      dtnas.SetFocus;
      end;
   end;
end;

procedure TFrm_Assessor.SAIRClick(Sender: TObject);
begin
  inherited;
  if assessor_ori = '' then close;
end;

procedure TFrm_Assessor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Assessor.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex = 1 then begin
      if CANCELAR.Focused then
          exit;

      if not ChkInscEstadual(fdeixanum(DM2.Tb_AssessorCAIE.Value),DM2.Tb_AssessorCAUF.Value) then begin
         MessageDlg('Inscrição Inválida para o Estado: '+DM2.Tb_AssessorCAUF.Value,mtWarning,[mbOk],0);
         DBEdit12.SetFocus;
         exit;
      end else begin
         DM2.Tb_AssessorCAIE.Value:=Mascara_Inscricao(fdeixanum(DM2.Tb_AssessorCAIE.Value), DM2.Tb_AssessorCAUF.Value);
      end;
  end;
end;

procedure TFrm_Assessor.bbProximaClick(Sender: TObject);
begin
  inherited;
  if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then begin
     PC1.ActivePage := tab_ad;
     DBEdit39.SetFocus;
  end;
end;

procedure TFrm_Assessor.FormActivate(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=0;
end;

end.
