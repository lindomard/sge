unit S_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids,
  DBGrids, jpeg,comobj, DB, ToolWin, ShellApi, DBTables, ExtDlgs;

type
  TFrm_Loc = class(TForm)
    Panel1: TPanel;
    BBnAtu: TBitBtn;
    CAMPO: TComboBox;
    Edit1: TMaskEdit;
    lbl_emp: TLabel;
    Pesquisapor: TLabel;
    Panel_edit: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    txt_codloc: TEdit;
    Label2: TLabel;
    txt_nomloc: TEdit;
    Label3: TLabel;
    txt_uf: TEdit;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    txt_codloc_ibge: TEdit;
    Src_Loc: TDataSource;
    ToolBar1: TToolBar;
    sbnInserir: TSpeedButton;
    sbnEditar: TSpeedButton;
    sbnExcluir: TSpeedButton;
    sbnGravar: TSpeedButton;
    sbnCancelar: TSpeedButton;
    sbnSair: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edt_exp_embarcacao_uf: TEdit;
    edt_EXP_EMBARGUE_LOCAL: TEdit;
    Label11: TLabel;
    sb_buscacod: TSpeedButton;
    Panel2: TPanel;
    GB_NFSERVICO: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    txt_ISSQN_ALIQ: TEdit;
    txt_INSS_Red: TEdit;
    txt_INSS_Aliq: TEdit;
    txt_IRRF_Aliq: TEdit;
    txt_IRRF_Red: TEdit;
    EDT_LCODMUN_PREF: TEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    edt_LIBS_ALIQ: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbnInserirClick(Sender: TObject);
    procedure sbnEditarClick(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbnSairClick(Sender: TObject);
    procedure Src_LocDataChange(Sender: TObject; Field: TField);
    procedure sbnGravarClick(Sender: TObject);
    procedure txt_codlocExit(Sender: TObject);
    procedure txt_codloc_ibgeExit(Sender: TObject);
    procedure txt_ISSQN_ALIQExit(Sender: TObject);
    procedure txt_INSS_AliqExit(Sender: TObject);
    procedure txt_INSS_RedExit(Sender: TObject);
    procedure txt_IRRF_AliqExit(Sender: TObject);
    procedure txt_IRRF_RedExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure sb_buscacodClick(Sender: TObject);
    procedure EDT_LCODMUN_PREFExit(Sender: TObject);
    procedure edt_LIBS_ALIQExit(Sender: TObject);
  private
    { Private declarations }
    function CORRIGE_LABEL : Boolean ;
    function FLimparEdit(pTipo: Integer): Boolean;
    procedure CarregaDados;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  public
    { Public declarations }

  end;

var
  Frm_Loc: TFrm_Loc;
  mtipo: Integer;
  mcodigo: Real;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  mcaporig: String;
  IEApp: Variant;
  mOper_Loc  : Integer; // 0-inclusao 1-Alteração
  loc_ori: String;
implementation

uses Func, S_DM1, lerarq, S_DM4, flerarq, S_UF;

{$R *.dfm}

procedure TFrm_Loc.FormActivate(Sender: TObject);
begin
if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end;
if CAMPO.ItemIndex=-1 then
   CAMPO.ItemIndex:=0;
if mtipo<>1 then
   BBnAtu.Click;
end;

procedure TFrm_Loc.FormCreate(Sender: TObject);
begin
    mcaporig:=Caption;
end;

function TFrm_Loc.CORRIGE_LABEL : Boolean ;
begin
End;

procedure TFrm_Loc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key<>9) and (key<>27) then
   begin
   if (key=115) and (shift=[ssalt]) then
   else
      begin
      if key=8 then
         Edit1.Text:=copy(Edit1.Text,1,length(Edit1.Text)-1)
      else if (key=32) or (key>60) then
         Edit1.Text:=Edit1.Text+Char(key);
      end;
   end;

if (key=9) or (key=27) then
   begin
   if loc_ori<>'' then
      begin
      ModalResult:=MrOk;
      loc_ori:='';
      end;
   abort;
   end;

end;

procedure TFrm_Loc.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if dm1.Tb_UF.state in [dsedit,dsinsert] then
  begin
  if Fmensagem('a Cidade está em Inclusão ou Alteração. Deseja gravar??',0,['1','2'],0)=mrYes then
    begin
    sbnGravarClick(self);
    end
  else
    begin
    Action:=caNone;
    end;
  end;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Loc.sbnInserirClick(Sender: TObject);
