unit s_Lic2_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables;

type
  TFrm_Lic2_Pedido = class(TForm)
    Qry_Pendencia: TQuery;
    Qry_PendenciaPRODUTO: TFloatField;
    Qry_PendenciaNOME: TStringField;
    Qry_PendenciaUNIDADE: TStringField;
    Qry_PendenciaLICITADA: TFloatField;
    Qry_PendenciaENVIADA: TFloatField;
    Qry_PendenciaPENDENTE: TFloatField;
    Ds_Pendente: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lbl_licitacao: TLabel;
    Label2: TLabel;
    lbl_cliente: TLabel;
    Panel1: TPanel;
    Shape_fatparc: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape_naofat: TShape;
    Shape_fattotal: TShape;
    Label34: TLabel;
    btn_sair: TBitBtn;
    PageControl1: TPageControl;
    tbs_produtos: TTabSheet;
    tbs_gerados: TTabSheet;
    Grid_Chave: TDBGrid;
    Qry_PendenciaQTD_FATURAR: TFloatField;
    PEDIDO: TBitBtn;
    Qry_Chave: TQuery;
    Qry_ChaveLP_CHAVEPED: TFloatField;
    Ds_Chave: TDataSource;
    DBGrid1: TDBGrid;
    Qry_PendenciaLC2_PCOPZ: TFloatField;
    Qry_PendenciaLC2_PCOAV: TFloatField;
    U_Pendencia: TUpdateSQL;
    procedure btn_sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Qry_PendenciaAfterEdit(DataSet: TDataSet);
    procedure Qry_PendenciaAfterPost(DataSet: TDataSet);
    procedure PEDIDOClick(Sender: TObject);
    procedure Qry_PendenciaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    mQtdSelecionado_ant: boolean;
    mQtdSelecionado: integer;
  public

    mFaturar: boolean;
    { Public declarations }


    procedure fLerPedido(pChave: integer;pTodos: boolean);

  end;

var
  Frm_Lic2_Pedido: TFrm_Lic2_Pedido;

implementation

uses S_DM1, lerarq, Func, func_excecoes, Func2;

{$R *.dfm}

procedure TFrm_Lic2_Pedido.btn_sairClick(Sender: TObject);
begin
mFaturar:=false;

close;
end;



procedure TFrm_Lic2_Pedido.fLerPedido(pChave: integer;pTodos: boolean);
begin



Qry_Pendencia.Close;
Qry_Pendencia.SQL.Clear;
Qry_Pendencia.SQL.Add('SELECT CODPRO AS PRODUTO, PDNOME AS NOME,PDUND AS UNIDADE,MAX(LC2_PCOAV) as LC2_PCOAV,max(LC2_PCOPZ) as LC2_PCOPZ '
                                    +', SUM(LICITADA) AS LICITADA, SUM(ENVIADA) AS ENVIADA '
                                    +', SUM(LICITADA-ENVIADA) AS PENDENTE ');
if pTodos then
   Qry_Pendencia.SQL.Add(', SUM(LICITADA-ENVIADA) AS QTD_FATURAR ')
else
   Qry_Pendencia.SQL.Add(', 0 AS QTD_FATURAR ');

Qry_Pendencia.SQL.Add(' FROM (');
Qry_Pendencia.SQL.Add(' select LC2_CODPRO AS CODPRO,'

                                    +' PDNOME,PDUND, MAX(LC2_PCOAV) as LC2_PCOAV, max(LC2_PCOPZ) AS LC2_PCOPZ, '
                                    +' SUM(LC2_QTD) AS LICITADA, 0 AS ENVIADA'
                                    +' from CADLC2,CADPRO WHERE LC2_CHAVE='+inttostr(pChave)
                                    +' AND PDCODPRO=LC2_CODPRO and LC2_GANHOU='+quotedstr('X')
                                    +fla_EmpBaixaAlta(0,'CADPRO',' and ',codemp,'PDCODEMP',' ')
                                    +' GROUP BY LC2_CODPRO,PDNOME,PDUND ');


Qry_Pendencia.SQL.Add(' UNION ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');


Qry_Pendencia.SQL.Add('select P2CODPRO AS CODPRO, PDNOME,PDUND, '
                      +' 0 AS LC2_PCOAV,0 AS LC2_PCOPZ '
                      +',0 AS LICITADAS, SUM(P2QTD) AS ENVIADA '
                                    +' from cadp02'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                    +' P1STATUS<'+mstatus_excluido+'  '
                                    +' and P1NPEDORI=0'+inttostr(pChave)
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' ')
                                    +' GROUP BY P2CODPRO,PDNOME,PDUND ');
Qry_Pendencia.SQL.Add(' ) GROUP BY CODPRO,PDNOME,PDUND '
                                    +' order by PDNOME,PDUND,CODPRO' );
try
   Qry_Pendencia.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qry_Pendencia,114,'SGE','CADP02');
   end;
   end;
// INICIO


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
Qry_Chave.Close;
Qry_Chave.SQL.Clear;
Qry_Chave.SQL.Add('select P1CHAVE AS LP_CHAVEPED'
                                    +' from cadp01 where  P1STATUS<'+mstatus_excluido+'  '
                                    +' and P1NPEDORI=0'+inttostr(pChave)
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' '));
Qry_Chave.SQL.Add(' order by LP_CHAVEPED ' );
try
   Qry_Chave.Open;
except
   Qry_Chave.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

if pTodos then
   mQtdSelecionado:=Qry_Pendencia.RecordCount
else
   mQtdSelecionado:=0;

end;

procedure TFrm_Lic2_Pedido.FormShow(Sender: TObject);
begin
//mQtdSelecionado:=0;
mFaturar:=false;
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_Lic2_Pedido.Qry_PendenciaAfterEdit(DataSet: TDataSet);
begin
    mQtdSelecionado_ant:=iif(Qry_PendenciaQTD_FATURAR.asinteger>0,true,false);

end;

procedure TFrm_Lic2_Pedido.Qry_PendenciaAfterPost(DataSet: TDataSet);
begin
if mQtdSelecionado_ant<>iif(Qry_PendenciaQTD_FATURAR.asinteger>0,true,false) then
   begin
   mQtdSelecionado:=mQtdSelecionado+iif(mQtdSelecionado_ant=true,-1,1);
   PEDIDO.enabled:=mQtdselecionado>0;

   end;

end;

procedure TFrm_Lic2_Pedido.PEDIDOClick(Sender: TObject);
begin
mFaturar:=true;
close;
end;

procedure TFrm_Lic2_Pedido.Qry_PendenciaBeforePost(DataSet: TDataSet);
begin
if Qry_PendenciaQTD_FATURAR.asfloat>Qry_PendenciaPENDENTE.asfloat then
   Qry_PendenciaQTD_FATURAR.asfloat:=Qry_PendenciaPENDENTE.asfloat;
end;

end.
