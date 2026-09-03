unit S_PcoLot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,db,dbtables,func,lerarq,S_DM1,S_Pro, Buttons,
  ExtCtrls, DBCtrls,S_DM4, Grids, DBGrids,S_PcoLotAP,S_Agde,func2,S_Impres,Rdprint,
  S_DM5,s_Stru, RxMemDS,s_lerarq_geral;

type
  TFrm_PcoLot = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CB_Pesq: TComboBox;
    Label2: TLabel;
    CAMPO: TMaskEdit;
    bbAtualizar: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    bbSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    EXCLUIR: TBitBtn;
    CONFIRMAR: TBitBtn;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBGrid_itens: TDBGrid;
    Qr_AL1: TQuery;
    Src_AL1: TDataSource;
    Src_AL2: TDataSource;
    Panel_Controle: TPanel;
    Qr_AL1AL1CODEMP: TFloatField;
    Qr_AL1AL1LOTE: TFloatField;
    Qr_AL1AL1DATA: TDateTimeField;
    Qr_AL1AL1DTPREV: TDateTimeField;
    Qr_AL1AL1DTCON: TDateTimeField;
    Qr_AL1AL1USRCON: TFloatField;
    Qr_AL1AL1HORCON: TStringField;
    Qr_AL1AL1PORC: TFloatField;
    Qr_AL1AL1TIPO: TFloatField;
    Qr_AL1AL1CODUSR: TFloatField;
    Qr_AL1AL1OBS: TStringField;
    Qr_AL1tipo: TStringField;
    gb_altpco: TGroupBox;
    CB_PCOVDA: TDBCheckBox;
    CB_PCOMAX: TDBCheckBox;
    CB_PCOFAB: TDBCheckBox;
    DBNavigator2: TDBNavigator;
    bbAdicionar: TBitBtn;
    bbItens: TBitBtn;
    U_AL1: TUpdateSQL;
    Qr_AL1AL1STATUS: TFloatField;
    CB_CONF: TCheckBox;
    IMPRIMIR: TBitBtn;
    Qr_AL1AL1LOTSEQ: TFloatField;
    Qr_AL1AL1PCOFAB: TFloatField;
    Qr_AL1AL1PCOVDA: TFloatField;
    Qr_AL1AL1PCOMAX: TFloatField;
    Qr_AL1AL1TIPOPCO: TFloatField;
    DBRG_Preco: TDBRadioGroup;
    Qr_AL1AL1MAXVDA: TFloatField;
    DBCB_MAXVDA: TDBCheckBox;
    Qr_AL1dtcon: TStringField;
    Panel1: TPanel;
    cb_mostrar: TCheckBox;
    bbPadroes: TBitBtn;
    RxQuery: TRxMemoryData;
    RxQueryAL2CODEMP: TIntegerField;
    RxQueryAL2LOTE: TIntegerField;
    RxQueryAL2ORDEM: TIntegerField;
    RxQueryAL2TIPALT: TIntegerField;
    RxQueryAL2PCOANT: TFloatField;
    RxQueryAL2PCOATU1: TFloatField;
    RxQueryAL2LOTSEQ: TIntegerField;
    RxQueryAL2DTUAPCO: TDateField;
    RxQueryAL2FABANT: TFloatField;
    RxQueryAL2FABATU: TFloatField;
    RxQueryAL2FABNOV: TFloatField;
    RxQueryAL2DTUAFAB: TDateField;
    RxQueryAL2PMCANT: TFloatField;
    RxQueryAL2PMCATU: TFloatField;
    RxQueryAL2PMCNOV: TFloatField;
    RxQueryAL2DTUAPMC: TDateField;
    RxQueryDATAATUAL: TDateField;
    RxQueryAL2NOMPRO: TStringField;
    RxQueryCODUSR: TIntegerField;
    RxQueryAL2PCONOV1: TFloatField;
    CB_PCOCUS: TDBCheckBox;
    Qr_AL1AL1TPCO01: TFloatField;
    Qr_AL1AL1TPCO02: TFloatField;
    Qr_AL1AL1TPCO03: TFloatField;
    Qr_AL1AL1PCOCUS: TFloatField;
    RxQueryAL2CUSANT: TFloatField;
    RxQueryAL2CUSATU: TFloatField;
    RxQueryAL2CUSNOV: TFloatField;
    RxQueryAL2DTUACUS: TDateField;
    RxQueryAL2CODPRO: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_AL1CalcFields(DataSet: TDataSet);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_AL1DataChange(Sender: TObject; Field: TField);
    procedure INCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure bbItensClick(Sender: TObject);
    procedure Qr_AL1AfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GRAVARClick(Sender: TObject);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure bbAdicionarClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure CB_PesqExit(Sender: TObject);
    procedure CAMPOExit(Sender: TObject);
    procedure CONFIRMARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tb_AL2CalcFields(DataSet: TDataSet);
    procedure cb_mostrarClick(Sender: TObject);
    procedure bbPadroesClick(Sender: TObject);
    procedure DBGrid_itensExit(Sender: TObject);
    procedure RxQueryBeforePost(DataSet: TDataSet);
    procedure RxQueryAfterInsert(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    mChave_ir: Integer;
    function fAtualizarAl2(pTipo: Integer): Boolean;
    function fAtualizaPadrao(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_pcolot: tFrm_Impres;
  end;

var
  Frm_PcoLot     : TFrm_PcoLot;
  moper          : Integer;
  mTabTmp        : String;
  mLoteAtivo     : Real;
  mAtualizaAl2   : boolean=true;
  mCalcFieldsAl2 : boolean=true;
  mMostrardados  : Boolean=false;
implementation

uses S_DM2, func_excecoes;

{$R *.dfm}

procedure TFrm_PcoLot.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PcoLot.FormCreate(Sender: TObject);
begin
Panel_Controle.Enabled:=false;
CB_Pesq.ItemIndex:=0;
Qr_AL1AL1PORC.DisplayFormat:=mcasas;
RxQueryAL2PCOATU1.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2PCONOV1.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2FABATU.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2FABNOV.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2PMCATU.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2PMCNOV.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2CUSATU.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
RxQueryAL2CUSNOV.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM4.Tb_AL2.Close;
DM4.Tb_AL2.ParamByName('CODEMP').AsFloat:=999999;
DM4.Tb_AL2.ParamByName('LOTE').AsFloat  :=999999;
DM4.Tb_AL2.Open;
DM4.Tb_AL1.Close;
DM4.Tb_AL1.ParamByName('CODEMP').AsFloat :=999999;
DM4.Tb_AL1.ParamByName('LOTE').AsFloat   :=999999;
DM4.Tb_AL1.ParamByName('DTPREV').AsString:='%';
DM4.Tb_AL1.Open;
CAMPO.Text:=FormatDatetime(fdt2, date);
CB_Pesq.ItemIndex:=1;
fAtualizaPadrao(0);
if DM1.Tb_PargerPDQPCOP.AsInteger=2 then
  begin
  DBRG_Preco.Items.Clear;
  DBRG_Preco.Items.Add('Preço 1');
  DBRG_Preco.Items.Add('Preço 2');
  DBRG_Preco.Values.Clear;
  DBRG_Preco.Values.Add('1');
  DBRG_Preco.Values.Add('2');
  end
else if DM1.Tb_PargerPDQPCOP.AsInteger=1 then
  begin
  DBRG_Preco.Items.Clear;
  DBRG_Preco.Items.Add('Preço 1');
  DBRG_Preco.Values.Clear;
  DBRG_Preco.Values.Add('1');
  end;
bbAtualizar.Click;
end;

procedure TFrm_PcoLot.Qr_AL1CalcFields(DataSet: TDataSet);
begin
if Qr_AL1AL1TIPO.Value=1 then
  Qr_AL1tipo.Value:='Diminuir'
else
  Qr_AL1tipo.Value:='Aumentar';
if (Qr_AL1AL1DTCON.IsNull) or (Qr_AL1AL1DTCON.Value<pdatanula) then
  Qr_AL1dtcon.Value:='/  /'
else
  Qr_AL1dtcon.Value:=FormatDatetime(fdt2, Qr_AL1AL1DTCON.Value);
end;

procedure TFrm_PcoLot.bbAtualizarClick(Sender: TObject);
begin
Qr_AL1.close;
Qr_AL1.SQL.Clear;
Qr_AL1.SQL.Add('Select * from CADAL1 where AL1STATUS<>9 '
              +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and AL1CODEMP=0'+IntToStr(codemp)));
if not CB_CONF.Checked then
  Qr_AL1.SQL.Add(' and AL1STATUS=0 ');
if not (Trim(CAMPO.Text)='') and not (Trim(CAMPO.Text)='/  /') then
  begin
  if CB_Pesq.ItemIndex=0 then
    Qr_AL1.SQL.add(' and AL1LOTE=0'+Trim(CAMPO.Text))
  else if CB_Pesq.ItemIndex=1 then
    Qr_AL1.SQL.Add(' and AL1DTPREV='+chr(39)+FormatDateTime(fdt, StrToDate(CAMPO.Text))+chr(39));
  end;
Qr_AL1.Open;
INCLUIR.Enabled     :=True;
ALTERAR.Enabled     :=True;
EXCLUIR.Enabled     :=True;
GRAVAR.Enabled      :=False;
CONFIRMAR.Enabled   :=True;
CANCELAR.Enabled    :=True;
IMPRIMIR.Enabled    :=True;
end;

procedure TFrm_PcoLot.Src_AL1DataChange(Sender: TObject; Field: TField);
begin
if (mLoteAtivo<>Qr_AL1AL1LOTE.Value) and (mAtualizaAl2) and (mMostrardados) then
  fAtualizarAl2(0);
end;

procedure TFrm_PcoLot.INCLUIRClick(Sender: TObject);
begin
moper:=0;
INCLUIR.Enabled       :=False;
ALTERAR.Enabled       :=False;
EXCLUIR.Enabled       :=False;
GRAVAR.Enabled        :=True;
CONFIRMAR.Enabled     :=False;
IMPRIMIR.Enabled      :=False;
DBNavigator1.Enabled  :=False;
DBGrid1.Enabled       :=False;
bbAtualizar.Enabled   :=False;
GroupBox4.Enabled     :=true;
mMostrardados         :=true;
mAtualizaAl2          :=true;
Qr_AL1.Insert;
fAtualizaPadrao(1);
DBEdit2.SetFocus;
end;

procedure TFrm_PcoLot.CANCELARClick(Sender: TObject);
begin
Qr_AL1.Cancel;
RxQuery.Close;
INCLUIR.Enabled       :=True;
ALTERAR.Enabled       :=True;
EXCLUIR.Enabled       :=True;
GRAVAR.Enabled        :=False;
CONFIRMAR.Enabled     :=True;
IMPRIMIR.Enabled      :=True;
Panel_Controle.Enabled:=false;
GroupBox4.Enabled     :=False;
DBNavigator1.Enabled:=True;
DBGrid1.Enabled     :=True;
bbAtualizar.Enabled :=True;
bbAtualizar.Click;
mMostrardados:=cb_mostrar.Checked;

end;

procedure TFrm_PcoLot.bbItensClick(Sender: TObject);
begin
if not (CB_PCOVDA.Checked) and
   not (CB_PCOFAB.Checked) and
   not (CB_PCOMAX.Checked) and
   not (CB_PCOCUS.Checked) then
  begin
  verteclado(0);
  FMensagem('Pelo menos um tipo de preço tem que ser selecionado!',0,['0'],0);
  CB_PCOVDA.SetFocus;
  exit;
  end;
Panel_Controle.Enabled:=true;
if CB_PCOVDA.Checked then
  DBGrid_itens.Columns[3].ReadOnly:=false
else
  DBGrid_itens.Columns[3].ReadOnly:=true;
if CB_PCOFAB.Checked then
  DBGrid_itens.Columns[5].ReadOnly:=false
else
  DBGrid_itens.Columns[5].ReadOnly:=true;
if CB_PCOMAX.Checked then
  DBGrid_itens.Columns[7].ReadOnly:=false
else
  DBGrid_itens.Columns[7].ReadOnly:=true;
if CB_PCOCUS.Checked then
  DBGrid_itens.Columns[9].ReadOnly:=false
else
  DBGrid_itens.Columns[9].ReadOnly:=true;

GroupBox4.Enabled:=false;
DBGrid_itens.SetFocus;
end;

procedure TFrm_PcoLot.Qr_AL1AfterInsert(DataSet: TDataSet);
begin
Qr_AL1AL1DATA.Value   :=date;
Qr_AL1AL1DTPREV.Value :=date;
Qr_AL1AL1CODEMP.Value :=codemp;
Qr_AL1AL1CODUSR.Value :=codusr;
Qr_AL1AL1PCOVDA.Value :=0;
Qr_AL1AL1PCOFAB.Value :=1;
Qr_AL1AL1PCOCUS.Value :=1;
Qr_AL1AL1PCOMAX.Value :=1;
Qr_AL1AL1TIPOPCO.Value:=1;
Qr_AL1AL1TIPO.Value   :=0;
Qr_AL1AL1MAXVDA.Value :=0;
Qr_AL1AL1LOTE.Value   :=999;
end;

procedure TFrm_PcoLot.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if GRAVAR.Enabled then
  begin
  verteclado(0);
  Case FMensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2','3'],0) of
    mrYes: GRAVAR.Click;
    mrNo : CANCELAR.Click;
  else
    CanClose:=False;
    end;
  end;
end;

procedure TFrm_PcoLot.GRAVARClick(Sender: TObject);
VAR
x: Integer;
begin
if RxQuery.RecordCount<1 then
  begin
  verteclado(0);
  FMensagem('Nada a ser gravado!',0,['0'],0);
  exit;
  end;
mAtualizaAl2        :=false;
mCalcFieldsAl2      :=false;
GroupBox4.Enabled:=false;
verteclado(0);
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
if moper=1 then
  begin
  DM4.Tb_AL1.Close;
  if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
    DM4.Tb_AL1.ParamByName('CODEMP').AsString := '%'
  else
    DM4.Tb_AL1.ParamByName('CODEMP').AsFloat := Qr_AL1AL1CODEMP.Value;
  DM4.Tb_AL1.ParamByName('CODEMP').AsFloat := Qr_AL1AL1CODEMP.Value;
  DM4.Tb_AL1.ParamByName('LOTE').AsFloat   := Qr_AL1AL1LOTE.Value;
  DM4.Tb_AL1.ParamByName('DTPREV').AsString:= '%';
  DM4.Tb_AL1.Open;
  DM4.Tb_AL1.Edit;
  DM4.Tb_AL1AL1STATUS.Value:=Qr_AL1AL1STATUS.Value;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Delete from CADAL2 where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' AL2CODEMP=0'+Qr_AL1AL1CODEMP.AsString+' and ')
                    +' AL2LOTE=0'+Qr_AL1AL1LOTE.AsString);
  DM1.Query1.ExecSQL;
  end
else
  begin
  DM4.Tb_AL1.Append;
  DM4.Tb_AL1AL1STATUS.Value:=0;
  end;
DM4.Tb_AL1AL1CODEMP.Value  :=codemp;
DM4.Tb_AL1AL1DATA.Value    :=Qr_AL1AL1DATA.Value;
DM4.Tb_AL1AL1DTPREV.Value  :=Qr_AL1AL1DTPREV.Value;
DM4.Tb_AL1AL1DTCON.Value   :=Qr_AL1AL1DTCON.Value;
DM4.Tb_AL1AL1USRCON.Value  :=Qr_AL1AL1USRCON.Value;
DM4.Tb_AL1AL1HORCON.Value  :=Qr_AL1AL1HORCON.Value;
DM4.Tb_AL1AL1PCOVDA.Value  :=Qr_AL1AL1PCOVDA.Value;
DM4.Tb_AL1AL1PCOCUS.Value  :=Qr_AL1AL1PCOCUS.Value;
DM4.Tb_AL1AL1PCOFAB.Value  :=Qr_AL1AL1PCOFAB.Value;
DM4.Tb_AL1AL1PCOMAX.Value  :=Qr_AL1AL1PCOMAX.Value;
DM4.Tb_AL1AL1TIPO.Value    :=Qr_AL1AL1TIPO.Value;
DM4.Tb_AL1AL1TIPOPCO.Value :=Qr_AL1AL1TIPOPCO.Value;
DM4.Tb_AL1AL1PORC.Value    :=Qr_AL1AL1PORC.Value;
DM4.Tb_AL1AL1CODUSR.Value  :=Qr_AL1AL1CODUSR.Value;
DM4.Tb_AL1AL1OBS.Value     :=Qr_AL1AL1OBS.Value;
DM4.Tb_AL1.Post;
mChave_ir:=DM4.Tb_AL1AL1LOTE.asinteger;

x:=0;
RxQuery.First;
while not RxQuery.Eof do
  begin
  DM4.Tb_AL2.Insert;
  for x:=0 to RxQuery.FieldCount -1 do
    begin
    if RxQuery.Fields[x].FieldKind=fkCalculated then
      Continue;
    if (RxQuery.Fields[x].FieldName='AL2LOTE') then
      begin
      DM4.Tb_AL2AL2LOTE.AsInteger:=DM4.Tb_AL1AL1LOTE.AsInteger;
      Continue;
      end;
    if (RxQuery.Fields[x].FieldName='DATAATUAL') or
       (RxQuery.Fields[x].FieldName='CODUSR') or
       (RxQuery.Fields[x].FieldName='AL2NOMPRO') then
      Continue;
    if RxQuery.Fields[x].DataType=ftfloat then
       begin
       DM4.Tb_AL2.FieldByName(RxQuery.Fields[x].FieldName).AsFloat:=RxQuery.FieldByName(RxQuery.Fields[x].FieldName).AsFloat;
       end
    else
       DM4.Tb_AL2.FieldByName(RxQuery.Fields[x].FieldName).Value:=RxQuery.FieldByName(RxQuery.Fields[x].FieldName).Value;
    end;
  DM4.Tb_AL2.Post;
  RxQuery.Next;
  end;
RxQuery.Close;
freeandnil(Frm_Agde);

CANCELARClick(Self);
mAtualizaAl2  :=true;


if mChave_ir>0 then
   begin
   qr_AL1.Locate('AL1LOTE',mchave_ir,[]);
   mChave_ir:=0;
   end;
mCalcFieldsAl2:=true;

end;

procedure TFrm_PcoLot.DBGrid_itensColExit(Sender: TObject);
begin
if (DBGrid_itens.SelectedField=RxQueryAL2CODPRO) then
  begin
  if RxQuery.State in [dsInsert, DsEdit] then
    begin
    if Qr_AL1AL1TIPOPCO.Value=3 then
      mcinst:='PDPRECO3 AS PCOVDA, PDPRECOA3 AS PCOANT, PDDTUATP3 AS DTALT, '
            +'PDPCOFAB AS PCOFAB, PDPRECOC AS PCOCUS, '
            +'PDPMC03  AS PCOMAX,PDNOME '
    else if Qr_AL1AL1TIPOPCO.Value=2 then
      mcinst:='PDPRECO2 AS PCOVDA, PDPRECOA2 AS PCOANT, PDDTUATP2 AS DTALT, '
            +'PDPCOFAB AS PCOFAB, PDPRECOC AS PCOCUS, '
            +'PDPMC02  AS PCOMAX,PDNOME '
    else
      mcinst:='PDPRECO1 AS PCOVDA, PDPRECOA1 AS PCOANT, PDDTUATP1 AS DTALT, '
            +'PDPCOFAB AS PCOFAB, PDPRECOC AS PCOCUS, '
            +'PDPMC  AS PCOMAX,PDNOME ';
    if flqr1(mcinst,'PD',
      'CADPRO','N','PDCODPRO',RxQueryAL2CODPRO.AsString) then
      begin
      RxQueryAL2TIPALT.Value :=1;
      RxQueryAL2NOMPRO.Value :=DM1.Query1.FieldbyName('PDNOME').AsString;
      RxQueryAL2PCOATU1.Value:=DM1.Query1.FieldbyName('PCOVDA').AsFloat;
      RxQueryAL2FABATU.Value :=DM1.Query1.FieldbyName('PCOFAB').AsFloat;
      RxQueryAL2CUSATU.Value :=DM1.Query1.FieldbyName('PCOCUS').AsFloat;
      RxQueryAL2PMCATU.Value :=DM1.Query1.FieldbyName('PCOMAX').AsFloat;
      RxQueryAL2FABNOV.Value :=0;
      RxQueryAL2CUSNOV.Value :=0;
      RxQueryAL2PMCNOV.Value :=0;
      RxQueryAL2PCOANT.Value :=DM1.Query1.FieldbyName('PCOANT').AsFloat;
      RxQueryAL2CUSANT.Value :=DM1.Query1.FieldbyName('PCOCUS').AsFloat;
      RxQueryAL2FABANT.Value :=DM1.Query1.FieldbyName('PCOFAB').AsFloat;
      RxQueryAL2PMCANT.Value :=DM1.Query1.FieldbyName('PCOMAX').AsFloat;
      if (Qr_AL1AL1PORC.Value>0) and (Qr_AL1AL1PCOVDA.Value=0) then
        begin
        RxQueryAL2DTUAPCO.Value  :=DM1.Query1.FieldbyName('DTALT').AsDateTime;
        if Qr_AL1AL1TIPO.Value=1 then
          RxQueryAL2PCONOV1.AsFloat:=RxQueryAL2PCOATU1.AsFloat-(RxQueryAL2PCOATU1.AsFloat*Qr_AL1AL1PORC.AsFloat/100)
        else
          RxQueryAL2PCONOV1.AsFloat:=RxQueryAL2PCOATU1.AsFloat+(RxQueryAL2PCOATU1.AsFloat*Qr_AL1AL1PORC.AsFloat/100);
        end;

      if (Qr_AL1AL1PORC.Value>0) and (Qr_AL1AL1PCOFAB.Value=0) then
        begin
        RxQueryAL2DTUAFAB.Value  :=DM1.Query1.FieldbyName('DTALT').AsDateTime;
        if Qr_AL1AL1TIPO.Value=1 then
          RxQueryAL2FABNOV.Value:=RxQueryAL2FABNOV.Value-
                                 (RxQueryAL2FABNOV.Value*Qr_AL1AL1PORC.Value/100)
        else
          RxQueryAL2FABNOV.Value:=RxQueryAL2FABNOV.Value+
                                 (RxQueryAL2FABNOV.Value*Qr_AL1AL1PORC.Value/100);
        end;

      if (Qr_AL1AL1PORC.Value>0) and (Qr_AL1AL1PCOCUS.Value=0) then
        begin
        RxQueryAL2DTUACUS.Value  :=DM1.Query1.FieldbyName('DTALT').AsDateTime;
        if Qr_AL1AL1TIPO.Value=1 then
          RxQueryAL2CUSNOV.Value:=RxQueryAL2CUSNOV.Value-
                                 (RxQueryAL2CUSNOV.Value*Qr_AL1AL1PORC.Value/100)
        else
          RxQueryAL2CUSNOV.Value:=RxQueryAL2CUSNOV.Value+
                                 (RxQueryAL2CUSNOV.Value*Qr_AL1AL1PORC.Value/100);
        end;


      if (Qr_AL1AL1PORC.Value>0) and (Qr_AL1AL1PCOMAX.Value=0) then
        begin
        RxQueryAL2DTUAPMC.Value  :=DM1.Query1.FieldbyName('DTALT').AsDateTime;
        if DBCB_MAXVDA.Checked then
          begin
          if Qr_AL1AL1TIPO.Value=1 then
            RxQueryAL2PMCNOV.Value:=RxQueryAL2PCOATU1.Value-
                                   (RxQueryAL2PCOATU1.Value*Qr_AL1AL1PORC.Value/100)
          else
            RxQueryAL2PMCNOV.Value:=RxQueryAL2PCOATU1.Value+
                                   (RxQueryAL2PCOATU1.Value*Qr_AL1AL1PORC.Value/100)
          end
        else
          begin
          if Qr_AL1AL1TIPO.Value=1 then
            RxQueryAL2PMCNOV.Value:=RxQueryAL2PMCNOV.Value-
                                   (RxQueryAL2PMCNOV.Value*Qr_AL1AL1PORC.Value/100)
          else
            RxQueryAL2PMCNOV.Value:=RxQueryAL2PMCNOV.Value+
                                   (RxQueryAL2PMCNOV.Value*Qr_AL1AL1PORC.Value/100)
          end;
        end;
      end
    else
      begin
      verteclado(0);
      FMensagem('Produto Não Cadastrado.',0,['0'],0);
      RxQueryAL2CODPRO.Value:=0;
      abort;
      end;
    end;
  end;
end;

procedure TFrm_PcoLot.DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
begin
if not GRAVAR.Enabled then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key in ['0'..'9']) then
    key:=#0;
  end;
