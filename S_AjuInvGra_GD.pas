unit S_AjuInvGra_GD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,db,dbtables,func,lerarq,S_DM1,S_Pro, Buttons,
  ExtCtrls, DBCtrls,S_DM4, Grids, DBGrids,S_PcoLotAP,S_Agde,S_SI,S_Impres,Rdprint,S_DM5
  , s_lerarq_geral,s_InvGra_GD_comparar;

type
  TFrm_AjuInvGra_GD = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator1: TDBNavigator;
    EXCLUIR: TBitBtn;
    GroupBox4: TGroupBox;
    GroupBox_itens: TGroupBox;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Qr_InvGra01: TQuery;
    Qr_InvGra02: TQuery;
    Src_InvGra01: TDataSource;
    Src_InvGra02: TDataSource;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    Qr_InvGra01IGNOMEINV: TStringField;
    Qr_InvGra01QUANT: TFloatField;
    Qr_InvGra01VALOR: TFloatField;
    Qr_InvGra01ITEM: TFloatField;
    Qr_InvGra02IGCODEMP: TFloatField;
    Qr_InvGra02IGNOMEINV: TStringField;
    Qr_InvGra02IGCODPRO: TFloatField;
    Qr_InvGra02IGPRECO: TFloatField;
    Qr_InvGra02IGQTD: TFloatField;
    Qr_InvGra02IGSIT: TStringField;
    Qr_InvGra02IGCODTIP: TFloatField;
    Qr_InvGra02PDNOME: TStringField;
    Qr_InvGra02PDUND: TStringField;
    Qr_InvGra02total: TFloatField;
    NOMEINV: TEdit;
    QTD: TEdit;
    Label1: TLabel;
    VALOR: TEdit;
    U_InvGra02: TUpdateSQL;
    Label2: TLabel;
    NUMITENS: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    PERQTD: TEdit;
    cb_dimqtd: TCheckBox;
    Label5: TLabel;
    NOMEPRO: TEdit;
    AplicQtd: TBitBtn;
    Label6: TLabel;
    PERPU: TEdit;
    cb_dimPU: TCheckBox;
    AplicPU: TBitBtn;
    bbSair: TBitBtn;
    Qr_InvGra02nomepro: TStringField;
    Qr_InvGra02und: TStringField;
    Qr_InvGra02IGGRADE: TStringField;
    Qr_InvGra02IGDTVCTO: TDateTimeField;
    bbGerarNovo: TBitBtn;
    bbEstIgualInv: TBitBtn;
    Qr_InvGra01IGDATAEMI: TDateTimeField;
    Qr_InvGra01IGFILIAL: TFloatField;
    Qr_InvGra01nomefilial: TStringField;
    Qr_InvGra01IGCODTIP: TFloatField;
    bbComparar: TBitBtn;
    sbt_expexcel: TSpeedButton;
    bbNovoSemGrade: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GRAVARClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure Src_InvGra01DataChange(Sender: TObject; Field: TField);
    procedure bbSairClick(Sender: TObject);
    procedure Qr_InvGra02CalcFields(DataSet: TDataSet);
    procedure Qr_InvGra02BeforeEdit(DataSet: TDataSet);
    procedure Qr_InvGra02BeforePost(DataSet: TDataSet);
    procedure Qr_InvGra02BeforeInsert(DataSet: TDataSet);
    procedure Qr_InvGra02AfterCancel(DataSet: TDataSet);
    procedure Qr_InvGra02AfterPost(DataSet: TDataSet);
    procedure Qr_InvGra02AfterDelete(DataSet: TDataSet);
    procedure DBGrid2Exit(Sender: TObject);
    procedure NOMEPROChange(Sender: TObject);
    procedure PERQTDExit(Sender: TObject);
    procedure PERPUExit(Sender: TObject);
    procedure PERQTDChange(Sender: TObject);
    procedure PERPUChange(Sender: TObject);
    procedure AplicQtdClick(Sender: TObject);
    procedure AplicPUClick(Sender: TObject);
    procedure Qr_InvGra02AfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbGerarNovoClick(Sender: TObject);
    procedure bbEstIgualInvClick(Sender: TObject);
    procedure bbCompararClick(Sender: TObject);
    procedure sbt_expexcelClick(Sender: TObject);
    procedure bbNovoSemGradeClick(Sender: TObject);
  private
    { Private declarations }

    procedure fAbrirInventario;
    procedure Lerinvgra;


  public
    { Public declarations }
  end;

