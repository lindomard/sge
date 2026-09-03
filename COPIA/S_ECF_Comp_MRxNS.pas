unit S_ECF_Comp_MRxNS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit, DB, RxMemDS,
  Grids, DBGrids, Buttons;

type
  TFrm_ECF_Comp_MRxNS = class(TForm)
    Panel_cab: TPanel;
    gb_maparesumo: TGroupBox;
    Label1: TLabel;
    ecf_totvda_bruta: TCurrencyEdit;
    Label2: TLabel;
    ecf_totvda_liq: TCurrencyEdit;
    Label3: TLabel;
    ecf_totvda_canc: TCurrencyEdit;
    Label4: TLabel;
    ecf_totacres: TCurrencyEdit;
    Label5: TLabel;
    ecf_totdes: TCurrencyEdit;
    Label6: TLabel;
    ecf_totissqn: TCurrencyEdit;
    Label7: TLabel;
    ecf_totisentas: TCurrencyEdit;
    Label8: TLabel;
    ecf_totNaoInc: TCurrencyEdit;
    Label9: TLabel;
    ecf_totsubstTrib: TCurrencyEdit;
    GroupBox1: TGroupBox;
    ns_totvda_bruta: TCurrencyEdit;
    ns_totvda_liq: TCurrencyEdit;
    ns_totvda_canc: TCurrencyEdit;
    ns_totacres: TCurrencyEdit;
    ns_totdes: TCurrencyEdit;
    ns_totissqn: TCurrencyEdit;
    ns_totisentas: TCurrencyEdit;
    ns_totNaoInc: TCurrencyEdit;
    ns_totsubstTrib: TCurrencyEdit;
    gb_totaliq: TGroupBox;
    DBGrid1: TDBGrid;
    mem_MRxNS: TRxMemoryData;
    mem_MRxNSOBSERV: TStringField;
    mem_MRxNSALIQ: TFloatField;
    mem_MRxNSVALOR_MR: TFloatField;
    mem_MRxNSVALOR_NS: TFloatField;
    DataSource1: TDataSource;
    mem_MRxNSESPACO: TStringField;
    GroupBox2: TGroupBox;
    dif_totvda_bruta: TCurrencyEdit;
    dif_totvda_liq: TCurrencyEdit;
    dif_totvda_canc: TCurrencyEdit;
    dif_totacres: TCurrencyEdit;
    dif_totdes: TCurrencyEdit;
    dif_totissqn: TCurrencyEdit;
    dif_totisentas: TCurrencyEdit;
    dif_totNaoInc: TCurrencyEdit;
    dif_totsubstTrib: TCurrencyEdit;
    Label10: TLabel;
    ecf_tottrib: TCurrencyEdit;
    ns_tottrib: TCurrencyEdit;
    dif_tottrib: TCurrencyEdit;
    mem_MRxNSESPACO2: TStringField;
    mem_MRxNSdifer: TFloatField;
    bbSair: TBitBtn;
    bbConfirma: TBitBtn;
    bbIsentTrib: TBitBtn;
    bbIsentosRet: TBitBtn;
    sbSub060p010: TSpeedButton;
    sbSub000p060: TSpeedButton;
    sbSub040p010: TSpeedButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mem_MRxNSCalcFields(DataSet: TDataSet);
    procedure dif_totvda_brutaExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSub060p010Click(Sender: TObject);
    procedure sbSub000p060Click(Sender: TObject);
    procedure sbSub040p010Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function fSubstituir060p000(pValor: Real): Boolean;
    function fSubstituir000p060(pValor: Real): Boolean;
    function fSubstituir040p000(pValor: Real): Boolean;
    function fSubstituir000p040(pValor: Real): Boolean;


  end;

var
  Frm_ECF_Comp_MRxNS: TFrm_ECF_Comp_MRxNS;
  mAceita_Valores: boolean=false;
  mSaiTrib: Real=0;
  mSaiRet:Real=0;
  mEntraTrib: Real=0;
  mEntraRet:Real=0;
  mRed_DataNF: TDatetime;

