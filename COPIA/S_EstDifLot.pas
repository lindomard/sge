unit S_EstDifLot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, RLReport,lerarq,adodb;

type
  TFrm_EstDifLot = class(TForm)
    Src_EstLot: TDataSource;
    DBGrid1: TDBGrid;
    Qr_estLot: TQuery;
    Panel1: TPanel;
    RG_ESTOQUE: TRadioGroup;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    bbEstLot: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand4: TRLBand;
    lbl_dathora: TRLLabel;
    lbl_pagina: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    bbloteestoque: TBitBtn;
    Label1: TLabel;
    CODPRO: TEdit;
    lbl_grade: TLabel;
    GRADE: TEdit;
    Qr_estLotESTLOT: TFloatField;
    Qr_estLotESTOQUE: TFloatField;
    Qr_estLotPDCODPRO: TFloatField;
    Qr_estLotPDNOME: TStringField;
    Qr_estLotPDMARCA: TStringField;
    Qr_estLotPDUND: TStringField;
    Qr_estLotCODEMP: TFloatField;
    Qr_estLotFILIAL: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbEstLotClick(Sender: TObject);
    procedure bbloteestoqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EstDifLot: TFrm_EstDifLot;
implementation

uses S_Agde, func_excecoes, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_EstDifLot.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EstDifLot.bbAplicarClick(Sender: TObject);
var
Query_Update:TQuery;
begin
bbAplicar.Enabled:=false;


Qr_estLot.Close;
Qr_estLot.SQL.Clear;

Qr_estLot.SQL.Add('SELECT ESTPROD.*,PDNOME,PDUND,PDMARCA FROM ( '
                 +'SELECT SUM(ESTLOT) AS ESTLOT, SUM(ESTOQUE) AS ESTOQUE '
                 +',PDCODPRO,FILIAL,CODEMP FROM ( '
                 +'SELECT 0 AS ESTLOT, NVL(CESALDO,0)  AS ESTOQUE '
                 +',CECODPRO AS PDCODPRO,NVL(CEFILIAL,1) AS FILIAL,CECODEMP AS CODEMP '
                 +'FROM CADEST UNION ALL '
                 +'SELECT SUM(NVL(CLQTD,0)) AS ESTLOT, 0 AS ESTOQUE ,CLCODPRO AS PDCODPRO ,NVL(CLFILIAL,0) AS FILIAL '
                 +',CLCODEMP AS CODEMP FROM CADLGC GROUP BY CLCODPRO,CLFILIAL,CLCODEMP '
                 +') TAB GROUP BY PDCODPRO,FILIAL,CODEMP '
                 +') ESTPROD,CADPRO WHERE CADPRO.PDCODPRO=ESTPROD.PDCODPRO AND ESTLOT<>ESTOQUE ');


if trim(codpro.Text)<>'' then
   begin
   Qr_estLot.SQL.Add(' AND ESTPROD.PDCODPRO=0'+fdeixanum(CODPRO.Text));
   end;
try
   Qr_estLot.Open;
except
   Qr_EstLot.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

Qr_EstLot.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

bbAplicar.Enabled:=true;
end;

procedure TFrm_EstDifLot.bbEstLotClick(Sender: TObject);
var
query_exe: TQuery;
begin
if fmensagem('Quer Realmente igualar os os Estoques?',0,['1','2'],2)<>mrYes then
   exit;

bbEstLot.Enabled:=false;

{if RG_ESTOQUE.ItemIndex=6 then
   begin
   mNomEstLot:='NVL(CLQTD_REP,0)';
   mNomCadest:='CESALDO_REP';
   mNomEstPro:='PDSALDO_REP';
   end
else if RG_ESTOQUE.ItemIndex=5 then
   begin
   mNomEstLot:='NVL(CLQTD_DEP,0)';
   mNomCadest:='CESALDO_DEP';
   mNomEstPro:='PDSALDO_DEP';
   end
else if RG_ESTOQUE.ItemIndex=4 then
   begin
   mNomEstLot:='NVL(CLQTD_PRAT,0)';
   mNomCadest:='CESALDO_PRAT';
   mNomEstPro:='PDSALDO_PRAT';
   end
else if RG_ESTOQUE.ItemIndex=3 then
   begin
   mNomEstLot:='NVL(CLQTDC,0)';
   mNomCadest:='CESALDOC)';
   mNomEstPro:='PDSALDOC';
   end
else if RG_ESTOQUE.ItemIndex=2 then
   begin

   mNomEstLot:='NVL(CLQTDR,0)';
   mNomCadest:='CESALDOR';
   mNomEstPro:='PDSALDOR';
   end
else if RG_ESTOQUE.ItemIndex=1 then
   begin
   mNomEstLot:='NVL(CLQTDT,0)';
   mNomCadest:='CESALDOT';
   mNomEstPro:='PDSALDOT';
   end
else if RG_ESTOQUE.ItemIndex=0 then
   begin
   mNomEstLot:='NVL(CLQTD,0)';
   mNomCadest:='CESALDO';
   mNomEstPro:='PDSALDO';
   end;}