if RxQuery.State in [dsEdit, DsInsert] then
  begin
  if DBGrid_itens.SelectedField=RxQueryAL2CODPRO then
    begin
    if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      RxQueryAL2CODPRO.AsFloat:=valfloat(fChamaPro(0,'Frm_PcoLot',key));
      key:=#0;
      end;
    end;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_PcoLot.bbAdicionarClick(Sender: TObject);
var
minc: String;
begin
Application.CreateForm(TFrm_PcoLotAP, Frm_PcoLotAp);
Frm_PcoLotAP.GB_AJUSTAR.Visible:=false;
Frm_PcoLotAp.ShowModal;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
if mtpoper=1 then
  begin
  if not RxQuery.Active then
    begin
    RxQuery.Open;
    end;
   end
else if mtpoper=2 then
   RxQuery.Close;
if (mtpoper=1) or (mtpoper=2) then
  begin
  // novo adquirir mercadorias
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' Select ' );
  DM1.Query2.SQL.Add(chr(39)+IntToStr(codemp)+chr(39)+' AS AL2CODEMP ');
  DM1.Query2.SQL.Add(','+chr(39)+IntToStr(codemp)+chr(39)+' AS AL2LOTE ');
  DM1.Query2.SQL.Add(','+chr(39)+IntToStr(codemp)+chr(39)+' AS AL2ORDEM ');
  DM1.Query2.SQL.Add(','+' 0 AS AL2TIPALT ');
  DM1.Query2.SQL.Add(', PDPRECOA1 AS AL2PCOANT');
