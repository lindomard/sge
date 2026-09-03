unit S_ProConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,db,dbtables,func;

type
  TFrm_ProConf = class(TFrm_C)
    Label1: TLabel;
    Dbedit1_10: TDBEdit;
    Label2: TLabel;
    DBEdit3_20: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit20: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Label30: TLabel;
    DBComboBox1_30: TDBComboBox;
    DBEdit30: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label32: TLabel;
    ListBox2: TListBox;
    Panel7: TPanel;
    Label33: TLabel;
    ListBox1: TListBox;
    Panel10: TPanel;
    Panel11: TPanel;
    ListBox3: TListBox;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    DBNavigator2: TDBNavigator;
    Src_Pro: TDataSource;
    Qr_MPro: TQuery;
    Qr_MProMPNOMEMAS: TStringField;
    Qr_MProMPCODMAS: TStringField;
    Tb_GraPro: TQuery;
    U_GraPro: TUpdateSQL;
    Src_GraPro: TDataSource;
    Tb_GraProGPCODEMP: TFloatField;
    Tb_GraProGPCODPRO: TFloatField;
    Tb_GraProGPCODMAS: TStringField;
    Tb_GraProGPGRADE: TStringField;
    Tb_GraProMPNOMEMAS: TStringField;
    GroupBox3: TGroupBox;
    Src_LGC: TDataSource;
    Tb_LGC: TQuery;
    Tb_LGCCLCODEMP: TFloatField;
    Tb_LGCCLCODPRO: TFloatField;
    Tb_LGCCLDTVCTO: TDateTimeField;
    Tb_LGCCLNUMERO: TStringField;
    Tb_LGCCLQTD: TFloatField;
    Tb_LGCCLQTDR: TFloatField;
    Tb_LGCCLQTDC: TFloatField;
    Tb_LGCCLPRECO1: TFloatField;
    Tb_LGCCLPRECO2: TFloatField;
    Tb_LGCCLPRECO3: TFloatField;
    Tb_LGCCLPRECOA1: TFloatField;
    Tb_LGCCLPRECOA2: TFloatField;
    Tb_LGCCLPRECOA3: TFloatField;
    Tb_LGCCLPCUSTO: TFloatField;
    Tb_LGCCLESTMAX: TFloatField;
    Tb_LGCCLESTMIN: TFloatField;
    lbl_totgra: TLabel;
    U_LGC: TUpdateSQL;
    DBGrid2: TDBGrid;
    bbSalvarGrades: TBitBtn;
    bbCancAlt: TBitBtn;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    lbl_totitens: TLabel;
    Tb_GraProGPNOMGRA: TStringField;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BBnAtuClick(Sender: TObject);
    procedure Dbedit1_10Exit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBComboBox1_30Enter(Sender: TObject);
    procedure DBComboBox1_30Exit(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure Tb_GraProAfterPost(DataSet: TDataSet);
    procedure Tb_GraProBeforePost(DataSet: TDataSet);
    procedure Tb_GraProBeforeInsert(DataSet: TDataSet);
    procedure Tb_GraProBeforeEdit(DataSet: TDataSet);
    procedure Tb_GraProAfterInsert(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Tb_LGCBeforePost(DataSet: TDataSet);
    procedure Tb_LGCBeforeInsert(DataSet: TDataSet);
    procedure Tb_LGCBeforeEdit(DataSet: TDataSet);
    procedure Tb_LGCAfterPost(DataSet: TDataSet);
    procedure bbCancAltClick(Sender: TObject);
    procedure bbSalvarGradesClick(Sender: TObject);
    procedure Tb_GraProAfterDelete(DataSet: TDataSet);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fPro01lerant(ptipo: Integer):Boolean;
    function flcadGraPro_Pro(ptipo,ppre,pcodemp: Integer; pvalor: String): Boolean;
    function fcarregagrade(ptipo: Integer): Boolean;

  public
    { Public declarations }
  end;
function fpro01gant(ptipo: Integer): Boolean;

var
  Frm_ProConf: TFrm_ProConf;
  Form_ProConf: TFrm_ProConf;
  pro_ori2: String;
  bbpdalt_true : Boolean=True;
  bbpdinc_true : Boolean=True;
  bbpdexc_true : Boolean=True;
  moper: Integer;
  mfiltro: String;
  mopgra: Integer=0;
  gpcodemp: real;
  gpcodpro: real;
  gpcodmas: String;
  gpgrade: String;
  moplgc: Integer;
  mpreco01,mpreco02,mpreco03: Real;
  mAtualizar: Boolean=true;

implementation

uses S_DM4, func_excecoes,lerarq;

{$R *.dfm}

function tfrm_ProConf.fPro01lerant(ptipo: Integer):Boolean;
var
x: Integer;
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
result:=true;
end;


function fpro01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
mChave_Old: Integer;
mCondicao_old: String;

begin
mCondicao_old:=' where PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString;



mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'PDCODNOV' //nome do campo do novo valor (chave)
                  ,'PDDTALT' // nome do campo data e hora do evento
                  ,'PDCODUSR' // nome do campo do usuario
                  ,'PDSTATUS' // nome do campo de status
                  ,'CADPRO' // nome da tabela
                  ,mCondicao_old);

result:=true;
end;


procedure TFrm_ProConf.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
if DM1.Tb_pro.Filtered then
   begin
   mfiltro   := DM1.Tb_Pro.Filter;
   DM1.Tb_Pro.Filtered:=False;
   end
else
   mfiltro:='';

DM1.Tb_Pro.Append;
mcodigo            :=DM1.Tb_ProPDCODPRO.AsString;
DM1.Tb_ProPDNIVEL.Value:=0;
DbEdit1_10.Enabled    :=True;
DBComboBox1_30.Enabled:=True;
DBComboBox1_30.ItemIndex:=0;
if PC1.ActivePage=tsCad then
   DBEdit3_20.SetFocus;
DBGrid2.ReadOnly    :=false;
DBGrid3.ReadOnly    :=false;
DBNavigator2.Enabled:=true;
fcarregagrade(0);
flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);

