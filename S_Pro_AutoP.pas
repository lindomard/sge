unit S_Pro_AutoP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,func,S_DM1,S_DM2, DB, DBTables,S_TipPro,S_for;

type
  TFrm_Pro_AutoP = class(TFrm_C)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Label1: TLabel;
    db_codpro: TDBEdit;
    Label3: TLabel;
    DBEdit3_20: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    GB_PRECO1: TGroupBox;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    GB_PRECO2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    GB_PRECO3: TGroupBox;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    Panel4: TPanel;
    Panel5: TPanel;
    dbGrid_SGPro: TDBGrid;
    dbGrid_SGPro_Ano: TDBGrid;
    bbGPIncluir: TBitBtn;
    bbGPAlterar: TBitBtn;
    bbGPExcluir: TBitBtn;
    bbAnoIncluir: TBitBtn;
    bbAnoAlterar: TBitBtn;
    Tb_SGPro: TQuery;
    U_SGPro: TUpdateSQL;
    Src_SGPro: TDataSource;
    Tb_SGPro_Ano: TQuery;
    U_SGPro_Ano: TUpdateSQL;
    Src_SGPro_Ano: TDataSource;
    bbGPGravar: TBitBtn;
    bbAnoGravar: TBitBtn;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    Src_Pro: TDataSource;
    bbgpCancelar: TBitBtn;
    bbAnoCancelar: TBitBtn;
    bbAnoExcluir: TBitBtn;
    Tb_SGProSGPCODEMP: TFloatField;
    Tb_SGProSGPCODPRO: TFloatField;
    Tb_SGProSGPCODGRU: TFloatField;
    Tb_SGProTNOME: TStringField;
    Tb_SGPro_AnoSGPACODEMP: TFloatField;
    Tb_SGPro_AnoSGPACODPRO: TFloatField;
    Tb_SGPro_AnoSGPACODGRU: TFloatField;
    Tb_SGPro_AnoSGPAANO: TFloatField;
    Panel6: TPanel;
    Panel7: TPanel;
    Label32: TLabel;
    ListBox2: TListBox;
    Panel8: TPanel;
    Label33: TLabel;
    ListBox1: TListBox;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Label7: TLabel;
    DBEdit13: TDBEdit;
    Label8: TLabel;
    DBEdit15: TDBEdit;
    Label10: TLabel;
    DBEdit16: TDBEdit;
    GroupBox4: TGroupBox;
    lbl_Acab: TStaticText;
    lbl_Serv: TStaticText;
    lbl_MPR: TStaticText;
    lbl_PP: TStaticText;
    lbl_MP: TStaticText;
    lbl_Isum: TStaticText;
    lbl_outros: TStaticText;
    lbl_ProBloq: TStaticText;
    lbl_ProVenc: TStaticText;
    DBE_Prateteira: TDBEdit;
    DBE_Lado: TDBEdit;
    DBE_Rua: TDBEdit;
    DBE_secao: TDBEdit;
    StaticText13: TStaticText;
    StaticText11: TStaticText;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    GB_CUSTO: TGroupBox;
    DBEdit9: TDBEdit;
    StaticText16: TStaticText;
    Label2: TLabel;
    DBEdit18: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_SGPro_AnoAfterInsert(DataSet: TDataSet);
    procedure Tb_SGProAfterInsert(DataSet: TDataSet);
    procedure Tb_SGProAfterEdit(DataSet: TDataSet);
    procedure Tb_SGProAfterCancel(DataSet: TDataSet);
    procedure Tb_SGProAfterDelete(DataSet: TDataSet);
    procedure Tb_SGPro_AnoAfterDelete(DataSet: TDataSet);
    procedure Tb_SGPro_AnoAfterCancel(DataSet: TDataSet);
    procedure Tb_SGPro_AnoAfterEdit(DataSet: TDataSet);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure bbGPIncluirClick(Sender: TObject);
    procedure dbGrid_SGProKeyPress(Sender: TObject; var Key: Char);
    procedure dbGrid_SGProColExit(Sender: TObject);
    procedure Tb_SGProBeforePost(DataSet: TDataSet);
    procedure Tb_SGPro_AnoBeforePost(DataSet: TDataSet);
    procedure BBnAtuClick(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure Src_SGProDataChange(Sender: TObject; Field: TField);
    procedure bbgpCancelarClick(Sender: TObject);
    procedure bbGPGravarClick(Sender: TObject);
    procedure bbGPAlterarClick(Sender: TObject);
    procedure bbGPExcluirClick(Sender: TObject);
    procedure bbAnoIncluirClick(Sender: TObject);
    procedure bbAnoAlterarClick(Sender: TObject);
    procedure bbAnoGravarClick(Sender: TObject);
    procedure bbAnoCancelarClick(Sender: TObject);
    procedure bbAnoExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure dbGrid_SGProExit(Sender: TObject);
    procedure dbGrid_SGPro_AnoExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codproExit(Sender: TObject);
  private
    { Private declarations }
    function fPro01lerant(ptipo: Integer):Boolean;
    function flCadSGPro_Pro(ptipo,pcodemp: Integer; pCodpro,pCodGru: String): Boolean;
    function flCadSGPro_ano_Pro(ptipo,pcodemp: Integer; pCodpro,pCodGru,pAno: String): Boolean;

  public
    { Public declarations }
  end;
function fpro01gant(ptipo: Integer): Boolean;
function fProAutoPAplicacao(pCodPro: Real): String;

var
  Frm_Pro_AutoP: TFrm_Pro_AutoP;
  Form_Pro_AutoP: TFrm_Pro_AutoP;

  pro_oriAP: String;
  moper_proAP: Integer=0;
  mFiltro: String='';
  bbpdalt_true : Boolean=True;
  bbpdinc_true : Boolean=True;
  bbpdexc_true : Boolean=True;
  mop_cadsgpro     : Integer=0;
  mcadsg_anoant    : Real=0;
  mcadsg_codgruant : Real=0;
  pCalcFields      : Boolean=true;     
  pro_dtvcto: TDateTime;

implementation

uses S_DM4, func_excecoes, S_GPro,lerarq;

{$R *.dfm}

procedure TFrm_Pro_AutoP.INCLUIRClick(Sender: TObject);
begin
  inherited;
pCalcFields:=false;
DM1.Tb_Pro.AutoCalcFields:=false;
flCadSGPro_Pro(0,0,'99999','9999');

moper_proAP:=0;
if DM1.Tb_pro.Filtered then
   begin
   mfiltro   := DM1.Tb_Pro.Filter;
   DM1.Tb_Pro.Filtered:=False;
   end
else
   mfiltro:='';

DM1.Tb_Pro.Append;

mcodigo            :=DM1.Tb_ProPDCODPRO.AsFloat;
db_codpro.Enabled  :=true;
DBEdit3_20.SetFocus;

end;

procedure TFrm_Pro_AutoP.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   fmensagem('Não haa registro a ser alterado',0,['0'],0);
   exit;
   end;
pCalcFields:=false;
DM1.Tb_Pro.AutoCalcFields:=false;
moper_proAP:=8;
db_codpro.Enabled:=False;
if not DM1.Tb_ProPDCODPRO.IsNull then
   flCadSGPro_Pro(0,0,DM1.Tb_ProPDCODPRO.AsString,'')
else
   flCadSGPro_Pro(0,0,'99999','9999');

DM1.Tb_Pro.Edit;
dbedit3_20.SetFocus;


end;

procedure TFrm_Pro_AutoP.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   fmensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir o Produto?',0,['1','2'],2)=mrYes then
   begin
   pCalcFields:=false;
   DM1.Tb_Pro.AutoCalcFields:=false;
   fpro01gant(9);
   DM1.Tb_Pro.Delete;
   CANCELAR.Click;
   end;

end;

procedure TFrm_Pro_AutoP.GRAVARClick(Sender: TObject);
begin
  inherited;
{
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   ShowMessage('Situacao Tributaria Valido Somente com 3 digitos. Ex. 000, 010, 040 etc');
   DBEdit20.SetFocus;
   exit;
   end;
   }
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   fmensagem('Descrição do produto Invalida!',0,['0'],0);
   DBEdit3_20.SetFocus;
   exit;
   end;
if moper_proAP=8 then
   fpro01gant(moper_proAP);

DM1.Tb_ProPDCODUSR.Value:=codusr;
DM1.Tb_ProPDDTALT.AsString:=FormatDatetime(fdt2, pdatasis);
DM1.Tb_ProPDHRALT.Value :=FormatDateTime(fhr, time);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPRO set PDNOMPROALT=PDNOME where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                  +' PDPROALT=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and (PDNOMPROALT<>PDNOME or PDNOMPROALT is null)');
DM1.Query1.ExecSQL;
fdm1StartCommit;