var
  Frm_AjuInvGra_GD: TFrm_AjuInvGra_GD;
  mOperItems: Integer=0;
  moper: Integer;
  mcq, mcp: Integer;
  casqtd, caspu: String;
  mprecoa, mqtda: Real;
implementation

uses S_DM2, func_excecoes,  s_AjuInvGra_Gerar, func_ecf, Func2,
  S_AjuInvGra_NovoSemLote;

{$R *.dfm}

procedure TFrm_AjuInvGra_GD.FormCreate(Sender: TObject);
begin
//if codusr=1111 then
//   bbEstIgualInv.visible:=true
//else
   bbEstIgualInv.visible:=false;

casqtd:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
caspu :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
mcq   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,DM1.Tb_PargerPCASIND.AsInteger,DM1.Tb_PargerPCASQTD.AsInteger);
mcp   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,DM1.Tb_PargerPCASPUIND.AsInteger,DM1.Tb_PargerPCASASPU.AsInteger);




Qr_InvGra01QUANT.DisplayFormat  :=casqtd;
Qr_InvGra01VALOR.DisplayFormat  :=caspu;
Qr_InvGra02IGPRECO.DisplayFormat:=mcasas;
Qr_InvGra02IGQTD.DisplayFormat  :=casqtd;
Qr_InvGra02total.DisplayFormat  :=mcasas;
Lerinvgra;
end;

procedure TFrm_AjuInvGra_GD.Lerinvgra;
begin

Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  IGNOMEINV,IGDATAEMI, sum(IGQTD) AS QUANT '
                   +' ,sum( round(IGQTD*IGPRECO,2)) AS VALOR '
                   +',IGFILIAL,max(IGCODTIP) as IGCODTIP  '
                   +',(select max(CFNOME) from CADPRO_FILIAL where CFFILIAL=IGFILIAL) as nomefilial '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA_GD  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV,IGDATAEMI,IGFILIAL ');
Qr_InvGra01.Open;
if not Qr_InvGra01.Eof then
   begin
   ALTERAR.Enabled:=true;
   CANCELAR.Enabled:=true;
   EXCLUIR.Enabled:=true;
   end;
CANCELAR.Click;
end;

procedure TFrm_AjuInvGra_GD.CANCELARClick(Sender: TObject);
begin
ALTERAR.Enabled     :=True;
EXCLUIR.Enabled     :=True;
GRAVAR.Enabled      :=False;
DBNavigator2.Enabled:=False;
DBGrid2.ReadOnly    :=true;
//GroupBox5.Enabled   :=False;
GroupBox4.Enabled   :=False;

DBNavigator1.Enabled:=True;
DBGrid1.Enabled     :=True;
end;

procedure TFrm_AjuInvGra_GD.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If GRAVAR.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_AjuInvGra_GD.GRAVARClick(Sender: TObject);
VAR
y: Integer;
begin

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gerando novo Inventario, Aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
Frm_Agde.Update;
mplid:=0;
mpqtd:=Qr_InvGra02.RecordCount;
if moper=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from INVGRA_GD where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+Qr_InvGra02IGCODEMP.AsString+' and ')
                     +' IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39));
   DM1.Query1.ExecSQL;
   end;
Qr_InvGra02.First;
DM1.Query5.Close;
DM1.Query5.SQL.clear;
for y:=0 to DM5.Tb_InvGra_GD.FieldCount-1 do
   begin
   if DM5.Tb_InvGra_GD.Fields[y].FieldKind=fkCalculated then
      Continue;
   DM1.Query5.Params.CreateParam(ftString,DM5.Tb_InvGra_GD.fields[y].FieldName,ptInput);
   end;
DM1.Query5.SQL.Add('Insert into INVGRA_GD (');
mcinst:=' ';
for y:=0 to DM5.Tb_InvGra_GD.FieldCount-1 do
   begin
   if DM5.Tb_InvGra_GD.Fields[y].FieldKind=fkCalculated then
      Continue;
   DM1.Query5.SQL.Add(mcinst+DM5.Tb_InvGra_GD.fields[y].FieldName);
   mcinst:=',';
   end;