//  DM1.Query2.SQL.Add(', PDPRECO1 AS AL2PCOATU1');
  DM1.Query2.SQL.Add(', PDPRECO'+Qr_AL1AL1TIPOPCO.AsString+' AS AL2PCOATU1');
  DM1.Query2.SQL.Add(',PDPRECO'+Qr_AL1AL1TIPOPCO.AsString+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPRECO'+Qr_AL1AL1TIPOPCO.AsString+'*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2PCONOV1');
{  if Qr_AL1AL1PCOVDA.Value=0 then
    begin
    DM1.Query2.SQL.Add(',PDPRECO1'+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPRECO1*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2PCONOV1');
    end
  else
    DM1.Query2.SQL.add(', 0 AS AL2PCONOV1 ');}
  DM1.Query2.SQL.add(', 0 AS AL2LOTSEQ ');
  DM1.Query2.SQL.add(', PDCODPRO AS AL2CODPRO ');
  DM1.Query2.SQL.add(', PDDTUATP1 AS AL2DTUAPCO ');
  DM1.Query2.SQL.Add(', PDPCOFAB AS AL2FABANT ');
  DM1.Query2.SQL.Add(', PDPCOFAB AS AL2FABATU ');
  if Qr_AL1AL1PCOFAB.Value=0 then
    begin
    DM1.Query2.SQL.Add(',PDPCOFAB'+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPCOFAB*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2FABNOV');
    end
  else
    DM1.Query2.SQL.add(', 0 AS AL2FABNOV ');
  DM1.Query2.SQL.add(', PDDTUATP1 AS AL2DTUAFAB ');
  DM1.Query2.SQL.Add(', PDPRECOC AS AL2CUSANT ');
  DM1.Query2.SQL.Add(', PDPRECOC AS AL2CUSATU ');
  if Qr_AL1AL1PCOCUS.Value=0 then
    begin
    DM1.Query2.SQL.Add(',PDPRECOC'+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPRECOC*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2CUSNOV');
    end
  else
    DM1.Query2.SQL.add(', 0 AS AL2CUSNOV ');
  DM1.Query2.SQL.add(', PDDTUATP1 AS AL2DTUACUS ');
  DM1.Query2.SQL.Add(', PDPMC AS AL2PMCANT ');
  DM1.Query2.SQL.Add(', PDPMC AS AL2PMCATU ');
  if Qr_AL1AL1PCOMAX.Value=0 then
    begin
    if DBCB_MAXVDA.Checked then
      DM1.Query2.SQL.Add(',PDPRECO'+Qr_AL1AL1TIPOPCO.AsString+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPRECO'+Qr_AL1AL1TIPOPCO.AsString+'*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2PMCNOV')
    else
      DM1.Query2.SQL.Add(',PDPMC'+iif(Qr_AL1AL1TIPO.Value=1,'-','+')
                  +'  (PDPMC*'+mudaVP(Qr_AL1AL1PORC.AsString)+'/100)   as AL2PMCNOV');
    end
  else
    DM1.Query2.SQL.add(', 0 AS AL2PMCNOV ');
  DM1.Query2.SQL.add(', PDDTUATP1 AS AL2DTUAPMC ');
  DM1.Query2.SQL.Add(','+chr(39)+FormatDatetime('mm/dd/yyyy',date)+chr(39));
  DM1.Query2.SQL.add(', PDNOME AS AL2NOMPRO ');
  DM1.Query2.SQL.add(','+Inttostr(codusr)+' as CODUSR ');
  DM1.Query2.SQL.Add(' from CADPRO ');
  minc:=' where ';
  if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
    begin
    DM1.Query2.SQL.Add(minc+' PDCODEMP=0'+IntToStr(codemp));
    minc:=' and ';
    end;
  DM1.Query2.SQL.Add(minc+' PDSTATUS<>9 ');
  mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codfor,Frm_PcoLotAP.OMITIR_FOR);
  if trim(mcinst2)<>'' then
    DM1.Query2.SQL.Add(' and  PDCODFOR '+mcinst2);
  mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codgru,Frm_PcoLotAP.OMITIR_GRU);
  if trim(mcinst2)<>'' then
    DM1.Query2.SQL.Add(' and  PDCODGRU '+mcinst2);
  mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codram,Frm_PcoLotAP.OMITIR_RAM);
  if trim(mcinst2)<>'' then
    DM1.Query2.SQL.Add(' and  PDCODRAM '+mcinst2);
  mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codcon,Frm_PcoLotAP.OMITIR_CON);
  if trim(mcinst2)<>'' then
    DM1.Query2.SQL.Add(' and  PDCODCON '+mcinst2);
  mcinst2:=fItensListBox(0,Frm_PcoLotAP.lbx_codtip,Frm_PcoLotAP.OMITIR_TPRO);
  if trim(mcinst2)<>'' then
    DM1.Query2.SQL.Add(' and  PDCODTIP '+mcinst2);
  if trim(Frm_PcoLotAP.edt_nompro.Text)<>'' then
    begin
    DM1.Query2.SQL.Add(' and  PDNOME like '+chr(39)+Frm_PcoLotAP.edt_nompro.Text+'%'+chr(39));
    end;
  if trim(Frm_PcoLotAP.edt_marca.Text)<>'' then
    begin
    DM1.Query2.SQL.Add(' and  PDMARCA like '+chr(39)+Frm_PcoLotAP.edt_marca.Text+'%'+chr(39));
    end;
  DM1.Query2.Open;
  DM1.Query2.First;
  while not DM1.Query2.Eof do
    begin
    RxQuery.Append;
    RxQueryAL2CODEMP.AsInteger  :=DM1.Query2.FieldByName('AL2CODEMP').AsInteger;
    RxQueryAL2LOTE.AsInteger    :=DM1.Query2.FieldByName('AL2LOTE').AsInteger;
    RxQueryAL2ORDEM.AsInteger   :=DM1.Query2.FieldByName('AL2ORDEM').AsInteger;
    RxQueryAL2TIPALT.AsInteger  :=DM1.Query2.FieldByName('AL2TIPALT').AsInteger;
    RxQueryAL2PCOANT.AsFloat    :=DM1.Query2.FieldByName('AL2PCOANT').AsFloat;
    RxQueryAL2PCOATU1.AsFloat   :=DM1.Query2.FieldByName('AL2PCOATU1').AsFloat;
    RxQueryAL2PCONOV1.AsFloat   :=DM1.Query2.FieldByName('AL2PCONOV1').AsFloat;
    RxQueryAL2LOTSEQ.AsInteger  :=DM1.Query2.FieldByName('AL2LOTSEQ').AsInteger;
    RxQueryAL2CODPRO.AsFloat    :=DM1.Query2.FieldByName('AL2CODPRO').AsFloat;
    RxQueryAL2DTUAPCO.AsDateTime:=DM1.Query2.FieldByName('AL2DTUAPCO').AsDateTime;
    RxQueryAL2FABANT.AsFloat    :=DM1.Query2.FieldByName('AL2FABANT').AsFloat;
    RxQueryAL2FABATU.AsFloat    :=DM1.Query2.FieldByName('AL2FABATU').AsFloat;
    RxQueryAL2FABNOV.AsFloat    :=DM1.Query2.FieldByName('AL2FABNOV').AsFloat;
    RxQueryAL2DTUAFAB.AsFloat   :=DM1.Query2.FieldByName('AL2DTUAFAB').AsFloat;
    RxQueryAL2CUSANT.AsFloat    :=DM1.Query2.FieldByName('AL2CUSANT').AsFloat;
    RxQueryAL2CUSATU.AsFloat    :=DM1.Query2.FieldByName('AL2CUSATU').AsFloat;
    RxQueryAL2CUSNOV.AsFloat    :=DM1.Query2.FieldByName('AL2CUSNOV').AsFloat;
    RxQueryAL2DTUACUS.AsFloat   :=DM1.Query2.FieldByName('AL2DTUACUS').AsFloat;
    RxQueryAL2PMCANT.AsFloat    :=DM1.Query2.FieldByName('AL2PMCANT').AsFloat;
    RxQueryAL2PMCATU.AsFloat    :=DM1.Query2.FieldByName('AL2PMCATU').AsFloat;
    RxQueryAL2PMCNOV.AsFloat    :=DM1.Query2.FieldByName('AL2PMCNOV').AsFloat;
    RxQueryAL2DTUAPMC.AsFloat   :=DM1.Query2.FieldByName('AL2DTUAPMC').AsFloat;
    flqr1('*','PD', 'CADPRO','N','PDCODPRO',DM1.Query2.FieldByName('AL2CODPRO').AsString);
    RxQueryAL2NOMPRO.AsString   :=DM1.Query1.FieldByName('PDNOME').AsString;
    RxQuery.Post;
    DM1.Query2.Next;
    end;
  end;
Frm_PcoLotAP.Free;
Frm_PcoLotAP:=nil;
Frm_Agde.Free;
Frm_Agde:=nil;
end;

procedure TFrm_PcoLot.ALTERARClick(Sender: TObject);
begin
if Qr_AL1AL1CODEMP.IsNull then
  begin
  verteclado(0);
  FMensagem('Não ha registro selecionado!',0,['0'],0);
  exit;
  end;
if Qr_AL1AL1STATUS.Value>0 then
  begin
  verteclado(0);
  FMensagem('Este Registro não pode ser alterado!',0,['0'],0);
  exit;
  end;
mMostrardados       :=true;
fAtualizarAl2(0);
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
CONFIRMAR.Enabled   :=False;
IMPRIMIR.Enabled    :=False;
GroupBox4.Enabled   :=true;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
bbAtualizar.Enabled :=False;
Qr_AL1.Edit;
moper:=1;
DBEdit2.SetFocus;
end;

procedure TFrm_PcoLot.CB_PesqExit(Sender: TObject);
begin
if CB_Pesq.ItemIndex=0 then
  begin
  CAMPO.EditMask:='';
  CAMPO.Text:='';
  end
else if CB_Pesq.ItemIndex=1 then
  begin
  CAMPO.EditMask:='!99/99/9999;1 ';
  CAMPO.Text:=FormatDatetime(fdt2, date);
  end;
end;

procedure TFrm_PcoLot.CAMPOExit(Sender: TObject);
begin
if CB_Pesq.ItemIndex=1 then
  begin
  try
    CAMPO.Text:=FormatDateTime(fdt2, StrtoDate(CAMPO.Text));
  except
    verteclado(0);
    FMensagem('Data Invalida!',0,['0'],0);
    CAMPO.SetFocus;
    exit;
    end;
  end
else if (trim(CAMPO.Text)<>'') and (Trim(CAMPO.Text)<>'/  /') then
  begin
  try
    CAMPO.Text:=FloatToStr(valfloat(CAMPO.Text));
  except
    verteclado(0);
    FMensagem('Valor Inválido!',0,['0'],0);
    CAMPO.SetFocus;
    exit;
    end;
  end;
end;

procedure TFrm_PcoLot.CONFIRMARClick(Sender: TObject);
var
minc: String;
begin
if Qr_AL1AL1LOTE.IsNull then
  begin
  verteclado(0);
  FMensagem('Favor Selecionar um Lote Valido!',0,['0'],0);
  exit;
  end;
if Qr_AL1AL1STATUS.Value>0 then
  begin
  verteclado(0);
  FMensagem('Este lote ja foi confirmado anteriormente!',0,['0'],0);
  exit;
  end;
if fMensagem('Quer Realmente Confirmar a alteração!',0,['1','2'],0)<>mrYes then
  exit;
fAtualizarAl2(0);
verteclado(0);
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
mAtualizaAl2  :=false;
mCalcFieldsAl2:=false;
RxQuery.Filter:='not (AL2PCONOV1 is null and AL2FABNOV is null and AL2CUSNOV is null and AL2PMCNOV is null) '
              +' or not (AL2PCONOV1=0 and AL2FABNOV=0 and AL2CUSNOV=0 and AL2PMCNOV=0) ';
RxQuery.Filtered:=true;
RxQuery.First;
while not RxQuery.Eof do
  begin
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' update cadpro set ');
  if CB_PCOVDA.Checked then
    begin
    DM1.Query2.SQL.Add(' PDPRECO'+IntToStr(DBRG_Preco.ItemIndex+1)+'='+mudaVP(RxQueryAL2PCONOV1.AsString));
    DM1.Query2.SQL.Add(' ,PDPRECOA'+IntToStr(DBRG_Preco.ItemIndex+1)+'='+mudaVP(RxQueryAL2PCOATU1.AsString));
    DM1.Query2.SQL.Add(' ,PDDTUATP'+IntToStr(DBRG_Preco.ItemIndex+1)+'='+chr(39)+RxQueryAL2DTUAPCO.AsString+chr(39));
    end;
  if (CB_PCOFAB.Checked) and (CB_PCOVDA.Checked) then
    DM1.Query2.SQL.Add(' ,PDPCOFAB='+mudaVP(RxQueryAL2FABNOV.AsString))
  else if (CB_PCOFAB.Checked) then
    DM1.Query2.SQL.Add(' PDPCOFAB='+mudaVP(RxQueryAL2FABNOV.AsString));

  if (CB_PCOCUS.Checked) and (CB_PCOVDA.Checked) then
    DM1.Query2.SQL.Add(' ,PDPRECOC='+mudaVP(RxQueryAL2CUSNOV.AsString))
  else if (CB_PCOCUS.Checked) then
    DM1.Query2.SQL.Add(' PDPRECOC='+mudaVP(RxQueryAL2CUSNOV.AsString));


  if (CB_PCOMAX.Checked) and ((CB_PCOVDA.Checked) or (CB_PCOFAB.Checked) or (CB_PCOCUS.Checked))  then
    DM1.Query2.SQL.Add(' ,PDPMC='+mudaVP(RxQueryAL2PMCNOV.AsString))
  else if (CB_PCOMAX.Checked) then
    DM1.Query2.SQL.Add(' PDPMC='+mudaVP(RxQueryAL2PMCNOV.AsString));
  DM1.Query2.SQL.Add(' where PDCODPRO='+RxQueryAL2CODPRO.AsString);
  if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
    DM1.Query2.SQL.Add(minc+' and PDCODEMP=0'+IntToStr(codemp));
  DM1.Query2.ExecSQL;
  RxQuery.Next;
  end;