if not flcadest(0,0,0,DM1.Tb_ProPDCODPRO.AsString) then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Insert into CADEST ('
                     +'CECODEMP, '
                     +'CEFILIAL, '
                     +'CECODPRO, '
                     +'CESALDO, '
                     +'CESALDO_PRAT, '
                     +'CESALDO_DET, '
                     +'CESALDOR,'
                     +'CESALDOC,'
                     +'CESALDOT,'
                     +'CEENTPEN,'
                     +'CEDTUSAI,'
                     +'CEDTUENT'
                     +') Values ('
                     +Inttostr(codemp)+','
                     +IntToStr(log_filial_padrao)+','
                     +DM1.Tb_ProPDCODPRO.AsString+','
                     +'0,0,0,0,0,0,0,'
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                     +')');

    try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;

   except
      ex_erroSql(01,409,'Frm_Pro','CADEST');
      fdm1StartCommit;
      end;
   end;
DM1.Tb_ProPDAPLIC.Value:=fProAutoPAplicacao(DM1.Tb_ProPDCODPRO.AsFloat);
dm1.Tb_Pro.Post;
CANCELAR.Click;


end;

procedure TFrm_Pro_AutoP.CANCELARClick(Sender: TObject);
begin
  inherited;

moper_proAP:=0;
DM1.Tb_Pro.Cancel;
if DM1.Tb_ProPDNOME.Value='_' then
   DM1.Tb_Pro.Delete;
