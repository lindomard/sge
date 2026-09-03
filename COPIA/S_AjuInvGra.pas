unit S_AjuInvGra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,db,dbtables,func,lerarq,S_DM1,S_Pro, Buttons,
  ExtCtrls, DBCtrls,S_DM4, Grids, DBGrids,S_PcoLotAP,S_Agde,S_SI,S_Impres,Rdprint,S_DM5
  , s_lerarq_geral,s_AjuInvGra_Gerar;

type
  TFrm_AjuInvGra = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator1: TDBNavigator;
    EXCLUIR: TBitBtn;
    gb_detalhes: TGroupBox;
    gb_produtos: TGroupBox;
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
    gb_acao: TGroupBox;
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
    SALDO_TRANSP: TEdit;
    Label8: TLabel;
    SALDO_INVENTARIO: TEdit;
    Label9: TLabel;
    Qr_InvGra01VALOR_TRANSP: TFloatField;
    Qr_InvGra01Saldo_Inventario: TFloatField;
    Qr_InvGra02IGVALOR_TRANSP: TFloatField;
    Qr_InvGra02IGDATAEMI: TDateTimeField;
    Qr_InvGra01IGDATAEMI: TDateTimeField;
    Label10: TLabel;
    DTEMIS: TMaskEdit;
    Label11: TLabel;
    SALDO_ATUAL: TEdit;
    cb_filpro: TCheckBox;
    bbGerarNovo: TBitBtn;
    bbEstIgualInv: TBitBtn;
    bbRefres: TBitBtn;
    label_info: TLabel;
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
    procedure SALDO_TRANSPExit(Sender: TObject);
    procedure Qr_InvGra01CalcFields(DataSet: TDataSet);
    procedure DTEMISExit(Sender: TObject);
    procedure bbGerarNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure c(DataSet: TDataSet);
    procedure Qr_InvGra02AfterEdit(DataSet: TDataSet);
    procedure bbRefresClick(Sender: TObject);
    procedure DBGrid2ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure bbEstIgualInvClick(Sender: TObject);
  private
    { Private declarations }
    function fAbrirInventario: Boolean;

    function fGerarOld(pTipo: Integer): Boolean;

//    function fLercadinv01: boolean;

  public
    { Public declarations }
    function fReabreInventario(pTipo: Integer): Boolean;

  end;

var
  Frm_AjuInvGra: TFrm_AjuInvGra;
  mOperItems: Integer=0;
  moper: Integer;
  mcq, mcp: Integer;
  casqtd, caspu: String;
  mprecoa, mqtda: Real;
  mValor_ant: Real=0;
  mcodpro_ant: real;
implementation

uses S_DM2, func_excecoes, s_AjuInvGra_Ajustes;

{$R *.dfm}

procedure TFrm_AjuInvGra.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   bbEstIgualInv.visible:=true
else
   bbEstIgualInv.visible:=false;

casqtd:=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
caspu :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
mcq   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,DM1.Tb_PargerPCASIND.AsInteger,DM1.Tb_PargerPCASQTD.AsInteger);
mcp   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,DM1.Tb_PargerPCASPUIND.AsInteger,DM1.Tb_PargerPCASASPU.AsInteger);


Qr_InvGra01QUANT.DisplayFormat             :=casqtd;
Qr_InvGra01VALOR.DisplayFormat             :=caspu;
Qr_InvGra01VALOR_TRANSP.DisplayFormat      :=mcasas;
Qr_InvGra01Saldo_Inventario.DisplayFormat  :=mcasas;
Qr_InvGra01IGDATAEMI.DisplayFormat         :=fdt2;



Qr_InvGra02IGPRECO.DisplayFormat:=mcasas;
Qr_InvGra02IGQTD.DisplayFormat  :=casqtd;
Qr_InvGra02total.DisplayFormat  :=mcasas;
fAbrirInventario;
end;

function TFrm_AjuInvGra.fAbrirInventario: Boolean;
begin
Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT '
                   +' ,max(IGVALOR_TRANSP) as VALOR_TRANSP '
                   +' ,max(IGDATAEMI) as IGDATAEMI '
                   +' ,sum( round(IGQTD*IGPRECO,2)) AS VALOR '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV  ORDER BY IGNOMEINV ');