begin

While true do
   begin
   mcodigo := flBuscarCodigos(0,'CADLOC');
   if DM1.Tb_PargerPDCADLOC.Value=1 then
      mcodigo:=Digito(mcodigo);

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('select count(*) from CADLOC where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADLOC',[]),'','  LCODEMP=0'+IntToStr(codemp)+' and ')
                     +' LCODLOC=0'+FloatTostr(mcodigo));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      break;
   end;
DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADLOC (LCODEMP,LCODLOC,LNOME) '
                  +' values (');
DM1.Query1.SQL.Add(IntToStr(codemp));
DM1.Query1.SQL.Add(','+FloatTostr(mcodigo));
DM1.Query1.SQL.Add(','+chr(39)+'_'+chr(39));
DM1.Query1.SQL.Add(')');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SAVETOFILE(mpastatemp +'sql.txt');

   end;

DBGrid1.Enabled     :=False;
sbnEditar.Enabled   :=False;
sbnInserir.Enabled  :=False;
sbnGravar.Enabled   :=True;
sbnExcluir.Enabled  :=False;
sbnCancelar.Enabled :=True;
BBnAtu.Enabled      :=False;
FLimparEdit(0);

txt_codloc.Text     :=FloatToStr(mcodigo);
txt_codloc.Enabled  :=true;
mOper_Loc  :=0;
Panel_edit.Enabled  :=true;
txt_nomloc.SetFocus;

end;

procedure TFrm_Loc.sbnEditarClick(Sender: TObject);
begin
Panel_edit.Enabled  :=True;
DBGrid1.Enabled     :=False;
sbnInserir.Enabled  :=False;
sbnEditar.Enabled   :=False;
sbnGravar.Enabled   :=True;
sbnExcluir.Enabled  :=False;
sbnCancelar.Enabled :=True;
BBnAtu.Enabled      :=False;
if DM1.Tb_LocLCODLOC.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['0'],0);
   exit;
   end;
txt_codloc.Enabled:=False;
txt_nomloc.SetFocus;
mOper_Loc:=1;

end;

procedure TFrm_Loc.sbnExcluirClick(Sender: TObject);
begin
if DM1.Tb_LocLCODLOC.IsNull then
   begin
   fmensagem('Nao a registro a ser Excluido!',0,['0'],0);
   exit;
   end;
sbnInserir.Enabled   :=bbinc_true;
DBGrid1.Enabled      :=true;
sbnEditar.Enabled    :=bbalt_true;
sbnGravar.Enabled    :=False;
sbnExcluir.Enabled   :=bbexc_true;
sbnCancelar.Enabled  :=True;
Panel_edit.Enabled   :=False;
BBnAtu.Enabled       :=True;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADLOC where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLOC',[]),'',' LCODEMP=0'+DM1.Tb_LocLCODEMP.AsString+' and ')
                     +' LCODLOC=0'+DM1.Tb_LocLCODLOC.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   sbnCancelarClick(self);

   BBnAtu.Click;
   end;


end;

procedure TFrm_Loc.sbnCancelarClick(Sender: TObject);
begin



DBGrid1.Enabled     :=True;
sbnInserir.Enabled  :=bbinc_true;
sbnEditar.Enabled   :=bbalt_true;
sbnGravar.Enabled   :=false;
sbnExcluir.Enabled  :=bbexc_true;
sbnCancelar.Enabled :=True;
Panel_edit.Enabled  :=False;
BBnAtu.Enabled      :=True;
if (mOper_Loc=0) and (mcodigo<>0) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADLOC where LCODEMP=0'+IntToStr(codemp)
                     +' and LCODLOC=0'+FloatToStr(mcodigo));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   flDesfazerCodigos(0,'CADLOC',mcodigo);
   mcodigo:=0;
   FLimparEdit(0);
   end
else
   begin
      CarregaDados;
   end;

mOper_Loc  :=0;


end;

procedure TFrm_Loc.sbnSairClick(Sender: TObject);
begin
modalResult:=MrOk;
close;
end;

procedure TFrm_Loc.Src_LocDataChange(Sender: TObject; Field: TField);
begin
if (not dm1.Tb_Loc.Active) or ((not sbnGravar.Enabled) and (ValFloat(txt_codloc.Text)<>DM1.Tb_LocLCODLOC.AsFloat))  then
   begin
      CarregaDados;
   end;
end;