db_codpro.Enabled:=False;
{
if trim(mfiltro)<>'' then
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;
   }
pCalcFields:=true;
DM1.Tb_Pro.AutoCalcFields:=true;
db_codpro.Enabled   :=false;
INCLUIR.Enabled     :=bbpdinc_true;
ALTERAR.Enabled     :=bbpdalt_true;
EXCLUIR.Enabled     :=bbpdexc_true;

end;

procedure TFrm_Pro_AutoP.FormCreate(Sender: TObject);
begin
  inherited;
if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
   lbl_Acab.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
   lbl_Serv.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
   lbl_MPR.Font.Color :=DM1.Tb_PargerPFCORP_MPR.AsInteger;
if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
   lbl_PP.Font.Color  :=DM1.Tb_PargerPFCORP_PP.AsInteger;
if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
   lbl_MP.Font.Color  :=DM1.Tb_PargerPFCORP_MP.AsInteger;
if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
   lbl_Isum.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   lbl_outros.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
   lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
   lbl_ProBloq.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
  
if flcadactab(0,0,IntToStr(codcar),'CADPRO') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbpdinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbpdalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbpdexc_true:=False;
   if DM4.Tb_AcTabAT_ADIC.Value=1 then
      PC1.Pages[1].TabVisible:=False;
   end
else
   begin
   bbpdinc_true:=true;
   bbpdalt_true:=true;
   bbpdexc_true:=true;
   PC1.Pages[1].TabVisible:=true;
   end;
INCLUIR.Enabled:=bbpdinc_true;
ALTERAR.Enabled:=bbpdalt_true;
EXCLUIR.Enabled:=bbpdexc_true;

end;

function fpro01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PDCODNOV) from OLD_CADPRO');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADPRO (';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',PDCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Pro.Fields[x].FieldName='PDSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as PDSTATUS '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as PDCODUSR '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDDTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PDDTALT '
   else if DM1.Tb_Pro.Fields[x].FieldName='PDHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PDHRALT '
   else
      minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PDCODNOV ';
minstru:=minstru+' from CADPRO where PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString
                +' and PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao PD760. Contactar Suporte',0,['0'],0);
   end;
result:=True;
end;


procedure TFrm_Pro_AutoP.Src_SGProDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if PC1.ActivePageIndex=0 then
   begin
   if (not DM1.Tb_ProPDCODPRO.IsNull) and  (not Tb_SGProSGPCODGRU.IsNull) then
      flCadSGPro_ano_Pro(0,0,DM1.Tb_ProPDCODPRO.AsString,Tb_SGProSGPCODGRU.AsString,'')
   else
      flCadSGPro_ano_Pro(0,0,'999','999','999');

   end;

end;


function tfrm_Pro_AutoP.fPro01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
DM1.Tb_Pro.Filter  :='';
DM1.Tb_Pro.Filtered:=false;
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_Pro.FieldCount-1 do
   begin
   if DM1.Tb_Pro.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Pro.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADPRO where PDCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_Pro.Close;
DM1.Tb_Pro.SQL.Clear;
DM1.Tb_Pro.SQL.add(minstru);
DM1.Tb_Pro.Open;
BBnAtu.Enabled      :=False;
Edit1.Enabled       :=False;
CAMPO.Enabled       :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;

procedure TFrm_Pro_AutoP.Tb_SGPro_AnoAfterInsert(DataSet: TDataSet);
begin
  inherited;
Tb_SGPro_AnoSGPACODEMP.Value:=DM1.Tb_ProPDCODEMP.Value;
Tb_SGPro_AnoSGPACODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
Tb_SGPro_AnoSGPACODGRU.Value:=Tb_SGProSGPCODGRU.Value;
mop_cadsgpro       :=0;

