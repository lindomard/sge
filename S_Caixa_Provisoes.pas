unit S_Caixa_Provisoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  DBTables, Mask;

type
  TFrm_Caixa_Provisoes = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    CB_PESQPOR: TComboBox;
    edt_conteudo: TEdit;
    bbSelecionar: TBitBtn;
    gbselecionados: TGroupBox;
    gbManutencao: TGroupBox;
    DBGrid_Provisoes: TDBGrid;
    Src_CADLDR_Provisao: TDataSource;
    Tb_LDR_Provisao: TQuery;
    Tb_LDR_ProvisaoCP_CODEMP: TFloatField;
    Tb_LDR_ProvisaoCP_DATAPREV: TDateTimeField;
    Tb_LDR_ProvisaoCP_VALOR: TFloatField;
    Tb_LDR_ProvisaoCP_CHAVE: TFloatField;
    Tb_LDR_ProvisaoCP_CODBCO: TFloatField;
    Tb_LDR_ProvisaoCP_CODCC: TStringField;
    Tb_LDR_ProvisaoCP_CODDEP: TStringField;
    Tb_LDR_ProvisaoCP_NATDC: TStringField;
    Tb_LDR_ProvisaoCP_DESCMV: TStringField;
    Tb_LDR_ProvisaoCP_TIPO: TStringField;
    Tb_LDR_ProvisaoCP_CODIGO: TFloatField;
    Tb_LDR_ProvisaoCP_DATHOR_INC: TDateTimeField;
    Tb_LDR_ProvisaoCP_DATHOR_ALT: TDateTimeField;
    Tb_LDR_ProvisaoCP_CODUSR_INC: TFloatField;
    Tb_LDR_ProvisaoCP_CODUSR_ALT: TFloatField;
    Tb_LDR_ProvisaoNOME: TStringField;
    Label2: TLabel;
    DBE_Chave: TDBEdit;
    Label3: TLabel;
    DBE_DataPrev: TDBEdit;
    Label4: TLabel;
    DBE_Valor: TDBEdit;
    Label5: TLabel;
    DBE_CodBco: TDBEdit;
    Label7: TLabel;
    DBE_CodCCU: TDBEdit;
    Label9: TLabel;
    DBE_CodDep: TDBEdit;
    DBCB_NOMBCO: TDBComboBox;
    DBCB_NOMDEP: TDBComboBox;
    DBCB_NOMCCU: TDBComboBox;
    sbn_nombco: TSpeedButton;
    sbn_nomdep: TSpeedButton;
    spn_nomccu: TSpeedButton;
    DBE_NATDC: TDBEdit;
    Label13: TLabel;
    TIPO: TDBComboBox;
    Label14: TLabel;
    DBE_Codigo: TDBEdit;
    DBE_Nome: TDBEdit;
    Label6: TLabel;
    DBE_DescMov: TDBEdit;
    U_LDR_Provisao: TUpdateSQL;
    Tb_LDR_ProvisaoNOMBCO: TStringField;
    Tb_LDR_ProvisaoNOMDEP: TStringField;
    Tb_LDR_ProvisaoNOMCCU: TStringField;
    sbt_origem: TSpeedButton;
    procedure bbSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure Tb_LDR_ProvisaoBeforeInsert(DataSet: TDataSet);
    procedure Tb_LDR_ProvisaoAfterInsert(DataSet: TDataSet);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure DBE_CodigoExit(Sender: TObject);
    procedure DBE_CodigoEnter(Sender: TObject);
    procedure DBE_CodBcoExit(Sender: TObject);
    procedure DBE_CodBcoKeyPress(Sender: TObject; var Key: Char);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBE_CodDepExit(Sender: TObject);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBE_CodCCUExit(Sender: TObject);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure DBE_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure sbn_nombcoClick(Sender: TObject);
    procedure sbt_origemClick(Sender: TObject);
    procedure sbn_nomdepClick(Sender: TObject);
    procedure spn_nomccuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function flcadldr_provisao(ptipo: Integer; pvalor: String): Boolean;
    function fAtualizaIndex(pTipo: Integer): boolean;

  end;

