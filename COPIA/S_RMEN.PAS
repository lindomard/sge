unit S_RMen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, S_DM1, db, dbtables, S_Impres, Func,
  lerarq, Grids,S_Bco, S_SelEmp;

type
  TFrm_RMen = class(TForm)
    Tb_Vendas: TQuery;
    Tb_VendasTMDATA: TDateTimeField;
    Tb_VendasTMVALPED: TFloatField;
    Tb_VendasTMQTDPED: TFloatField;
    Tb_VendasTMQTDCLI: TFloatField;
    Tb_VendasTMVENDAS: TFloatField;
    Tb_VendasTMDEVOL: TFloatField;
    Tb_VendasTMFRETE: TFloatField;
    Tb_VendasTMARECEB: TFloatField;
    Tb_VendasTMCOMPRAS: TFloatField;
    Tb_VendasTMAPAGAR: TFloatField;
    Tb_VendasTMPGTO: TFloatField;
    Tb_VendasTMRECBTO: TFloatField;
    ANO: TEdit;
    MES: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Label8: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    BitBtn6: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_GRAVAR: TBitBtn;
    COD: TEdit;
    NOM: TEdit;
    STG1: TStringGrid;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    Label39: TLabel;
    procedure MESKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure ANOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CODExit(Sender: TObject);
    procedure CODKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_RMen: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    end;

var
  Frm_RMen: TFrm_RMen;
  mqtd,mop: Integer;


implementation

{$R *.DFM}

procedure TFrm_RMen.MESKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_RMen.BitBtn1Click(Sender: TObject);
var
  mlin: Integer;
  mdatai, mdataf: TDateTime;
  mtabtemp: String;
  mtvalped, mtQtdped, MtQtdCli, mtVendas: Real;
  mtDevol, mtFrete, mtAcreRec, mtCompras, mtApagar, mtPgto,mtRecbto: Real;
  X: Integer;
begin
x:=0;
mdatai:=StrToDate('01/'+mes.Text+'/'+ano.Text);
mdataf:=mdatai;
While FormatDateTime('mm',mdataf)=MES.Text do
   begin
   mdataf:=mdataf+1;
   end;
mdataf:=mdataf-1;

mtabtemp:='';
mtabtemp:=fProcTemp(0);
if pbanco=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMDATA TIMESTAMP, '
                     +' TMVALPED  DOUBLE PRECISION, '
                     +' TMQTDPED  DOUBLE PRECISION, '
                     +' TMQTDCLI  DOUBLE PRECISION, '
                     +' TMVENDAS  DOUBLE PRECISION, '
                     +' TMDEVOL   DOUBLE PRECISION, '
                     +' TMFRETE   DOUBLE PRECISION, '
                     +' TMARECEB  DOUBLE PRECISION, '
                     +' TMCOMPRAS DOUBLE PRECISION, '
                     +' TMAPAGAR  DOUBLE PRECISION, '
                     +' TMPGTO    DOUBLE PRECISION, '
                     +' TMRECBTO  DOUBLE PRECISION) ');
   DM1.Query1.execSql;
   end
else if pbanco=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMDATA DATE, '
                     +' TMVALPED  NUMBER(15,2), '
                     +' TMQTDPED  NUMBER(10), '
                     +' TMQTDCLI  NUMBER(10), '
                     +' TMVENDAS  NUMBER(15,2), '
                     +' TMDEVOL   NUMBER(15,2), '
                     +' TMFRETE   NUMBER(15,2), '
                     +' TMARECEB  NUMBER(15,2), '
                     +' TMCOMPRAS NUMBER(15,2), '
                     +' TMAPAGAR  NUMBER(15,2), '
                     +' TMPGTO    NUMBER(15,2), '
                     +' TMRECBTO  NUMBER(15,2)) ');
   DM1.Query1.execSql;
   end;