end;

procedure TFrm_ProConf.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   fMensagem('Não ha registro a ser alterado',0,['0'],0);
   exit;
   end;
DBComboBox1_30.Enabled:=False;
moper:=8;
Dbedit1_10.Enabled:=False;
DM1.Tb_Pro.Edit;
if PC1.ActivePage=tsCad then
   dbedit3_20.SetFocus;
DBGrid2.ReadOnly    :=false;
DBGrid3.ReadOnly    :=false;
DBNavigator2.Enabled:=true;
fcarregagrade(0);
flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);

end;

procedure TFrm_ProConf.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODPRO.IsNull then
   begin
   fMensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir o Produto?',0,['1','2'],2)=mrYes then
   begin
   fpro01gant(9);
   DM1.Tb_Pro.Delete;
   end;

end;

procedure TFrm_ProConf.GRAVARClick(Sender: TObject);
begin
  inherited;
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   fMensagem('Situacao Tributaria Valido Somente com 3 digitos. Ex. 000, 010, 040 etc',0,['0'],0);
   if PC1.ActivePage=tsCad then
      DBEdit20.SetFocus;
   exit;
   end;
if DM1.Tb_ProPDNOME.Value='_' then
   begin
   fMensagem('Descrição do produto Invalida!',0,['0'],0);
   if PC1.ActivePage=tsCad then
      DBEdit3_20.SetFocus;
   exit;
   end;
mAtualizar:=false;
if moper=8 then
   fpro01gant(moper);
DM1.Tb_ProPDCODUSR.Value:=codusr;
DM1.Tb_ProPDDTALT.Value :=pdatasis;
DM1.Tb_ProPDHRALT.Value :=FormatDateTime(fhr, time);
dm1.Tb_Pro.Post;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPRO set PDNOMPROALT=PDNOME where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                  +' PDPROALT=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and (PDNOMPROALT<>PDNOME or PDNOMPROALT is null)');
DM1.Query1.ExecSQL;

if not flcadest(0,0,0,DM1.Tb_ProPDCODPRO.AsString) then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Insert into CADEST ('
                     +'CECODEMP, '
                     +'CEFILIAL, '
                     +'CECODPRO, '
                     +'CESALDO, '
                     +'CESALDOR,'
                     +'CESALDOC,'
                     +'CESALDOT,'
                     +'CEENTPEN,'
                     +'CEDTUSAI,'
                     +'CEDTUENT'
                     +') Values ('
                     +Inttostr(codemp)+','
                     +IntTostr(log_filial_padrao)
                     +DM1.Tb_ProPDCODPRO.AsString+','
                     +'0,0,0,0,0,'
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                     +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                     +')');

    try
      DM1.Query1.ExecSQL;
   except
      ex_erroSql(01,372,'Frm_ProConf','CADEST');
      fdm1StartCommit;
      end;
   end;
CANCELAR.Click;

end;

procedure TFrm_ProConf.CANCELARClick(Sender: TObject);
begin
  inherited;

moper:=0;
DM1.Tb_Pro.Cancel;
if DM1.Tb_ProPDNOME.Value='_' then
   DM1.Tb_Pro.Delete;
DM1.Tb_Pro.AutoCalcFields:=True;
DBEdit1_10.Enabled:=False;
if trim(mfiltro)<>'' then
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;

INCLUIR.Enabled     :=bbpdinc_true;
ALTERAR.Enabled     :=bbpdalt_true;
EXCLUIR.Enabled     :=bbpdexc_true;
DBGrid2.ReadOnly    :=true;
DBGrid3.ReadOnly    :=true;

DBNavigator2.Enabled:=false;
mAtualizar:=true;

end;