Qr_InvGra01.Open;
if not Qr_InvGra01.Eof then
   begin
   ALTERAR.Enabled:=true;
   CANCELAR.Enabled:=true;
   EXCLUIR.Enabled:=true;
   bbGerarNovo.Enabled :=true;

   end;
CANCELAR.Click;
result:=true;
end;

procedure TFrm_AjuInvGra.CANCELARClick(Sender: TObject);
begin
ALTERAR.Enabled     :=True;
EXCLUIR.Enabled     :=True;
bbGerarNovo.Enabled :=true;

GRAVAR.Enabled      :=False;
DBNavigator2.Enabled:=False;
DBGrid2.ReadOnly    :=true;
gb_produtos.Enabled   :=False;
gb_detalhes.Enabled   :=False;

DBNavigator1.Enabled:=True;
DBGrid1.Enabled     :=True;
end;

procedure TFrm_AjuInvGra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If GRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_AjuInvGra.GRAVARClick(Sender: TObject);
begin
{
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
   DM1.Query1.SQL.Add('Delete from INVGRA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+Qr_InvGra02IGCODEMP.AsString+' and ')
                     +' IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39));
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   end;
Qr_InvGra02.Cancel;
Qr_InvGra02.First;
DM1.Query5.Close;
DM1.Query5.SQL.clear;
for y:=0 to DM5.Tb_InvGra.FieldCount-1 do
   begin
   if DM5.Tb_InvGra.Fields[y].FieldKind=fkCalculated then
      Continue;
   DM1.Query5.Params.CreateParam(ftString,DM5.Tb_InvGra.fields[y].FieldName,ptInput);
   end;
DM1.Query5.Params.CreateParam(ftString,'IGVALOR_TRANSP',ptInput);
if trim(DTEMIS.Text)<>'/  /' then
   DM1.Query5.Params.CreateParam(ftString,'IGDATAEMI',ptInput);

DM1.Query5.SQL.Add('Insert into INVGRA (');
mcinst:=' ';
for y:=0 to DM5.Tb_InvGra.FieldCount-1 do
   begin
   if (DM5.Tb_InvGra.Fields[y].FieldKind=fkCalculated) or
      (DM5.Tb_InvGra.Fields[y].FieldName='IGVALOR_TRANSP') or
      (DM5.Tb_InvGra.Fields[y].FieldName='IGDATAEMI') then
      Continue;
   DM1.Query5.SQL.Add(mcinst+DM5.Tb_InvGra.fields[y].FieldName);
   mcinst:=',';
   end;
DM1.Query5.SQL.Add(mcinst+'IGVALOR_TRANSP');
if trim(DTEMIS.Text)<>'/  /' then
   DM1.Query5.SQL.Add(mcinst+'IGDATAEMI');

DM1.Query5.SQL.Add(') values (');
mcinst:=' ';
for y:=0 to DM5.Tb_InvGra.FieldCount-1 do
   begin
   if (DM5.Tb_InvGra.Fields[y].FieldKind=fkCalculated) or
      (DM5.Tb_InvGra.Fields[y].FieldName='IGVALOR_TRANSP') or
      (DM5.Tb_InvGra.Fields[y].FieldName='IGDATAEMI') then
      Continue;

   DM1.Query5.SQL.Add(mcinst+':'+DM5.Tb_InvGra.fields[y].FieldName);
   mcinst:=',';
   end;
DM1.Query5.SQL.Add(mcinst+':IGVALOR_TRANSP');
if trim(DTEMIS.Text)<>'/  /' then
   DM1.Query5.SQL.Add(mcinst+':IGDATAEMI');


DM1.Query5.SQL.Add(')');


While not Qr_InvGra02.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   for y:=0 to DM5.Tb_InvGra.FieldCount-1 do
      begin
      if (DM5.Tb_InvGra.Fields[y].FieldKind=fkCalculated) or
         (DM5.Tb_InvGra.Fields[y].FieldName='IGVALOR_TRANSP') or
         (DM5.Tb_InvGra.Fields[y].FieldName='IGDATAEMI') then
          Continue;

      if Qr_InvGra02.FieldByName(DM5.Tb_InvGra.Fields[y].FieldName).IsNull then
         begin
         if Qr_InvGra02.FieldByName(DM5.Tb_InvGra.Fields[y].FieldName).DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
            DM1.Query5.ParamByName(DM5.Tb_InvGra.Fields[y].FieldName).AsFloat:=0
         else
            DM1.Query5.ParamByName(DM5.Tb_InvGra.Fields[y].FieldName).AsString:=' ';
         end
      else
         DM1.Query5.ParamByName(DM5.Tb_InvGra.Fields[y].FieldName).Value:=
         Qr_InvGra02.FieldByName(DM5.Tb_InvGra.Fields[y].FieldName).Value;
      end;
   DM1.Query5.ParamByName('IGVALOR_TRANSP').Value:=ValFloat(SALDO_TRANSP.Text);
   if trim(DTEMIS.Text)<>'/  /' then
      DM1.Query5.ParamByName('IGDATAEMI').AsDateTime:=StrToDate(DTEMIS.Text);
   DM1.Query5.ExecSQL;
   Qr_InvGra02.Next;
   end;
Frm_Agde.Free;
}
CANCELAR.Click;
end;

{
function TFrm_AjuInvGra.fLercadinv01: boolean;
begin
Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT '
                   +' ,max(IGVALOR_TRANSP) as VALOR_TRANSP '
                   +' ,max(IGDATAEMI) as IGDATAEMI '
                   +' ,sum( round(IGQTD*IGPRECO,2)) AS VALOR '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV ');
Qr_InvGra01.Open;

end;
}

procedure TFrm_AjuInvGra.DBGrid2ColExit(Sender: TObject);
begin

if (DBGrid2.SelectedField=Qr_InvGra02IGCODPRO) then
   begin
   if Qr_InvGra02.State in [dsInsert, DsEdit] then
      begin
      if not flqr2('PDNOME,PDUND,PDSIT','PD',
         'CADPRO','N','PDCODPRO',Qr_InvGra02IGCODPRO.AsString) then
         begin
         fMensagem('Produto Não Cadastrado.',0,['0'],0);
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
end;

procedure TFrm_AjuInvGra.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin

if Qr_InvGra02.State in [dsEdit, DsInsert] then
   begin
   if DBGrid2.SelectedField=Qr_InvGra02IGCODPRO then
      begin
      if DM1.Tb_PargerPPCOGRA.Value<>1 then
         begin
         if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
            begin
            if DM1.Tb_PargerPPCOGRA.Value=1 then
               Qr_InvGra02IGCODPRO.Value:=FSonumero(fChamaPro(2,'Frm_AjuInvGra',key))
            else
               Qr_InvGra02IGCODPRO.Value:=FSonumero(fChamaPro(0,'Frm_AjuInvGra',key));
            key:=#0;
            end;
         end;
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_AjuInvGra.ALTERARClick(Sender: TObject);
begin

if Qr_InvGra01IGNOMEINV.IsNull then
   begin
   fMensagem('Não ha registro selecionado!',0,['0'],0);
   exit;
   end;
fGerarOld(8);
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
bbGerarNovo.Enabled :=false;

DBGrid2.ReadOnly    :=False;
gb_detalhes.Enabled   :=true;
gb_produtos.Enabled   :=true;
DBNavigator1.Enabled:=False;
DBNavigator2.Enabled:=True;
DBGrid1.Enabled     :=False;
moper:=1;
end;

procedure TFrm_AjuInvGra.EXCLUIRClick(Sender: TObject);
var
minc:String;
begin

if Qr_InvGra01IGNOMEINV.IsNull then
   begin
   fMensagem('Não ha Registro Selecionado para Exclusão!',0,['0'],0);
   exit;
   end;
if fmensagem('Confirmação de Exclusão',0,['1','2'],2)<>mrYes then
   exit;
fGerarOld(9);   
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from INVGRA where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,420,'Frm_AjuInvGra','INVGRA');
   end;