// INICIO


query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_exe.SQL.clear;
Query_exe.SQL.Add('Update CADEST set CESALDO=0 ');
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,186,'SGE','CADVER');
   freeandnil(query_exe);
   exit;
   end;
query_exe.close;
Query_exe.SQL.clear;
Query_exe.SQL.Add('Update CADPRO set PDSALDO=0 ');
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,197,'SGE','CADVER');
   freeandnil(query_exe);
   exit;
   end;

freeandnil(query_exe);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
{
mcinst:='Update CADEST set CESALDO='+'NVL( ( Select sum(NVL(CLQTD,0)) from CADLGC '
       +' where  CLCODEMP(+)=CECODEMP and '
       +' CLCODPRO(+)=CECODPRO AND CLFILIAL(+)=CEFILIAL),0) ';
}


mcinst:=' MERGE INTO CADEST t1 '
       +' USING (SELECT CLCODEMP,CLCODPRO,CLFILIAL,sum(nvl(CLQTD,0)) as qtd '
       +'    FROM CADLGC ';

if trim(codpro.Text)<>'' then
   mcinst:=mcinst+' where CLCODPRO=0'+fdeixanum(CODPRO.Text);

mcinst:=mcinst+' group by CLCODEMP,CLCODPRO,CLFILIAL) ss '
       +' ON (t1.CECODEMP = ss.CLCODEMP '
       +' AND t1.CECODPRO = ss.CLCODPRO '
       +' AND t1.CEFILIAL = ss.CLFILIAL  ) '   //  -- whatever the key is '
       +' WHEN MATCHED THEN '
       +' UPDATE SET t1.CESALDO = ss.QTD '
       +'    WHEN NOT MATCHED THEN '
       +'      INSERT( t1.CECODEMP, t1.CECODPRO,t1.CEFILIAL,t1.CESALDO) '
       +' VALUES( ss.CLCODEMP, ss.CLCODPRO,ss.CLFILIAL,ss.QTD ) ';


DM1.Query1.SQL.Add(mcinst);


try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
mcinst:='Update CADPRO set PDSALDO='+'NVL( ( Select sum(NVL(CLQTD,0)) from CADLGC '
       +' where  CLCODEMP(+)=PDCODEMP and '
       +' CLCODPRO(+)=PDCODPRO ),0) ';
DM1.Query1.SQL.Add(mcinst);
if trim(codpro.Text)<>'' then
   DM1.Query1.SQL.Add(' where PDCODPRO=0'+fdeixanum(CODPRO.Text));

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPRO SET PDSALDO=0 where PDSALDO is null');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

bbEstLot.Enabled:=true;

end;

procedure TFrm_EstDifLot.bbloteestoqueClick(Sender: TObject);
var
strProc : TADOStoredProc;

begin
if fmensagem('Quer Realmente igualar os Lotes com o Estoques?',0,['1','2'],2)<>mrYes then
   exit;
bbloteestoque.Enabled:=false;


if not DM1_ADO.ADOConnection1.Connected=true then
   DM1_ADO.ADOConnection1.Open;
if DM1_ADO.ADOConnection1.Connected=false then
   begin
   MessageDlg('erro na conexao!', mtError,[mbOk],0);
   exit;
   end;


strProc := TADOStoredProc.Create(self);
try
  strProc.Connection:= DM1_ADO.ADOConnection1;
  try
     strProc.Close;
     strProc.ProcedureName:= 'cadlgcigualcadest';
     strProc.Parameters.CreateParameter('p_codpro',ftFloat,pdInput,SizeOf(Double), fsonumero(codpro.Text));
     strProc.Parameters.CreateParameter('P_filial',ftFloat,pdInput,SizeOf(Double),1);
     strProc.Open; //<--Error: Parameter 'Abbr' not found.
  finally
     end;
  finally
  end;




bbloteestoque.Enabled:=true;
bbAplicarClick(self);

end;

procedure TFrm_EstDifLot.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EstDifLot.FormCreate(Sender: TObject);
begin
if Log_TipoLote=2 then
   begin
   lbl_grade.Visible:=true;
   GRADE.Visible    :=true;
   end
else
   begin
   lbl_grade.Visible:=false;
   GRADE.Visible    :=false;
   end;

end;

end.