la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select P1DATAP,sum(P1TOTALL), count(*) as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADP01 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                  +'       and P1TIPO<2');
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and P1CODUSR '+mcinst2);
DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,mdatai));
DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,mdataf));
DM1.Query1.SQL.Add(' group by P1DATAP ');
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select P1DATAP,0 AS VALPED,0 AS  QTDPED ,'
                  +' 1 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADP01 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                  +'       and P1TIPO<2');
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and P1CODUSR '+mcinst2);
DM1.Query1.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',true,mdatai));
DM1.Query1.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',false,mdataf));
DM1.Query1.SQl.Add(' group by P1DATAP,P1CODCLI ');
DM1.Query1.ExecSQL;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select P1DATAP,0 as VALPED,0 as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' sum(P1TOTALL) as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' sum(P1VALFRE) as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADP01 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                  +'       and P1TIPO=1 and P1EMIDOC=1 ');
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and P1CODUSR '+mcinst2);
DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true, mdatai));
DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,mdataf));
DM1.Query1.SQL.Add(' group by P1DATAP ');
DM1.Query1.ExecSQL;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select P1DATAP,0 as VALPED,0 as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' sum(P1TOTALL) as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADP01 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                  +'       and P1TIPO=8 ');
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and P1CODUSR '+mcinst2);
DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true, mdatai));

DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,mdataf));
DM1.Query1.SQL.Add(' group by P1DATAP ');
DM1.Query1.ExecSQL;

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select CRDATPED,0 as VALPED,0 as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' sum(CRVALOR-CRVALPAG) as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' sum(CRVALPAG-CRJUROS+CRDESC) as TMRECBTO '
                  +' from CADDAR where CRSTATUS<>9 '+iif(la_Empresas='','',' and ')+la_Empresas
                  +' AND CRNPED > 0 ');
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and CRUSRBX '+mcinst2);
DM1.Query1.SQL.Add(' and CRDATPED>='+chr(39)+FormatDateTime(fdt,mdatai)+chr(39)
                  +' and CRDATPED<='+chr(39)+FormatDateTime(fdt,mdataf)+chr(39)
                  +' group by CRDATPED');
DM1.Query1.ExecSQL;

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select PF1DATCONF,0 as VALPED,0 as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' sum(PF1TOTLIQ) as TMCOMPRAS, '
                  +' 0 as TMAPAGAR, '
                  +' 0 as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADPF1 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                  +' and PF1DATCONF>='+chr(39)+FormatDateTime(fdt,mdatai)+chr(39));
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PF1CODUSR '+mcinst2);
DM1.Query1.SQL.Add(' and PF1DATCONF<='+chr(39)+FormatDateTime(fdt,mdataf)+chr(39)
                  +' group by PF1DATCONF');
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into '+mtabtemp+'( '
                  +' TMDATA,'
                  +' TMVALPED, '
                  +' TMQTDPED, '
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO) Select PF1DATCONF,0 as VALPED,0 as QTDPED ,'
                  +' 0 as TMQTDCLI, '
                  +' 0 as TMVENDAS, '
                  +' 0 as TMDEVOL, '
                  +' 0 as TMFRETE, '
                  +' 0 as TMARECEB, '
                  +' 0 as TMCOMPRAS, '
                  +' sum(CAVALOR-CAVALPAG) as TMAPAGAR, '
                  +' sum(CAVALPAG-CAJUROS+CADESC) as TMPGTO, '
                  +' 0 as TMRECBTO '
                  +' from CADPF1,CADDAP where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                  +' and PF1DATCONF>='+chr(39)+FormatDateTime(fdt,mdatai)+chr(39)
                  +' and PF1DATCONF<='+chr(39)+FormatDateTime(fdt,mdataf)+chr(39)
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' and CACODEMP=PF1CODEMP '));
mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and CAUSRBAI '+mcinst2);
DM1.Query1.SQL.Add(' and CALOTSEQ_CP=PF1LOTSEQ and CACHAVEP=PF1CHAVE and CASTATUS<9 '
                  +' group by PF1DATCONF');

DM1.Query1.ExecSQL;