implementation

uses Func, S_DM1, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ECF_Comp_MRxNS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if DataCol<2 THEN
   begin
   DBGrid1.Canvas.Brush.Color := $00A6FFFF;
//   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
//   DBGrid1.Canvas.Font.Color := clBlack;
   end
else if Datacol=4 then
   DBGrid1.Canvas.Brush.Color := $00C6FFC6
else if Datacol=6 then
   DBGrid1.Canvas.Brush.Color := $008080FF;

DBGrid1.Canvas.FillRect(Rect);
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);


end;

procedure TFrm_ECF_Comp_MRxNS.mem_MRxNSCalcFields(DataSet: TDataSet);
begin
mem_MRxNSdifer.AsFloat:=mem_MRxNSVALOR_MR.AsFloat-mem_MRxNSVALOR_NS.AsFloat;
end;

procedure TFrm_ECF_Comp_MRxNS.dif_totvda_brutaExit(Sender: TObject);
begin
dif_totvda_bruta.Value:=ecf_totvda_bruta.Value-ns_totvda_bruta.Value;
dif_totvda_liq.Value  :=ecf_totvda_liq.Value-ns_totvda_liq.Value;
dif_totvda_canc.Value :=ecf_totvda_canc.Value-ns_totvda_canc.Value;
dif_totacres.Value    :=ecf_totacres.Value-ns_totacres.Value;
dif_totdes.Value      :=ecf_totdes.Value-ns_totdes.Value;
dif_totissqn.Value    :=ecf_totissqn.Value-ns_totissqn.Value;
dif_totisentas.Value  :=ecf_totisentas.Value-ns_totisentas.Value;
dif_totNaoInc.Value   :=ecf_totNaoInc.Value-ns_totNaoInc.Value;
dif_totsubstTrib.Value:=ecf_totsubstTrib.Value-ns_totsubstTrib.Value;
dif_tottrib.Value     :=ecf_tottrib.Value-ns_tottrib.Value;









end;

procedure TFrm_ECF_Comp_MRxNS.bbSairClick(Sender: TObject);
begin
  mAceita_Valores:=false;
  close;
end;

procedure TFrm_ECF_Comp_MRxNS.bbConfirmaClick(Sender: TObject);
var
mDifer: Real;
begin
  mDifer:=arredonda(ecf_totvda_liq.Value,2)-Arredonda(ns_totvda_liq.value,2);
  if mDifer<0 then
     mDifer:=mDifer*-1;
{
  if mDifer>0.1 then
     begin
     fmensagem('Total da Venda Liquida não Confere. Ajuste Inválido!',0,['0'],0);
     exit;
     end;
}     
  if (dif_totsubstTrib.Value=0) and  (dif_tottrib.value=0) then
     begin
     mAceita_Valores:=false;
     close;
     end;
// somente isento


// termino do isento




  if dif_totsubstTrib.Value<0 then
     begin
     mSaiTrib  :=dif_tottrib.Value;
     mSaiRet   :=0;
     mEntraTrib:=0;
     mEntraRet :=0;
     end
  else
     begin
     mSaiTrib  :=0;
     mSaiRet   :=dif_totsubstTrib.Value;
     mEntraTrib:=0;
     mEntraRet :=0;
     end;


  mAceita_Valores:=true;
  close;
end;

procedure TFrm_ECF_Comp_MRxNS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;



function TFrm_ECF_Comp_MRxNS.fSubstituir060p000(pValor: Real): Boolean;
var
mValorFalta: Real;
mAliq: Real;
begin
mValorFalta:=pValor;
la_empresas :='P2CODEMP=0'+InttoStr(codemp);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');


DM1.Query3.Close;
DM1.Query3.Sql.clear;
DM1.Query3.Sql.Add('Select P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODEMP,P2QTD,P2PRECO '
                  +',P2TOTLIQ,P2TOTDES,P2SIT,P2BASEN,P2ALIQ,P2ICMSN,P2ITEM FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2SIT=:SIT '
                  +' and P1DATDOC=:DATANF '            );