fAbrirInventario;

{
Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT '
                   +'        ,sum(IGQTD*IGPRECO) AS VALOR '
                   +' ,max(IGVALOR_TRANSP) as VALOR_TRANSP '
                   +' ,max(IGDATAEMI) as IGDATAEMI '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV ');
Qr_InvGra01.Open;
}
Frm_Agde.Free;


CANCELAR.Click;

end;

procedure TFrm_AjuInvGra.Src_InvGra01DataChange(Sender: TObject;
  Field: TField);
begin
NOMEINV.Text         :=Qr_InvGra01IGNOMEINV.Value;
QTD.Text             :=FormatFloat(casqtd, Qr_InvGra01QUANT.Value);
VALOR.Text           :=FormatFloat(mcasas, Qr_InvGra01VALOR.Value);
SALDO_TRANSP.Text    :=FormatFloat(mcasas, Qr_InvGra01VALOR_TRANSP.Value);
SALDO_INVENTARIO.Text:=FormatFloat(mcasas, Qr_InvGra01Saldo_Inventario.Value);
DTEMIS.Text          :=FormatDateTime(fdt2, Qr_InvGra01IGDATAEMI.Value);

NUMITENS.Text:=FormatFloat(mcasas, Qr_InvGra01ITEM.Value);
Qr_InvGra02.Close;
Qr_InvGra02.SQL.Clear;
Qr_InvGra02.SQL.Add('Select IGCODEMP, '
                   +'       IGNOMEINV, '
                   +'       IGCODPRO, '
                   +'       IGPRECO, '
                   +'       IGQTD, '
                   +'       IGSIT, '
                   +'       IGCODTIP, '
                   +'       IGVALOR_TRANSP, '
                   +'       IGDATAEMI, '
                   +'       PDNOME, '
                   +'       PDUND '
                   +' from INVGRA,CADPRO where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP(+)=IGCODEMP and ')
                   +' PDCODPRO(+)=IGCODPRO '
                   +' and IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39)
                   +' order by PDNOME');