end;

procedure TFrm_Pro_AutoP.Tb_SGProAfterInsert(DataSet: TDataSet);
begin
  inherited;
Tb_SGProSGPCODEMP.Value:=DM1.Tb_ProPDCODEMP.Value;
Tb_SGProSGPCODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
bbGPIncluir.Enabled:=false;
bbGPAlterar.Enabled:=false;
bbGPExcluir.Enabled:=false;
bbGPGravar.Enabled :=true;
mop_cadsgpro       :=0;

end;

procedure TFrm_Pro_AutoP.Tb_SGProAfterEdit(DataSet: TDataSet);
begin
  inherited;
bbGPIncluir.Enabled:=false;
bbGPAlterar.Enabled:=false;
bbGPExcluir.Enabled:=false;
bbGPGravar.Enabled :=true;
mop_cadsgpro:=8;
mcadsg_codgruant   :=Tb_SGProSGPCODGRU.Value;
end;

procedure TFrm_Pro_AutoP.Tb_SGProAfterCancel(DataSet: TDataSet);
begin
  inherited;
bbGPIncluir.Enabled:=true;
bbGPAlterar.Enabled:=true;
bbGPExcluir.Enabled:=true;
bbGPGravar.Enabled :=false;
mop_cadsgpro       :=0;
end;