DM1.Query5.SQL.Add(') values (');
mcinst:=' ';
for y:=0 to DM5.Tb_InvGra_GD.FieldCount-1 do
   begin
   if DM5.Tb_InvGra_GD.Fields[y].FieldKind=fkCalculated then
      Continue;
   DM1.Query5.SQL.Add(mcinst+':'+DM5.Tb_InvGra_GD.fields[y].FieldName);
   mcinst:=',';
   end;
DM1.Query5.SQL.Add(')');


While not Qr_InvGra02.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   for y:=0 to DM5.Tb_InvGra_GD.FieldCount-1 do
      begin
      if DM5.Tb_InvGra_GD.Fields[y].FieldKind=fkCalculated then
         Continue;
      if Qr_InvGra02.FieldByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).IsNull then
         begin
         if Qr_InvGra02.FieldByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
            DM1.Query5.ParamByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).AsFloat:=0
         else
            DM1.Query5.ParamByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).AsString:=' ';
         end
      else
         DM1.Query5.ParamByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).Value:=
         Qr_InvGra02.FieldByName(DM5.Tb_InvGra_GD.Fields[y].FieldName).Value;
      end;
   DM1.Query5.ExecSQL;
   Qr_InvGra02.Next;
   end;
Frm_Agde.Free;
CANCELAR.Click;
end;

procedure TFrm_AjuInvGra_GD.DBGrid2ColExit(Sender: TObject);
begin

if (DBGrid2.SelectedField=Qr_InvGra02IGCODPRO) then
   begin
   if Qr_InvGra02.State in [dsInsert, DsEdit] then
      begin
      if not flqr2('PDNOME,PDUND,PDSIT','PD',
         'CADPRO','N','PDCODPRO',Qr_InvGra02IGCODPRO.AsString) then
         begin
         MessageDlg('Produto Não Cadastrado.',mtWarning,[mbOk],0);
         Qr_InvGra02IGCODPRO.Value:=0;
         abort;
         end
      else
         begin
         Qr_InvGra02PDNOME.Value:=DM1.Query2.Fields[0].AsString;
         Qr_InvGra02PDUND.Value :=DM1.Query2.Fields[1].AsString;
         if (DM1.Query2.Fields[2].IsNull) or (Trim(DM1.Query2.Fields[2].AsString)='') then
            Qr_InvGra02IGSIT.Value:='000'
         else
            Qr_InvGra02IGSIT.Value :=DM1.Query2.Fields[2].AsString;
         end;
      end;
   end;

if (DBGrid2.SelectedField=Qr_InvGra02IGGRADE) then
   begin
   if Qr_InvGra02.State in [dsInsert, DsEdit] then
      begin
      if not flcadlgc(0,1,0,Qr_InvGra02IGCODPRO.AsString,Qr_InvGra02IGGRADE.Value,'') then
         begin
         MessageDlg('Grade Não Cadastrada!',mtWarning,[mbOk],0);
         abort;
         end;
      end;
   end;

end;

procedure TFrm_AjuInvGra_GD.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin

if Qr_InvGra02.State in [dsEdit, DsInsert] then
   begin
   if (DBGrid2.SelectedField=Qr_InvGra02IGCODPRO) or
      (DBGrid2.SelectedField=Qr_InvGra02IGGRADE) then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
          begin
          Qr_InvGra02IGCODPRO.Value:=valfloat(fChamaPro(0,'Frm_AjuInvGra_GD',key));
          if DM1.Tb_LGC.Active then
          Qr_InvGra02IGGRADE.Value :=DM1.Tb_LGCCLNUMERO.Value;
          key:=#0;
          end;
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AjuInvGra_GD.ALTERARClick(Sender: TObject);
begin

if Qr_InvGra01IGNOMEINV.IsNull then
   begin
   MessageDlg('Não ha registro selecionado!',mtWarning,[mbOk],0);
   exit;
   end;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