procedure TFrm_ProConf.FormCreate(Sender: TObject);
begin
  inherited;
pro_ori2:='';

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
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   PC1.Pages[1].TabVisible:=true;
   end;
INCLUIR.Enabled:=bbpdinc_true;
ALTERAR.Enabled:=bbpdalt_true;
EXCLUIR.Enabled:=bbpdexc_true;
DBGrid2.Columns[0].PickList.Clear;
//DBGrid1.ReadOnly:=True;
Qr_MPro.Close;
Qr_MPro.SQL.Clear;
Qr_MPro.SQL.Add('Select MPNOMEMAS,MPCODMAS from CADMPRO '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' where MPCODEMP=0'+intToStR(codemp))
                  +' group by MPNOMEMAS,MPCODMAS');
Qr_MPro.Open;
While not Qr_MPro.Eof do
   begin
   DBGrid2.Columns[0].PickList.Add(Qr_MPro.fieldbyName('MPNOMEMAS').AsString);
   Qr_MPro.Next;
   end;
Tb_LGCCLQTD.DisplayFormat    :=mcasqtd;
Tb_LGCCLQTDR.DisplayFormat   :=mcasqtd;
Tb_LGCCLQTDC.DisplayFormat   :=mcasqtd;
Tb_LGCCLESTMAX.DisplayFormat :=mcasqtd;
Tb_LGCCLESTMIN.DisplayFormat :=mcasqtd;
Tb_LGCCLPRECO1.DisplayFormat :=mcasaspu;
Tb_LGCCLPRECO2.DisplayFormat :=mcasaspu;
Tb_LGCCLPRECO3.DisplayFormat :=mcasaspu;
Tb_LGCCLPCUSTO.DisplayFormat :=mcasaspu;
Tb_LGCCLPRECOA1.DisplayFormat:=mcasaspu;
Tb_LGCCLPRECOA2.DisplayFormat:=mcasaspu;
Tb_LGCCLPRECOA3.DisplayFormat:=mcasaspu;

mfiltro:='PDNIVEL=0';
if trim(mfiltro)<>'' then
   begin
   DM1.Tb_Pro.Filter  :=mfiltro;
   DM1.Tb_Pro.Filtered:=True;
   end;
if not (DM1.Tb_PargerPCONSPROPAD.IsNull) then
   CAMPO.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;

end;

procedure TFrm_ProConf.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
if DM1.Tb_ProPDNOME.Value='_' then
   DM1.Tb_Pro.Delete;

if pro_ori2='consulta' then
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

procedure TFrm_ProConf.BBnAtuClick(Sender: TObject);
begin
  inherited;
if pro_ori2='consulta' then
   begin
   fpro01lerant(0);
   end
else
   begin
   If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',0,['1','2'],0) of
         mrYes: GRAVAR.Click;
         else CANCELAR.Click;
         end;
     end;
   if campo.itemindex=1 then
      edit1.text:=fdeixanum2(edit1.text);
   flcadpro(campo.ItemIndex,1,0,edit1.Text);
   end;
DBGrid2.ReadOnly:=true;
DBGrid3.ReadOnly:=true;
//LINDOAMR
end;

procedure TFrm_ProConf.Dbedit1_10Exit(Sender: TObject);
begin
  inherited;
if fsonumero(mcodigo)<>DM1.Tb_ProPDCODPRO.AsFloat then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),' ',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      fMensagem('Este código ja esta cadastrado no produto: '+DM1.Query1.Fields[1].AsString,0,['0'],0);
      if PC1.ActivePage=tsCad then
         DBEdit1_10.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ProConf.DBEdit20Enter(Sender: TObject);
begin
  inherited;
Panel5.Visible:=True;

end;

procedure TFrm_ProConf.DBEdit20Exit(Sender: TObject);
begin
  inherited;
if Length(DM1.Tb_ProPDSIT.Value)<>3 then
   begin
   AvisoSonoro(1);
   fMensagem('Valido Somente com 3 digitos. Ex. 000, 010, 040 etc',0,['0'],0);
   if PC1.ActivePage=tsCad then
      DBEdit20.SetFocus;
   end
else
   Panel5.Visible:=False;

end;

procedure TFrm_ProConf.DBComboBox1_30Enter(Sender: TObject);
begin
  inherited;
Panel10.Visible:=True;

end;

procedure TFrm_ProConf.DBComboBox1_30Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDNIVEL.Value>7 then
   begin
   fMensagem('Nível inválido!',0,['0'],0);
   if PC1.ActivePage=tsCad then
      DBComboBox1_30.SetFocus
   end
else
   Panel10.Visible:=False;
end;

procedure TFrm_ProConf.Src_ProDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if not (DM1.Tb_ProPDCODPRO.IsNull) and (mAtualizar) then
   begin
   if PC1.ActivePageIndex=2 then
      fcarregagrade(0)
   else if PC1.ActivePageIndex=1 then
      begin
      flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);
      end;
   end;