procedure TFrm_Pro_AutoP.Tb_SGProAfterDelete(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   exit;
   end;
bbGPIncluir.Enabled:=true;
bbGPAlterar.Enabled:=true;
bbGPExcluir.Enabled:=true;
bbGPGravar.Enabled :=false;

end;

procedure TFrm_Pro_AutoP.Tb_SGPro_AnoAfterDelete(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   exit;
   end;
bbAnoIncluir.Enabled:=true;
bbAnoAlterar.Enabled:=true;
bbAnoExcluir.Enabled:=true;
bbAnoGravar.Enabled :=false;

end;

procedure TFrm_Pro_AutoP.Tb_SGPro_AnoAfterCancel(DataSet: TDataSet);
begin
  inherited;
bbAnoIncluir.Enabled:=true;
bbAnoAlterar.Enabled:=true;
bbAnoExcluir.Enabled:=true;
bbAnoGravar.Enabled :=false;
mop_cadsgpro       :=0;

end;

procedure TFrm_Pro_AutoP.Tb_SGPro_AnoAfterEdit(DataSet: TDataSet);
begin
  inherited;
bbGPIncluir.Enabled:=False;
bbGPAlterar.Enabled:=False;
bbGPExcluir.Enabled:=False;
bbGPGravar.Enabled :=True;
mop_cadsgpro:=8;
mcadsg_codgruant   :=Tb_SGPro_AnoSGPACODGRU.Value;
mcadsg_anoant      :=Tb_SGPro_AnoSGPAANO.Value;

end;

procedure TFrm_Pro_AutoP.DBEdit10Enter(Sender: TObject);
begin
  inherited;
Panel6.Visible:=True;

end;

procedure TFrm_Pro_AutoP.DBEdit10Exit(Sender: TObject);
begin
  inherited;
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   fmensagem('Valido Somente com 3 digitos. Ex. 000, 010, 040 etc',0,['0'],0);
   DBEdit10.SetFocus;
   end
else
   Panel6.Visible:=False;

end;

procedure TFrm_Pro_AutoP.bbGPIncluirClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ProPDCODPRO.IsNull) or (DM1.Tb_ProPDCODPRO.Value=0) then
   begin
   fmensagem('Favor Selecionar um Produto Válido!',0,['0'],0);
   exit;
   end;
Tb_SGPro.Last;
Tb_SGPro.Append;
dbGrid_SGPro.SetFocus;

end;

procedure TFrm_Pro_AutoP.dbGrid_SGProKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Tb_SGPro.State in [dsEdit, dsInsert] then
   begin
   if dbGrid_SGPro.SelectedField=Tb_SGProSGPCODGRU then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
         begin
         Tb_SGProSGPCODGRU.Value:=ValFloat(fChamaTipPro(0,'frm_Pro_AutoP',Key));
         key:=#0;
         end;
      end;
   end;
end;

procedure TFrm_Pro_AutoP.dbGrid_SGProColExit(Sender: TObject);
begin
  inherited;
if Tb_SGPro.State in [dsEdit, dsInsert] then
   begin
   if (dbGrid_SGPro.SelectedField=Tb_SGProSGPCODGRU) and not (Tb_SGProSGPCODGRU.IsNull) then
      begin
      if Tb_SGProSGPCODGRU.Value>0 then
         begin
         if not flqr1('TNOME','T','CADTP','N','TCODTIP',Tb_SGProSGPCODGRU.AsString) then
            begin
            fmensagem('Tipo de Produto não Cadastrado!',0,['0'],0);
            abort;
            end
         else
            Tb_SGProTNOME.Value:=DM1.Query1.fields[0].AsString;
         end
      else
         Tb_SGProTNOME.Value:=' ';
      end;
   end;
end;

procedure TFrm_Pro_AutoP.Tb_SGProBeforePost(DataSet: TDataSet);
begin
  inherited;
if Tb_SGProSGPCODGRU.Value>0 then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',Tb_SGProSGPCODGRU.AsString) then
      Tb_SGProTNOME.Value:=DM1.Query1.fields[0].AsString;
   end;

if (Tb_SGProTNOME.IsNull) or (trim(Tb_SGProTNOME.AsString)='') then
   begin
//   MessageDlg('Favor Selecionar um Grupo válido!',mtWarning,[mbOk],0);
   Tb_SGPRO.Cancel;
   abort;
   end;
if mop_cadsgpro=8 then
   begin
   if mcadsg_codgruant<>Tb_SGProSGPCODGRU.Value then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select SGPCODGRU from CADSGPRO where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPCODEMP=0'+intToStr(codemp)+' and ')
                        +' SGPCODPRO=0'+Tb_SGProSGPCODPRO.AsString
                        +' and SGPCODGRU=0'+Tb_SGProSGPCODGRU.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         fmensagem('Código ja Cadastrado Anteriormente!',0,['0'],0);
         Tb_SGPro.Cancel;
         abort;
         end;
      end;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select SGPCODGRU from CADSGPRO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPCODEMP=0'+intToStr(codemp)+' and ')
                     +' SGPCODPRO=0'+Tb_SGProSGPCODPRO.AsString
                     +' and SGPCODGRU=0'+Tb_SGProSGPCODGRU.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      fmensagem('Código ja Cadastrado Anteriormente!',0,['0'],0);
      Tb_SGPro.Cancel;
      abort;
      end;
   end;

end;

procedure TFrm_Pro_AutoP.Tb_SGPro_AnoBeforePost(DataSet: TDataSet);
begin
  inherited;
if (Tb_SGPro_AnoSGPAANO.IsNull) or (Tb_SGPro_AnoSGPAANO.AsInteger=0) then
   begin
   fmensagem('Favor digitar um ano válido!',0,['0'],0);
   abort;
   end;

if mop_cadsgpro=8 then
   begin
   if (mcadsg_codgruant<>Tb_SGPro_AnoSGPACODGRU.Value) or
      (mcadsg_anoant<>Tb_SGPro_AnoSGPAANO.Value) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select SGPACODGRU,SGPAANO from CADSGPRO_ANO where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPACODEMP=0'+intToStr(codemp)+' and ')
                        +' SGPACODPRO=0'+Tb_SGPro_AnoSGPACODPRO.AsString
                        +' and SGPACODGRU=0'+Tb_SGPro_AnoSGPACODGRU.AsString
                        +' and SGPAANO=0'+Tb_SGPro_AnoSGPAANO.AsString);

      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         fmensagem('Código ja Cadastrado Anteriormente!',0,['0'],0);
         Tb_SGPro_Ano.Cancel;
         abort;
         end;
      end;
   end
else
   begin

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select SGPACODGRU,SGPAANO from CADSGPRO_ANO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPACODEMP=0'+intToStr(codemp)+' and ')
                     +' SGPACODPRO=0'+Tb_SGPro_AnoSGPACODPRO.AsString
                     +' and SGPACODGRU=0'+Tb_SGPro_AnoSGPACODGRU.AsString
                     +' and SGPAANO=0'+Tb_SGPro_AnoSGPAANO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      fmensagem('Código ja Cadastrado Anteriormente!',0,['0'],0);
      Tb_SGPro_Ano.Cancel;
      abort;
      end;
   end;



end;

procedure TFrm_Pro_AutoP.BBnAtuClick(Sender: TObject);
begin
  inherited;
if pro_oriAP='consulta' then
   begin
   fpro01lerant(0);
   end
else
   begin
   If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
         mrYes: GRAVAR.Click;
         else CANCELAR.Click;
         end;
     end;
   flcadpro(campo.ItemIndex,1,0,edit1.Text);
   end;

end;

procedure TFrm_Pro_AutoP.Src_ProDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if (PC1.ActivePageIndex=0) and (pCalcFields) then
   begin
   if not DM1.Tb_ProPDCODPRO.IsNull then
      flCadSGPro_Pro(0,0,DM1.Tb_ProPDCODPRO.AsString,'')
   else
      flCadSGPro_Pro(0,0,'99999','9999');

   end;