DBGrid2.ReadOnly    :=False;
GroupBox4.Enabled   :=true;
//GroupBox5.Enabled   :=true;
DBNavigator1.Enabled:=False;
DBNavigator2.Enabled:=True;
DBGrid1.Enabled     :=False;
moper:=1;
end;

procedure TFrm_AjuInvGra_GD.EXCLUIRClick(Sender: TObject);
var
minc:String;
begin

if Qr_InvGra01IGNOMEINV.IsNull then
   begin
   MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[],0);
   exit;
   end;
if fmensagem('Confirma a Exclusão do inventário?',0,['1','2'],2)<>mrYes then
   exit;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from INVGRA_GD where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,420,'Frm_AjuInvGra_GD','INVGRA_GD');
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from INVGRA_GD03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' IG3CODEMP=0'+IntToStr(codemp)+' and ')
                  +' IG3CHAVE='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,407,'Frm_AjuInvGra_GD','INVGRA_GD');
   end;

Lerinvgra;


Frm_Agde.Free;


CANCELAR.Click;

end;

procedure TFrm_AjuInvGra_GD.Src_InvGra01DataChange(Sender: TObject;
  Field: TField);
begin

fAbrirInventario;
end;


procedure TFrm_AjuInvGra_GD.fAbrirInventario;
begin

NOMEINV.Text :=Qr_InvGra01IGNOMEINV.Value;
QTD.Text     :=FormatFloat(casqtd, Qr_InvGra01QUANT.Value);
VALOR.Text   :=FormatFloat(mcasas, Qr_InvGra01VALOR.Value);
NUMITENS.Text:=FormatFloat(mcasas, Qr_InvGra01ITEM.Value);
Qr_InvGra02.Close;
Qr_InvGra02.SQL.Clear;
Qr_InvGra02.SQL.Add('Select IGCODEMP, '
                   +'       IGNOMEINV, '
                   +'       IGCODPRO, '
                   +'       IGGRADE, '
                   +'       IGDTVCTO, '
                   +'       IGPRECO, '
                   +'       IGQTD, '
                   +'       IGSIT, '
                   +'       IGCODTIP, '
                   +'       PDNOME, '
                   +'       PDUND '
                   +' from INVGRA_GD,CADPRO where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=IGCODEMP and ')
                   +' PDCODPRO=IGCODPRO '
                   +' and IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39)
                   +' order by PDNOME,IGDTVCTO,IGGRADE');
Qr_InvGra02.Open;
end;

procedure TFrm_AjuInvGra_GD.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02CalcFields(DataSet: TDataSet);
begin
Qr_InvGra02total.Value:=Qr_InvGra02IGPRECO.Value*Qr_InvGra02IGQTD.Value;
Qr_InvGra02total.Value:=Arredonda(Qr_InvGra02total.Value, DM1.Tb_PargerPCASAS.AsInteger);
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_InvGra02IGCODPRO.AsString) then
   begin
   Qr_InvGra02und.Value    :=DM1.Query1.Fields[1].AsString;
   Qr_InvGra02nomepro.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02BeforeEdit(DataSet: TDataSet);
begin
if GRAVAR.Enabled=false then
   begin
   abort;
   exit;
   end;
mOperItems:=0;

mprecoa:=Qr_InvGra02IGPRECO.Value;
mqtda  :=Qr_InvGra02IGQTD.Value;

end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02BeforePost(DataSet: TDataSet);
begin
if (Qr_InvGra02IGCODPRO.IsNull) or (Qr_InvGra02nomepro.IsNull) or (Qr_InvGra02IGGRADE.IsNull) then
   abort
else
   begin
   if (mprecoa<>0) or (mqtda<>0) then
      begin
      QTD.Text  :=FormatFloat(casqtd, ValFloat(QTD.Text)-mqtda);
      VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text)-(mqtda*mprecoa));
      mprecoa:=0;
      mqtda  :=0;
      end;
   end;
end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02BeforeInsert(DataSet: TDataSet);
begin
if GRAVAR.Enabled=false then
   begin
   abort;
   exit;
   end;

mOperItems:=1;
end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02AfterCancel(DataSet: TDataSet);
begin
mprecoa   :=0;
mqtda     :=0;
mOperItems:=0;
end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02AfterPost(DataSet: TDataSet);
begin
if mOperItems=1 then
   NUMITENS.Text:=FormatFloat('#0',ValFloat(NUMITENS.Text)+1);