Tb_Vendas.Close;
Tb_Vendas.SQL.Clear;
Tb_Vendas.SQL.add('Select TMDATA,                '
                  +' sum(TMVALPED)  as TMVALPED, '
                  +' sum(TMQTDPED) as TMQTDPED ,'
                  +' sum(TMQTDCLI)  as TMQTDCLI, '
                  +' sum(TMVENDAS)  as TMVENDAS, '
                  +' sum(TMDEVOL)   as TMDEVOL, '
                  +' sum(TMFRETE)   as TMFRETE, '
                  +' sum(TMARECEB)  as TMARECEB, '
                  +' sum(TMCOMPRAS) as TMCOMPRAS, '
                  +' sum(TMAPAGAR)  as TMAPAGAR, '
                  +' sum(TMPGTO)    as TMPGTO, '
                  +' sum(TMRECBTO)  as TMRECBTO '
                  +' from '+mtabtemp
                  +' Group by TMDATA order by TMDATA ');

Tb_Vendas.Open;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'DATA',ptInput);
DM1.Query1.Params.CreateParam(ftString,'ZERO',ptInput);
DM1.Query1.SQL.add('Insert into '+mtabtemp+'('
                  +' TMDATA, '
                  +' TMVALPED, '
                  +' TMQTDPED ,'
                  +' TMQTDCLI, '
                  +' TMVENDAS, '
                  +' TMDEVOL, '
                  +' TMFRETE, '
                  +' TMARECEB, '
                  +' TMCOMPRAS, '
                  +' TMAPAGAR, '
                  +' TMPGTO, '
                  +' TMRECBTO ) Values ('
                  +' :DATA, '
                  +' :ZERO, '
                  +' :ZERO,'
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO, '
                  +' :ZERO )');

mdatai:=StrToDate('01/'+mes.Text+'/'+ano.Text);
mdataf:=mdatai;
While FormatDateTime('mm',mdataf)=MES.Text do
   begin
   if not Tb_Vendas.Locate('TMDATA',mdataf,[]) then
      begin
      DM1.Query1.ParamByName('DATA').AsDateTime:=mdataf;
      DM1.Query1.ParamByName('ZERO').AsFloat   :=0;
      DM1.Query1.ExecSQL;
      end;
   mdataf:=mdataf+1;
   end;
mdataf:=mdataf-1;
Tb_Vendas.Close;
Tb_Vendas.SQL.Clear;
Tb_Vendas.SQL.add('Select TO_DATE(TMDATA) AS TMDATA,  sum(TMVALPED) as TMVALPED, sum(TMQTDPED) as TMQTDPED ,'
                  +' sum(TMQTDCLI)  as TMQTDCLI, '
                  +' sum(TMVENDAS)  as TMVENDAS, '
                  +' sum(TMDEVOL)   as TMDEVOL, '
                  +' sum(TMFRETE)   as TMFRETE, '
                  +' sum(TMARECEB)  as TMARECEB, '
                  +' sum(TMCOMPRAS) as TMCOMPRAS, '
                  +' sum(TMAPAGAR)  as TMAPAGAR, '
                  +' sum(TMPGTO)    as TMPGTO, '
                  +' sum(TMRECBTO)  as TMRECBTO '
                  +' from '+mtabtemp
                  +' Group by TO_DATE(TMDATA) order by TO_DATE(TMDATA)');
Tb_Vendas.Open;
//Tb_Vendas.SQL.SaveToFile('C:\SQL0001.TXT');