DM1.Query3.sql.add(' and P2TOTLIQ<=:VALOR ');

DM1.Query3.ParamByName('SIT').AsString:='060';
DM1.Query3.ParamByName('VALOR').Asfloat:=pvalor;
DM1.Query3.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
//ex_erroSql_Novo(DM1.query3,244,'frm_','CADP02');
//DM1.Query3.sql.savetofile('c:\sql000.txt');

try
   DM1.Query3.Open;
except
   DM1.Query3.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;

//inicio



DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.Add('Select P2ALIQ,COUNT(*) AS QTD FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2SIT=:SIT '
                  +' and P1DATDOC=:DATANF '
                  +' and P2ALIQ>0');
DM1.Query1.sql.add(' Group by p2ALIQ '
                  +' ORDER BY QTD');
DM1.Query1.ParamByName('SIT').AsString:='000';
DM1.Query1.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
try
   DM1.Query1.Open;
except
   DM1.Query1.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;
maliq:=DM1.Query1.fieldbyName('P2ALIQ').asfloat;

While (not DM1.Query3.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat>mValorFalta then
      DM1.Query3.Last
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP01 set P1BASEN=P1BASEN+:TOTLIQ '
                        +',P1BASENN=P1BASENN+:TOTLIQ '
//                        +',P1PISCOFN=P1PISCOFN+:TOTLIQ '
//                        +',P1PISCOFR=P1PISCOFR-:TOTLIQ '
                        +',P1ICMSN=P1ICMSN+:TOTICM '
                        +',P1ICMSNN=P1ICMSNN+:TOTICM '
                        +' where P1LOTSEQ=:LOTSEQ '
                        +' and P1CHAVE=:CHAVE '
                        +' and P1ORDEM=:ORDEM '
                        +' and P1CODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;


      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADNS set NSBASENI=NSBASENI+:TOTLIQ '
                        +',NSBASENN=NSBASENN+:TOTLIQ '
                        +',NSPISCOFN=NSPISCOFN+:TOTLIQ '
                        +',NSPISCOFR=NSPISCOFR-:TOTLIQ '
                        +',NSTOTNOR=NSTOTNOR+:TOTLIQ '
                        +',NSTOTRET=NSTOTRET-:TOTLIQ '
                        +',NSICMSN=NSICMSN+:TOTICM '
                        +',NSICMSNN=NSICMSNN+:TOTICM '
                        +' where NSLOTSEQ_CP=:LOTSEQ '
                        +' and NSCHAVEP=:CHAVE '
                        +' and NSORDEMP=:ORDEM '
                        +' and NSCODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      DM1.Query1.close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2SIT=:SIT, '
                        +' P2BASEN=:TOTLIQ, P2ICMSN=:TOTICM,P2ALIQ=:P2ALIQ '
                        +' where P2LOTSEQ=:LOTSEQ '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2ORDEM=:ORDEM '
                        +' and P2CODEMP=:CODEMP '
                        +' and P2ITEM=:ITEM ');

      DM1.Query1.ParamByName('SIT').AsString  :='000';
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('P2ALIQ').AsFloat:=mAliq;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParamByName('ITEM').AsFloat:=DM1.Query3.fieldbyName('P2ITEM').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      mValorFalta:=mValorFalta-DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      end;
   DM1.Query3.Next;
   end;
result:=true;
end;


function TFrm_ECF_Comp_MRxNS.fSubstituir000p060(pValor: Real): Boolean;
var
mValorFalta: Real;
begin
mValorFalta:=pValor;
la_empresas :='P2CODEMP=0'+InttoStr(codemp);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');


DM1.Query3.Close;
DM1.Query3.Sql.clear;
DM1.Query3.Sql.Add('Select P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODEMP,P2QTD,P2PRECO '
                  +',P2TOTLIQ,P2TOTDES,P2SIT,P2BASEN,P2ALIQ,P2ICMSN,P2ITEM FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2SIT=:SIT '
                  +' and P1DATDOC=:DATANF '            );