var
  Frm_Caixa_Provisoes: TFrm_Caixa_Provisoes;
  mOperProvis: Integer=-1;
  mChave_prov: Real=0;
  mAnt_Chave_Prov: Real=0;
  mcodFor_ant: Real=0;
  macbanco   : Boolean=False;
  macdep     : Boolean=False;
  macccu     : Boolean=False;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}


function TFrm_Caixa_Provisoes.flcadldr_provisao(ptipo: Integer; pvalor: String): Boolean;
begin


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADBCO','BCCODEMP','CP_CODEMP','BCCODBCO','CP_CODBCO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADDEP','DCODEMP','CP_CODEMP','DCODDEP','CP_CODDEP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCCU','CCCODEMP','CP_CODEMP','CCCODCCU','CP_CODCC');



Tb_LDR_Provisao.Close;
Tb_LDR_Provisao.SQL.Clear;
Tb_LDR_Provisao.SQL.add('Select CADLDR_PROVISAO.*, '
                       +' CASE '
                       +'  WHEN CP_TIPO='+chr(39)+'CL'+chr(39)+' THEN '
                       +' (SELECT CRAZAO FROM CADCLI WHERE CCODCLI=CP_CODIGO'
                       +fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',' ')+' ) '
                       +'  WHEN CP_TIPO='+chr(39)+'TR'+chr(39)+' THEN '
                       +'(SELECT TRRAZTRA FROM CADTRA WHERE TRCODTRA=CP_CODIGO'
                       +fla_EmpBaixaAlta(0,'CATRA',' and ',codemp,'TRCODEMP',' ')+' ) '
                       +' WHEN CP_TIPO='+chr(39)+'FU'+chr(39)+' THEN '
                       +'(SELECT CFNOMFUN FROM CADFUN WHERE CFCODFUN=CP_CODIGO'
                       +fla_EmpBaixaAlta(0,'CADFUN',' and ',codemp,'CFCODEMP',' ')+' ) '
                       +' WHEN CP_TIPO='+chr(39)+'US'+chr(39)+' THEN '
                       +'(SELECT NOMUSR FROM CADUSR WHERE CODUSR=CP_CODIGO'
                       +fla_EmpBaixaAlta(0,'CADUSR',' and ',codemp,'CODEMP',' ')+' ) '
                       +'ELSE '
                       +'(SELECT FRAZAO FROM CADFOR WHERE FCODFOR=CP_CODIGO '
                       +fla_EmpBaixaAlta(0,'CADFOR',' and ',codemp,'FCODEMP',' ')+' ) '
                       +' END '
                       +' AS NOME ');
Tb_LDR_Provisao.SQL.add(', BCBANCO AS NOMBCO ');
Tb_LDR_Provisao.SQL.add(', DNOME AS NOMDEP ');
Tb_LDR_Provisao.SQL.add(', CCNOME AS NOMCCU');
Tb_LDR_Provisao.SQL.add('  from CADLDR_Provisao'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +'  CP_CODEMP=0'+InttoStr(codemp));
if trim(pvalor)='' then
   begin
   if ptipo=0 then
      Tb_LDR_Provisao.SQL.add(' and CP_CHAVE=0'+fdeixanum(pvalor))
   else if ptipo=1 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'TR'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=2 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'CL'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=3 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'FR'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=4 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'FU'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=5 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'US'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=6 then
      Tb_LDR_Provisao.SQL.add(' and CP_TIPO='+chr(39)+'VD'+chr(39)+' and CP_CODIGO=0'+fdeixanum(pvalor))
   else if ptipo=7 then
      begin
      try
         Tb_LDR_Provisao.SQL.add(' and CP_DATAPREV='+chr(39)+FormatDatetime(fdt2, StrtoDateTime(pvalor))+chr(39));
      except
         end;
      end
   else if ptipo=8 then
      Tb_LDR_Provisao.SQL.add(' and CP_VALOR='+mudaVP(FormatFloat(mcasas, Valfloat(pvalor))));
   end;
try
   Tb_LDR_Provisao.open;