testeform := TFrm_RMen(FindGlobalComponent('form_Impres_RMen'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_RMen);
form_Impres_RMen.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=1;
form_Impres_RMen.Rdprint1.ImpF(mlin,01,DM1.Tb_EmpRAZAO.Value,mnormal);
form_Impres_RMen.RDprint1.ImpF(mlin,64,'Pagina: 0001',mnormal);
mlin:=mlin+1;
form_Impres_RMen.RDprint1.ImpF(mlin,01,'Resumo diario de Movimento. Mes: '+mes.Text+'/'+ANO.Text+'.',mnormal);
form_Impres_RMen.Rdprint1.Impf(mlin,70
,'Data: '+FormatdateTime(fdt2,date),mnormal);
if lbx_codusr_cx.Items.Count > 0 then
  begin
  mlin:=mlin+1;
  form_Impres_RMen.RDprint1.ImpF(mlin,01,'Filtrado por Usuarios',mnormal);
  for X:=0 to lbx_codusr_cx.Items.Count-1 do
    begin
    mlin:=mlin+1;
    form_Impres_RMen.RDprint1.ImpF(mlin,01,lbx_codusr_cx.Items[x],mnormal);
    end;
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,insere('-','-',80),mnormal);
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,'+--+------------+-------+-------+------------+------------+------------+------------+-----------+-----------+-----------+-----------+',mreduz);
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,':dd:Pedidos  dia:No.Ped.:No.Cli.:   Vendas   : Devolucoes :   Frete    :  A Receber :Compras dia:    A Pagar:Pagamentos :Recebimento:',mreduz);
  end
else
  begin
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,insere('-','-',80),mnormal);
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,'+--+------------+-------+-------+------------+------------+------------+------------+-----------+-----------+-----------+-----------+',mreduz);
  mlin:=mlin+1;
  form_Impres_RMen.Rdprint1.Impf(mlin,01,':dd:Pedidos  dia:No.Ped.:No.Cli.:   Vendas   : Devolucoes :   Frete    :  A Receber :Compras dia:    A Pagar:Pagamentos :Recebimento:',mreduz);
  end;

mtvalped :=0;
mtQtdped :=0;
MtQtdCli :=0;
mtVendas :=0;
mtDevol  :=0;
mtFrete  :=0;
mtAcreRec:=0;
mtCompras:=0;
mtPgto   :=0;
mtRecbto :=0;
mtApagar :=0;

While  not Tb_Vendas.Eof do
   begin
   mlin:=mlin+1;
   form_Impres_RMen.RDprint1.impf(mlin,01,':'+FormatDateTime('dd',Tb_VendasTMDATA.Value)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMVALPED.Value),' ',12)+':'
                           +insere(Tb_VendasTMQTDPED.AsString,' ',7)+':'
                           +insere(Tb_VendasTMQTDCLI.AsString,' ',7)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMVENDAS.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMDEVOL.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMFRETE.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMARECEB.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMCOMPRAS.Value),' ',11)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMAPAGAR.Value),' ',11)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMPGTO.Value),' ',11)+':'
                           +insere(FormatFloat(mcasas, Tb_VendasTMRECBTO.Value),' ',11)+ ':',mreduz);
   mtvalped :=mtvalped +Tb_VendasTMVALPED.Value;
   mtQtdped :=mtQtdped +Tb_VendasTMQTDPED.Value;
   MtQtdCli :=MtQtdCli +Tb_VendasTMQTDCLI.Value;
   mtVendas :=mtVendas +Tb_VendasTMVENDAS.Value;
   mtDevol  :=mtDevol  +Tb_VendasTMDEVOL.Value;
   mtFrete  :=mtFrete  +Tb_VendasTMFRETE.Value;
   mtAcreRec:=mtAcreRec+Tb_VendasTMARECEB.Value;
   mtCompras:=mtCompras+Tb_VendasTMCOMPRAS.Value;
   mtApagar :=mtApagar +Tb_VendasTMAPAGAR.Value;
   mtPgto   :=mtPgto   +Tb_VendasTMPGTO.Value;
   mtRecbto :=mtRecbto +Tb_VendasTMRECBTO.Value;
   Tb_Vendas.Next;
   end;