end;
function TFrm_Pro_AutoP.flCadSGPro_Pro(ptipo,pcodemp: Integer; pCodpro,pCodGru: String): Boolean;
begin
Tb_SGPro.Close;
Tb_SGPro.Sql.Clear;
Tb_SGPro.Sql.Add('Select SGPCODEMP,SGPCODPRO,SGPCODGRU,TNOME '
                     +' from CADSGPRO,CADTP where ');
if pcodemp<>0 then
   Tb_SGPro.SQL.add(' SGPCODEMP=0'+IntTostr(pcodemp)+' and ')
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Tb_SGPro.SQL.add(' SGPCODEMP=0'+IntTostr(codemp)+' and ');
if trim(pCodpro)<>'' then
   Tb_SGPro.SQL.add(' SGPCODPRO=0'+pCodpro+' and ');
if trim(pCodGru)<>'' then
   Tb_SGPro.SQL.add(' SGPCODGRU=0'+pCodpro+' and ');
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Tb_SGPro.SQL.add(' TCODEMP=SGPCODEMP and ');
Tb_SGPro.sql.Add(' TCODTIP=SGPCODGRU ');
Tb_SGPro.SQL.add(' Order by TNOME ');
Tb_SGPro.SQL.SaveToFile('C:\SGPRO.SQL');

Tb_SGpro.Open;
if Tb_SGPro.Eof then
   result:=false
else
   result:=true;
end;


function TFrm_Pro_AutoP.flCadSGPro_ano_Pro(ptipo,pcodemp: Integer; pCodpro,pCodGru,pAno: String): Boolean;
begin
Tb_SGPro_Ano.Close;
Tb_SGPro_Ano.SQL.Clear;
Tb_SGPro_Ano.Sql.Add('Select * from CADSGPRO_ANO ');
mcinst:=' where ';
if pcodemp<>0 then
   begin
   Tb_SGPro_Ano.SQL.add(mcinst+' SGPACODEMP=0'+IntTostr(pcodemp));
   mcinst:=' and ';
   end
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Tb_SGPro_Ano.SQL.add(mcinst+' SGPACODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
if trim(pCodpro)<>'' then
   begin
   Tb_SGPro_Ano.SQL.add(mcinst+' SGPACODPRO=0'+pCodpro);
   mcinst:=' and ';
   end;

if trim(pCodGru)<>'' then
   begin
   Tb_SGPro_Ano.SQL.add(mcinst+' SGPACODGRU=0'+pCodGru);
   mcinst:=' and ';
   end;
if trim(pAno)<>'' then
   begin
   Tb_SGPro_Ano.SQL.add(mcinst+' SGPAANO=0'+pAno);
   mcinst:=' and ';
   end;

Tb_SGPro_Ano.SQL.add(' order by SGPAANO ');
Tb_SGPro_Ano.SQL.SaveToFile('C:\SGPROANO.SQL');

Tb_SGpro_Ano.Open;
if Tb_SGPro_Ano.Eof then
   result:=false
else
   result:=true;

end;

procedure TFrm_Pro_AutoP.bbgpCancelarClick(Sender: TObject);
begin
  inherited;
if Tb_SGPro.State in [dsInsert,DsEdit] then
   Tb_SGPro.Cancel;
bbGPIncluir.Enabled:=true;
bbGPAlterar.Enabled:=true;
bbGPExcluir.Enabled:=true;
bbGPGravar.Enabled :=false;
   
end;

procedure TFrm_Pro_AutoP.bbGPGravarClick(Sender: TObject);
begin
  inherited;
if Tb_SGPro.State in [dsEdit, dsInsert] then
   begin
   if (Tb_SGProTNOME.IsNull) or (trim(Tb_SGProTNOME.AsString)='') then
      begin
      fmensagem('Favor Digitar um Grupo válido!',0,['0'],0);
      dbGrid_SGPro.SetFocus
      end
   else
      Tb_SGPro.Post;
   end;
end;

procedure TFrm_Pro_AutoP.bbGPAlterarClick(Sender: TObject);
begin
  inherited;
if not (Tb_SGProSGPCODPRO.IsNull) then
   begin
   Tb_SGPro.Edit;
   dbGrid_SGPro.SetFocus;
   end;
end;

procedure TFrm_Pro_AutoP.bbGPExcluirClick(Sender: TObject);
begin
  inherited;
if not (Tb_SGProSGPCODPRO.IsNull) then
   begin
   if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
      begin
      Tb_SGPro.Delete;
      end;
   end;

end;

procedure TFrm_Pro_AutoP.bbAnoIncluirClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ProPDCODPRO.IsNull) or (Tb_SGProSGPCODGRU.IsNull) then
   begin
   fmensagem('Favor Selecionar um Grupo de Produto Válido!',0,['0'],0);
   exit;
   end;