Qr_InvGra02.Open;
end;

procedure TFrm_AjuInvGra.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuInvGra.Qr_InvGra02CalcFields(DataSet: TDataSet);
begin
Qr_InvGra02total.Value:=Qr_InvGra02IGPRECO.Value*Qr_InvGra02IGQTD.Value;
Qr_InvGra02total.Value:=Arredonda(Qr_InvGra02total.Value, DM1.Tb_PargerPCASAS.AsInteger);
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_InvGra02IGCODPRO.AsString) then
   begin
   Qr_InvGra02und.Value    :=DM1.Query1.Fields[1].AsString;
   Qr_InvGra02nomepro.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjuInvGra.Qr_InvGra02BeforeEdit(DataSet: TDataSet);
begin
mOperItems:=0;

mprecoa:=Qr_InvGra02IGPRECO.Value;
mqtda  :=Qr_InvGra02IGQTD.Value;

end;

procedure TFrm_AjuInvGra.Qr_InvGra02BeforePost(DataSet: TDataSet);
var
query_conta: tquery;
begin
if (Qr_InvGra02IGCODPRO.IsNull) or (Qr_InvGra02nomepro.IsNull) then
   abort
else
   begin
   if (mcodpro_ant<>Qr_InvGra02IGCODPRO.AsFloat) then
      begin
      query_conta:=tquery.create(nil);
      query_conta.DatabaseName:=DM1.sg_ASSOC.DatabaseName;
      query_conta.sql.add('Select count(*) as qtdreg from INVGRA where IGCODEMP='+Inttostr(codemp)
                         +' and IGCODPRO='+fdeixanum(Qr_InvGra02IGCODPRO.AsString));
      try
         query_conta.Open;
         if query_conta.fieldbyname('qtdreg').AsInteger>0 then
            begin
            MessageDlg('Codigo ja cadastrado anteriormente!',mtWarning,[mbOk],0);
            Qr_InvGra02IGCODPRO.Value:=mcodpro_ant;
            Qr_InvGra02.Cancel;
            abort;
            exit;
            end;
     except on e : exception do
        begin