fdm1StartCommit;
DM4.Tb_AL1.Close;
if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   DM4.Tb_AL1.ParamByName('CODEMP').AsString := '%'
else
   DM4.Tb_AL1.ParamByName('CODEMP').AsFloat := Qr_AL1AL1CODEMP.Value;
DM4.Tb_AL1.ParamByName('LOTE').AsFloat      := Qr_AL1AL1LOTE.Value;
DM4.Tb_AL1.ParamByName('DTPREV').AsString:= '%';
DM4.Tb_AL1.Open;
DM4.Tb_AL1.Edit;
DM4.Tb_AL1AL1STATUS.Value:=1;
DM4.Tb_AL1AL1USRCON.Value:=codusr;
DM4.Tb_AL1AL1DTCON.Value :=date;
DM4.Tb_AL1AL1HORCON.Value:=FormatDateTime(fhr, time);
DM4.Tb_AL1.Post;
fmensagem('Concluido!!!',0,['0'],0);
Frm_Agde.Free;
Frm_Agde:=nil;
mAtualizaAl2  :=true;
mCalcFieldsAl2:=true;
CANCELAR.Click;
end;

procedure TFrm_PcoLot.EXCLUIRClick(Sender: TObject);
var
  minc:String;
begin
if Qr_AL1AL1LOTE.IsNull then
  begin
  verteclado(0);
  FMensagem('Não ha Registro Selecionado para Exclusão!',0,['0'],0);
  exit;
  end;