end;

procedure TFrm_ProConf.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
if (DBGrid2.SelectedField=Tb_GraProMPNOMEMAS) then
   begin
   if Tb_GraPro.State in [dsInsert, DsEdit] then
      begin
      if Qr_MPro.Locate('MPNOMEMAS',Tb_GraProMPNOMEMAS.Value,[LoPartialKey,LoCaseInSensitive]) then
         begin
         Tb_GraProMPNOMEMAS.Value:=Qr_MProMPNOMEMAS.Value;
         Tb_GraProGPCODMAS.Value:=Qr_MProMPCODMAS.Value;
         end
      else
         begin
         Tb_GraProMPNOMEMAS.Value:='';
         Tb_GraProGPCODMAS.Value :='';
         end;

      end;
   end;
end;

function TFrm_ProConf.flcadGraPro_Pro(ptipo,ppre,pcodemp: Integer; pvalor: String): Boolean;
var
mqtditem: Integer;
mliditem: Integer;
begin
{
ptipo
0-codigo

}

Tb_GraPro.Close;
Tb_GraPro.SQL.Clear;
Tb_GraPro.SQL.Add('Select GPCODEMP, '
                     +'       GPCODPRO, '
                     +'       GPCODMAS, '
                     +'       GPGRADE, '
                     +'       GPNOMGRA, '
                     +'       MPNOMEMAS '
                     +' from CADGPRO,CADMPRO ');
mcinst:=' where ';
if pcodemp<>0 then
   begin
   Tb_GraPro.sql.add(mcinst+' GPCODEMP=0'+IntToStr(pcodemp)
                        +' and MPCODEMP=GPCODEMP ');
   mcinst:=' and ';
   end
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Tb_GraPro.sql.add(mcinst+' GPCODEMP=0'+IntToStr(codemp)
                        +' and MPCODEMP=GPCODEMP ');
   mcinst:=' and ';
   end;
Tb_GraPro.SQL.add(mcinst+' MPCODMAS=GPCODMAS ');
mcinst:=' and ';
if trim(pvalor)<>'' then
   begin
   Tb_GraPro.sql.add(mcinst+' GPCODPRO='+pvalor);
   mcinst:=' and ';
   end;
Tb_GraPro.SQL.Add(' order by GPCODMAS,GPGRADE');
Tb_GraPro.Open;
if Tb_GraPro.Eof then
   lbl_totgra.Caption:='Total: 0-Registros'
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select MPCODMAS,MPNOMEMAS,MPNOMEMPL,count(*) as QTD '
                     +' from CADGPRO,CADMPRO ');
   mcinst:=' where ';
   if pcodemp<>0 then
      begin
      DM1.Query1.sql.add(mcinst+' GPCODEMP=0'+IntToStr(pcodemp)
                        +' and MPCODEMP=GPCODEMP ');
      mcinst:=' and ';
      end
   else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      begin
      DM1.Query1.sql.add(mcinst+' GPCODEMP=0'+IntToStr(codemp)
                        +' and MPCODEMP=GPCODEMP ');
      mcinst:=' and ';
      end;
   DM1.Query1.SQL.add(mcinst+' MPCODMAS=GPCODMAS ');
   mcinst:=' and ';
   if trim(pvalor)<>'' then
      begin
      DM1.Query1.sql.add(mcinst+' GPCODPRO='+pvalor);
      mcinst:=' and ';
      end;
   DM1.Query1.SQL.Add(' group by MPCODMAS,MPNOMEMAS,MPNOMEMPL');
   DM1.Query1.Open;
   mqtditem:=DM1.Query1.RecordCount;
   mliditem:=0;
   mcinst:='';
   lbl_totgra.Caption:='Total: ';

   While not DM1.Query1.Eof do
      begin
      if mqtditem>1 then
         begin
         mliditem:=mliditem+1;
         if mliditem=mqtditem then
            mcinst:=' e ';
         end;
      lbl_totgra.Caption:=lbl_totgra.Caption+mcinst+' '
                         +DM1.Query1.FieldbyName('QTD').AsString+' '
                         +iif(DM1.Query1.FieldByName('QTD').AsInteger>1,
                          DM1.Query1.FieldbyName('MPNOMEMPL').AsString,
                          DM1.Query1.FieldbyName('MPNOMEMAS').AsString);

      DM1.Query1.Next;
      mcinst:=', ';
      end;
   end;

if Tb_GraPro.Eof then
   Result:=False
else
   Result:=True;
end;


procedure TFrm_ProConf.Tb_GraProAfterPost(DataSet: TDataSet);
var
mqtdgra: Integer;
begin
  inherited;