Tb_SGPro_Ano.Last;
Tb_SGPro_ano.Append;
dbGrid_SGPro_Ano.SetFocus;

end;

procedure TFrm_Pro_AutoP.bbAnoAlterarClick(Sender: TObject);
begin
  inherited;
if not (Tb_SGPro_AnoSGPACODPRO.IsNull) then
   begin
   Tb_SGPro_Ano.Edit;
   dbGrid_SGPro_ano.SetFocus;
   end;

end;

procedure TFrm_Pro_AutoP.bbAnoGravarClick(Sender: TObject);
begin
  inherited;
if Tb_SGPro_Ano.State in [dsEdit, dsInsert] then
   begin
   if (Tb_SGPro_AnoSGPAANO.IsNull) then
      begin
      fmensagem('Favor Digitar um Ano válido!',0,['0'],0);
      dbGrid_SGPro_Ano.SetFocus
      end
   else
      Tb_SGPro_Ano.Post;
   end;

end;

procedure TFrm_Pro_AutoP.bbAnoCancelarClick(Sender: TObject);
begin
  inherited;
if Tb_SGPro_Ano.State in [dsInsert,DsEdit] then
   Tb_SGPro_Ano.Cancel;
bbAnoIncluir.Enabled:=true;
bbAnoAlterar.Enabled:=true;
bbAnoExcluir.Enabled:=true;
bbAnoGravar.Enabled :=false;
mop_cadsgpro       :=0;

end;

procedure TFrm_Pro_AutoP.bbAnoExcluirClick(Sender: TObject);
begin
  inherited;
if not (Tb_SGPro_AnoSGPACODGRU.IsNull) then
   begin
   if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
      begin
      Tb_SGPro_Ano.Delete;
      end;
   end;

end;

procedure TFrm_Pro_AutoP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
if DM1.Tb_ProPDNOME.Value='_' then
   DM1.Tb_Pro.Delete;

if pro_oriAP='consulta' then
   begin
   DM1.Tb_Pro.SQL.clear;
   DM1.Tb_Pro.Sql.add('Select * from CADPRO where '
                     +' PDCODEMP like :CODEMP and '
                     +' PDCODPRO like :CODPRO and '
                     +' PDCODBAR like :CODBAR and '
                     +' PDNOME     like :NOME and '
                     +' PDNOME2   like :NOME2 ');
   end;

end;

procedure TFrm_Pro_AutoP.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro_Autop',Key));
   key:=#0;
   end;


end;

procedure TFrm_Pro_AutoP.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_ProPDCODGRU.Value:=ValFloat(fChamaGPro(0,'frm_Pro_AutoP',Key));
   key:=#0;
   end;


end;

procedure TFrm_Pro_AutoP.DBEdit15Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODGRU.Value>0 then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
      begin
      fmensagem('Grupo não Cadastrado!',0,['0'],0);
      DBEDIT15.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMGRU.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMGRU.Value:=' ';

end;

procedure TFrm_Pro_AutoP.DBEdit12Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODFOR.Value>0 then
   begin
   if not flqr1('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',DM1.Tb_ProPDCODFOR.AsString) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      DBEDIT12.SetFocus;
      end
   else
      begin
      DM1.Tb_ProPDNOMFOR.Value :=DM1.Query1.Fields[0].AsString;
      DM1.Tb_ProPDRESTFOR.Value:=DM1.Query1.Fields[1].AsFloat;
      end;
   end
else
   begin
   DM1.Tb_ProPDNOMFOR.Value :=' ';
   DM1.Tb_ProPDRESTFOR.Value:=0;
   end;

end;

procedure TFrm_Pro_AutoP.dbGrid_SGProExit(Sender: TObject);
begin
  inherited;
if Tb_SGPro.State in [dsInsert,dsEdit] then
   begin
   if (Tb_SGProTNOME.IsNull) or (Trim(Tb_SGProTNOME.AsString)='') then
      Tb_SGPro.Cancel
   else
      Tb_SGPro.Post;
   end;


end;

procedure TFrm_Pro_AutoP.dbGrid_SGPro_AnoExit(Sender: TObject);
begin
  inherited;
if Tb_SGPro_Ano.State in [dsInsert,dsEdit] then
   begin
   if (Tb_SGPro_AnoSGPAANO.IsNull) or (Tb_SGPro_AnoSGPAANO.AsInteger=0) then
      Tb_SGPro_Ano.Cancel
   else
      Tb_SGPro_Ano.Post;
   end;