flcadpar02(0,0,codusr,'16');
mMostrardados         :=true;
if not RxQuery.Active then
  fAtualizarAl2(0);

if (Qr_AL1AL1STATUS.Value=1) and (DM4.Tb_Par02PA2PDSN.Value='S') then
  begin
  mValidarSenha.pTipo:=0;
  mValidarSenha.pCodusr:=codusr;
  mValidarSenha.pCodSen:=16;
  mValidarSenha.pCodEmp:=0;
  mValidarSenha.pCodCli:=DM1.Tb_CliCCODCLI.Value;
  mValidarSenha.pLotSeq:=0;
  mValidarSenha.pChave :=0;
  mValidarSenha.pOrdem :=0;
  mValidarSenha.pTexto :='Senha para autorizar a exclusão de preços ja confirmado';
  mValidarSenha.pChave_St:='';
  mValidarSenha.pDesc_requisitado :=0;

  if fValidaSenha(mValidarSenha)<>0 then
    exit;
  end
else
  begin
  if fmensagem('Confirma a Exclusão do lote!',0,['1','2'],2)<>mrYes then
    exit;
  end;
verteclado(0);
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
mAtualizaAl2  :=false;
mCalcFieldsAl2:=false;
if Qr_AL1AL1STATUS.Value=1 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('  update CADPRO SET ');
  minc:=' ';
  if Qr_AL1AL1TIPO.Value=0 then
    begin
    if CB_PCOVDA.Checked then
      begin
      DM1.Query1.SQL.Add(minc+' PDPRECO1=(SELECT AL2PCOATU1 FROM CADAL2 where                                  ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDPRECOA1=(SELECT AL2PCOANT FROM CADAL2 where                                     ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDDTUATP1=(SELECT AL2DTUA1 FROM CADAL2 where                                      ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=',';
      end;
    if CB_PCOMAX.Checked then
      begin
      DM1.Query1.SQL.Add(minc+' PDPMC=(SELECT AL2PMCATU FROM CADAL2 where                                      ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=',';
      end;
    end;

  if Qr_AL1AL1TIPO.Value=1 then
    begin
    if CB_PCOVDA.Checked then
      begin
      DM1.Query1.SQL.Add(minc+' PDPRECO2=(SELECT AL2PCOATU2 FROM CADAL2 where                                  ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDPRECOA2=(SELECT AL2PCOANT FROM CADAL2 where                                     ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDDTUATP2=(SELECT AL2DTUA2 FROM CADAL2 where                                      ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=',';
      end;
    if CB_PCOMAX.Checked then
      begin
      DM1.Query1.SQL.Add(minc+'   PDPMC02=(SELECT AL2PMCATU FROM CADAL2 where                                  ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=',';
      end;
    end;

  if Qr_AL1AL1TIPO.Value=2 then
    begin
    if CB_PCOVDA.Checked then
      begin
      DM1.Query1.SQL.Add(minc+'  PDPRECO3=(SELECT AL2PCOATU1 FROM CADAL2 where                                 ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDPRECOA3=(SELECT AL2PCOANT FROM CADAL2 where                                     ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      DM1.Query1.SQL.Add('  ,PDDTUATP3=(SELECT AL2DTUA3 FROM CADAL2 where                                      ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=',';
      end;
    if CB_PCOMAX.Checked then
      begin
      DM1.Query1.SQL.Add(minc+' PDPMC03=(SELECT AL2PMCATU FROM CADAL2 where                                    ');
      DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
      DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
      DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
      minc:=','
      end;
    end;

  if CB_PCOFAB.Checked then
    begin
    DM1.Query1.SQL.Add(minc+'   PDPCOFAB=(SELECT AL2FABATU FROM CADAL2 where                                 ');
    DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
    DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
    DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
    minc:=',';
    end;

  if CB_PCOCUS.Checked then
    begin
    DM1.Query1.SQL.Add(minc+'  PDPRECOC=(SELECT AL2CUSATU FROM CADAL2 where                                  ');
    DM1.Query1.SQL.Add('          (not AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null        ');
    DM1.Query1.SQL.Add('          and AL2PMCNOV is null) or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0');
    DM1.Query1.SQL.Add('          and AL2PMCNOV=0) and PDCODEMP=AL2CODEMP and al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString+')');
    minc:=',';
    end;

  DM1.Query1.SQL.Add('  where                                  ');
  DM1.Query1.SQL.Add('    exists (select al2codpro from cadal2 ');
  DM1.Query1.SQL.Add('   where al2codpro=pdcodpro and al2lote='+Qr_AL1AL1LOTE.AsString);
  if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
    DM1.Query1.SQL.Add(' and PDCODEMP=AL2CODEMP');
  DM1.Query1.SQL.Add(')');
  try
    DM1.Query1.ExecSQL;
  except
    showmessage('Erro ao voltar preços');
    DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
    end;
  end;

{  TB_PRO.TableName:='CADPRO';
  BatchMove1.Mode:=batUpdate;
  BatchMove1.AbortOnKeyViol:=false;
  BatchMove1.AbortOnProblem:=false;
  RxQuery.Close;
  RxQuery.Filter:='not (AL2PCONOV1 is null and AL2CUSNOV is null and AL2FABNOV is null and AL2PMCNOV is null) '
                +' or not (AL2PCONOV1=0 and AL2CUSNOV=0 and AL2FABNOV=0 and AL2PMCNOV=0) ';
  RxQuery.Filtered:=true;
  Src_AL2.DataSet:=nil;
  BatchMove1.Mappings.Clear;
  BatchMove1.Mode:=batUpdate;
  if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
    BatchMove1.Mappings.Add('PDCODEMP=AL2CODEMP');
  BatchMove1.Mappings.Add('PDCODPRO=AL2CODPRO');
  if CB_PCOFAB.Checked then
    BatchMove1.Mappings.Add('PDPCOFAB=AL2FABATU');
  if CB_PCOCUS.Checked then
    BatchMove1.Mappings.Add('PDPRECOC=AL2CUSATU');
  if Qr_AL1AL1TIPO.Value=3 then
    begin
    BatchMove1.Mappings.Add('PDDTUATP3=DATAATUAL');
    if CB_PCOVDA.Checked then
      begin
      BatchMove1.Mappings.Add('PDPRECOA3=AL2PCOANT');
      BatchMove1.Mappings.Add('PDPRECO3=AL2PCOATU1');
      end;
    if CB_PCOMAX.Checked then
      begin
      BatchMove1.Mappings.Add('PDPMC03=AL2PMCATU');
      end;
    end
  else if Qr_AL1AL1TIPO.Value=2 then
    begin
    BatchMove1.Mappings.Add('PDDTUATP2=DATAATUAL');
    if CB_PCOVDA.Checked then
      begin
      BatchMove1.Mappings.Add('PDPRECOA2=AL2PCOANT');
      BatchMove1.Mappings.Add('PDPRECO2=AL2PCOATU1');
      end;
    if CB_PCOMAX.Checked then
      begin
      BatchMove1.Mappings.Add('PDPMC02=AL2PMCATU');
      end;
    end
  else
    begin
    BatchMove1.Mappings.Add('PDDTUATP1=DATAATUAL');
    if CB_PCOVDA.Checked then
      begin
      BatchMove1.Mappings.Add('PDPRECOA1=AL2PCOANT');
      BatchMove1.Mappings.Add('PDPRECO1=AL2PCOATU1');
      end;
    if CB_PCOMAX.Checked then
      begin
      BatchMove1.Mappings.Add('PDPMC=AL2PMCATU');
      end;
    end;
  BatchMove1.Mappings.Add('PDUSRALT1=CODUSR');
  BatchMove1.Execute;}

RxQuery.Filter:='';
RxQuery.Filtered:=false;
Src_AL2.DataSet:=RxQuery;
DM4.Tb_AL1.Close;
if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
  DM4.Tb_AL1.ParamByName('CODEMP').AsString := '%'
else
  DM4.Tb_AL1.ParamByName('CODEMP').AsFloat := Qr_AL1AL1CODEMP.Value;
DM4.Tb_AL1.ParamByName('LOTE').AsFloat   := Qr_AL1AL1LOTE.Value;
DM4.Tb_AL1.ParamByName('DTPREV').AsString:= '%';
DM4.Tb_AL1.Open;
DM4.Tb_AL1.Edit;
DM4.Tb_AL1AL1STATUS.Value:=9;
DM4.Tb_AL1AL1USRCON.Value:=codusr;
DM4.Tb_AL1AL1DTCON.Value :=date;
DM4.Tb_AL1AL1HORCON.Value:=FormatDateTime(fhr, time);
DM4.Tb_AL1.Post;
Frm_Agde.Free;
Frm_Agde:=nil;
mAtualizaAl2  :=true;
mCalcFieldsAl2:=true;
CANCELAR.Click;
end;

procedure TFrm_PcoLot.IMPRIMIRClick(Sender: TObject);
var
mlin, mpag: Integer;
begin
fAtualizarAl2(0);
RxQuery.First;
mlin:=0;
mpag:=0;
testeform := TFrm_PcoLot(FindGlobalComponent('form_impres_pcolot'));
if (testeform=nil)  then
  Application.CreateForm(Tfrm_Impres, form_impres_pcolot);
form_impres_pcolot.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not RxQuery.Eof do
  begin
  if mlin=0 then
    begin
    mpag:=mpag+1;
    form_impres_pcolot.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mreduz);
    form_impres_pcolot.RDprint1.Impf(01,115,'Pagina.: '+FormatFloat('0000',mpag),mreduz);
    form_impres_pcolot.RDprint1.ImpF(02,01,'Relatorio de Alteracoes de precos por lote. Lote '
                            +FormatFloat('000000',Qr_AL1AL1LOTE.Value)+' Data: '+FormatDatetime(fdt2, Qr_AL1AL1DATA.Value)
                            +' Data Para Ajuste: '+FormatDateTime(fdt2, Qr_AL1AL1DTPREV.Value),mreduz);
    form_impres_pcolot.RDprint1.ImpF(02,115,'Data.: '+FormatDateTime(fdt2, Qr_AL1AL1DTPREV.Value),mreduz);
    if Qr_AL1AL1STATUS.Value=1 then
      begin
      form_impres_pcolot.RDprint1.ImpF(03,01,'Ja Confirmada',mneg);
      form_impres_pcolot.RDprint1.ImpF(04,01,'+--------------+----------------------------------------+-+-----------+-----------+-----------+-----------+-----------+-----------+',mreduz);
      form_impres_pcolot.RDprint1.ImpF(05,01,'| Codigo       |Descrição do Produto                    |T|Preco Ant.1|Pco.Atual 1|Pco.Fab.Ant|Pco.Fab.Atu|Pco.Max.Ant|Pco.Max.Nov|',mreduz);
      end
    else
      begin
      form_impres_pcolot.RDprint1.ImpF(03,01,'A Ser confirmada',mneg);
      form_impres_pcolot.RDprint1.ImpF(04,01,'+--------------+----------------------------------------+-+-----------+-----------+-----------+-----------+-----------+-----------+',mreduz);
      form_impres_pcolot.RDprint1.ImpF(05,01,'| Codigo       |Descrição do Produto                    |T|Pco.Atual 1| Pco.Novo 1|Pc.Fab.Atua|Pc.Fab.Novo|Pco.Max.Atu|Pc.Max.Novo|',mreduz);
      end;
    mlin:=5;
    end;
  mlin:=mlin+1;
  form_impres_pcolot.RDprint1.ImpF(mlin,01,'|'+insere(RxQueryAL2CODPRO.AsString,' ',14)
                          +'|'+insere2(RxQueryAL2NOMPRO.AsString,' ',40)
                          +'|'+iif(RxQueryAL2TIPALT.Value=0,'A','M')
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2PCOATU1.Value),' ',11)
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2PCONOV1.Value),' ',11)
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2FABATU.Value),' ',11)
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2FABNOV.Value),' ',11)
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2PMCATU.Value),' ',11)
                          +'|'+insere(FormatFloat(mcasaspu,RxQueryAL2PMCNOV.Value),' ',11)
                          +'|',mreduz);
  RxQuery.Next;
  if RxQuery.Eof then
    begin
    mlin:=mlin+1;
    form_impres_pcolot.RDprint1.ImpF(mlin,01,'+Fim.----------+----------------------------------------+-+-----------+-----------+-----------+-----------+-----------+-----------+',mreduz);
    end
  else if mlin>57 then
    begin
    mlin:=mlin+1;
    form_impres_pcolot.RDprint1.ImpF(mlin,01,'+Continua...---+----------------------------------------+-+-----------+-----------+-----------+-----------+-----------+-----------+',mreduz);
    form_impres_pcolot.RDprint1.Novapagina;
    mlin:=0;
    end;
  end;