except
   Tb_LDR_Provisao.SQL.SaveToFile(mpastatemp +'sql.txt');
   end;

if Tb_LDR_Provisao.Eof then
   Result:=False
else
   Result:=True;

end;

procedure TFrm_Caixa_Provisoes.bbSelecionarClick(Sender: TObject);
begin
if CB_PESQPOR.ItemIndex=8 then
   begin
   if trim(edt_conteudo.Text)<>'' then
      begin
      try
         edt_conteudo.Text:=formatDatetime(fdt2, StrtoDate(edt_conteudo.Text));
      except
         MessageDlg('Data inválida!',mtWarning,[mbOk],0 );
         edt_conteudo.Text:='';
         edt_conteudo.SetFocus;
         exit;
         end;
      end;
   end;
flcadldr_provisao(CB_PESQPOR.ItemIndex,edt_conteudo.Text);
end;

procedure TFrm_Caixa_Provisoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Caixa_Provisoes.SpeedButton1Click(Sender: TObject);
begin
close;
end;

function tFrm_Caixa_Provisoes.fAtualizaIndex(pTipo: Integer): boolean;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;

end;
procedure TFrm_Caixa_Provisoes.FormCreate(Sender: TObject);
begin
Tb_LDR_ProvisaoCP_VALOR.displayFormat   :=mCasas;
Tb_LDR_ProvisaoCP_DATAPREV.displayFormat:=fdt2;
Tb_LDR_ProvisaoCP_DATAPREV.EditMask     :=pEditMascData;
fAtualizaIndex(0);
edt_conteudo.Text:=FormatDatetime(fdt2, date);
bbSelecionarClick(self);
end;

procedure TFrm_Caixa_Provisoes.INCLUIRClick(Sender: TObject);
begin
mOperProvis:=0;
Tb_LDR_Provisao.Append;
Tb_LDR_ProvisaoCP_TIPO.Value:='FR';
mAnt_Chave_Prov:=Tb_LDR_ProvisaoCP_CHAVE.AsFloat;
gbManutencao.Enabled    :=true;
DBGrid_Provisoes.Enabled:=false;
bbSelecionar.Enabled    :=false;
edt_conteudo.Enabled    :=false;
INCLUIR.Enabled         :=False;
ALTERAR.Enabled         :=False;
GRAVAR.Enabled          :=True;
EXCLUIR.Enabled         :=False;
CANCELAR.Enabled        :=True;
DBNavigator2.Enabled    :=false;

Tb_LDR_ProvisaoCP_DATAPREV.Value:=Date;


DBE_DataPrev.SetFocus;



end;