procedure TFrm_Loc.sbnGravarClick(Sender: TObject);
var
mPosReg: TBookmark;
query_loc: tquery;
imagestream :  TMemoryStream;

begin

if trim(txt_nomloc.Text)='' then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   txt_nomloc.SetFocus;
   exit;
   end;
if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (ValFloat(txt_codloc_ibge.Text)=0) and (trim(txt_uf.Text)<>'EX') then
   begin
   fmensagem('Codigo do Municipio Junto ao IBGE, campo obrigatorio!',0,['0'],0);
   txt_codloc_ibge.SetFocus;
   exit;
   end;

if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) then
   begin
{   if fCalcDigMun_IBGE(DM1.Tb_LocLCODMUN_IBGE.Value)<>copy(mcinst2,length(mcinst2),1) then
      begin
      fmensagem('Codigo do Municipio Nao Confere, Favor Corrigir!',0,['0'],0);
      DBE_codmun_ibge.SetFocus;
      exit;
      end;
}
   if flqr1('PUF,PCODUF_IBGE','P','CADUF','C','PUF',txt_uf.Text) then
      begin
      mcinst3:=copy(FormatFloat('0',ValFloat(txt_codloc_ibge.Text)),1,2);
      mcinst2:=Formatfloat('00', DM1.Query1.fieldbyName('PCODUF_IBGE').AsFloat);
      if txt_uf.text<>'EX' then
         begin
         if fsonumero(mcinst3)<>fsonumero(mcinst2) then
            begin
            fmensagem('Codigo do Municipio devem comecar com os digitos: '+mcinst2
             +' e não como: '+mcinst3+', Favor Corrigir!',0,['0'],0);
            txt_codloc_ibge.SetFocus;
            exit;
            end;
         end;
      end;
   end;

query_loc:=tquery.create(nil);
query_loc.databasename:=DM1.SG_ASSOC.databasename;
query_loc.close;
query_loc.SQL.Clear;
{
if mOper_Loc=0 then
   begin
   query_loc.SQL.add('Insert into CADLOC (');
   query_loc.SQL.add(' LCODEMP');
   query_loc.SQL.add(',LCODLOC');
   query_loc.SQL.add(',LNOME');
   query_loc.SQL.add(',LUF');
   query_loc.SQL.add(',LSTATUS');
   query_loc.SQL.add(',LCODMUN_IBGE');
   query_loc.SQL.add(',LISSQN_ALIQ');
   query_loc.SQL.add(',LINSS_ALIQ');
   query_loc.SQL.add(',LINSS_RED');
   query_loc.SQL.add(',LIRRF_ALIQ');
   query_loc.SQL.add(',LIRRF_RED');
   query_loc.SQL.add(',LCODUSR_INC');
   query_loc.SQL.add(',LDATHOR_INC');

   query_loc.SQL.add(') Values (');
   query_loc.SQL.add(' :LCODEMP');
   query_loc.SQL.add(',:LCODLOC');
   query_loc.SQL.add(',:LNOME');
   query_loc.SQL.add(',:LUF');
   query_loc.SQL.add(',:LSTATUS');
   query_loc.SQL.add(',:LCODMUN_IBGE');
   query_loc.SQL.add(',:LISSQN_ALIQ');
   query_loc.SQL.add(',:LINSS_ALIQ');
   query_loc.SQL.add(',:LINSS_RED');
   query_loc.SQL.add(',:LIRRF_ALIQ');
   query_loc.SQL.add(',:LIRRF_RED');
   query_loc.SQL.add(',:LCODUSR');
   query_loc.SQL.add(',:LDATHOR');
   query_loc.SQL.add(') ');
   end
else
   begin
}
   query_loc.SQL.add('Update CADLOC set ');
   query_loc.SQL.add(' LCODEMP=:LCODEMP');
   query_loc.SQL.add(',LCODLOC=:LCODLOC');
   query_loc.SQL.add(',LNOME=:LNOME');
   query_loc.SQL.add(',LUF=:LUF');
   query_loc.SQL.add(',LSTATUS=:LSTATUS');
   query_loc.SQL.add(',LCODMUN_IBGE=:LCODMUN_IBGE');
   query_loc.SQL.add(',LCODMUN_PREF=:LCODMUN_PREF');
   query_loc.SQL.add(',LISSQN_ALIQ=:LISSQN_ALIQ');
   query_loc.SQL.add(',LINSS_ALIQ=:LINSS_ALIQ');
   query_loc.SQL.add(',LINSS_RED=:LINSS_RED');
   query_loc.SQL.add(',LIRRF_ALIQ=:LIRRF_ALIQ');
   query_loc.SQL.add(',LIRRF_RED=:LIRRF_RED');
   query_loc.SQL.add(',LIBS_ALIQ=:LIBS_ALIQ');

   query_loc.SQL.add(',LEXP_EMBARGUE_UF=:EXP_EMBARGUE_UF');
   query_loc.SQL.add(',LEXP_EMBARGUE_LOCAL=:EXP_EMBARGUE_LOCAL');