if form_impres_pcolot.RDprint1.Setup then
  form_impres_pcolot.RDprint1.Fechar;
form_impres_pcolot.free;
form_impres_pcolot:=nil;
end;

procedure TFrm_PcoLot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if RxQuery.Active then
  RxQuery.Close;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_PcoLot.Tb_AL2CalcFields(DataSet: TDataSet);
begin
if mCalcFieldsAl2 then
  begin
  if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',RxQueryAL2CODPRO.AsString) then
    RxQueryAL2NOMPRO.AsString:=DM1.Query1.Fields[0].AsString;
  end;
end;

procedure TFrm_PcoLot.cb_mostrarClick(Sender: TObject);
begin
if cb_mostrar.Checked then
  begin
  mMostrardados  :=true;
  if not RxQuery.Active then
    fAtualizarAl2(0);
  end
else
  begin
  mMostrardados  :=false;
  if RxQuery.Active then
    RxQuery.Close;
  end;
end;

function TFrm_PcoLot.fAtualizarAl2(pTipo: Integer): Boolean;
var
x: Integer;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add(' select * from CADAL2 where ');
DM1.Query2.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' AL2CODEMP=0'+IntToStr(codemp)+' and ')
              +' AL2LOTE=0'+Qr_AL1AL1LOTE.AsString);