procedure TFrm_Caixa_Provisoes.Tb_LDR_ProvisaoBeforeInsert(
  DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('select max(CP_CHAVE) as CHAVE  from CADLDR_PROVISAO where CP_CODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
mChave_prov:=DM1.Query1.Fields[0].AsFloat+1;

end;

procedure TFrm_Caixa_Provisoes.Tb_LDR_ProvisaoAfterInsert(
  DataSet: TDataSet);
begin
Tb_LDR_ProvisaoCP_CODEMP.Value:=codemp;
Tb_LDR_ProvisaoCP_CHAVE.Value :=mChave_prov;
FAtualizaBanco(0,'CADLDR_PROVISAO','CP_CODEMP',Tb_LDR_ProvisaoCP_CODEMP.AsString
,['CP_CHAVE'],[Tb_LDR_ProvisaoCP_CHAVE.AsString]
 ,Tb_LDR_Provisao);

end;

procedure TFrm_Caixa_Provisoes.ALTERARClick(Sender: TObject);
begin
if Tb_LDR_ProvisaoCP_CHAVE.IsNull then
   begin
   Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   Exit;
   end;

Tb_LDR_Provisao.Edit;
mAnt_Chave_Prov:=Tb_LDR_ProvisaoCP_CHAVE.AsFloat;

gbManutencao.Enabled:=true;
DBGrid_Provisoes.Enabled:=false;
edt_conteudo.Enabled    :=false;
bbSelecionar.Enabled    :=false;
DBNavigator2.Enabled    :=false;

mOperProvis :=1;

DBE_DataPrev.SetFocus;

INCLUIR.Enabled      :=false;
ALTERAR.Enabled      :=false;
EXCLUIR.Enabled      :=false;
CANCELAR.Enabled     :=true;
GRAVAR.Enabled       :=true;



end;

procedure TFrm_Caixa_Provisoes.GRAVARClick(Sender: TObject);
begin
if Tb_LDR_ProvisaoCP_VALOR.AsFloat=0 then
   begin
   MessageDlg('Favor Digitar o Valor!',mtWarning,[mbOk],0);
   DBE_Valor.SetFocus;
   exit;
   end;

if (Tb_LDR_ProvisaoCP_DESCMV.AsString='') then
   begin
   fmensagem('Descrição do Movimento Campo Obrigatorio!',0,['0'],0);
   DBE_DescMov.SetFocus;
   exit;
   end;


FAtualizaBanco(1,'CADLDR_PROVISAO','CP_CODEMP',Tb_LDR_ProvisaoCP_CODEMP.AsString
,['CP_CHAVE'],[FloatToStr(mAnt_Chave_Prov)]
 ,Tb_LDR_Provisao);
Tb_LDR_Provisao.Post;

mOperProvis:=-1;
CANCELARClick(self);

end;

procedure TFrm_Caixa_Provisoes.EXCLUIRClick(Sender: TObject);
begin
if Tb_LDR_ProvisaoCP_VALOR.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADLDR_PROVISAO','CP_CODEMP',Tb_LDR_ProvisaoCP_CODEMP.AsString
   ,['CP_CHAVE'],[Tb_LDR_ProvisaoCP_CHAVE.AsString]
    ,Tb_LDR_Provisao);


   Tb_LDR_Provisao.Delete;
   end;

end;

procedure TFrm_Caixa_Provisoes.CANCELARClick(Sender: TObject);
begin

if (mOperProvis=0) and (GRAVAR.Enabled) then
   begin
   FAtualizaBanco(2,'CADLDR_PROVISAO','CP_CODEMP',Tb_LDR_ProvisaoCP_CODEMP.AsString
   ,['CP_CHAVE'],[FloatToStr(mAnt_Chave_Prov)]
    ,Tb_LDR_Provisao);
   end;
if Tb_LDR_Provisao.State in [dsEdit,dsInsert] then
   Tb_LDR_Provisao.Cancel;
INCLUIR.Enabled  := true;
ALTERAR.Enabled  := true;
EXCLUIR.Enabled  := true;
DBNavigator2.Enabled    :=true;

CANCELAR.Enabled := False;
GRAVAR.Enabled   := False;
DBGrid_Provisoes.Enabled         := True;
bbSelecionar.Enabled:= true;
gbManutencao.Enabled := false;
edt_conteudo.Enabled := true;
mOperProvis:=-1;

end;

procedure TFrm_Caixa_Provisoes.TIPOExit(Sender: TObject);
begin
if TIPO.ItemIndex<0 then
   with TIPO do ItemIndex:=Items.IndexOf(TIPO.Text);
TIPO.Text:=TIPO.items.Strings[TIPO.itemindex];
Tb_LDR_ProvisaoCP_TIPO.Value:=TIPO.Text;
if Trim(TIPO.Text)='' then
   TIPO.Text:='CL';

end;

procedure TFrm_Caixa_Provisoes.DBE_CodigoExit(Sender: TObject);
begin
if Tb_LDR_Provisao.State in [dsEdit,dsInsert] then
   begin
   if TIPO.Text='VD' then
      begin
      if not flqr2('VNOME','V','CADVEN','N','VCODVEN',Tb_LDR_ProvisaoCP_CODIGO.AsString) then
         Begin
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         DBE_Codigo.SetFocus;
         end
      else
         begin
         Tb_LDR_ProvisaoNOME.Value:=DM1.Query2.Fields[0].AsString;
         end;
      end
   else if TIPO.Text='FR' then
      begin
      if not flcadfor(1,0,Tb_LDR_ProvisaoCP_CODIGO.AsString) then
         Begin
         fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
         DBE_Codigo.SetFocus;
         end
      else
         begin
         Tb_LDR_ProvisaoNOME.Value:=DM1.Tb_ForFRAZAO.Value;
         if mcodFor_ant<>Tb_LDR_ProvisaoCP_CODIGO.Value then
            begin
            if flparldr(0,'CADDAP0') then
               begin
               if (trim(DM1.Tb_ForFDESCMVD.AsString)='') or
                   (trim(DM1.Tb_ForFDESCMVD.AsString)='_') then
                   pldr_descmov:=DM1.Par_LDRNOME.Value
                else
                   pldr_descmov:=DM1.Tb_ForFDESCMVD.Value;
                if (Trim(DM1.Tb_ForFCODCCD.AsString)='') or
                   (Trim(DM1.Tb_ForFCODCCD.AsString)='_') then
                   begin
                   Tb_LDR_ProvisaoCP_CODCC.Value  :=DM1.Par_LDRCODCC.Value;
                   DBE_CodCCuExit(self);
                   end
                else
                   begin
                   Tb_LDR_ProvisaoCP_CODCC.Value  :=DM1.Tb_ForFCODCCD.Value;
                   Tb_LDR_ProvisaoNOMCCU.Value :=DM1.Tb_ForFNOMCCD.Value;
                   DBE_CodCCuExit(Self);
                   end;
                if (trim(DM1.Tb_ForFCODDEPD.AsString)='') or
                   (trim(DM1.Tb_ForFCODDEPD.AsString)='_') then
                   begin
                   Tb_LDR_ProvisaoNOMDEP.Value:=DM1.Par_LDRCODDEP.Value;
                   DBE_CodDepExit(Self);
                   end
                else
                   begin
                   Tb_LDR_ProvisaoCP_CODDEP.Value:=DM1.Tb_ForFCODDEPD.Value;
                   Tb_LDR_ProvisaoNOMDEP.Value:=DM1.Tb_ForFNOMDEPD.Value;
                   end;
                end;
             end;
         end;
      end;
   end
else if TIPO.Text='TR' then
   begin
   if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Tb_LDR_ProvisaoCP_CODIGO.AsString) then
      Begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      DBE_Codigo.SetFocus;
      end
   else
      Tb_LDR_ProvisaoNOME.Value:=DM1.Query2.Fields[0].AsString;
   end
