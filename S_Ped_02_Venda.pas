unit S_Ped_02_Venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons,

  CheckLst;

type
  TFrm_Ped_02_Venda = class(TForm)
    Panel1: TPanel;
    Src_ProVenda: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Qr_ProVenda: TQuery;
    U_ProVenda: TUpdateSQL;
    Qr_ProVendaPDNOME: TStringField;
    Qr_ProVendaMARCA: TStringField;
    Qr_ProVendaPDUND: TStringField;
    Qr_ProVendaPDCODPRO: TFloatField;
    Qr_ProVendaPDPRECO1: TFloatField;
    Qr_ProVendaPDPRECO2: TFloatField;
    Qr_ProVendaPDPRECO3: TFloatField;
    Qr_ProVendaTMP_PCOUNI: TFloatField;
    Qr_ProVendaTMP_QTDPED: TFloatField;
    Qr_ProVendaTMP_TOTAL: TFloatField;
    Qr_ProVendaestoque: TFloatField;
    Qr_ProVendaTMP_TIPOPCO: TFloatField;
    StaticText1: TStaticText;
    st_itens: TStaticText;
    StaticText2: TStaticText;
    // alterado
    st_qtd: TStaticText;
    StaticText3: TStaticText;
    st_totais: TStaticText;
    bbSair: TBitBtn;
    BitBtn1: TBitBtn;
    Qr_ProVendapcoven: TFloatField;
    Qr_ProVendaPDSALDO: TFloatField;
    Qr_ProVendaPDCODTIP: TFloatField;
    Panel2: TPanel;
    Label1: TLabel;
    edt_descricao: TEdit;
    CB_ESTOQUE: TCheckBox;
    Qr_ProVendaPDVLRINC: TFloatField;
    Qr_ProVendaPDUCPR: TFloatField;
    Qr_ProVendaPDPRECOC: TFloatField;
    pnl_conf: TPanel;
    Label89: TLabel;
    bb_gravar: TButton;
    CLFNivel: TCheckListBox;
    Qr_ProVendaQTD_EST: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Qr_ProVendaCalcFields(DataSet: TDataSet);
    procedure Qr_ProVendaAfterEdit(DataSet: TDataSet);
    procedure Qr_ProVendaAfterPost(DataSet: TDataSet);
    procedure Qr_ProVendaAfterInsert(DataSet: TDataSet);
    procedure Qr_ProVendaBeforePost(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//    procedure GridColumnClick(Sender: TObject;
//      Column: TdxDBTreeListColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_descricaoChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Qr_ProVendaBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_ESTOQUEClick(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     function fMostraTotais(pTipo: Integer): Boolean;

  public
    { Public declarations }
      mpro_codcli: string;
      mpro_aceita_pco_exclusivo: string;

      Function FAbreProduto(pTipo: Integer): Boolean;
  end;

var
  Frm_Ped_02_Venda: TFrm_Ped_02_Venda;
  mTotItens: Real=0;
  mTotQtd: Real=0;
  mTotReal: Real=0;
  mPrecoPadrao: Integer=1;
  mTotItens_ant: Real=0;
  mTotQtd_ant: Real=0;
  mTotReal_ant: Real=0;
  mVenda_TipoPreco: Real=0;
  mtipo_preco_ant: Integer=0;
  mVenda_Confirmada: Integer=0; // 0 nenhuma ação 1-Cancelou 2-Confirmou Faturmento
  mVda_SaiNor        :Boolean;

implementation

uses S_DM1, Func, lerarq, func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_Ped_02_Venda.FormCreate(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLFNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLFNivel.Items.Add(nivel[n]);
  end;

if flfilpad(codusr,'_Ped_02_Venda','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATPREV',[]) then
      CLFNivel.Checked[0]:=IIF(DM4.Tb_FilPad2FPVALOR.AsString='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATPRIMA',[]) then
      CLFNivel.Checked[1]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMBALAGEM',[]) then
      CLFNivel.Checked[2]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRODPROD',[]) then
      CLFNivel.Checked[3]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ACABADO',[]) then
      CLFNivel.Checked[4]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SUBPRO',[]) then
      CLFNivel.Checked[5]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ACES',[]) then
      CLFNivel.Checked[6]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_USOCONSUMO',[]) then
      CLFNivel.Checked[7]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMOBILIZADO',[]) then
      CLFNivel.Checked[8]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SERVICO',[]) then
      CLFNivel.Checked[9]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INSUMOS',[]) then
      CLFNivel.Checked[10]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OUTROS',[]) then
      CLFNivel.Checked[11]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   end;
  


  mTotItens     :=0;
  mTotQtd       :=0;
  mTotReal      :=0;

  mTotItens_Ant :=0;
  mTotQtd_Ant   :=0;
  mTotReal_Ant  :=0;

Qr_ProVendaPDPRECO1.DisplayFormat  :=mcasaspu;
Qr_ProVendaPDPRECO2.DisplayFormat  :=mcasaspu;
Qr_ProVendaPDPRECO3.DisplayFormat  :=mcasaspu;
Qr_ProVendaTMP_PCOUNI.DisplayFormat:=mcasaspu;
Qr_ProVendaTMP_QTDPED.DisplayFormat:=mcasqtd;
Qr_ProVendaTMP_TOTAL.DisplayFormat :=mcasas;
if DM1.Tb_PargerPDQPCOP.Value=1 then
   begin
   DBGrid1.Columns[7].Visible:=false;
   DBGrid1.Columns[8].Visible:=false;

//   Grid.Columns[5].Visible:=false;
//   Grid.Columns[6].Visible:=false;


   end
else if DM1.Tb_PargerPDQPCOP.Value=2 then
   begin
   DBGrid1.Columns[8].Visible:=false;
//   Grid.Columns[6].Visible:=false;
   end
else if (DM1.Tb_PargerPDQPCOP.Value=4) or (DM1.Tb_PargerPDQPCOP.Value=5) then
   begin
   if DM1.Tb_PargerPDQPCOP.Value=4 then
      DBGrid1.Columns[8].Visible:=false;

   DBGrid1.Columns[7].Title.Caption:='Pço.Atacado';
   DBGrid1.Columns[6].Title.Caption:='Pço.Varejo';

//   Grid.Columns[6].Visible:=false;
//   Grid.Columns[5].Caption     := 'Pço.Atacado';
//   Grid.Columns[4].Caption     := 'Pço.Varejo';

   end;
end;

Function TFrm_Ped_02_Venda.FAbreProduto(pTipo: Integer): Boolean;
var
  sql, sqls: String;
  n: integer;
  mPreco_Venda: String;
begin
sql:='';
sqls:='';
if (CLFNivel.Checked[0]) and (CLFNivel.Checked[1]) and
   (CLFNivel.Checked[2]) and (CLFNivel.Checked[3]) and
   (CLFNivel.Checked[4]) and (CLFNivel.Checked[5]) and
   (CLFNivel.Checked[6]) and (CLFNivel.Checked[6]) and
   (CLFNivel.Checked[7]) and (CLFNivel.Checked[8]) and
   (CLFNivel.Checked[9]) and (CLFNivel.Checked[10]) and
   (CLFNivel.Checked[11]) then

   sql:=''
else
  begin
  sql:='';
  sqls:='';
  for n:=0 to 11 do
    begin
    if CLFNivel.Checked[n] then
      begin
      sql:=sql+sqls+'PDNIVEL='+inttostr(n);
      sqls:=' or ';
      end;
    end;
  end;

//    mpro_codcli: string;
//    mpro_aceita_pco_exclusivo: string;


mPreco_Venda:='PDPRECO1';
if ((mpro_aceita_pco_exclusivo)='S') and
   ((trim(mpro_codcli)<>'') ) then
   begin
   mPreco_Venda:='case when nvl(PEC_PRECO,0)>0 then PEC_PRECO else '+mPreco_Venda+' end ';
   end;

Qr_ProVenda.Close;
Qr_ProVenda.SQL.Clear;
Qr_ProVenda.SQL.Add('Select max(PDNOME) as  PDNOME,max( DECODE(PDMARCA,NULL,PDNOMFOR,'+chr(39)+'_'+chr(39)
                   +',PDNOMFOR, PDMARCA)) AS MARCA,MAX(PDUND) as PDUND,PDCODPRO,'
                   +' max('+mPreco_Venda+') AS PDPRECO1,max(PDPRECO2) as PDPRECO2,max(PDPRECO3) as PDPRECO3,max(PDSALDO) as PDSALDO,max(PDCODTIP) as PDCODTIP '
                   +',max(PDVLRINC) as PDVLRINC,max(PDUCPR) as PDUCPR,max(PDPRECOC) as  PDPRECOC '
                   +', '+IntToStr(mPrecoPadrao)+' AS TMP_TIPOPCO '
                   +', 0 AS TMP_PCOUNI '
                   +', 0 AS TMP_QTDPED '
                   +', 0 AS TMP_TOTAL '
                   +', SUM(CESALDO) AS QTD_EST '

                   +' FROM CADPRO,CADEST ');
if ((mpro_aceita_pco_exclusivo)='S') and
   ((trim(mpro_codcli)<>'') ) then
   begin
   Qr_ProVenda.SQL.add(',CADPRO_PCOCLI where PEC_CODEMP(+)=PDCODEMP AND PEC_CODPRO(+)=PDCODPRO and PEC_CODCLI(+)='+mpro_codcli+' and ');
   end
else
   Qr_ProVenda.SQL.add(' where ');
Qr_ProVenda.SQL.add(' CECODPRO(+)=PDCODPRO '
                   +' AND PDSTATUS<8 '
                   +fla_EmpBaixaAlta(0,'CADPRO',' and ',codemp,'PDCODEMP',' ')
                   );
if trim(sql)<>'' then
  Qr_ProVenda.Sql.add(' and ('+sql+')');
if cb_estoque.checked then
   Qr_provenda.Sql.add(' and PDSALDO>0 ');
Qr_ProVenda.Sql.add(' group by PDCODPRO ORDER BY PDNOME ');
try
   Qr_provenda.Open;
 except on e : exception do
   ex_erroSql_Novo(Qr_ProVenda,293,'func Erro:'+e.Message ,'CADEST');
    end;


result:=true;

end;

procedure TFrm_Ped_02_Venda.Qr_ProVendaCalcFields(DataSet: TDataSet);
begin
if (not DM1.Qr_TID.Locate('TINOME','CADEST',[])) and (DM1.Qr_TID.Locate('TINOME','CADPRO',[])) then
   begin
   if not flcadest(0,0,0,Qr_ProVendaPDCODPRO.AsString) then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CEFILIAL, '
                        +'CECODPRO, '
                        +'CESALDO, '
                        +'CESALDO_PRAT, '
                        +'CESALDO_DEP, '
                        +'CESALDO_REP, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +') Values ('
                        +Inttostr(codemp-iif(codemp>100,100,0))+','
                        +Inttostr(log_filial_padrao)+','
                        +Qr_ProVendaPDCODPRO.AsString+','
                        +'0,' // SALDO
                        +'0,' // SALDO_PRAT
                        +'0,' // SALDO_DEP
                        +'0,' // SALDO_REP
                        +'0,' // SALDOR
                        +'0,' // SALDOC
                        +'0,' // SALDOT
                        +'0,' // ENTPEN
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                        +')');
      try
         DM1.Query1.ExecSQL;
      except
         ex_erroSql(01,6496,'DM1','CADPRO');
         fdm1StartCommit;
         end;
      flcadest(0,0,0,Qr_ProVendaPDCODPRO.AsString);
      end;
   Qr_ProVendaestoque.Value:=DM1.Tb_EstCESALDO.AsFloat;

   end
else
   begin
   Qr_ProVendaestoque.Value :=Qr_ProVendaPDSALDO.Value;
   end;
if par_acretodos<>0 then
   Qr_ProVendapcoven.Value:=Arredonda(Qr_ProVendaPDPRECO1.Value+(Qr_ProVendaPDPRECO1.Value* par_acretodos/100),mQtdCas_arredpu)
else if (par_acret0<>0) and (Qr_ProVendaPDCODTIP.Value=0) then
   Qr_ProVendapcoven.Value:=Arredonda(Qr_ProVendaPDPRECO1.Value+(Qr_ProVendaPDPRECO1.Value* par_acret0/100),mQtdCas_arredpu)
else if (par_acret1<>0) and (Qr_ProVendaPDCODTIP.Value=1) then
   Qr_ProVendapcoven.Value:=Arredonda(Qr_ProVendaPDPRECO1.Value+(Qr_ProVendaPDPRECO1.Value* par_acret1/100),mQtdCas_arredpu)
else if (par_acred01<>0) and (Qr_ProVendaPDCODTIP.Value<>0) and (Qr_ProVendaPDCODTIP.Value<>1) then
   Qr_ProVendapcoven.Value:=Arredonda(Qr_ProVendaPDPRECO1.Value+(Qr_ProVendaPDPRECO1.Value* par_acred01/100),mQtdCas_arredpu)
else
   Qr_ProVendapcoven.Value:=Qr_ProVendaPDPRECO1.Value;



end;
function tFrm_Ped_02_Venda.fMostraTotais(pTipo: Integer): Boolean;
begin
st_itens.Caption   :=FloatTostr(mTotItens);
st_qtd.Caption     :=FormatFloat(mcasqtd, mTotQtd);
st_totais.Caption  :=FormatFloat(mcasqtd, mTotReal);
result:=true;
end;
procedure TFrm_Ped_02_Venda.Qr_ProVendaAfterEdit(DataSet: TDataSet);
begin

if Qr_ProVendaTMP_QTDPED.AsFloat<>0 then
   mTotItens_ant:=1
else
   mTotItens_ant:=0;

mTotQtd_ant  :=Qr_ProVendaTMP_QTDPED.AsFloat;
mTotReal_ant :=Qr_ProVendaTMP_TOTAL.AsFloat;

end;

procedure TFrm_Ped_02_Venda.Qr_ProVendaAfterPost(DataSet: TDataSet);
//var
//BookMark: TBookmark;
begin
mTotItens:=mTotItens+(1-mTotItens_ant);
mTotQtd  :=(mTotQtd+Qr_ProVendaTMP_QTDPED.AsFloat)-mTotQtd_ant;
mTotReal :=(mTotReal+Qr_ProVendaTMP_TOTAL.AsFloat)-mTotReal_ant;
//BookMark:=Qr_ProVenda.GetBookmark;
edt_descricao.Text:='';
//BookMark:=Qr_ProVenda.GetBookmark;

fMostraTotais(0);
end;

procedure TFrm_Ped_02_Venda.Qr_ProVendaAfterInsert(DataSet: TDataSet);
begin
mTotItens_ant:=0;
mTotQtd_ant  :=0;
mTotReal_ant :=0;

end;

procedure TFrm_Ped_02_Venda.Qr_ProVendaBeforePost(DataSet: TDataSet);
begin
if (mVda_SaiNor) and (Qr_ProVendaTMP_QTDPED.AsFloat>0) and
   (Qr_ProVendaTMP_QTDPED.AsFloat>Qr_ProVendaestoque.AsFloat) then
   begin
   FMensagem('Quantidade Pedida: '+Formatfloat(mcasqtd, Qr_ProVendaTMP_QTDPED.AsFloat)
            +' Estoque: '+Formatfloat(mcasqtd, Qr_ProVendaestoque.AsFloat)
            +' Quantidade Recusada!!!!!',0,['0'],0);
   if Qr_ProVendaestoque.AsFloat>0 then
      Qr_ProVendaTMP_QTDPED.AsFloat:=Qr_ProVendaestoque.AsFloat
   else
      Qr_ProVendaTMP_QTDPED.AsFloat:=Qr_ProVendaestoque.AsFloat;
   DBGrid1.SelectedField:=Qr_ProVendaTMP_QTDPED;
   abort;
   end
else if (DM4.Tb_Par01PMENPZORC.Value=1) and (Qr_ProVendaTMP_QTDPED.AsFloat>0) and
   (Qr_ProVendaTMP_QTDPED.AsFloat>Qr_ProVendaestoque.AsFloat) then
   begin
   FMensagem('Quantidade Pedida: '+Formatfloat(mcasqtd, Qr_ProVendaTMP_QTDPED.AsFloat)
            +' Estoque: '+Formatfloat(mcasqtd, Qr_ProVendaestoque.AsFloat),0,['0'],0);
   end;

if (Qr_ProVendaTMP_TIPOPCO.AsInteger<1) or (Qr_ProVendaTMP_TIPOPCO.AsInteger>3) then
   Qr_ProVendaTMP_TIPOPCO.value:=mtipo_preco_ant;

if (DM1.Tb_PargerPDQPCOP.Value=1) and (Qr_ProVendaTMP_TIPOPCO.AsInteger<>1) then
   Qr_ProVendaTMP_TIPOPCO.value:=mtipo_preco_ant
else if (DM1.Tb_PargerPDQPCOP.Value=2) and (Qr_ProVendaTMP_TIPOPCO.AsInteger>2) then
   Qr_ProVendaTMP_TIPOPCO.value:=mtipo_preco_ant;

if ((mVenda_TipoPreco<>2) and (mVenda_TipoPreco<>5))
   or (Qr_ProVendaTMP_PCOUNI.AsFloat=0) then
   begin
   if mVenda_TipoPreco=5 then
      Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDVLRINC.AsFloat
   else if mVenda_TipoPreco=6 then
      begin
      if Qr_ProVendaPDUCPR.AsFloat>0 then
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDUCPR.AsFloat
      else if Qr_ProVendaPDPRECOC.AsFloat>0 then
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECOC.AsFloat
      else
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;

      end
   else if mVenda_TipoPreco=8 then
      begin
      if Qr_ProVendaPDPRECOC.AsFloat>0 then
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECOC.AsFloat
      else
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;
      end
   else  if Qr_ProVendaTMP_TIPOPCO.AsInteger=3 then
      Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO3.AsFloat
   else if (Qr_ProVendaTMP_TIPOPCO.AsInteger=2) then
      Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO2.AsFloat
   else
      Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;
   end;

if Qr_ProVendaTMP_QTDPED.AsFloat>0 then
   begin
   if Qr_ProVendaTMP_PCOUNI.AsFloat=0 then
      begin
      if Qr_ProVendaTMP_TIPOPCO.AsInteger=3 then
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO3.AsFloat
      else if (Qr_ProVendaTMP_TIPOPCO.AsInteger=2) then
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO2.AsFloat
      else
         Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;
      end;
   Qr_ProVendaTMP_TOTAL.AsFloat:=Arredonda( Qr_ProVendaTMP_QTDPED.AsFloat
                            *Qr_ProVendaTMP_PCOUNI.AsFloat ,DM1.Tb_PargerPCASAS.AsInteger);

   end;

Qr_ProVendaTMP_TOTAL.AsFloat:=Arredonda(Qr_ProVendaTMP_PCOUNI.AsFloat*Qr_ProVendaTMP_QTDPED.AsFloat, DM1.Tb_PargerPCASAS.AsInteger);
end;

procedure TFrm_Ped_02_Venda.DBGrid1ColExit(Sender: TObject);
begin
if (Qr_ProVenda.State in [dsEdit,dsInsert]) then
   begin
   if (DBGrid1.SelectedField=Qr_ProVendaTMP_TIPOPCO) then
      begin
      if ((mVenda_TipoPreco<>2) and (mVenda_TipoPreco<>5))
      or (Qr_ProVendaTMP_PCOUNI.AsFloat=0) then
         begin
         if Qr_ProVendaTMP_TIPOPCO.AsInteger=3 then
            Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO3.AsFloat
         else if (Qr_ProVendaTMP_TIPOPCO.AsInteger=2) then
            Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO2.AsFloat
         else
            Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;
         end;
      end
   else if (DBGrid1.SelectedField=Qr_ProVendaTMP_QTDPED) then
      begin
      if Qr_ProVendaTMP_QTDPED.AsFloat>0 then
         begin
         if Qr_ProVendaTMP_PCOUNI.AsFloat=0 then
            begin
            if Qr_ProVendaTMP_TIPOPCO.AsInteger=3 then
               Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO3.AsFloat
            else if (Qr_ProVendaTMP_TIPOPCO.AsInteger=2) then
               Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendaPDPRECO2.AsFloat
            else
               Qr_ProVendaTMP_PCOUNI.AsFloat:=Qr_ProVendapcoven.AsFloat;
            end;
         Qr_ProVendaTMP_TOTAL.AsFloat:=Arredonda( Qr_ProVendaTMP_QTDPED.AsFloat
                                  *Qr_ProVendaTMP_PCOUNI.AsFloat ,DM1.Tb_PargerPCASAS.AsInteger);

         end;
      end;
   end;
end;

procedure TFrm_Ped_02_Venda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_ProVendaTMP_QTDPED.AsFloat>0 then
   begin
   DBGrid1.Canvas.Brush.Color := clSkyBlue;
   end;
if DataCol=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   end;
DBGrid1.Canvas.FillRect(Rect);
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);