DM1.Query2.Open;

RxQuery.Close;
RxQuery.Open;

while not DM1.Query2.Eof do
  begin
  RxQuery.Append;
  RxQueryAL2CODEMP.AsInteger  :=DM1.Query2.FieldByName('AL2CODEMP').AsInteger;
  RxQueryAL2LOTE.AsInteger    :=DM1.Query2.FieldByName('AL2LOTE').AsInteger;
  RxQueryAL2ORDEM.AsInteger   :=DM1.Query2.FieldByName('AL2ORDEM').AsInteger;
  RxQueryAL2TIPALT.AsInteger  :=DM1.Query2.FieldByName('AL2TIPALT').AsInteger;
  RxQueryAL2PCOANT.AsFloat    :=DM1.Query2.FieldByName('AL2PCOANT').AsFloat;
  RxQueryAL2PCOATU1.AsFloat   :=DM1.Query2.FieldByName('AL2PCOATU1').AsFloat;
  RxQueryAL2PCONOV1.AsFloat   :=DM1.Query2.FieldByName('AL2PCONOV1').AsFloat;
  RxQueryAL2LOTSEQ.AsInteger  :=DM1.Query2.FieldByName('AL2LOTSEQ').AsInteger;
  RxQueryAL2CODPRO.AsFloat    :=DM1.Query2.FieldByName('AL2CODPRO').AsFloat;
  RxQueryAL2DTUAPCO.AsDateTime:=DM1.Query2.FieldByName('AL2DTUAPCO').AsDateTime;
  RxQueryAL2FABANT.AsFloat    :=DM1.Query2.FieldByName('AL2FABANT').AsFloat;
  RxQueryAL2FABATU.AsFloat    :=DM1.Query2.FieldByName('AL2FABATU').AsFloat;
  RxQueryAL2FABNOV.AsFloat    :=DM1.Query2.FieldByName('AL2FABNOV').AsFloat;
  RxQueryAL2DTUAFAB.AsFloat   :=DM1.Query2.FieldByName('AL2DTUAFAB').AsFloat;
  RxQueryAL2CUSANT.AsFloat    :=DM1.Query2.FieldByName('AL2CUSANT').AsFloat;
  RxQueryAL2CUSATU.AsFloat    :=DM1.Query2.FieldByName('AL2CUSATU').AsFloat;
  RxQueryAL2CUSNOV.AsFloat    :=DM1.Query2.FieldByName('AL2CUSNOV').AsFloat;
  RxQueryAL2DTUACUS.AsFloat   :=DM1.Query2.FieldByName('AL2DTUACUS').AsFloat;
  RxQueryAL2PMCANT.AsFloat    :=DM1.Query2.FieldByName('AL2PMCANT').AsFloat;
  RxQueryAL2PMCATU.AsFloat    :=DM1.Query2.FieldByName('AL2PMCATU').AsFloat;
  RxQueryAL2PMCNOV.AsFloat    :=DM1.Query2.FieldByName('AL2PMCNOV').AsFloat;
  RxQueryAL2DTUAPMC.AsFloat   :=DM1.Query2.FieldByName('AL2DTUAPMC').AsFloat;
  flqr1('*','PD', 'CADPRO','N','PDCODPRO',DM1.Query2.FieldByName('AL2CODPRO').AsString);
  RxQueryAL2NOMPRO.AsString   :=DM1.Query1.FieldByName('PDNOME').AsString;
  RxQuery.Post;
  DM1.Query2.Next;
  end;