//        ex_erroSql_Novo(Query_conta,543,'SGE','CADVER');
        Qr_InvGra02.CANCEL;
        abort;
        exit;
        end;
        end;
     query_conta.close;
     freeandnil(query_conta);


     end;


   if (mprecoa<>0) or (mqtda<>0) then
      begin
      QTD.Text  :=FormatFloat(casqtd, ValFloat(QTD.Text)-mqtda);
      VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text)-(mqtda*mprecoa));
      mprecoa:=0;
      mqtda  :=0;
      end;



   end;
end;

procedure TFrm_AjuInvGra.Qr_InvGra02BeforeInsert(DataSet: TDataSet);
begin
mOperItems:=1;
end;

procedure TFrm_AjuInvGra.Qr_InvGra02AfterCancel(DataSet: TDataSet);
begin
mprecoa   :=0;
mqtda     :=0;
mOperItems:=0;
end;

procedure TFrm_AjuInvGra.Qr_InvGra02AfterPost(DataSet: TDataSet);
begin
if mOperItems=1 then
   NUMITENS.Text:=FormatFloat('#0',ValFloat(NUMITENS.Text)+1);
QTD.Text  :=FormatFloat(casqtd, ValFloat(QTD.Text)+Qr_InvGra02IGQTD.Value);
VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text)+(Qr_InvGra02IGQTD.Value*Qr_InvGra02IGPRECO.Value));
c(DataSet);
end;

procedure TFrm_AjuInvGra.Qr_InvGra02AfterDelete(DataSet: TDataSet);
begin
NUMITENS.Text:=FormatFloat('#0',ValFloat(NUMITENS.Text)-1);
c(DataSet);
end;

procedure TFrm_AjuInvGra.DBGrid2Exit(Sender: TObject);
begin
if Qr_InvGra02.State in [dsinsert,dsEdit] then
   begin
   if trim(Qr_InvGra02IGNOMEINV.AsString)=''  then
      Qr_InvGra02.Cancel
   else
      Qr_InvGra02.Post;
   end;
end;

procedure TFrm_AjuInvGra.NOMEPROChange(Sender: TObject);
begin
if (cb_filpro.Checked=True) and (trim(NOMEPRO.Text)<>'') then
  begin
  Qr_InvGra02.Locate('IGCODPRO',NOMEPRO.Text,[loPartialKey,loCaseInsensitive]);  
  end
else
  begin
  Qr_InvGra02.Locate('PDNOME',NOMEPRO.Text,[loPartialKey,loCaseInsensitive]);
  end;
end;

procedure TFrm_AjuInvGra.PERQTDExit(Sender: TObject);
begin
if ValFloat(PERQTD.Text)<0 then
   PERQTD.Text:='0';
PERQTD.Text:=FormatFloat(mcasas, ValFloat(PERQTD.Text));


end;

procedure TFrm_AjuInvGra.PERPUExit(Sender: TObject);
begin
if ValFloat(PERPU.Text)<0 then
   PERPU .Text:='0';
PERPU.Text:=FormatFloat(mcasas, ValFloat(PERPU.Text));

end;

procedure TFrm_AjuInvGra.PERQTDChange(Sender: TObject);
begin
if PERQTD.Modified then AplicQtd.Enabled:=true;
end;

procedure TFrm_AjuInvGra.PERPUChange(Sender: TObject);
begin
if PERPU.Modified then AplicPU.Enabled:=true;

end;

procedure TFrm_AjuInvGra.AplicQtdClick(Sender: TObject);
var
mNomeInv: String;
begin
if ValFloat(PERQTD.Text)=0 then
   exit;
mNomeInv:=Qr_InvGra01IGNOMEINV.AsString;

GRAVARClick(Self);

Qr_InvGra01.Locate('IGNOMEINV',mNomeInv,[]);

DM1.Query1.close;
DM1.Query1.SQL.Clear;
if (valfloat(PERQTD.Text)=100) and (cb_dimqtd.Checked) then
   begin
   DM1.Query1.SQL.add('Update INVGRA set IGQTD=0 WHERE IGQTD<>0 ');
   end