end;

procedure TFrm_Ped_02_Venda.bbSairClick(Sender: TObject);
begin
if fsonumero(st_itens.Caption)>0 then
   begin
   if fmensagem('Quer Realmente Cancelar as Vendas Selecionadas?',0,['1','2'],2)<>mrYes then
      exit;
   end;
mVenda_Confirmada:=1;
close;

end;

procedure TFrm_Ped_02_Venda.BitBtn1Click(Sender: TObject);
begin
  mVenda_Confirmada:=2;
  close;

end;

procedure TFrm_Ped_02_Venda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (mVenda_Confirmada=0) and (fSonumero(st_itens.Caption)>0) then
   begin
   fmensagem('Para Fechar esta janela é preciso confirmar ou não Confirmar!',0,['0'],0);
   CanClose:=false;
   end;
end;

{
procedure TFrm_Ped_02_Venda.GridColumnClick(Sender: TObject; Column: TdxDBTreeListColumn);

  function GetFieldName(AColumn : TdxDBTreeListColumn) : String;
  begin
    with TdxDBGrid(Sender).DataSource.DataSet.FieldByName(AColumn.FieldName) do begin
      Result := FieldName;
      if FieldKind = fkLookup then Result := KeyFields;
    end;
  end;

var
  ID, i: Integer;
  SQLOrderSt: String;
  OldSorted: TdxTreeListColumnSort;
begin
  with TdxDBGrid(Sender) do begin
    OldSorted := Column.Sorted;
    if (GetAsyncKeyState(VK_SHIFT) = 0) then
      TdxDBGrid(Sender).ClearColumnsSorted;

    if OldSorted = csUp then
      Column.Sorted := csDown
    else
      Column.Sorted := csUp;

    with TQuery(DataSource.DataSet) do begin
      ID := FieldByName('PDNOME').AsInteger;
      DisableControls;
      try
        Close;
        SQLOrderSt := '';
        for i := 0 to SortedColumnCount - 1 do begin
          if SQLOrderSt <> '' then
            SQLOrderSt := SQLOrderSt + ', ';
          SQLOrderSt := SQLOrderSt + GetFieldName(SortedColumns[i]);
          if SortedColumns[i].Sorted = csDown then
            SQLOrderSt := SQLOrderSt + ' DESC';
        end;
        if SQLOrderSt <> '' then
          SQLOrderSt := 'ORDER BY ' + SQLOrderSt;
        SQL.Strings[SQL.Count - 1] := SQLOrderSt;
        Open;
        Locate('PDNOME', ID, []);
      finally
        EnableControls;
      end;
    end;
  end;

end;
}
procedure TFrm_Ped_02_Venda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key<>9) and (key<>27) then
   begin
   if (DBGrid1.SelectedField<>Qr_ProVendaTMP_QTDPED)
       and (DBGrid1.SelectedField<>Qr_ProVendaTMP_PCOUNI)
       and (DBGrid1.SelectedField<>Qr_ProVendaTMP_TIPOPCO) then
      begin
      if key=8 then
         begin
         edt_descricao.Text:=copy(edt_descricao.Text,1,length(edt_descricao.Text)-1);
         key:=0;
         end;
      end;
   end;