DM1.Query3.sql.add(' and P2TOTLIQ<=:VALOR ');

DM1.Query3.ParamByName('SIT').AsString:='000';
DM1.Query3.ParamByName('VALOR').Asfloat:=pvalor;
DM1.Query3.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
//ex_erroSql_Novo(DM1.query3,244,'frm_','CADP02');
//DM1.Query3.sql.savetofile('c:\sql000.txt');

try
   DM1.Query3.Open;
except
   DM1.Query3.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;

//inicio



While (not DM1.Query3.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat>mValorFalta then
      DM1.Query3.Last
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP01 set P1BASEN=P1BASEN-:TOTLIQ '
                        +',P1BASENN=P1BASENN-:TOTLIQ '
//                        +',P1PISCOFN=P1PISCOFN-:TOTLIQ '
//                        +',P1PISCOFR=P1PISCOFR+:TOTLIQ '
                        +',P1ICMSN=P1ICMSN-:TOTICM '
                        +',P1ICMSNN=P1ICMSNN-:TOTICM '
                        +' where P1LOTSEQ=:LOTSEQ '
                        +' and P1CHAVE=:CHAVE '
                        +' and P1ORDEM=:ORDEM '
                        +' and P1CODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=DM1.Query3.fieldbyName('P2ICMSN').AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;


      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADNS set NSBASENI=NSBASENI-:TOTLIQ '
                        +',NSBASENN=NSBASENN-:TOTLIQ '
                        +',NSPISCOFN=NSPISCOFN-:TOTLIQ '
                        +',NSPISCOFR=NSPISCOFR+:TOTLIQ '
                        +',NSTOTNOR=NSTOTNOR-:TOTLIQ '
                        +',NSTOTRET=NSTOTRET+:TOTLIQ '
                        +',NSICMSN=NSICMSN-:TOTICM '
                        +',NSICMSNN=NSICMSNN-:TOTICM '
                        +' where NSLOTSEQ_CP=:LOTSEQ '
                        +' and NSCHAVEP=:CHAVE '
                        +' and NSORDEMP=:ORDEM '
                        +' and NSCODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      DM1.Query1.close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2SIT=:SIT, '
                        +' P2BASEN=0, P2ICMSN=0,P2ALIQ=0 '
                        +' where P2LOTSEQ=:LOTSEQ '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2ORDEM=:ORDEM '
                        +' and P2CODEMP=:CODEMP '
                        +' and P2ITEM=:ITEM ');

      DM1.Query1.ParamByName('SIT').AsString  :='060';
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParamByName('ITEM').AsFloat:=DM1.Query3.fieldbyName('P2ITEM').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      mValorFalta:=mValorFalta-DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      end;
   DM1.Query3.Next;
   end;
result:=true;
end;



procedure TFrm_ECF_Comp_MRxNS.sbSub060p010Click(Sender: TObject);
begin
if dif_totsubstTrib.Value>0 then
   fSubstituir000p060(dif_totsubstTrib.Value)
else
   fSubstituir060p000(dif_totsubstTrib.Value*-1);
close;
end;

procedure TFrm_ECF_Comp_MRxNS.sbSub000p060Click(Sender: TObject);
begin
if dif_totTrib.Value>0 then
   fSubstituir060p000(dif_totTrib.Value)
else
   fSubstituir000p060(dif_totTrib.Value*-1);
close;

end;



function TFrm_ECF_Comp_MRxNS.fSubstituir040p000(pValor: Real): Boolean;
var
mValorFalta: Real;
mAliq: Real;
begin
mValorFalta:=pValor;
la_empresas :='P2CODEMP=0'+InttoStr(codemp);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');


DM1.Query3.Close;
DM1.Query3.Sql.clear;
DM1.Query3.Sql.Add('Select P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODEMP,P2QTD,P2PRECO '
                  +',P2TOTLIQ,P2TOTDES,P2SIT,P2BASEN,P2ALIQ,P2ICMSN,P2ITEM FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' (P2SIT=:SIT or P2SIT='+chr(39)+'000'+chr(39)+' and P2ALIQ=0 )'
                  +' and P1DATDOC=:DATANF '            );