else if cb_dimqtd.Checked then
   begin
   DM1.Query1.SQL.add('Update INVGRA set IGQTD=IGQTD'+IIF(cb_dimqtd.Checked,'-','+')+'round(IGQTD*'+mudaVP(PERQTD.Text)+'/100)'
                     +' WHERE IGQTD<>0 ');

   end;
DM1.Query1.SQL.add(' and IGCODEMP=:CODEMP'
                  +' and IGNOMEINV=:NOMEINV ');
DM1.Query1.ParamByName('CODEMP').AsFloat  :=Qr_InvGra02IGCODEMP.AsFloat;
DM1.Query1.ParamByName('NOMEINV').AsString:=Qr_InvGra02IGNOMEINV.AsString;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


{
Qr_InvGra02.Close;
Qr_InvGra02.SQL.Clear;
Qr_InvGra02.SQL.Add('Select IGCODEMP, '
                   +'       IGNOMEINV, '
                   +'       IGCODPRO, '
                   +'       IGPRECO, '
                   +'       IGQTD, '
                   +'       IGSIT, '
                   +'       IGCODTIP, '
                   +'       IGVALOR_TRANSP, '
                   +'       IGDATAEMI, '
                   +'       PDNOME, '
                   +'       PDUND '
                   +' from INVGRA,CADPRO where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=IGCODEMP and ')
                   +' PDCODPRO=IGCODPRO '
                   +' and IGNOMEINV='+chr(39)+Qr_InvGra01IGNOMEINV.Value+chr(39)
                   +' order by PDNOME');


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
}
AplicQtd.Enabled:=False;
fReabreInventario(0);

end;

procedure TFrm_AjuInvGra.AplicPUClick(Sender: TObject);

var
mNomeInv: String;
begin
if ValFloat(PERPU.Text)=0 then
   exit;

mNomeInv:=Qr_InvGra01IGNOMEINV.AsString;
GRAVARClick(Self);

Qr_InvGra01.Locate('IGNOMEINV',mNomeInv,[]);

DM1.Query1.close;
DM1.Query1.SQL.Clear;
if (valfloat(PERPU.Text)=100) and (cb_dimPU.Checked) then
   begin
   DM1.Query1.SQL.add('Update INVGRA set IGPRECO=0 WHERE IGPRECO<>0 ');
   end
else // if cb_dimPU.Checked then
   begin
   DM1.Query1.SQL.add('Update INVGRA set IGPRECO=IGPRECO'+IIF(cb_dimPU.Checked,'-','+')+'round(IGPRECO*'+mudaVP(PERPU.Text)+'/100,2)'
                     +' WHERE IGPRECO<>0 ');

   end;
DM1.Query1.SQL.add(' and IGCODEMP=:CODEMP'
                  +' and IGNOMEINV=:NOMEINV ');
DM1.Query1.ParamByName('CODEMP').AsFloat  :=Qr_InvGra02IGCODEMP.AsFloat;
DM1.Query1.ParamByName('NOMEINV').AsString:=Qr_InvGra02IGNOMEINV.AsString;
try
   DM1.Query1.ExecSQL;
   dm1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   fdm1StartCommit;
except
   end;

AplicPU.Enabled:=False;
fReabreInventario(0);

end;

procedure TFrm_AjuInvGra.Qr_InvGra02AfterInsert(DataSet: TDataSet);
begin
    Qr_InvGra02IGCODEMP.VALUE := codemp;
    Qr_InvGra02IGNOMEINV.VALUE := Qr_InvGra01IGNOMEINV.AsString;
    mcodpro_ant:=0;

end;

procedure TFrm_AjuInvGra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AjuInvGra.SALDO_TRANSPExit(Sender: TObject);
begin
if ValFloat(SALDO_TRANSP.Text)<0 then
   SALDO_TRANSP.Text:='0';
SALDO_TRANSP.Text:=FormatFloat(mcasas, ValFloat(SALDO_TRANSP.Text));
SALDO_INVENTARIO.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text)+ValFloat(SALDO_TRANSP.Text));

end;