mlin:=mlin+1;
form_Impres_RMen.RDprint1.impf(mlin,01,':tt:'
                        +insere(FormatFloat(mcasas, mtvalped),' ',12)+':'
                        +insere(FloatToStr(mtQtdped),' ',7)+':'
                        +insere(FloatTostr(MtQtdCli),' ',7)+':'
                        +insere(FormatFloat(mcasas, mtVendas),' ',12)+':'
                        +insere(FormatFloat(mcasas, mtDevol),' ',12)+':'
                        +insere(FormatFloat(mcasas, mtFrete),' ',12)+':'
                        +insere(FormatFloat(mcasas, mtAcreRec),' ',12)+':'
                        +insere(FormatFloat(mcasas, mtCompras),' ',11)+':'
                        +insere(FormatFloat(mcasas, mtApagar),' ',11)+':'
                        +insere(FormatFloat(mcasas, mtPgto),' ',11)+':'
                        +insere(FormatFloat(mcasas, mtRecbto),' ',11)+ ':',mreduz);
mlin:=mlin+1;
form_Impres_RMen.Rdprint1.Impf(mlin,01,'+--+------------+-------+-------+------------+------------+------------+------------+-----------+-----------+-----------+-----------+',mreduz);
if form_Impres_RMen.Rdprint1.Setup then form_Impres_RMen.Rdprint1.Fechar;
form_Impres_RMen.Free;
form_Impres_RMen:=nil;
Tb_Vendas.Close;
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;

end;

procedure TFrm_RMen.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_RMen.MESExit(Sender: TObject);
begin
if (StrtoFloat('0'+MES.Text)<1) or (StrtoFloat('0'+MES.Text)>12) then
   begin
   ShowMessage('Mes Invalido!');
   MES.SetFocus;
   abort;
   end
else
   mes.Text:=Formatfloat('00',StrtoFloat('0'+MES.Text));
end;

procedure TFrm_RMen.ANOExit(Sender: TObject);
begin
ANO.Text:=FormatFloat('0000',StrToFloat('0'+ANO.Text));
end;

procedure TFrm_RMen.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

STG1.Cells[0,0]:='Código';
STG1.Cells[1,0]:='Nome';

end;

procedure TFrm_RMen.ITEM_GRAVARClick(Sender: TObject);
begin
if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',COD.Text) then
   begin
   MessageDlg('Banco não Cadastrado!',mtWarning,[mbOk],0);
   COD.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.Rows[mqtd+1].Clear;
   end;

STG1.Cells[00,mqtd-1]:=COD.Text;
STG1.Cells[01,mqtd-1]:=NOM.Text;
ITEM_CANCELAR.Click;
mop:=0;
COD.SetFocus;

end;

procedure TFrm_RMen.ITEM_EDITARClick(Sender: TObject);
begin
if Trim(STG1.Cells[00,STG1.Row])='' then
   begin
   Messagedlg('Não ha nada a ser editado!',mtWarning,[mbOk],0);
   exit;
   end;
mop:=1;
COD.Text   :=STG1.Cells[00,STG1.Row];
NOM.Text   :=STG1.Cells[01,STG1.Row];
COD.SetFocus;

end;

procedure TFrm_RMen.ITEM_CANCELARClick(Sender: TObject);
begin
mop:=0;
COD.Text:='';
NOM.Text:='';

end;

procedure TFrm_RMen.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      end;
   STG1.Rows[STG1.RowCount].Clear;
   STG1.Rows[STG1.RowCount-1].Clear;
   STG1.RowCount:=STG1.RowCount-1;
   end;


end;

procedure TFrm_RMen.CODExit(Sender: TObject);
begin
if (Trim(COD.Text)='')  then
   exit;
COD.Text:=FloatTostr(valfloat(COD.Text));
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',COD.Text) then
   NOM.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Banco não Cadastrado!',mtWarning,[mbOk],0);
   COD.SetFocus;
   exit;
   end;

end;

procedure TFrm_RMen.CODKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   COD.Text:=fChamaBco(0,'frm_RMen',Key);
   if trim(COD.Text)<>'' then
      CODExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RMen.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RMen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_RMen.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RMen.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;

end;

procedure TFrm_RMen.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

end.