result:=true;
end;

procedure TFrm_PcoLot.bbPadroesClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_PCOLOT','');
fGravaPadroes(codusr,'CB_CONF'      ,'checked'   ,'_PCOLOT',iif(CB_CONF.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MOSTRAR'   ,'checked'   ,'_PCOLOT',iif(CB_MOSTRAR.Checked,'true','false'));
fGravaPadroes(codusr,'DBRG_PRECO'   ,'itemindex' ,'_PCOLOT',IntTostr(DBRG_Preco.ItemIndex));
fGravaPadroes(codusr,'CB_PCOVDA'    ,'checked'   ,'_PCOLOT',iif(CB_PCOVDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PCOMAX'    ,'checked'   ,'_PCOLOT',iif(CB_PCOMAX.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PCOFAB'    ,'checked'   ,'_PCOLOT',iif(CB_PCOFAB.Checked,'true','false'));
fGravaPadroes(codusr,'CB_PCOCUS'    ,'checked'   ,'_PCOLOT',iif(CB_PCOCUS.Checked,'true','false'));
fGravaPadroes(codusr,'DBCB_MAXVDA'  ,'checked'   ,'_PCOLOT',iif(DBCB_MAXVDA.Checked,'true','false'));
verteclado(0);
FMensagem('Gravado!',0,['0'],0);
end;

function TFrm_PcoLot.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
begin
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
mform:='_PCOLOTC';
DM4.Tb_FilPad.First;
if ptipo=0 then
  begin
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_CONF']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CONF.Checked:=true
    else
      CB_CONF.Checked:=false;
    end
  else
    CB_CONF.Checked:=False;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_MOSTRAR']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      cb_mostrar.Checked:=true
    else
      cb_mostrar.Checked:=false;
    end
  else
    cb_mostrar.Checked:=False;
  end
else
  begin
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'DBRG_PRECO']),[]) then
    Qr_AL1AL1TIPOPCO.Value:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_PCOVDA']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      Qr_AL1AL1PCOVDA.Value:=0
    else
      Qr_AL1AL1PCOVDA.Value:=1;
    end
  else
    Qr_AL1AL1PCOVDA.Value:=0;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_PCOMAX']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      Qr_AL1AL1PCOMAX.Value:=0
    else
      Qr_AL1AL1PCOMAX.Value:=1;
    end
  else
    Qr_AL1AL1PCOMAX.Value:=1;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_PCOFAB']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      Qr_AL1AL1PCOFAB.Value:=0
    else
      Qr_AL1AL1PCOFAB.Value:=1;
    end
  else
    Qr_AL1AL1PCOFAB.Value:=1;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'DBCB_MAXVDA']),[]) then
    begin
    if DM4.Tb_FilPadFPVALOR.Value='true' then
      Qr_AL1AL1MAXVDA.Value:=1
    else
      Qr_AL1AL1MAXVDA.Value:=0;
    end
  else
    Qr_AL1AL1MAXVDA.Value:=0;
  end;
result:=True;
end;


procedure TFrm_PcoLot.DBGrid_itensExit(Sender: TObject);
begin
if RxQuery.State in [dsEdit,dsInsert] then
  RxQuery.Post;
end;

procedure TFrm_PcoLot.RxQueryBeforePost(DataSet: TDataSet);
begin
if (RxQueryAL2CODPRO.IsNull) or (RxQueryAL2CODPRO.Value=0) then
  begin
  RxQuery.Cancel;
  abort;
  end;
end;

procedure TFrm_PcoLot.RxQueryAfterInsert(DataSet: TDataSet);
begin
RxQueryAL2CODEMP.AsInteger :=codemp;
RxQueryAL2LOTE.AsFloat     :=mLoteAtivo;
RxQueryAL2ORDEM.AsInteger  :=0;
RxQueryAL2TIPALT.AsInteger :=0;
end;

procedure TFrm_PcoLot.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_AL1AL1LOTE.IsNull then
  fAtualizarAl2(0);
end;

end.