gpcodemp:=Tb_GraProGPCODEMP.Value;
gpcodpro:=Tb_GraProGPCODPRO.Value;
gpcodmas:=Tb_GraProGPCODMAS.Value;
gpgrade :=Tb_GraProGPGRADE.Value;
mopgra:=0;
Tb_GraPro.First;
mqtdgra:=0;
While not Tb_GraPro.Eof do
    begin
    if (Tb_GraProGPCODEMP.Value=gpcodemp) and
       (Tb_GraProGPCODPRO.Value=gpcodpro) and
       (Tb_GraProGPCODMAS.Value=gpcodmas) and
       (Tb_GraProGPGRADE.Value =gpgrade) then
       mqtdgra:=mqtdgra+1;
    if mqtdgra>1 then
       begin
       fMensagem('Ja Existe um Registro com as Mesmas Caracteristicas'+#13
                       +'Descrição: '+DM1.Query1.Fields[0].AsString
                       ,0,['0'],0);
       Tb_GraPro.Delete;
       Tb_GraPro.Last;
       end;
    Tb_GraPro.Next;   
    end;

end;

procedure TFrm_ProConf.Tb_GraProBeforePost(DataSet: TDataSet);
begin
  inherited;
if not Tb_GraProMPNOMEMAS.IsNull then
   begin
   if Qr_MPro.Locate('MPNOMEMAS',Tb_GraProMPNOMEMAS.Value,[]) then
      Tb_GraProGPCODMAS.Value:=Qr_MProMPCODMAS.Value;
   end;
if (Tb_GraProGPGRADE.IsNull) or (Trim(Tb_GraProGPGRADE.Value)='') then
   begin
   fMensagem('Código este campo é obrigatório!',0,['0'],0);
   DBGrid2.SelectedField:=Tb_GraProGPGRADE;
   abort;
   end;
if (Tb_GraProGPCODMAS.IsNull) or (Trim(Tb_GraProGPCODMAS.Value)='') then
   begin
   fMensagem('Prioridade este campo é obrigatório!',0,['0'],0);
   DBGrid2.SelectedField:=Tb_GraProMPNOMEMAS;
   abort;
   end;
if (Tb_GraProGPNOMGRA.IsNull) or (Trim(Tb_GraProGPNOMGRA.Value)='') then
   begin
   fMensagem('Descrição este campo é obrigatório!',0,['0'],0);
   DBGrid2.SelectedField:=Tb_GraProGPNOMGRA;

   abort;
   end;

if length(Tb_GraProGPGRADE.Value)<>2 then
   begin
   fMensagem('Campo grade tem que ter 2 caracteres!',0,['0'],0);
   DBGrid2.SelectedField:=Tb_GraProGPGRADE;
   abort;
   end;


if mopgra=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select GPNOMGRA from CADGPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' GPCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                     +' and GPCODMAS='+chr(39)+Tb_GraProGPCODMAS.AsString+chr(39)
                     +' and GPGRADE='+chr(39)+Tb_GraProGPGRADE.AsString+chr(39));
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      fMensagem('Ja Existe um Registro com as Mesmas Caracteristicas'+#13
                       +'Descrição: '+DM1.Query1.Fields[0].AsString
                       ,0,['0'],0);
      abort;
      end;
   end
else if mopgra=1 then
   begin
   if (gpgrade<>Tb_GraProGPGRADE.Value) or
      (gpcodmas<>Tb_GraProGPCODMAS.Value) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select GPNOMGRA from CADGPRO where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+IntToStr(codemp)+' and ')
                        +' GPCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                        +' and GPCODMAS='+chr(39)+Tb_GraProGPCODMAS.AsString+chr(39)
                        +' and GPGRADE='+chr(39)+Tb_GraProGPGRADE.AsString+chr(39));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
         fMensagem('Ja Existe um Registro com as Mesmas Caracteristicas'+#13
                         +'Descrição: '+DM1.Query1.Fields[0].AsString
                          ,0,['0'],0);
         abort;
         end;
      end;
   end;
end;

procedure TFrm_ProConf.Tb_GraProBeforeInsert(DataSet: TDataSet);
begin
  inherited;
if (DM1.Tb_ProPDCODPRO.Value=0) or (DM1.Tb_ProPDCODPRO.IsNull) or
   (Trim(DM1.Tb_ProPDNOME.Value)='') or (DM1.Tb_ProPDNOME.IsNull) then
   begin
   fMensagem('Cadastre Primeiro o Produto!',0,['0'],0);
   Tb_GraPro.Cancel;
   abort;
   end;
Tb_GraPro.Last;
mopgra:=0;

end;

procedure TFrm_ProConf.Tb_GraProBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  mopgra  :=1;
  gpcodemp:=Tb_GraProGPCODEMP.Value;
  gpcodpro:=Tb_GraProGPCODPRO.Value;
  gpcodmas:=Tb_GraProGPCODMAS.Value;
  gpgrade :=Tb_GraProGPGRADE.Value;
if not bbSalvarGrades.Enabled then
   begin
   bbSalvarGrades.Enabled:=true;
   bbCancAlt.Enabled     :=true;
   end;