end;

procedure TFrm_Ped_02_Venda.edt_descricaoChange(Sender: TObject);
begin
      Qr_ProVenda.Locate('PDNOME',edt_descricao.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_Ped_02_Venda.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (DBGrid1.SelectedField=Qr_ProVendaTMP_QTDPED)
or (DBGrid1.SelectedField=Qr_ProVendaTMP_PCOUNI) 
or (DBGrid1.SelectedField=Qr_ProVendaTMP_TIPOPCO) then
   begin
   if key in [',','.'] then
      key:=DecimalSeparator
   else if key in ['E','e'] then
      key:=#0;
   end
else
   begin
   if (key in ['a'..'z']) or (key in ['A'..'Z']) or (key in ['0'..'9']) or
      (key in ['{','}','[',']','%','$','#','@','!','-','_','(',')',' ']) then
      edt_descricao.Text:=edt_descricao.Text+key;
   end;


end;

procedure TFrm_Ped_02_Venda.Qr_ProVendaBeforeEdit(DataSet: TDataSet);
begin
  mtipo_preco_ant:=Qr_ProVendaTMP_TIPOPCO.AsInteger;

end;

procedure TFrm_Ped_02_Venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ped_02_Venda.CB_ESTOQUEClick(Sender: TObject);
begin
FAbreProduto(1);
end;

procedure TFrm_Ped_02_Venda.bb_gravarClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_Ped_02_Venda','');
fGravaPadroes(codusr,'CB_MATPREV'     ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[0],'true','false'));
fGravaPadroes(codusr,'CB_MATPRIMA'    ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[1],'true','false'));
fGravaPadroes(codusr,'CB_EMBALAGEM'   ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[2],'true','false'));
fGravaPadroes(codusr,'CB_PRODPROD'    ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[3],'true','false'));
fGravaPadroes(codusr,'CB_ACABADO'     ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[4],'true','false'));
fGravaPadroes(codusr,'CB_SUBPRO'      ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[5],'true','false'));
fGravaPadroes(codusr,'CB_ACES'        ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[6],'true','false'));
fGravaPadroes(codusr,'CB_USOCONSUMO'  ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[7],'true','false'));
fGravaPadroes(codusr,'CB_IMOBILIZADO' ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[8],'true','false'));
fGravaPadroes(codusr,'CB_SERVICO'     ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[9],'true','false'));
fGravaPadroes(codusr,'CB_INSUMOS'     ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[10],'true','false'));
fGravaPadroes(codusr,'CB_OUTROS'      ,'checked'         ,'_Ped_02_Venda',iif(CLFNivel.Checked[11],'true','false'));
pnl_conf.Visible:=False;


end;

procedure TFrm_Ped_02_Venda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F7 then
  pnl_conf.Visible:= not pnl_conf.Visible;
end;

procedure TFrm_Ped_02_Venda.FormShow(Sender: TObject);
begin
FAbreProduto(0);

end;

end.