else if TIPO.Text='US' then
   begin
   if not flqr2('NOMUSR','','CADUSR','N','CODUSR',Tb_LDR_ProvisaoCP_CODIGO.AsString) then
      Begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      DBE_Codigo.SetFocus;
      end
   else
      Tb_LDR_ProvisaoNOME.Value:=DM1.Query2.Fields[0].AsString;
   end
else
   begin
   if not flcadcli(1,0,Tb_LDR_ProvisaoCP_CODIGO.AsString) then
      Begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      DBE_Codigo.SetFocus;
      end
   else
      begin
      Tb_LDR_ProvisaoNOME.Value:=DM1.Tb_CliCRAZAO.Value;

      if mcodFor_ant<>Tb_LDR_ProvisaoCP_CODIGO.Value then
         begin
         if flparldr(0,'CADDAR0') then
            begin
            if (trim(DM1.Tb_CliCDESCMVC.AsString)='') or
               (trim(DM1.Tb_CliCDESCMVC.AsString)='_') then
               pldr_descmov:=DM1.Par_LDRNOME.Value
            else
               pldr_descmov:=DM1.Tb_CliCDESCMVC.Value;
            if (Trim(DM1.Tb_CliCCODCCC.AsString)='') or
               (Trim(DM1.Tb_CliCCODCCC.AsString)='_') then
               begin
               Tb_LDR_ProvisaoCP_CODCC.Value :=DM1.Par_LDRCODCC.Value;
               DBE_CodCCuExit(self);
               end
            else
               begin
               Tb_LDR_ProvisaoCP_CODCC.Value :=DM1.Tb_CliCCODCCC.Value;
               Tb_LDR_ProvisaoNOMCCU.Value :=DM1.Tb_CliCNOMCCC.Value;
               DBE_CodCCuExit(self);
               end;
           if (trim(DM1.Tb_CliCCODDEPC.AsString)='') or
              (trim(DM1.Tb_CliCCODDEPC.AsString)='_') then
               begin
               Tb_LDR_ProvisaoCP_CODDEP.Value:=DM1.Par_LDRCODDEP.Value;
               DBE_CodDepExit(Self);
               end
            else
               begin
               Tb_LDR_ProvisaoCP_CODDEP.Value:=DM1.Tb_CliCCODDEPC.Value;
               Tb_LDR_ProvisaoNOMDEP.Value:=DM1.Tb_CliCNOMDEPC.Value;
               end;
            end;
         end;
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.DBE_CodigoEnter(Sender: TObject);
begin
mcodFor_ant:=Tb_LDR_ProvisaoCP_CODIGO.AsFloat;
end;