end;

procedure TFrm_ProConf.Tb_GraProAfterInsert(DataSet: TDataSet);
begin
  inherited;
Tb_GraProGPCODEMP.Value:=DM1.Tb_PROPDCODEMP.Value;
Tb_GraProGPCODPRO.Value:=DM1.Tb_PROPDCODPRO.Value;
if not bbSalvarGrades.Enabled then
   begin
   bbSalvarGrades.Enabled:=true;
   bbCancAlt.Enabled     :=true;
   end;

end;

procedure TFrm_ProConf.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHAGEPRO.Value=1 then
   begin
   if pro_ori2='consulta' then
      begin
      fpro01lerant(0);
      end
   else
      begin
      If DM1.Tb_Pro.State in [dsInsert, dsEdit] then
         begin
         Case fMensagem('O registro atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2'],0) of
            mrYes: GRAVAR.Click;
         else CANCELAR.Click;
            end;
         end;
      end;
   if campo.itemindex=1 then 
      edit1.text:=fdeixanum2(edit1.text);
   flcadpro(campo.ItemIndex,1,0,edit1.Text);
   end;

end;


function TFrm_ProConf.fcarregagrade(ptipo: Integer): Boolean;
begin
Tb_LGC.Close;
Tb_Lgc.SQL.Clear;
Tb_LGc.SQL.Add('Select * from CADLGC ');
if DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   Tb_LGC.SQL.Add(' Where CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                 +' order by CLNUMERO')
   end
else
   begin
   Tb_LGC.SQL.Add('where CLCODEMP=0'+InttoStr(codemp)
              +' and CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
              +' order by CLNUMERO');
   end;
Tb_LGC.Open;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Select sum(CLQTD) as CLQTD,sum(CLQTDC) as CLQTDC,'
              +'sum(CLQTDR) as CLQTDR,count(*) as QTD from CADLGC ');
if DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   DM1.Query1.SQL.Add(' Where CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                 +' order by CLNUMERO')
   end
else
   begin
   DM1.Query1.SQL.Add('where CLCODEMP=0'+InttoStr(codemp)
              +' and CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
              +' order by CLNUMERO');
   end;
DM1.Query1.Open;
lbl_totitens.Caption:='Total: '+DM1.Query1.fieldbyName('QTD').AsString
                    +iif(DM1.Query1.FieldByName('QTD').AsInteger>1,
                    ' ítens ', ' ítem ')
                    +' Estoque: '+FormatFloat(mcasqtd,DM1.Query1.fieldbyName('CLQTD').asfloat)
                    +' Consignados: '+FormatFloat(mcasqtd,DM1.Query1.fieldbyName('CLQTDC').asfloat)
                    +' Revenda: '+FormatFloat(mcasqtd,DM1.Query1.fieldbyName('CLQTDR').asfloat);


result:=True;
end;

procedure TFrm_ProConf.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_ProConf',Key));
      key:=#0;
      end;


end;

procedure TFrm_ProConf.DBEdit4Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODFOR.Value>0 then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_ProPDCODFOR.AsString) then
      begin
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      if PC1.ActivePage=tsCad then
         DBEDIT4.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMFOR.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMFOR.Value:=' ';

end;

procedure TFrm_ProConf.DBEdit7Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_ProPDCODGRU.Value>0 then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
      begin
      fMensagem('Grupo não Cadastrado!',0,['0'],0);
      if PC1.ActivePage=tsCad then
         DBEDIT7.SetFocus;
      end
   else
      DM1.Tb_ProPDNOMGRU.Value:=DM1.Query1.fields[0].AsString;
   end
else
   DM1.Tb_ProPDNOMGRU.Value:=' ';

end;

procedure TFrm_ProConf.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ProPDCODGRU.Value:=ValFloat(fChamaGPro(0,'frm_ProConf',Key));
      key:=#0;
      end;


end;

procedure TFrm_ProConf.DBGrid2Exit(Sender: TObject);
begin
  inherited;
if Tb_GraPro.State in [dsEdit,dsInsert] then
   begin
   if (Tb_GraProMPNOMEMAS.IsNull) or
      (Tb_GraProGPGRADE.IsNull) then
      Tb_GraPro.Cancel
   else
      begin
      Tb_GraPro.Post;
      end;
   end;
end;

procedure TFrm_ProConf.PC1Change(Sender: TObject);
begin
  inherited;
if not (DM1.Tb_Pro.State in [dsEdit, dsInsert]) then
   begin
   if not DM1.Tb_ProPDCODPRO.IsNull then
      begin
      if PC1.ActivePageIndex=2 then
         fcarregagrade(0)
      else if PC1.ActivePageIndex=1 then
         begin
         flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);
        end;
      end;
   end;


end;

procedure TFrm_ProConf.Tb_LGCBeforePost(DataSet: TDataSet);
begin
  inherited;