//   query_loc.SQL.add(',L_LOGO_PREF=:L_LOGO_PREF');


if mOper_Loc=0 then
   begin
   query_loc.SQL.add(',LCODUSR_INC=:LCODUSR');
   query_loc.SQL.add(',LDATHOR_INC=:LDATHOR');
   end;
   query_loc.SQL.add(',LCODUSR_ALT=:LCODUSR_ALT');
   query_loc.SQL.add(',LDATHOR_ALT=:LDATHOR_ALT');

   query_loc.SQL.add(' where ');
   if not DM1.Qr_TID.Locate('TINOME','CADLOC',[]) then
      query_loc.SQL.add(' LCODEMP =:LCODEMP and ');
   query_loc.SQL.add(' LCODLOC =:LCODLOC ');

//   end;

query_loc.ParambyName('LCODEMP').AsFloat     :=codemp;
query_loc.ParambyName('LCODLOC').AsFloat     :=ValFloat(txt_codloc.Text);
query_loc.ParambyName('LNOME').AsString      :=txt_nomloc.Text;
query_loc.ParambyName('LUF').AsString        :=txt_uf.Text;
query_loc.ParambyName('LSTATUS').AsFloat     :=0;
query_loc.ParambyName('LCODMUN_IBGE').AsFloat:=ValFloat(txt_codloc_ibge.Text);
query_loc.ParambyName('LCODMUN_PREF').AsFloat:=fsonumero(edt_LCODMUN_PREF.Text);
query_loc.ParambyName('LISSQN_ALIQ').AsFloat :=valfloat(txt_ISSQN_ALIQ.Text);

query_loc.ParambyName('LINSS_ALIQ').AsFloat  :=ValFloat(txt_INSS_Aliq.Text);
query_loc.ParambyName('LINSS_RED').AsFloat   :=ValFloat(txt_INSS_Red.Text);
query_loc.ParambyName('LIRRF_ALIQ').AsFloat  :=ValFloat(txt_IRRF_Aliq.Text);
query_loc.ParambyName('LIRRF_RED').AsFloat   :=ValFloat(txt_IRRF_Red.Text);
query_loc.ParambyName('LIBS_ALIQ').AsFloat   :=ValFloat(edt_LIBS_ALIQ.Text);


query_loc.ParambyName('EXP_EMBARGUE_UF').AsString:=edt_exp_embarcacao_uf.Text;
query_loc.ParambyName('EXP_EMBARGUE_LOCAL').AsString:=edt_EXP_EMBARGUE_LOCAL.Text;

{
if (Image1.Picture=nil) then
    query_loc.ParambyName('L_LOGO_PREF').Value := null
else
   begin

   imagestream :=  TMemoryStream.create;
   Image1.Picture.Graphic.SaveToStream(imagestream);
   query_loc.ParambyName('L_LOGO_PREF').LoadFromStream(imagestream, ftBlob);
   freeandnil(imagestream);
   end;
}   

//   Image1.Picture.i


//Image1.Picture.

//query_loc.ParambyName('L_LOGO_PREF')] Field) String:=edt_EXP_EMBARGUE_LOCAL.Text;
  //                     DM1.Tb_LocL_LOGO_PREF.LoadFromFile(Opd1.FileName);

if mOper_Loc=0 then
   begin
   query_loc.ParambyName('LCODUSR').AsFloat     :=codusr;
   query_loc.ParambyName('LDATHOR').AsDateTime  :=now;
   end;
query_loc.ParambyName('LCODUSR_ALT').AsFloat     :=codusr;
query_loc.ParambyName('LDATHOR_ALT').AsDateTime  :=now;

try
   query_loc.ExecSQL;
   fdm1StartCommit;
except
   query_loc.sql.savetofile(mpastatemp +'sql.txt');
   end;
freeandnil(query_loc);
mPosReg        :=DM1.Tb_Loc.GetBookmark;
mcodigo:=0;
sbnCancelar.Click;
BBnAtu.Click;
CarregaDados;