DM1.Query3.sql.add(' and P2TOTLIQ<=:VALOR ');

DM1.Query3.ParamByName('SIT').AsString:='040';
DM1.Query3.ParamByName('VALOR').Asfloat:=pvalor;
DM1.Query3.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
//ex_erroSql_Novo(DM1.query3,244,'frm_','CADP02');
//DM1.Query3.sql.savetofile('c:\sql000.txt');

try
   DM1.Query3.Open;
except
   DM1.Query3.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;

//inicio



DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.Add('Select P2ALIQ,COUNT(*) AS QTD FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2SIT=:SIT '
                  +' and P1DATDOC=:DATANF '
                  +' and P2ALIQ>0');
DM1.Query1.sql.add(' Group by p2ALIQ '
                  +' ORDER BY QTD');
DM1.Query1.ParamByName('SIT').AsString:='000';
DM1.Query1.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
try
   DM1.Query1.Open;
except
   DM1.Query1.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;
maliq:=DM1.Query1.fieldbyName('P2ALIQ').asfloat;

While (not DM1.Query3.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat>mValorFalta then
      DM1.Query3.Last
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP01 set P1BASEN=P1BASEN+:TOTLIQ '
                        +',P1BASENN=P1BASENN+:TOTLIQ '
//                        +',P1PISCOFN=P1PISCOFN+:TOTLIQ '
//                        +',P1PISCOFR=P1PISCOFR-:TOTLIQ '
                        +',P1ICMSN=P1ICMSN+:TOTICM '
                        +',P1ICMSNN=P1ICMSNN+:TOTICM '
                        +' where P1LOTSEQ=:LOTSEQ '
                        +' and P1CHAVE=:CHAVE '
                        +' and P1ORDEM=:ORDEM '
                        +' and P1CODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;


      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADNS set NSBASENI=NSBASENI+:TOTLIQ '
                        +',NSBASENN=NSBASENN+:TOTLIQ '
                        +',NSPISCOFN=NSPISCOFN+:TOTLIQ '
                        +',NSPISCOFR=NSPISCOFR-:TOTLIQ '
                        +',NSTOTNOR=NSTOTNOR+:TOTLIQ '
                        +',NSTOTRET=NSTOTRET-:TOTLIQ '
                        +',NSICMSN=NSICMSN+:TOTICM '
                        +',NSICMSNN=NSICMSNN+:TOTICM '
                        +' where NSLOTSEQ_CP=:LOTSEQ '
                        +' and NSCHAVEP=:CHAVE '
                        +' and NSORDEMP=:ORDEM '
                        +' and NSCODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      DM1.Query1.close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2SIT=:SIT, '
                        +' P2BASEN=:TOTLIQ, P2ICMSN=:TOTICM,P2ALIQ=:P2ALIQ '
                        +' where P2LOTSEQ=:LOTSEQ '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2ORDEM=:ORDEM '
                        +' and P2CODEMP=:CODEMP '
                        +' and P2ITEM=:ITEM ');

      DM1.Query1.ParamByName('SIT').AsString  :='000';
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=Arredonda(
                                          ((DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*mAliq)/100)
                                          ,2);
      DM1.Query1.ParamByName('P2ALIQ').AsFloat:=mAliq;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParamByName('ITEM').AsFloat:=DM1.Query3.fieldbyName('P2ITEM').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      mValorFalta:=mValorFalta-DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      end;
   DM1.Query3.Next;
   end;
result:=true;
end;


function TFrm_ECF_Comp_MRxNS.fSubstituir000p040(pValor: Real): Boolean;
var
mValorFalta: Real;
begin
mValorFalta:=pValor;
la_empresas :='P2CODEMP=0'+InttoStr(codemp);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');