moplgc:=1;
if Tb_LGCCLPRECO1.Value<>mpreco01 then
   Tb_LGCCLPRECOA1.Value:=mpreco01;
if Tb_LGCCLPRECO2.Value<>mpreco02 then
   Tb_LGCCLPRECOA2.Value:=mpreco02;
if Tb_LGCCLPRECO3.Value<>mpreco03 then
   Tb_LGCCLPRECOA3.Value:=mpreco03;

end;

procedure TFrm_ProConf.Tb_LGCBeforeInsert(DataSet: TDataSet);
begin
  inherited;
Tb_LGC.Cancel;
abort;
end;

procedure TFrm_ProConf.Tb_LGCBeforeEdit(DataSet: TDataSet);
begin
  inherited;
moplgc:=1;
mpreco01:=Tb_LGCCLPRECO1.Value;
mpreco02:=Tb_LGCCLPRECO2.Value;
mpreco03:=Tb_LGCCLPRECO3.Value;

end;

procedure TFrm_ProConf.Tb_LGCAfterPost(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fMensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;
  moplgc:=0;
end;

procedure TFrm_ProConf.bbCancAltClick(Sender: TObject);
begin
  inherited;
if Tb_GraPro.State in [dsEdit, dsInsert] then
   Tb_GraPro.Cancel;
bbSalvarGrades.Enabled:=false;
bbCancAlt.Enabled     :=false;
flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);

end;

procedure TFrm_ProConf.bbSalvarGradesClick(Sender: TObject);
var
mGrade,mLav, mTec: String;
nv_tec: array of string;
nv_lav: array of string;
x,y,mQtdItens: Integer;

begin
  inherited;
bbSalvarGrades.Enabled:=false;
bbCancAlt.Enabled     :=false;
// selecionando os registros para ver se ha exclusao
// tecido
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.add('Select GPGRADE   '
                  +' from CADGPRO where '
                  +iif (DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                 +' GPCODPRO='+DM1.Tb_ProPDCODPRO.AsString
                 +' and GPCODMAS='+chr(39)+'02'+chr(39));
DM1.Query4.Open;

// lavagem
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.add('Select GPGRADE   '
                  +' from CADGPRO where '
                  +iif (DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                 +' GPCODPRO='+DM1.Tb_ProPDCODPRO.AsString
                 +' and GPCODMAS='+chr(39)+'03'+chr(39));
DM1.Query5.Open;

// tamanhos

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select GPCODMAS, '
                  +'       GPGRADE   '
                  +' from CADGPRO where '
                  +iif (DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                 +' GPCODPRO='+DM1.Tb_ProPDCODPRO.AsString
                 +' and GPCODMAS='+chr(39)+'04'+chr(39));
DM1.Query2.Open;

// removendo grades que nao obteve movimento
While NOT DM1.Query4.Eof do  // tecido
   begin
   mTec:=DM1.Query4.fieldbyname('GPGRADE').AsString;
   DM1.Query5.First;
   While not DM1.Query5.Eof do // lavagem
      begin
      mLav:=DM1.Query4.fieldbyname('GPGRADE').AsString;
      DM1.Query2.First;
      While not DM1.Query2.Eof do
         begin
         mgrade:=mTec+mLav+DM1.Query2.fieldbyname('GPGRADE').AsString;
         if not Tb_GraPro.Locate('GPCODMAS;GPGRADE',vararrayOf([DM1.Query2.FieldByName('GPCODMAS').AsString,DM1.Query2.FieldByName('GPGRADE').AsString]),[]) then
            begin
            if not fTestaMovimento(1,DM1.Tb_ProPDCODPRO.AsString,mGrade) then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete from CADLGC where '
                                +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntToStr(codemp)+' and ')
                                +' CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                                +' and CLNUMERO='+chr(39)+mGrade+chr(39));
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,1128,'Frm_ProConf','CADLGC');
                  end;
               end;
            end;
         DM1.Query2.Next;
         end;
      DM1.Query5.Next;
      end;
   DM1.Query4.Next;
   end;


// CRIANDO AS GRADES
setlength(nv_tec,2);
setlength(nv_lav,2);


Tb_GraPro.First;
While not Tb_GraPro.Eof do
   begin
   if Tb_GraProGPCODMAS.Value='02' then
      begin
      mQtdItens:=high(nv_tec);
      setlength(nv_tec,mQtdItens+2);
      nv_tec[mQtdItens]:=Tb_GraProGPGRADE.Value;
      end
   else if Tb_GraProGPCODMAS.Value='03' then
      begin
      mQtdItens:=high(nv_lav);
      setlength(nv_lav,mQtdItens+2);
      nv_lav[mQtdItens]:=Tb_GraProGPGRADE.Value;
      end;
   Tb_GraPro.Next;
   end;