procedure TFrm_Caixa_Provisoes.DBE_CodBcoExit(Sender: TObject);
begin

macbanco:=false;
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   if Tb_LDR_ProvisaoCP_CODBCO.AsFloat<>0 then
      begin
      if not flqr2('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_LDR_ProvisaoCP_CODBCO.AsString) then
         begin
         fmensagem('Banco Nao Cadastrado!',0,['0'],0);
         DBE_CodBco.Setfocus;
         end
      else
         begin
         Tb_LDR_ProvisaoNOMBCO.Value:=DM1.QUERY2.Fields[0].AsString;
         if not DBCB_NOMBCO.Focused then
            macbanco:=true;
         end;
      end;
   end;


end;

procedure TFrm_Caixa_Provisoes.DBE_CodBcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_LDR_ProvisaoCP_CODBCO.Value:=ValFloat(fChamaBco(0,'frm_ldr',key));
   DBE_CodBcoExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMBCOEnter(Sender: TObject);
begin
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(Tb_LDR_ProvisaoNOMBCO.Value
                                 +'['+Tb_LDR_ProvisaoCP_CODBCO.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   end;
if macbanco then
   DBE_CodDep.SetFocus;
macbanco:=false;

end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMBCOExit(Sender: TObject);
begin
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   if DBCB_NOMBCO.ItemIndex<0 then
      with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   if trim(DBCB_NOMBCO.Text)='' then
      Tb_LDR_ProvisaoCP_CODBCO.Value:=0
   else
      begin
      Tb_LDR_ProvisaoCP_CODBCO.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
      DBE_CodBcoExit(Self);
      end;
   end;


end;

procedure TFrm_Caixa_Provisoes.DBE_CodDepExit(Sender: TObject);
begin
macdep:=false;
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   if trim(Tb_LDR_ProvisaoCP_CODDEP.AsString)<>'' Then
      begin
      if not flqr2('DNOME','D','CADDEP','C','DCODDEP',Tb_LDR_ProvisaoCP_CODDEP.AsString) then
         begin
         fmensagem('Departamento Não Cadastrado!',0,['0'],0);
         DBE_CodDep.SetFocus;
         end
      else
         begin
         Tb_LDR_ProvisaoNOMDEP.Value:=dm1.qUERY2.Fields[0].AsString;
         if not DBCB_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMDEPEnter(Sender: TObject);
begin
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(Tb_LDR_ProvisaoNOMDEP.Value
                                    +'['+Tb_LDR_ProvisaoCP_CODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   end;
if macdep then
   DBE_CodCCu.SetFocus;
macdep:=false;

end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMDEPExit(Sender: TObject);
begin
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   if DBCB_NOMDEP.ItemIndex<0 then
      with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   if trim(DBCB_NOMDEP.Text)='' then
      Tb_LDR_ProvisaoCP_CODDEP.Value:=''
   else
      begin
      Tb_LDR_ProvisaoCP_CODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
      DBE_CodDepExit(Self);
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.DBE_CodCCUExit(Sender: TObject);
begin
macccu:=false;
if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   if Trim(Tb_LDR_ProvisaoCP_CODCC.AsString)<>'' then
      begin
      if not flqr2('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',Tb_LDR_ProvisaoCP_CODCC.AsString) then
         begin
         fmensagem('Centro de Custo Não Cadastrado',0,['0'],0);
         DBE_CodCCu.SetFocus;
         end
      else
         begin
         Tb_LDR_ProvisaoCP_NATDC.Value := DM1.Query2.Fields[0].AsString;
         Tb_LDR_ProvisaoNOMCCU.Value := DM1.Query2.Fields[1].AsString;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMCCUEnter(Sender: TObject);
begin

if Tb_LDR_Provisao.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(Tb_LDR_ProvisaoNOMCCU.AsString
                                    +'-'+Tb_LDR_ProvisaoCP_NATDC.AsString
                                    +'['+Tb_LDR_ProvisaoCP_CODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   end;
if macccu then
   DBE_DescMov.SetFocus;
macccu:=false;

end;

procedure TFrm_Caixa_Provisoes.DBCB_NOMCCUExit(Sender: TObject);
begin
if Tb_LDR_Provisao.state in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCU.ItemIndex<0 then
      with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   if trim(DBCB_NOMCCU.Text)='' then
      Tb_LDR_ProvisaoCP_CODCC.Value:=''
   else
      begin
      Tb_LDR_ProvisaoCP_CODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
      DBE_CodCCuExit(Self);
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.DBE_CodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') and (Tb_LDR_Provisao.State in [dsEdit,dsInsert]) then
   begin
   if TIPO.Text='FR' then
      begin
      Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fChamaFor(0,'frm_ldr',Key));
      DBE_CodigoExit(self);
      key:=#0;
      end
   else if TIPO.Text='TR' then
      begin
      Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fChamaTra(0,'frm_tra',key));
      DBE_CodigoExit(self);
      key:=#0;
      end
   else if TIPO.Text='VD' then
      begin
      Tb_LDR_ProvisaoCP_CODIGO.Value:=valfloat(fchamaven(0,'frm_ldr',key));
      key:=#0;
      end
   else if TIPO.Text='US' then
      begin
      Tb_LDR_ProvisaoCP_CODIGO.Value:=valfloat(fChamaUsr(0,'frm_ldr',key));
      DBE_CodigoExit(self);
      key:=#0;
      end

   else
      begin
      Tb_LDR_ProvisaoCP_CODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',key));
      DBE_CodigoExit(self);
      end;
   end;

end;

procedure TFrm_Caixa_Provisoes.sbn_nombcoClick(Sender: TObject);
begin
Tb_LDR_ProvisaoCP_CODBCO.Value:=valfloat(fChamaBco(0,'Frm_LDR',''));
DBE_CodBcoExit(sELF);

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;
end;

procedure TFrm_Caixa_Provisoes.sbt_origemClick(Sender: TObject);
begin
if TIPO.Text='FR' then
   begin
   Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fChamaFor(0,'frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='TR' then
   begin
   Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fChamaTra(0,'frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='VD' then
   begin
   Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fChamaVen(0,'Frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='US' then
   begin
   Tb_LDR_ProvisaoCP_CODIGO.Value:=ValFloat(fchamausr(0,'frm_ldr',''));
   DBE_CodigoExit(SELF);
   end
else
   begin
   Tb_LDR_ProvisaoCP_CODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',''));
   DBE_CodigoExit(SELF);
   end;
end;

procedure TFrm_Caixa_Provisoes.sbn_nomdepClick(Sender: TObject);
begin
Tb_LDR_ProvisaoCP_CODDEP.Value:=fChamaDeptoCX(0,'Frm_LDR','');
DBE_CodDepExit(self);
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;
end;

procedure TFrm_Caixa_Provisoes.spn_nomccuClick(Sender: TObject);
begin
Tb_LDR_ProvisaoCP_CODCC.Value:=fChamaCCU(0,'Frm_LDR','');
Tb_LDR_ProvisaoCP_NATDC.Value:=DM1.Tb_CCUCCNAT.Value;
DBE_CodCCuExit(SELF);


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;



DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;
end;

end.