DM1.Tb_Loc.GotoBookmark(mPosReg);

end;

procedure TFrm_Loc.txt_codlocExit(Sender: TObject);
begin
txt_codloc.Text:=fdeixanum2(txt_codloc.Text);
if mcodigo<>ValFloat(txt_codloc.Text) then
   begin
   if flqr1('LNOME','C','CADLOC','N','LCODLOC',txt_codloc.Text) then
      begin
      fmensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['0'],0);
      txt_codloc.Text;
      exit;
      end;
   end;

end;

procedure TFrm_Loc.txt_codloc_ibgeExit(Sender: TObject);
begin
txt_codloc_ibge.Text:=fdeixanum2(txt_codloc_ibge.Text);
end;

procedure TFrm_Loc.txt_ISSQN_ALIQExit(Sender: TObject);
begin
txt_ISSQN_ALIQ.Text:=FormatFloat(mcasas, ValFloat(txt_ISSQN_ALIQ.Text));

end;

procedure TFrm_Loc.txt_INSS_AliqExit(Sender: TObject);
begin
txt_INSS_Aliq.Text:=FormatFloat(mcasas, ValFloat(txt_INSS_Aliq.Text));

end;

procedure TFrm_Loc.txt_INSS_RedExit(Sender: TObject);
begin
txt_INSS_Red.Text:=FormatFloat(mcasas, ValFloat(txt_INSS_Red.Text));

end;

procedure TFrm_Loc.txt_IRRF_AliqExit(Sender: TObject);
begin
txt_IRRF_Aliq.Text:=FormatFloat(mcasas, ValFloat(txt_IRRF_Aliq.Text));

end;

procedure TFrm_Loc.txt_IRRF_RedExit(Sender: TObject);
begin
txt_IRRF_Red.Text:=FormatFloat(mcasas, ValFloat(txt_IRRF_Red.Text));

end;

procedure TFrm_Loc.DBGrid1DblClick(Sender: TObject);
begin
if loc_ori<>'' then
   begin
   ModalResult:=MrOk;
   loc_ori:='';
   end;

end;

procedure TFrm_Loc.BBnAtuClick(Sender: TObject);
begin
if loc_ori='consulta' then
   begin
//   fcli01lerant(0); desenvolver
   end
else
   begin
   If (sbnGravar.Enabled) then
      begin
      if trim(txt_nomloc.Text)='' then
         sbnCancelarClick(self)
      else
         begin
         verteclado(1);
         Case fmensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2','3'],0) of
            mrYes: sbnGravar.Click;
            mrNo : sbnCancelar.Click;
            end;
         end;
      end;
   flcadloc(campo.ItemIndex,1,edit1.Text);
   sbnInserir.Enabled:=true;
   sbnEditar.Enabled:=true;
   sbnGravar.Enabled :=False;
   sbnExcluir.Enabled:=true;
   sbnCancelar.Enabled:=True;
   end;


end;

procedure TFrm_Loc.Edit1Change(Sender: TObject);
begin
if DM1.Tb_PargerPONCHANGECLI.Value=1 then
   begin
   if loc_ori='consulta' then
      begin
//   fcli01lerant(0); desenvolver
      end
   else
      begin
      If (sbnGravar.Enabled) then
         begin
         if trim(txt_nomloc.Text)='' then
            sbnCancelarClick(self)
         else
            begin
            verteclado(1);
            Case fmensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2','3'],0) of
               mrYes: sbnGravar.Click;
               mrNo : sbnCancelar.Click;
               end;
            end;
         end;
      flcadloc(campo.ItemIndex,1,edit1.Text);
      sbnInserir.Enabled:=true;
      sbnEditar.Enabled:=true;
      sbnGravar.Enabled :=False;
      sbnExcluir.Enabled:=true;
      sbnCancelar.Enabled:=True;
      end;
   end;

end;