QTD.Text  :=FormatFloat(casqtd, ValFloat(QTD.Text)+Qr_InvGra02IGQTD.Value);
VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text)+(Qr_InvGra02IGQTD.Value*Qr_InvGra02IGPRECO.Value))

end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02AfterDelete(DataSet: TDataSet);
begin
NUMITENS.Text:=FormatFloat('#0',ValFloat(NUMITENS.Text)-1);

end;

procedure TFrm_AjuInvGra_GD.DBGrid2Exit(Sender: TObject);
begin
if Qr_InvGra02.State in [dsinsert,dsEdit] then
   begin
   if trim(Qr_InvGra02IGNOMEINV.AsString)=''  then
      Qr_InvGra02.Cancel
   else
      Qr_InvGra02.Post;
   end;
end;

procedure TFrm_AjuInvGra_GD.NOMEPROChange(Sender: TObject);
begin
Qr_InvGra02.Locate('PDNOME',NOMEPRO.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_AjuInvGra_GD.PERQTDExit(Sender: TObject);
begin
if ValFloat(PERQTD.Text)<0 then
   PERQTD.Text:='0';
PERQTD.Text:=FormatFloat(mcasas, ValFloat(PERQTD.Text));


end;

procedure TFrm_AjuInvGra_GD.PERPUExit(Sender: TObject);
begin
if ValFloat(PERPU.Text)<0 then
   PERPU .Text:='0';
PERPU.Text:=FormatFloat(mcasas, ValFloat(PERPU.Text));

end;

procedure TFrm_AjuInvGra_GD.PERQTDChange(Sender: TObject);
begin
if PERQTD.Modified then AplicQtd.Enabled:=true;
end;

procedure TFrm_AjuInvGra_GD.PERPUChange(Sender: TObject);
begin
if PERPU.Modified then AplicPU.Enabled:=true;

end;

procedure TFrm_AjuInvGra_GD.AplicQtdClick(Sender: TObject);
begin
if ValFloat(PERQTD.Text)=0 then
   exit;
Qr_InvGra02.First;
While not Qr_InvGra02.Eof do
   begin
   Qr_InvGra02.Edit;
   if cb_dimqtd.Checked then
      Qr_InvGra02IGQTD.Value:=Qr_InvGra02IGQTD.Value-(Qr_InvGra02IGQTD.Value*ValFloat(PERQTD.Text)/100)
   else
      Qr_InvGra02IGQTD.Value:=Qr_InvGra02IGQTD.Value+(Qr_InvGra02IGQTD.Value*ValFloat(PERQTD.Text)/100);
   Qr_InvGra02IGQTD.Value:=Arredonda(Qr_InvGra02IGQTD.Value,mcq);
   Qr_InvGra02.Post;
   Qr_InvGra02.Next;
   end;
AplicQtd.Enabled:=False;
end;

procedure TFrm_AjuInvGra_GD.AplicPUClick(Sender: TObject);
begin
if ValFloat(PERPU.Text)=0 then
   exit;
Qr_InvGra02.First;
While not Qr_InvGra02.Eof do
   begin
   Qr_InvGra02.Edit;
   if cb_dimPU.Checked then
      Qr_InvGra02IGPRECO.Value:=Qr_InvGra02IGPRECO.Value-(Qr_InvGra02IGPRECO.Value*ValFloat(PERPU.Text)/100)
   else
      Qr_InvGra02IGPRECO.Value:=Qr_InvGra02IGPRECO.Value+(Qr_InvGra02IGPRECO.Value*ValFloat(PERPU.Text)/100);
   Qr_InvGra02IGPRECO.Value:=Arredonda(Qr_InvGra02IGPRECO.Value,mcp);
   Qr_InvGra02.Post;
   Qr_InvGra02.Next;
   end;
AplicPU.Enabled:=False;
end;

procedure TFrm_AjuInvGra_GD.Qr_InvGra02AfterInsert(DataSet: TDataSet);
begin
    Qr_InvGra02IGCODEMP.VALUE := codemp;
    Qr_InvGra02IGNOMEINV.VALUE := Qr_InvGra01IGNOMEINV.AsString;

end;

procedure TFrm_AjuInvGra_GD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AjuInvGra_GD.bbGerarNovoClick(Sender: TObject);
begin
Application.createForm(TFrm_AjuInvGra_Gerar,Frm_AjuInvGra_Gerar);
Frm_AjuInvGra_Gerar.edt_nominv_origem.text:=Qr_InvGra01IGNOMEINV.AsString;

Frm_AjuInvGra_Gerar.edt_datainv_oriigem.text:=Formatdatetime(fdt2, qr_invgra01IGDATAEMI.asdatetime);
Frm_AjuInvGra_Gerar.mcomgrade :=true;


if fLerGenerico_query('CADPRO_FILIAL','CFNOME,CFFILIAL','CFFILIAL=0'+Qr_InvGra01IGFILIAL.AsString,query_consulta) then
   begin
   Frm_AjuInvGra_Gerar.cb_locais.Text:=query_consulta.fieldbyname('CFNOME').AsString+' ['+query_consulta.FieldbyName('CFFILIAL').AsString+']';
   end;


Frm_AjuInvGra_Gerar.edt_nominv_origem.text:=Qr_InvGra01IGNOMEINV.AsString;

frm_AjuInvGra_Gerar.ShowModal;

freeandnil(frm_ajuinvgra_gerar);
Lerinvgra;

fAbrirInventario;

end;

procedure TFrm_AjuInvGra_GD.bbEstIgualInvClick(Sender: TObject);
var
query_exe: TQuery;
begin

if (Qr_InvGra01.active=true) and (length(Qr_InvGra01IGNOMEINV.AsString)>1) then
   begin
   if Application.MessageBox('Quer realmente colocar o estoque igual ao inventario?','Confirmaçao',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      query_exe:=TQuery.create(nil);
      query_exe.DatabaseName:='SG_ASSOC';
      query_exe.SQL.clear;
      query_exe.SQL.Add('Update CADPRO set PDSALDO=(select IGQTD from INVGRA where IGNOMEINV=:NOMEINV and IGCODPRO=PDCODPRO) ');
      query_exe.parambyname('NOMEINV').asstring:=Qr_InvGra01IGNOMEINV.AsString;

      try
         query_exe.ExecSQL;
      except on e: exception do
         begin
         ex_erroSql_Novo(Query_exe,678,'_lerarq','CADPRO');
         end;
         end;
      query_exe.close;
      query_exe.SQL.clear;
      query_exe.SQL.Add('Update CADEST set CESALDO=(select PDSALDO from CADPRO where CECODPRO=PDCODPRO) ');
      try
         query_exe.ExecSQL;
      except on e: exception do
         begin
         ex_erroSql_Novo(Query_exe,689,'_lerarq','CADEST');
         end;
         end;
    end;


 end;
end;

procedure TFrm_AjuInvGra_GD.bbCompararClick(Sender: TObject);
begin
Application.Createform(TFrm_InvGra_GD_comparar,Frm_InvGra_GD_comparar);
Frm_Invgra_GD_Comparar.show;

end;

procedure TFrm_AjuInvGra_GD.sbt_expexcelClick(Sender: TObject);
var
Campos: Array of string;
x_cpo: Integer;
begin
{
SetLength(Campos,Qr_inv.fields.Count);
for x_cpo:=0 to Qr_inv.fields.count-1 do
   begin
   Campos[x_cpo]:=Qr_inv.fields[x_cpo].FieldName;
   end;
fGerarPlanilhaExcel(Campos,Src_inv);
}

fGerarPlanilhaExcel([],Src_InvGra02);


end;

procedure TFrm_AjuInvGra_GD.bbNovoSemGradeClick(Sender: TObject);
begin


testeform := TFrm_AjuInvGra_GD(FindGlobalComponent('frm_ajuinvgra_novosemlote'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ajuinvgra_novosemlote,Frm_ajuinvgra_novosemlote);
   Frm_ajuinvgra_novosemlote.top:=0;
   end;


if Frm_ajuinvgra_novosemlote.WindowState=WsMinimized then
   Frm_ajuinvgra_novosemlote.WindowState:=WsNormal
else
   Frm_ajuinvgra_novosemlote.Show;

end;

end.