procedure TFrm_AjuInvGra.Qr_InvGra01CalcFields(DataSet: TDataSet);
begin
Qr_InvGra01Saldo_Inventario.Value:=Qr_InvGra01VALOR.Value+Qr_InvGra01VALOR_TRANSP.Value;

end;

procedure TFrm_AjuInvGra.DTEMISExit(Sender: TObject);
begin
if trim(DTEMIS.Text)<>'/  /' then
   begin
   try
      DTEMIS.Text:=FormatDateTime(fdt2, Strtodate(DTEMIS.Text));
   except
      fmensagem('Favor Digitar uma data Válida!',0,['0'],0);
      end;
   end;
end;


function tFrm_AjuInvGra.fReabreInventario(pTipo: Integer): Boolean;
var
mNomeInv: String;
begin
mNomeInv:=Qr_InvGra01IGNOMEINV.AsString;

Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT '
                   +' ,max(IGVALOR_TRANSP) as VALOR_TRANSP '
                   +' ,max(IGDATAEMI) as IGDATAEMI '
                   +' ,sum( round(IGQTD*IGPRECO,2)) AS VALOR '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV ');
Qr_InvGra01.Open;
Qr_InvGra01.Locate('IGNOMEINV',mNomeInv,[]);
PERQTD.Text:='';
PERPU.Text :='';

end;
procedure TFrm_AjuInvGra.bbGerarNovoClick(Sender: TObject);
begin
Application.createForm(TFrm_AjuInvGra_Gerar,Frm_AjuInvGra_Gerar);
Frm_AjuInvGra_Gerar.edt_nominv_origem.text:=Qr_InvGra01IGNOMEINV.AsString;
Frm_AjuInvGra_Gerar.edt_datainv_oriigem.text:=Formatdatetime(fdt2, qr_invgra01IGDATAEMI.asdatetime);
Frm_AjuInvGra_Gerar.mcomgrade :=false;

frm_AjuInvGra_Gerar.ShowModal;
freeandnil(frm_ajuinvgra_gerar);
fAbrirInventario;


end;

procedure TFrm_AjuInvGra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
if EstaoPressionadas([VK_CONTROL,VK_MENU,VK_F2]) then
   begin
   bbEstIgualInvClick(self);
   end;
}   
end;

function TFrm_AjuInvGra.fGerarOld(pTipo: Integer): Boolean;
var
mcondicao_old: string;
mChave_Old: real;
begin




mCondicao_old:=' where (IGNOMEINV='+Quotedstr(Qr_InvGra01IGNOMEINV.AsString)
                  +' and IGCODEMP='+IntToStr(codemp)
                  +') ';

mChave_Old:=fGerarTabelas_Old(pTipo //status
                  ,0 //codigo novo valor chave
                  ,'IGCODNOV' //nome do campo do novo valor (chave)
                  ,'IGDATHOR_EVE' // nome do campo data e hora do evento
                  ,'IGCODUSR' // nome do campo do usuario
                  ,'IGTIPEVE' // nome do campo de status
                  ,'INVGRA' // nome da tabela
                  ,mCondicao_old);

end;




procedure TFrm_AjuInvGra.c(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  Qr_InvGra01.Cancel;
  end;


end;

procedure TFrm_AjuInvGra.Qr_InvGra02AfterEdit(DataSet: TDataSet);
begin
  mcodpro_ant:=Qr_InvGra02IGCODPRO.AsFloat;

end;

procedure TFrm_AjuInvGra.bbRefresClick(Sender: TObject);
begin
fAbrirInventario;

end;

procedure TFrm_AjuInvGra.DBGrid2ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
label_info.Caption:='moveu '+formatdatetime(fdathor, now());
end;

procedure TFrm_AjuInvGra.bbEstIgualInvClick(Sender: TObject);
begin

Application.createform(TFrm_AjuInvGra_Ajustes, Frm_AjuInvGra_Ajustes);
Frm_AjuInvGra_Ajustes.mNomeInventario:=Qr_InvGra01IGNOMEINV.AsString;
Frm_AjuInvGra_Ajustes.ShowModal;
freeandnil(Frm_AjuInvGra_Ajustes);
end;

end.