if (high(nv_tec)>=0) and (High(nv_lav)>=0) then
   begin
   for x := 0 to high(nv_tec) do
      begin
      mtec:=nv_tec[x];
      if trim(mtec)='' then
         continue;
      for y := 0 to high(nv_lav) do
         begin
         mlav:=nv_lav[y];
         if trim(mlav)='' then
            continue;

         Tb_GraPro.First;
         While not Tb_GraPro.Eof do
            begin
            if Tb_GraProGPCODMAS.Value<>'04' then
               begin
               Tb_GraPro.Next;
               Continue;
               end;
            mgrade:=mtec+mlav+Tb_GraProGPGRADE.Value;
            if not flcadlgc(0,1,0,DM1.Tb_ProPDCODPRO.AsString,mgrade,'') then
               begin
                 if not fCriargrade(codemp,
                                    DM1.Tb_ProPDCODPRO.Value,
                                    0, // quantidade
                                    0, // qtd revenda
                                    0, // qtd consignado
                                    0, // preco 01
                                    0, // preco 02
                                    0, // preco 03
                                    0, // preco 01 a
                                    0, // preco 02 a
                                    0, // preco 03 a
                                    0, // preco custo
                                    0, // estoque maximo
                                    0, // estoque minimo
                                    mGrade,
                                   pdatanula) then
                    begin
                    fMensagem('Erro ao Criar as grades',0,['0'],0);
                    exit;
                    end;
               end;
            Tb_GraPro.Next;
            end;
         end;
      end;
   end;

// gravando as propriedades do produto;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from CADGPRO where '
                  +iif (DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' GPCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString+' and ')
                 +' GPCODPRO='+DM1.Tb_ProPDCODPRO.AsString);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1128,'Frm_ProConf','CADLGC');
   end;
Tb_GraPro.first;
DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODMAS',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GRADE',ptInput);
DM1.Query2.Params.CreateParam(ftString,'NOMGRA',ptInput);
DM1.Query2.SQL.add('Insert into CADGPRO ('
                  +'GPCODEMP, '
                  +'GPCODPRO, '
                  +'GPCODMAS, '
                  +'GPGRADE, '
                  +'GPNOMGRA ) values ('
                  +':CODEMP, '
                  +':CODPRO, '
                  +':CODMAS, '
                  +':GRADE, '
                  +':NOMGRA)');
While not Tb_GraPro.Eof do
   begin
   DM1.Query2.ParamByName('CODEMP').AsFloat :=Tb_GraProGPCODEMP.Value;
   DM1.Query2.ParamByName('CODPRO').AsFloat :=Tb_GraProGPCODPRO.Value;
   DM1.Query2.ParamByName('CODMAS').AsString:=Tb_GraProGPCODMAS.Value;
   DM1.Query2.ParamByName('GRADE').AsString :=Tb_GraProGPGRADE.Value;
   DM1.Query2.ParamByName('NOMGRA').AsString:=Tb_GraProGPNOMGRA.Value;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,1128,'Frm_GraPro','CADGPRO');
      end;
   Tb_GraPro.Next;
   end;


fcarregagrade(0);
flcadGraPro_Pro(0,0,0,DM1.Tb_ProPDCODPRO.AsString);

end;

procedure TFrm_ProConf.Tb_GraProAfterDelete(DataSet: TDataSet);
begin
  inherited;
if not bbSalvarGrades.Enabled then
   begin
   bbSalvarGrades.Enabled:=true;
   bbCancAlt.Enabled     :=true;
   end;

end;

procedure TFrm_ProConf.DBGrid3Exit(Sender: TObject);
begin
  inherited;
if Tb_LGC.State in [dsInsert, dsEdit] then
   Tb_LGC.Post;
end;

procedure TFrm_ProConf.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pro_ori2='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   pro_ori2 := '';
   end;

end;

procedure TFrm_ProConf.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=27) then
   begin
   if pro_ori2='' then
      begin
      PC1.ActivePage:=tsCad;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_ProConf.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
if pro_ori2='' then
   begin
   PC1.ActivePage:=tsCad;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   pro_ori2 := '';
   end;

end;

procedure TFrm_ProConf.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

if (integer(key)=9) and (DBGrid1.Enabled)  then
   begin
   if dbgrid1.Focused then
      begin
      if PC1.ActivePage=tsCad then
         DBGrid3.SetFocus;
      end
   else
      begin
      if PC1.ActivePage=tsCad then
         DBGrid1.SetFocus;
      end
   end;
end;

procedure TFrm_ProConf.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if (key=9) or (key=27) then
   begin
   if pro_ori2<>'' then
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_ProConf.FormActivate(Sender: TObject);
begin
  inherited;
if not (DM1.Tb_PargerPCONSPROPAD.IsNull) then
   CAMPO.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;

end;

procedure TFrm_ProConf.SAIRClick(Sender: TObject);
begin
  inherited;
   if pro_ori2 = '' then close;
end;

procedure TFrm_ProConf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