procedure TFrm_Loc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If sbnGravar.Enabled then
   begin
   if trim(txt_nomloc.Text)='' then
      sbnCancelarClick(self)
   else
      begin
      verteclado(1);
      Case fmensagem('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: sbnGravar.Click;
         mrNo : sbnCancelar.Click;
         else CanClose:=False;
         end;
      end;
   end;

end;

function tFrm_Loc.FLimparEdit(pTipo: Integer): Boolean;
begin
   txt_codloc.Text      :='';
   txt_nomloc.Text      :='';
   txt_uf.Text          :='';
   txt_codloc_ibge.Text :='';
   txt_ISSQN_ALIQ.Text  :='';
   txt_INSS_Aliq.Text   :='';
   txt_INSS_Red.Text    :='';
   txt_IRRF_Aliq.Text   :='';
   txt_IRRF_Red.Text    :='';
   edt_exp_embarcacao_uf.Text:='';
   edt_EXP_EMBARGUE_LOCAL.Text:='';
result:=true;
end;


procedure TFrm_Loc.CarregaDados;
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
begin
   txt_codloc.Text      :=DM1.Tb_LocLCODLOC.AsString;
   txt_nomloc.Text      :=DM1.Tb_LocLNOME.AsString;
   txt_uf.Text          :=DM1.Tb_LocLUF.AsString;
   txt_codloc_ibge.Text :=DM1.Tb_LocLCODMUN_IBGE.AsString;
   txt_ISSQN_ALIQ.Text  :=FormatFloat(mcasas, DM1.Tb_LocLISSQN_ALIQ.AsFloat);
   EDT_LCODMUN_PREF.Text:=DM1.Tb_LocLCODMUN_PREF.AsString;

   txt_INSS_Aliq.Text   :=FormatFloat(mcasas, DM1.Tb_LocLINSS_ALIQ.AsFloat);
   txt_INSS_Red.Text    :=FormatFloat(mcasas, DM1.Tb_LocLINSS_RED.AsFloat);
   txt_IRRF_Aliq.Text   :=FormatFloat(mcasas, DM1.Tb_LocLIRRF_ALIQ.AsFloat);
   txt_IRRF_Red.Text    :=FormatFloat(mcasas, DM1.Tb_LocLIRRF_RED.AsFloat);
   edt_exp_embarcacao_uf.Text :=DM1.Tb_LocLEXP_EMBARGUE_UF.AsString;
   edt_EXP_EMBARGUE_LOCAL.Text:=DM1.Tb_LocLEXP_EMBARGUE_LOCAL.AsString;
   edt_LIBS_ALIQ.Text         :=FormatFloat(mcasas, DM1.Tb_LocLIBS_ALIQ.AsFloat);    
{
   if DM1.Tb_LocL_LOGO_PREF.IsNull then
      begin
      Image1.Picture:=nil;
      end
   else
      begin
      imagestream:=TMemoryStream.Create;

      DM1.Tb_LocL_LOGO_PREF.SaveToStream(imagestream);
      imagestream.Position := 0;

      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Image1.Picture.Bitmap.Assign(jpg);

      freeandnil(imagestream);
      end;

 }
end;

procedure TFrm_Loc.SpeedButton5Click(Sender: TObject);
begin
txt_uf.Text:=fChamaUF(0,'frm_cabc','');
end;

procedure TFrm_Loc.sb_buscacodClick(Sender: TObject);
var
link: string;
begin

if trim(txt_nomloc.Text)='' then
   link:='https://cidades.ibge.gov.br/brasil/'
else
   link:='https://cidades.ibge.gov.br/brasil/'+lowercase( txt_uf.Text)+'/'+fSubstituirCaractere(lowercase(txt_nomloc.Text),' ','-')+'/panorama';
ShellExecute(Handle,'open',PAnsiChar(link),nil,nil,SW_SHOWNORMAL);

{
if trim(txt_nomloc.Text)='' then
  ShellExecute(Handle,'open',PAnsiChar('http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm'),nil,nil,SW_SHOWNORMAL)
else
  ShellExecute(Handle,'open',PAnsiChar('http://www.ibge.gov.br/home/geociencias/areaterritorial/area.php?nome='+troca_dados(' ','+',txt_nomloc.Text)+'&codigo=&submit.x=-1&submit.y=-1'),nil,nil,SW_SHOWNORMAL);

}

end;


// sobrescreve o método //
procedure TFrm_Loc.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.WindowClass.Style := Params.WindowClass.Style or $00020000;
end;

procedure TFrm_Loc.EDT_LCODMUN_PREFExit(Sender: TObject);
begin
EDT_LCODMUN_PREF.Text:=fdeixanum(EDT_LCODMUN_PREF.Text);

end;

procedure TFrm_Loc.edt_LIBS_ALIQExit(Sender: TObject);
begin
edt_LIBS_ALIQ.Text := FormatFloat(mcasas, ValFloat(edt_LIBS_ALIQ.Text));

end;

end.