DM1.Query3.Close;
DM1.Query3.Sql.clear;
DM1.Query3.Sql.Add('Select P2CHAVE,P2LOTSEQ,P2ORDEM,P2CODEMP,P2QTD,P2PRECO '
                  +',P2TOTLIQ,P2TOTDES,P2SIT,P2BASEN,P2ALIQ,P2ICMSN,P2ITEM FROM '
                  +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2SIT=:SIT '
                  +' and P1DATDOC=:DATANF '            );
DM1.Query3.sql.add(' and P2TOTLIQ<=:VALOR ');

DM1.Query3.ParamByName('SIT').AsString:='000';
DM1.Query3.ParamByName('VALOR').Asfloat:=pvalor;
DM1.Query3.ParamByName('DATANF').AsDateTime:=mRed_DataNF;
//ex_erroSql_Novo(DM1.query3,244,'frm_','CADP02');
//DM1.Query3.sql.savetofile('c:\sql000.txt');

try
   DM1.Query3.Open;
except
   DM1.Query3.sql.savetofile('c:\sql000.txt');
   result:=false;
   exit;
   end;

//inicio



While (not DM1.Query3.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat>mValorFalta then
      DM1.Query3.Last
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP01 set P1BASEN=P1BASEN-:TOTLIQ '
                        +',P1BASENN=P1BASENN-:TOTLIQ '
//                        +',P1PISCOFN=P1PISCOFN-:TOTLIQ '
//                        +',P1PISCOFR=P1PISCOFR+:TOTLIQ '
                        +',P1ICMSN=P1ICMSN-:TOTICM '
                        +',P1ICMSNN=P1ICMSNN-:TOTICM '
                        +' where P1LOTSEQ=:LOTSEQ '
                        +' and P1CHAVE=:CHAVE '
                        +' and P1ORDEM=:ORDEM '
                        +' and P1CODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=DM1.Query3.fieldbyName('P2ICMSN').AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;


      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADNS set NSBASENI=NSBASENI-:TOTLIQ '
                        +',NSBASENN=NSBASENN-:TOTLIQ '
                        +',NSPISCOFN=NSPISCOFN-:TOTLIQ '
                        +',NSPISCOFR=NSPISCOFR+:TOTLIQ '
                        +',NSTOTNOR=NSTOTNOR-:TOTLIQ '
                        +',NSTOTRET=NSTOTRET+:TOTLIQ '
                        +',NSICMSN=NSICMSN-:TOTICM '
                        +',NSICMSNN=NSICMSNN-:TOTICM '
                        +' where NSLOTSEQ_CP=:LOTSEQ '
                        +' and NSCHAVEP=:CHAVE '
                        +' and NSORDEMP=:ORDEM '
                        +' and NSCODEMP=:CODEMP ');
      DM1.Query1.ParamByName('TOTLIQ').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('TOTICM').AsFloat:=DM1.Query3.fieldbyName('P2BASEN').AsFloat;
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      DM1.Query1.close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2SIT=:SIT, '
                        +' P2BASEN=0, P2ICMSN=0,P2ALIQ=0 '
                        +' where P2LOTSEQ=:LOTSEQ '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2ORDEM=:ORDEM '
                        +' and P2CODEMP=:CODEMP '
                        +' and P2ITEM=:ITEM ');

      DM1.Query1.ParamByName('SIT').AsString  :='040';
      DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query3.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParamByName('CHAVE').AsFloat:=DM1.Query3.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParamByName('ORDEM').AsFloat:=DM1.Query3.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParamByName('CODEMP').AsFloat:=DM1.Query3.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParamByName('ITEM').AsFloat:=DM1.Query3.fieldbyName('P2ITEM').AsFloat;
      try
         DM1.Query1.execsql;
         fDm1StartCommit;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         result:=false;
         exit;
         end;
      mValorFalta:=mValorFalta-DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat;
      end;
   DM1.Query3.Next;
   end;
result:=true;
end;




procedure TFrm_ECF_Comp_MRxNS.sbSub040p010Click(Sender: TObject);
begin
if dif_totisentas.Value>0 then
   fSubstituir000p040(dif_totisentas.Value)
else
   fSubstituir040p000(dif_totisentas.Value*-1);
close;

end;

end.