end;

procedure TFrm_Pro_AutoP.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if pro_oriAP='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_Pro_AutoP.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pro_oriAP='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_Pro_AutoP.PC1Change(Sender: TObject);
begin
  inherited;

if not DM1.Tb_ProPDCODPRO.IsNull then
   flCadSGPro_Pro(0,0,DM1.Tb_ProPDCODPRO.AsString,'')
else
   flCadSGPro_Pro(0,0,'99999','9999');

end;

procedure TFrm_Pro_AutoP.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (DM1.Tb_PargerPQTDDIAV.Value>0) and (not (DM1.Tb_Prodtvenc.IsNull) and (DM1.Tb_Prodtvenc.Value<pro_dtvcto)) then
   begin
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDSTATUS.Value>0 then
   begin
   if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if DM1.Tb_ProPDNIVEL.Value=0 then
   begin
   if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=1 then
   begin
   if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=2 then
   begin
   if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if DM1.Tb_ProPDNIVEL.Value=3 then
   begin
   if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=4 then
   begin
   if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=5 then
   begin
   if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if DM1.Tb_ProPDNIVEL.Value=6 then
   begin
   if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;

end;

procedure TFrm_Pro_AutoP.FormActivate(Sender: TObject);
begin
  inherited;
pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;
if ValInt(copy(mpseg,4,2))=01 then
   begin
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   end
end;

function fProAutoPAplicacao(pCodPro: Real): String;
var
mNomeAnt: String;
mNomeComp: String;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select SGPCODEMP,SGPCODPRO,SGPCODGRU,TNOME,SGPAANO');
DM1.Query5.SQL.Add(' from CADSGPRO,CADSGPRO_ANO,CADTP where ');
DM1.Query5.SQL.Add(fla_EmpBaixaAlta(0,'CADPRO','',codemp,'STGPCODEMP',' and ')
                    +' SGPCODPRO=0'+FloatToStr(pCodPro)
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and SGPACODEMP(+)=SGPCODEMP ')
                    +' and SGPACODPRO(+)=SGPCODPRO '
                    +' and SGPACODGRU(+)=SGPCODGRU '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and TCODEMP=SGPCODEMP ')
                    +' and TCODTIP=SGPCODGRU '
                    +' order by TNOME,SGPAANO ');
try
   DM1.Query5.Open;
except
   DM1.Query5.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

mNomeAnt:=DM1.Query5.FieldByName('TNOME').AsString;
mNomeComp:=DM1.Query5.FieldByName('TNOME').AsString+':';
mcinst2:='';
While not DM1.Query5.Eof do
   begin
   if mNomeAnt<>DM1.Query5.FieldByName('TNOME').AsString then
      begin
      mNomeComp:=mNomeComp+' - '+DM1.Query5.FieldByName('TNOME').AsString+':';
      mNomeAnt :=DM1.Query5.FieldByName('TNOME').AsString;
      mcinst2:='';
      end;
   if (DM1.Query5.FieldbyName('SGPAANO').AsFloat=0) then
      begin
      mNomeComp:=mNomeComp+mcinst2+'Todos';
      mcinst2:='/';
      end
   else
      begin
      mNomeComp:=mNomeComp+mcinst2+copy(FormatFloat('0000',DM1.Query5.FieldbyName('SGPAANO').AsFloat),3,2);
      mcinst2:='/';
      end;
   DM1.Query5.Next;
   end;
result:=mNomeComp;
end;
procedure TFrm_Pro_AutoP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=114) and (codusr=1111) then
   begin
   if fmensagem('Quer Realmente Ajustar a Aplicacao?',0,['1','2'],2)=mrYes then
      begin
      DM1.Tb_Pro.First;
      While not DM1.Tb_Pro.Eof do
         begin
         if DM1.Tb_ProPDCODPRO.AsFloat=0 then
            begin
            DM1.Tb_Pro.Next;
            Continue;
            end;
         DM1.Tb_Pro.Edit;
         DM1.Tb_ProPDAPLIC.Value:=fProAutoPAplicacao(DM1.Tb_ProPDCODPRO.AsFloat);
         dm1.Tb_Pro.Post;
         DM1.Tb_Pro.Next;
         end;
      end;
   end;
end;

procedure TFrm_Pro_AutoP.db_codproExit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_ProPDCODPRO.AsFloat then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),' ',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      verteclado(0);
      fmensagem('Este código ja esta cadastrado no produto: '+DM1.Query1.Fields[1].AsString,0,['0'],0);
      db_codpro.SetFocus;
      exit;
      end;
   end;


end;

end.
