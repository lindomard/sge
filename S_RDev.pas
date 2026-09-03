unit S_RDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, S_Cli, Buttons, StdCtrls, Mask,
  ExtCtrls, Grids, DBGrids, S_Ped,S_Ped_AutoP,lerarq,S_Pv,S_PVO,func2, S_Ped_02;

type
  TFrm_RDev = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    CODCLI: TEdit;
    SpeedButton1: TSpeedButton;
    NOMCLI: TEdit;
    Panel3: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    bbFaturar: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_Ped: TQuery;
    Qr_Pedsaldo: TFloatField;
    Src_Ped: TDataSource;
    DBGrid1: TDBGrid;
    RG_TIPO: TRadioGroup;
    STG: TStringGrid;
    Qr_Pedestoque: TFloatField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    NOMPV: TEdit;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    Qr_PedNOMPRO: TStringField;
    Qr_PedUNID: TStringField;
    Qr_PedCODPRO: TFloatField;
    Qr_PedLOTE: TStringField;
    Qr_PedVENDAS: TFloatField;
    Qr_PedDEVOLUCAO: TFloatField;
    Qr_PedPRECO: TFloatField;
    Qr_PedSIT: TStringField;
    Qr_PedLISTA: TFloatField;
    Qr_PedTABELA: TStringField;
    Qr_PedCODFOR: TFloatField;
    Qr_PedDTVCTO: TDateTimeField;
    bbTrocas: TBitBtn;
    Tb_TrocaMer: TTable;
    Tb_TrocaMerSEQUENCIA: TAutoIncField;
    Tb_TrocaMerCODANT: TFloatField;
    Tb_TrocaMerCODNOV: TFloatField;
    Tb_TrocaMerPCOANT: TFloatField;
    Tb_TrocaMerPCONOV: TFloatField;
    Qr_Pedtrocarec: TFloatField;
    Qr_Pedtrocaenv: TFloatField;
    Tb_TrocaMerQTD: TFloatField;
    Tb_TrocaMerGRADENOV: TStringField;
    Tb_TrocaMerGRADEANT: TStringField;
    RG_TIPOREM: TRadioGroup;
    bbAcertos: TBitBtn;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Qr_PedCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure CODPVExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbTrocasClick(Sender: TObject);
    procedure bbAcertosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
       form_ped_02_rdev: TFrm_Ped_02;
       form_pvo_rdev: TFrm_PVO;
       form_pv_rdev: TFrm_PV;
       form_Ped_AutoP_rdev: TFrm_Ped_AutoP;
       form_Ped_rdev: TFrm_Ped;
   end;
function fRdevCriaTmp(ptipo: Integer): Boolean;

var
  Frm_RDev: TFrm_RDev;

  mchaves1,mchaves2,mcondad: String;
  y,x: Integer;
  mtabtemp: String='';
  mtabtemp2: String;
  mtmptroca: String;
  mLoteAcerto: Real;
  mTipoMov: Integer;
implementation

uses S_RDevS, S_DM4, S_TrocaMer, func_excecoes, S_AcRem;

{$R *.dfm}

procedure TFrm_RDev.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_RDev.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      Fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.SetFocus;
      end
   else
      begin
      NOMCLI.Text  :=DM1.Tb_CliCRAZAO.Value;
      CODVEN.Text  :=DM1.Tb_CliCCODVEN.AsString;
      if flcadven(1,0,Trim(CODVEN.Text)) then
         NOMVEN.Text:=DM1.Tb_VenVNOME.Value
      else
         begin
         CODVEN.Text:='';
         NOMVEN.Text:='';
         end;
      CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
      CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
      if flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
         begin
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         end
      else
         begin
         CB_TABPV.Text:='';
         CODPV.Text   :='';
         NOMPV.Text   :='';
         end;
      end;
   end;
bbFaturar.Enabled:=False;
bbTrocas.Enabled :=False;
end;

procedure TFrm_RDev.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_RDev.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      abort
      end
   end;

end;

procedure TFrm_RDev.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      abort
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      Fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      abort;
      end;
   end;



end;

procedure TFrm_RDev.SpeedButton1Click(Sender: TObject);
begin
CODCLI.Text:=fChamaCli(0,'Frm_RDev','');
end;

procedure TFrm_RDev.Qr_PedCalcFields(DataSet: TDataSet);
var
mdtv: String;
mqtdrec, mqtdent: Real;
begin
Tb_TrocaMer.First;
mqtdrec:=0;
mqtdent:=0;
While not Tb_TrocaMer.Eof do
   begin
   if (Tb_TrocaMerCODANT.Value=Qr_PedCODPRO.Value) and
      (Trim(Tb_TrocaMerGRADEANT.Value)=Trim(Qr_PedLOTE.Value))  then
      mqtdent:=mqtdent+Tb_TrocaMerQTD.Value;
   if (Tb_TrocaMerCODNOV.Value=Qr_PedCODPRO.Value) and
      (Trim(Tb_TrocaMerGRADENOV.Value)=Trim(Qr_PedLOTE.Value))  then
      mqtdrec:=mqtdrec+Tb_TrocaMerQTD.Value;
   Tb_TrocaMer.Next;
   end;
Qr_Pedtrocarec.Value:=mqtdrec;
Qr_Pedtrocaenv.Value:=mqtdent;
Qr_Pedsaldo.Value:=Qr_PedVENDAS.Value-Qr_PedDEVOLUCAO.Value+(Qr_Pedtrocarec.Value-Qr_Pedtrocaenv.Value) ;

if Log_TipoLote>0 then  // Grades cores tamanhos
   begin
   if Qr_PedDTVCTO.IsNull then
      mdtv:=''
   else
      mdtv:=FormatdateTime(fdt, Qr_PedDTVCTO.Value);
   if flcadlgc(0,1,0,Qr_PedCODPRO.AsString,Qr_PedLOTE.Value,mdtv) then
      begin
      if RG_TIPOREM.ItemIndex=0 then
         Qr_Pedestoque.Value:=DM1.Tb_LGCCLQTDC.Value
      else
         Qr_Pedestoque.Value:=DM1.Tb_LGCCLQTDR.Value;
      end
   else
      Qr_Pedestoque.Value:=0;
   end
else
   if flcadest(0,0,0,Qr_PedCODPRO.AsString) then
      begin
      if RG_TIPOREM.ItemIndex=0 then
         Qr_Pedestoque.Value:=DM1.Tb_EstCESALDOC.Value
      else
         Qr_Pedestoque.Value:=DM1.Tb_EstCESALDOR.Value;
      end
   else
      Qr_Pedestoque.Value:=0;
if Qr_Pedsaldo.Value>0 then
   begin
   bbFaturar.Enabled:=True;
   bbTrocas.Enabled :=true;
   end;
end;

procedure TFrm_RDev.BitBtn1Click(Sender: TObject);
var
mcomp: String;
minc1, minc2: String;
begin
testeform := TFrm_RDev(FindGlobalComponent('form_rdevs'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_RDevS, Frm_RDevS);

Frm_RDevS.ShowModal;

fRdevCriaTmp(1);

mtmptroca :=fProcTemp(11);
if Tb_TrocaMer.Active then
   Tb_TrocaMer.Close;
if Tb_TrocaMer.Exists then
   Tb_TrocaMer.DeleteTable;
Tb_TrocaMer.TableName:=mtmptroca;
Tb_TrocaMer.CreateTable;
Tb_TrocaMer.Open;

{
if pbanco=0 then
   begin
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' Insert into '+mtabtemp+'( '
                     +' CODPRO, '
                     +' LOTE, '
                     +' DTVCTO, '
                     +' VENDAS, '
                     +' DEVOLUCAO) '
                     +'Select P2CODPRO,P2LOTE,P2DTVCTO'
                     +',sum(DECODE(P1TIPO,8,0,P2QTD)) as VENDAS,'
                     +'sum(DECODE(P1TIPO,8,P2QTD,0)) as DEVOLUCAO '
                     +'   from CADP02,CADP01 where '
                     +iif(DM1.Qr_tID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntTostr(codemp)+' and P1CODEMP=P2CODEMP and ')
                     +' P1LOTSEQ=P2LOTSEQ and '
                     +' P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                     +' and P1STATUS<8 ');
   if Trim(CODCLI.Text)<>'' then
      DM1.Query1.Sql.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
   if RG_TIPO.ItemIndex<>2 then
      DM1.Query1.Sql.Add(' and P1SITAC=0'+IntToStr(RG_TIPO.itemIndex));
   mcomp:=' and (';
   mcondad:='';
   mchaves1:='';
   mchaves2:='';
   minc1:=',';
   minc2:=',';
   y:=1;
   STG.RowCount:=y;
   STG.Rows[y].Clear;
   for x:=1 to Frm_RDevS.STG1.RowCount do
      begin
      if Trim(Frm_RDevS.STG1.Cells[1,x])='' then
         Continue;
      if Trim(Frm_RDevS.STG1.Cells[0,x])<>'X' then
         Continue;
      mcondad:=mcondad+mcomp+' (P2CHAVE=0'+Trim(Frm_RDevS.STG1.Cells[1,x])+' and P2ORDEM=0'+Trim(Frm_RDevS.STG1.Cells[2,x])+')';
      mcomp:=' or ';
      if length(trim(mchaves1))<51 then
         begin
         mchaves1:=mchaves1+minc1+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc1:=',';
         end
      else if length(trim(mchaves2))<51 then
         begin
         mchaves2:=mchaves2+minc2+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc2:=',';
         end;
      STG.Cells[0,y-1]:=Frm_RDevS.STG1.Cells[1,x];
      STG.Cells[1,y-1]:=Frm_RDevS.STG1.Cells[2,x];
      STG.Cells[2,y-1]:=Frm_RDevS.STG1.Cells[7,x];
      STG.Rows[y].Clear;
      y:=y+1;
      STG.RowCount:=y;
      end;
   if mcomp=' or ' then
      mcondad:=mcondad+')';
   DM1.Query1.Sql.Add(mcondad);
   DM1.Query1.Sql.Add(' GROUP BY P2CODPRO,P2LOTE,P2DTVCTO');
   DM1.Query1.ExecSQL;
   end
else if pbanco=1 then
   begin
}
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' Insert into '+mtabtemp+'( '
                     +' CODPRO, '
                     +' LOTE, '
                     +' DTVCTO, '
                     +' VENDAS, '
                     +' DEVOLUCAO) '
                     +'Select P2CODPRO,P2LOTE,P2DTVCTO, '
                     +'sum(P2QTD) as VENDAS,'
                     +'0 as DEVOLUCAO '
                     +'   from CADP02,CADP01 where '
                     +iif(DM1.Qr_tID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntTostr(codemp)+' and P1CODEMP=P2CODEMP and ')
                     +' P1LOTSEQ=P2LOTSEQ and '
                     +' P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                     +' and P1STATUS<8 and P1TIPO<>8 and P1TIPO<>2 and P1TIPO<>12 and P1TIPO<>13');
   if Trim(CODCLI.Text)<>'' then
      DM1.Query1.Sql.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
   if RG_TIPO.ItemIndex<>2 then
      DM1.Query1.Sql.Add(' and P1SITAC=0'+IntToStr(RG_TIPO.itemIndex));
   mcomp:=' and (';
   mcondad:='';
   mchaves1:='';
   mchaves2:='';
   minc1:=' ';
   minc2:=' ';
   y:=1;
   STG.RowCount:=y;
   STG.Rows[y].Clear;
    for x:=1 to Frm_RDevS.STG1.RowCount do
      begin
      if Trim(Frm_RDevS.STG1.Cells[1,x])='' then
         Continue;
      if Trim(Frm_RDevS.STG1.Cells[0,x])<>'X' then
         Continue;
      mcondad:=mcondad+mcomp+' (P2LOTSEQ=0'+Trim(Frm_RDEVS.STG1.Cells[7,x])+' and  P2CHAVE=0'+Trim(Frm_RDevS.STG1.Cells[1,x])+' and P2ORDEM=0'+Trim(Frm_RDevS.STG1.Cells[2,x])+')';
      mcomp:=' or ';
      if length(trim(mchaves1))<51 then
         begin
         mchaves1:=mchaves1+minc1+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc1:=',';
         end
      else if length(trim(mchaves2))<51 then
         begin
         mchaves2:=mchaves2+minc2+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc2:=',';
         end;
      STG.Cells[0,y-1]:=Frm_RDevS.STG1.Cells[1,x];
      STG.Cells[1,y-1]:=Frm_RDevS.STG1.Cells[2,x];
      STG.Cells[2,y-1]:=Frm_RDevS.STG1.Cells[7,x];
      STG.Rows[y].Clear;
      y:=y+1;
      STG.RowCount:=y;
      end;
   if mcomp=' or ' then
      mcondad:=mcondad+')';
   DM1.Query1.Sql.Add(mcondad);
   DM1.Query1.Sql.Add(' GROUP BY P2CODPRO,P2LOTE,P2DTVCTO');
   DM1.Query1.ExecSQL;
// DEVOLUCOES
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' Insert into '+mtabtemp+'( '
                     +' CODPRO, '
                     +' LOTE, '
                     +' DTVCTO, '
                     +' VENDAS, '
                     +' DEVOLUCAO) '
                     +'Select P2CODPRO,P2LOTE,P2DTVCTO, '
                     +'0 as VENDAS,'
                     +'sum(P2QTD) as DEVOLUCAO '
                     +'   from CADP02,CADP01 where '
                     +iif(DM1.Qr_tID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntTostr(codemp)+' and P1CODEMP=P2CODEMP and ')
                     +' P1LOTSEQ=P2LOTSEQ and '
                     +' P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                     +' and P1STATUS<8 and (P1TIPO=8 or P1TIPO=12 OR P1TIPO=13) ');
   if Trim(CODCLI.Text)<>'' then
      DM1.Query1.Sql.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
   if RG_TIPO.ItemIndex<>2 then
      DM1.Query1.Sql.Add(' and P1SITAC=0'+IntToStr(RG_TIPO.itemIndex));
   mcomp:=' and (';
   mcondad:='';
   mchaves1:='';
   mchaves2:='';
   minc1:=',';
   minc2:=',';
   y:=1;
   STG.RowCount:=y;
   STG.Rows[y].Clear;
   for x:=1 to Frm_RDevS.STG1.RowCount do
      begin
      if Trim(Frm_RDevS.STG1.Cells[1,x])='' then
         Continue;
      if Trim(Frm_RDevS.STG1.Cells[0,x])<>'X' then
         Continue;
      mcondad:=mcondad+mcomp+' (P2LOTSEQ=0'+Trim(Frm_RDevS.STG1.Cells[7,x])+' and P2CHAVE=0'+Trim(Frm_RDevS.STG1.Cells[1,x])+' and P2ORDEM=0'+Trim(Frm_RDevS.STG1.Cells[2,x])+')';
      mcomp:=' or ';
      if length(trim(mchaves1))<51 then
         begin
         mchaves1:=mchaves1+minc1+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc1:=',';
         end
      else if length(trim(mchaves2))<51 then
         begin
         mchaves2:=mchaves2+minc2+FormatFloat('000000',ValFloat(Frm_RDevS.STG1.Cells[1,x]))
                                 +'/'+FormatFloat('00',ValFloat(Frm_RDevS.STG1.Cells[2,x]));
         minc2:=',';
         end;
      STG.Cells[0,y-1]:=Frm_RDevS.STG1.Cells[1,x];
      STG.Cells[1,y-1]:=Frm_RDevS.STG1.Cells[2,x];
      STG.Cells[2,y-1]:=Frm_RDevS.STG1.Cells[3,x];
      STG.Rows[y].Clear;
      y:=y+1;
      STG.RowCount:=y;
      end;
   if mcomp=' or ' then
      mcondad:=mcondad+')';
   DM1.Query1.Sql.Add(mcondad);
   DM1.Query1.Sql.Add(' GROUP BY P2CODPRO,P2LOTE,P2DTVCTO');
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');

   try
      DM1.Query1.ExecSQL;
   except
      end;

//   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select sum(VENDAS) as  VENDAS, '
              +'       sum(DEVOLUCAO) as DEVOLUCAO, '
              +' CODPRO, '
              +' LOTE, ');
   if (valint(copy(mpseg,4,2))=1) then
      Qr_Ped.SQL.Add(' max(DTVCTO) as DTVCTO, ')
   else
      Qr_Ped.SQL.Add('  DTVCTO, ');
   Qr_Ped.SQL.Add(' PDNOME AS NOMPRO, '
              +' PDUND  AS UNID, '
              +' CLPRECO1 AS PRECO, '
              +' PDSIT AS SIT, '
              +' PDLISTA AS LISTA, '
              +' PDTABICM AS TABELA, '
              +' PDCODFOR AS CODFOR '
              +' from '+mtabtemp+', CADPRO,CADLGC  where '
              +fla_EmpBaixaAlta(0,
              'CADPRO',' ',codemp,'PDCODEMP',' and ')
              +' PDCODPRO=CODPRO '
              +fla_EmpBaixaAlta(0,
              'CADEST',' and ',codemp,'CLCODEMP',' ')
              +' and CLCODPRO=CODPRO '
              +' and CLNUMERO  =LOTE '
              +' Group by '
              +' CODPRO, '
              +' LOTE, ');
   if (valint(copy(mpseg,4,2))=1) then
       Qr_Ped.SQL.Add('  DTVCTO, ');
   Qr_Ped.SQL.Add(' PDNOME, '
              +' PDUND, '
              +' CLPRECO1, '
              +' PDSIT, '
              +' PDLISTA, '
              +' PDTABICM, '
              +' PDCODFOR ');
   Qr_Ped.Open;
   end
else
   begin
   Qr_Ped.Close;
   Qr_Ped.SQL.Clear;
   Qr_Ped.SQL.Add('Select sum(VENDAS) as  VENDAS, '
              +'       sum(DEVOLUCAO) as DEVOLUCAO, '
              +' CODPRO, '
              +' LOTE, '
              +' LOTE, ');
   if (valint(copy(mpseg,4,2))=1) then
      Qr_Ped.SQL.Add('  DTVCTO, ')
   else
      Qr_Ped.SQL.Add(' max(DTVCTO) as DTVCTO, ');
  Qr_Ped.SQL.Add(' PDNOME AS NOMPRO, '
              +' PDUND  AS UNID, '
              +' PDPRECO1 AS PRECO, '
              +' PDSIT AS SIT, '
              +' PDLISTA AS LISTA, '
              +' PDTABICM AS TABELA, '
              +' PDCODFOR AS CODFOR '
              +' from '+mtabtemp+', CADPRO  where '
              +fla_EmpBaixaAlta(0,
              'CADPRO',' ',codemp,'PDCODEMP',' and ')
              +' PDCODPRO=CODPRO '
              +' Group by '
              +' CODPRO, '
              +' LOTE, ');
   if (valint(copy(mpseg,4,2))=1) then
       Qr_Ped.SQL.Add('  DTVCTO, ');
   Qr_Ped.SQL.Add(' PDNOME, '
              +' PDUND, '
              +' PDPRECO1, '
              +' PDSIT, '
              +' PDLISTA, '
              +' PDTABICM, '
              +' PDCODFOR ');
   try
      Qr_Ped.Open;
   except
      Qr_Ped.sql.savetofile('c:\sql02.txt');
      end;
   end;
Frm_RDevs.Free;
Frm_RDevs:=nil;
end;

procedure TFrm_RDev.bbFaturarClick(Sender: TObject);
var
mqtd: Integer;
mcancelar: Boolean;
begin
if ValFloat(CODVEN.Text)<=0 then
   begin
   Fmensagem('Código do Vendedor tem que ser Preenchido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if (Trim(CB_TABPV.Text)='') or (ValFloat(CODPV.Text)<=0) then
   begin
   Fmensagem('Plano de Vendas tem que ser Preenchido!',0,['0'],0);
   CB_TABPV.SetFocus;
   exit;
   end;

if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   Fmensagem('Favor Digitar um Plano de vendas Valido!',0,['0'],0);
   CB_TABPV.SetFocus;
   exit;
   end;


flcadpar01(0,codemp,'1');

mcancelar:=false;
if DM4.Tb_Par01PFATMZ.Value<>1 then
   begin
   Qr_Ped.First;
   While not Qr_Ped.Eof do
      begin
//      if (Qr_Pedestoque.AsFloat>=0) and (Qr_Pedestoque.Value<Qr_Pedsaldo.Value) then
      if (Qr_Pedsaldo.AsFloat>0) and  (Qr_Pedestoque.Value<Qr_Pedsaldo.Value) then
         begin
         Fmensagem('O Produto: '+Qr_PedNOMPRO.Value+#13
                   +' Tem que ser faturado: '+Qr_Pedsaldo.AsString
                   +' e tem: '+Qr_Pedestoque.AsString+' não posso Faturar!',0,['0'],0);
         mcancelar:=true;
         end;
      Qr_Ped.Next;
      end;
   end;
Qr_Ped.First;
While not Qr_Ped.Eof do
   begin
   if Qr_Pedsaldo.Value<0 then
      begin
      Fmensagem('O Produto: '+Qr_PedNOMPRO.Value+#13
                +' Existe mais devoluções do que remessa. A faturar: '+Qr_Pedsaldo.AsString
                   +' é totalmente inválido!',0,['0'],0);
      mcancelar:=true;
      end;
   Qr_Ped.Next;
   end;
if mcancelar then
   exit;
if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
   begin
   testeform := TFrm_RDev(FindGlobalComponent('form_ped_02_rdev'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Ped_02, form_ped_02_rdev);
      form_ped_02_rdev.mAceita_pergunta:=false;
      end
   else
      begin
      fMensagem('Favor Fechar o Programa de Pedido Antes de clicar em Faturar!',0,['0'],0);
      exit;
      end;
   flcadpar01(0,codemp,'1');
   form_ped_02_rdev.mPd_FaturandoPedido:=true;
   form_ped_02_rdev.btn_incluir.Click;

   form_ped_02_rdev.cb_leitor.Checked:=false;

   form_ped_02_rdev.mPed_Par_FatMz:=DM4.Tb_Par01PFATMZ.AsInteger=1;
   form_ped_02_rdev.mPed_Par_FatMz_LocMov     :=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   form_ped_02_rdev.mPed_Par_Avisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;


   // plano de vendas
   if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
      begin
      NOMPV.Text:='Plano Opcional(Digitado)';
      form_pvo_rdev.ShowModal;
      form_ped_02_rdev.fPd_CarregaPlanoVendas(1);

      end
   else
      begin
      if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
         begin
         Fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
         form_ped_02_rdev.Free;
         form_ped_02_rdev:=nil;
         CB_TABPV.SetFocus;
         exit;
         end
      else
         begin
         NOMPV.Text   :=DM1.Tb_PVPVNOME.Value;
         form_ped_02_rdev.fpd_CarregaPlanoVendas(0);
         end;
      end;
   if mpvtdc=0 then
      form_ped_02_rdev.edt_desconto01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      form_ped_02_rdev.edt_desconto01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);

   // fim do plano de vendas

//PAREI
   form_ped_02_rdev.Ts_Servico.Enabled    :=True;
   form_ped_02_rdev.tbs_outrosdados.Enabled      :=True;
   form_ped_02_rdev.tbs_situacao.Enabled         :=True;
   form_ped_02_rdev.cb_tipopedido.Enabled        :=True;
   form_ped_02_rdev.CODCON.Text    :='';
   form_ped_02_rdev.DATCON.Text :='/  /';
   form_ped_02_rdev.HORCON.Text :='';
   form_ped_02_rdev.edt_codtra.Text:='';
   form_ped_02_rdev.edt_nometrans.Text:='';
   form_ped_02_rdev.edt_qtdvol.Text:='0';
   form_ped_02_rdev.edt_pesol.Text :='0';
   form_ped_02_rdev.edt_pesob.Text :='0';
   form_ped_02_rdev.edt_especie.Text       :='';
   form_ped_02_rdev.RGFRETEPC.ItemIndex:=0;
   form_ped_02_rdev.edt_valorfrete.Text        :='0';
   form_ped_02_rdev.edt_ufpv.Text          :='';
   form_ped_02_rdev.edt_placav.Text        :='';
   form_ped_02_rdev.edt_desconto01.Text        :='0';
   form_ped_02_rdev.edt_desconto02.Text        :='0';
   form_ped_02_rdev.edt_codvendedor02.Text:='';
   form_ped_02_rdev.edt_codvendedor03.Text:='';
   form_ped_02_rdev.CB_ORIGEM.ItemIndex:=0;
   form_ped_02_rdev.CODTLV.Text:='';
   form_ped_02_rdev.cb_etivol.Checked :=False;
   form_ped_02_rdev.edt_codsep.Text:='';
   form_ped_02_rdev.edt_datasep.Text:='/  /';
   form_ped_02_rdev.edt_horasep.Text:='';
   form_ped_02_rdev.CODEMB.Text:='';
   form_ped_02_rdev.edt_numcf.Text:='0';
   form_ped_02_rdev.edt_submod.Text:='000';
   form_ped_02_rdev.mPed_SubMod:=StrtoFloat('0'+Trim(form_ped_02_rdev.edt_submod.Text));


   flcadcli(1,0,TRIM(CODCLI.Text));
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   form_ped_02_rdev.edt_codvenda.Text   :=Trim(CODPV.Text);
   form_ped_02_rdev.cb_tabelavenda.Text :=Trim(CB_TABPV.Text);
   flcadpv(1,0,form_ped_02_rdev.cb_tabelavenda.Text,form_ped_02_rdev.edt_codvenda.Text);
   form_ped_02_rdev.edt_chave.Text :='';
   form_ped_02_rdev.edt_codcliente.Text:=DM1.Tb_CliCCODCLI.AsString;
   form_ped_02_rdev.edt_nomecliente.Text:=DM1.Tb_CliCRAZAO.Value;
   form_ped_02_rdev.edt_datapedido.Text :=FormatDatetime(fdt2,date);
//   lindomar atualizar
   form_ped_02_rdev.edt_pedori1.Text    :='';
   form_ped_02_rdev.edt_pedori2.Text    :='';
   form_ped_02_rdev.edt_datanf.Text:='/  /';
   form_ped_02_rdev.edt_numnf.Text  :='';
   form_ped_02_rdev.edt_serienf.Text:='';
   form_ped_02_rdev.edt_subser.Text :='';
   form_ped_02_rdev.edt_pcomis.Text :='';
   form_ped_02_rdev.edt_modelo.Text :='';
   form_ped_02_rdev.edt_obs1.Text   :='';
   form_ped_02_rdev.edt_obs2.Text   :='';
   form_ped_02_rdev.edt_obs3.Text   :='';
   form_ped_02_rdev.mpd_status                 :=0;

   if RG_TIPOREM.ItemIndex=1 then
      form_ped_02_rdev.mpd_ptipop      :=15
   else
     form_ped_02_rdev.mpd_ptipop      :=14;
   form_ped_02_rdev.cb_tipo2.itemindex:=form_ped_02_rdev.mpd_ptipop;

   form_ped_02_rdev.cb_tipopedido.text := form_ped_02_rdev.cb_tipo2.Text;

   with form_ped_02_rdev.cb_tipopedido do
      ItemIndex := Items.IndexOf(form_ped_02_rdev.cb_tipopedido.Text);
   if form_ped_02_rdev.cb_tipopedido.ItemIndex<0 then
      begin
      fmensagem('o Sistema Não Esta Configurado para Esta Opção. Favor Contactar Suporte '
                       +'para configura-lo!',0,['0'],0);
      form_ped_02_rdev.free;
      form_ped_02_rdev:=nil;
      exit;

      end;

//   form_ped_02_rdev.cb_tipo2.text  := form_ped_02_rdev.cb_tipo2.items[form_ped_02_rdev.cb_tipo2.itemIndex];


   form_ped_02_rdev.edt_codigodigitador.Text     :=IntToStr(codusr);
   flcadusr(1,0,form_ped_02_rdev.edt_codigodigitador.Text);
   form_ped_02_rdev.edt_nomedigitador.Text       :=DM4.Tb_UsrNOMUSR.Value;
   form_ped_02_rdev.edt_horadigitacao.Text       :=FormatDatetime('hh:nn:ss',time);
   form_ped_02_rdev.DTMOD.Text  :='';


   form_ped_02_rdev.NOMUSRM.Text:='';
   form_ped_02_rdev.CB_CONF.Checked:=False;
   form_ped_02_rdev.edt_nomevenda.Text    :=DM1.Tb_PVPVNOME.Value;

   form_ped_02_rdev.edt_codbanco.Text        :='';
   form_ped_02_rdev.edt_codbanco2.Text        :='';



   form_ped_02_rdev.edt_codvendedor.Text:=CODVEN.Text;

   form_ped_02_rdev.edt_nomevendedor2.Text:='';
   form_ped_02_rdev.edt_nomevendedor3.Text:='';
   flcadven(1,0,form_ped_02_rdev.edt_codvendedor.Text);
   form_ped_02_rdev.edt_nomevendedor.Text:=DM1.Tb_VenVNOME.Value;

   form_ped_02_rdev.NOMTLV.Text:='';


   form_ped_02_rdev.edt_nomesep.Text:='';

   form_ped_02_rdev.edt_datasep.Text:='/  /';
   form_ped_02_rdev.edt_horasep.Text:='';
   form_ped_02_rdev.CODEMB.Text:='';
   form_ped_02_rdev.NOMEMB.Text:='';
   form_ped_02_rdev.edt_numcf.Text:='0';
   form_ped_02_rdev.QryItem_Nota.Close;
   form_ped_02_rdev.QryItem_Nota.Open;
   form_ped_02_rdev.QryServico_Nota.Close;
   form_ped_02_rdev.QryServico_Nota.Open;


   form_ped_02_rdev.cb_tipopreco.ItemIndex:=2;
   form_ped_02_rdev.cb_tipopedidoExit(self);
   form_ped_02_rdev.edt_valordesconto.Text        :=FormatFloat(mcasas, 0);

   form_ped_02_rdev.mPd_Oper_Ped:=0;
   mqtd:=1;

   form_ped_02_rdev.QryItem_Nota.Close;
   form_ped_02_rdev.QryItem_Nota.Open;
   form_ped_02_rdev.QryServico_Nota.Close;
   form_ped_02_rdev.QryServico_Nota.Open;

   Qr_Ped.First;
   mqtd:=0;
   flcadcli(1,0,Frm_RDev.CODCLI.Text);
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   form_ped_02_rdev.cb_tabelavenda.Text:=Trim(CB_TABPV.Text);
   form_ped_02_rdev.edt_codvenda.Text:=Trim(CODPV.Text);
   flcadpv(1,0,form_ped_02_rdev.cb_tabelavenda.Text,form_ped_02_rdev.edt_codvenda.Text);
{
   if RG_TIPOREM.ItemIndex=1 then
      form_ped_02_rdev.mpd_ptipop      :=15
   else
      form_ped_02_rdev.mpd_ptipop      :=14;
   form_ped_02_rdev.cb_tipopedido.ItemIndex  :=form_ped_02_rdev.mpd_ptipop;
   form_ped_02_rdev.CB_TIPO2.text:=form_ped_02_rdev.CB_TIPO2.items[form_ped_02_rdev.cb_tipopedido.itemIndex];
   form_ped_02_rdev.mpd_ptipop:=form_ped_02_rdev.CB_TIPO2.ItemIndex;
 }
   While not Qr_Ped.Eof do
      begin
      if Qr_Pedsaldo.Value<=0 then
         begin
         Qr_Ped.Next;
         Continue;
         end;
      mqtd:=mqtd+1;

      form_ped_02_rdev.edt_codproduto.Text    := Qr_PedCODPRO.AsString;
      form_ped_02_rdev.edt_lote.Text          := Qr_PedLOTE.AsString;
      form_ped_02_rdev.edt_precounitario.Value:= Qr_PedPRECO.AsFloat;
      form_ped_02_rdev.edt_quantidade.Value   := Qr_Pedsaldo.AsFloat;
      form_ped_02_rdev.edt_desc1.Value        := 0;
      form_ped_02_rdev.edt_desc2.Value        := 0;
      form_ped_02_rdev.edt_desc3.Value        := 0;

      form_ped_02_rdev.edt_ambiente.Text      :='';
      form_ped_02_rdev.edt_complemento.Text   :='';
      form_ped_02_rdev.edt_descfin.Value      := 0;
      form_ped_02_rdev.edt_comissao.value     := 0;
      form_ped_02_rdev.edt_codprodutoExit(Self);
      form_ped_02_rdev.edt_quantidadeExit(self);

      if form_ped_02_rdev.edt_quantidade.Value<=0 then
         begin
         form_ped_02_rdev.edt_codproduto.Text    := '';
         form_ped_02_rdev.edt_lote.Text          := '';
         form_ped_02_rdev.edt_dtvcto.Text        :='/  /';
         form_ped_02_rdev.edt_precounitario.Text := '';
         form_ped_02_rdev.edt_quantidade.Text    := '';
         form_ped_02_rdev.edt_desc1.Text         := '';
         form_ped_02_rdev.edt_desc2.Text         := '';
         form_ped_02_rdev.edt_desc3.Text         := '';
         form_ped_02_rdev.edt_descfin.Text       := '';
         form_ped_02_rdev.edt_comissao.Text      := '';
         form_ped_02_rdev.edt_descricao.Text     := '';
         form_ped_02_rdev.edt_marca.Text         := '';
         form_ped_02_rdev.edt_und.Text           := '';
         Qr_Ped.Next;
         Continue;
         end;

      form_ped_02_rdev.edt_precounitario.Value:= Qr_PedPRECO.AsFloat;
      form_ped_02_rdev.edt_quantidade.Value   := Qr_Pedsaldo.AsFloat;
      form_ped_02_rdev.edt_desc1.Value        := 0;
      form_ped_02_rdev.edt_desc2.Value        := 0;
      form_ped_02_rdev.edt_desc3.Value        := 0;

      form_ped_02_rdev.edt_precounitarioExit(self);


      form_ped_02_rdev.bbGravarItemClick(Self);

      mqtd:=mqtd+1;
      Qr_Ped.Next;
      end;

   if (form_ped_02_rdev.QryItem_Nota.RecordCount>0) or (form_ped_02_rdev.QryServico_Nota.RecordCount>0) then
      begin
      form_ped_02_rdev.edt_valordesconto.Text        :=FormatFloat(mcasas, 0);
      form_ped_02_rdev.edt_valordescontoExit(self);
      if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
         form_ped_02_rdev.fGerarFormas_ped02(iif(form_ped_02_rdev.cb_tabelavenda.Text='PP',1,0),0);
   form_ped_02_rdev.ShowModal;
   if mChaveTerc=0 then
      begin
      Fmensagem('Não Foi Faturado!',0,['0'],0);
      form_ped_02_rdev.free;
      form_ped_02_rdev:=nil;
      exit;
      end;
   if fmensagem('Posso confirmar o Acerto',0,['1','2'],2)=MrYes then
      begin
      mLoteAcerto:=fbuscaChAcRem(0);
      for x:=0 to STG.RowCount do
         begin
         if Trim(STG.Cells[0,x])='' then
            Continue;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                           +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                           +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                           +' where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                           +' P1LOTSEQ=0'+Trim(STG.Cells[7,x])
                           +' and P1CHAVE=0'+ Trim(STG.Cells[0,x])
                           +' and P1ORDEM=0'+Trim(STG.Cells[1,x]));
            try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(02,743,'Frm_RDev','CADP01');
               end;
            end;
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                        +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                          +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                          +' where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                          +' P1LOTSEQ=0'+IntToStr( form_ped_02_rdev.mPd_LotSeq)
                          +' and P1CHAVE=0'+FloatToStr(form_ped_02_rdev.mPd_ChaveTerc));
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,851,'Frm_RDev','CADP01');
         end;
      fAjustaAcerto(MLoteAcerto, RG_TIPOREM.Itemindex);
      end;
   Qr_Ped.close;
   form_ped_02_rdev.mAceita_pergunta:=true;
   form_ped_02_rdev.Free;
   form_ped_02_rdev:=nil;
   end
//termino
else if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   testeform := TFrm_RDev(FindGlobalComponent('form_Ped_AutoP_rdev'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Ped_AutoP, form_Ped_AutoP_rdev);
      form_Ped_AutoP_rdev.mAceitaConfirmacao:=false;
      end
   else
      begin
      fMensagem('Favor Fechar o Programa de Pedido Antes de clicar em Faturar!',0,['0'],0);
      exit;
      end;

   flcadpar01(0,codemp,'1');
   form_Ped_AutoP_rdev.mFatMz       :=DM4.Tb_Par01PFATMZ.AsInteger=1;
   form_Ped_AutoP_rdev.mFatMz_LocMov:=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
   form_Ped_AutoP_rdev.mAvisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;

   // plano de vendas
   if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
      begin
      NOMPV.Text:='Plano Opcional(Digitado)';
      form_pvo_rdev.ShowModal;
      form_Ped_AutoP_rdev.fCarregaPlanoVendas(1);

      end
   else
      begin
      if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
         begin
         Fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
         form_Ped_AutoP_rdev.mAceitaConfirmacao:=true;

         form_Ped_AutoP_rdev.Free;
         form_Ped_AutoP_rdev:=nil;
         CB_TABPV.SetFocus;
         exit;
         end
      else
         begin
         NOMPV.Text   :=DM1.Tb_PVPVNOME.Value;
         form_Ped_AutoP_rdev.fCarregaPlanoVendas(0);
         end;
      end;
   if mpvtdc=0 then
      form_Ped_AutoP_rdev.DESC01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      form_Ped_AutoP_rdev.DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);

   // fim do plano de vendas


   bbFaturar.Enabled:=false;
   form_Ped_AutoP_rdev.Tool_Incluir.Enabled   :=False;
   form_Ped_AutoP_rdev.tool_localizar.Enabled :=False;
   form_Ped_AutoP_rdev.Tool_Alterar.Enabled   :=False;
   form_Ped_AutoP_rdev.Tool_Excluir.Enabled   :=False;
   form_Ped_AutoP_rdev.Tool_Gravar.Enabled    :=True;
   form_Ped_AutoP_rdev.Tool_LSep.Enabled      :=False;
   form_Ped_AutoP_rdev.Tool_EmiteNF.Enabled   :=False;
   form_Ped_AutoP_rdev.Tool_Email.Enabled     :=False;
   form_Ped_AutoP_rdev.Tool_Calcular.Enabled  :=True;
   form_Ped_AutoP_rdev.Tool_Faturar.Enabled   :=False;
   form_Ped_AutoP_rdev.pc_Cabecalho.ActivePage:=form_Ped_AutoP_rdev.ts_principais;
   form_Ped_AutoP_rdev.pc_Cabecalho.Enabled   :=true;
   form_Ped_AutoP_rdev.ts_Mercadorias.Enabled :=True;
   form_Ped_AutoP_rdev.ts_Servicos.Enabled    :=True;
   form_Ped_AutoP_rdev.panel_conspro.Enabled  :=true;
   form_Ped_AutoP_rdev.ts_principais.Enabled  :=true;
   form_Ped_AutoP_rdev.ts_outros.Enabled      :=true;
   form_Ped_AutoP_rdev.ts_situacao.Enabled    :=true;
   form_Ped_AutoP_rdev.Ts_EntregaCob.Enabled  :=true;
   form_Ped_AutoP_rdev.Ts_ObsVcto.Enabled     :=true;
   form_Ped_AutoP_rdev.CB_ORCAMENTO.Enabled   :=true;
   form_Ped_AutoP_rdev.CB_TIPO.Enabled        :=true;
   form_Ped_AutoP_rdev.CODDIG.Text            :=IntToStr(codusr);
   flcadusr(1,0,form_Ped_AutoP_rdev.CODDIG.Text);
   form_Ped_AutoP_rdev.NOMDIG.Text            :=DM4.Tb_UsrNOMUSR.Value;
   form_Ped_AutoP_rdev.HORDIG.Text            :=FormatDatetime('hh:nn:ss',time);
   form_Ped_AutoP_rdev.DATAP.Text:=FormatDatetime('dd/mm/yyyy',date);
   form_Ped_AutoP_rdev.moper_ped:=0;

   form_Ped_AutoP_rdev.Tb_Ped02.Close;
   form_Ped_AutoP_rdev.Tb_Ped02.SQL.Clear;
   form_Ped_AutoP_rdev.Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
   form_Ped_AutoP_rdev.Tb_Ped02.Open;
   form_Ped_AutoP_rdev.Tb_Ped02s.Close;
   form_Ped_AutoP_rdev.Tb_Ped02s.SQL.Clear;
   form_Ped_AutoP_rdev.Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
   form_Ped_AutoP_rdev.Tb_Ped02s.Open;

   Qr_Ped.First;
   mqtd:=0;
   flcadcli(1,0,Frm_RDev.CODCLI.Text);
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   form_Ped_AutoP_rdev.CB_TABPV.Text:=Trim(CB_TABPV.Text);
   form_Ped_AutoP_rdev.CODPV.Text:=Trim(CODPV.Text);
   flcadpv(1,0,form_Ped_AutoP_rdev.CB_TABPV.Text,form_Ped_AutoP_rdev.CODPV.Text);

   if RG_TIPOREM.ItemIndex=1 then
      form_Ped_AutoP_rdev.mtipop      :=15
   else
      form_Ped_AutoP_rdev.mtipop      :=14;
   form_Ped_AutoP_rdev.CB_TIPO2.ItemIndex  :=form_Ped_AutoP_rdev.mtipop;
   form_Ped_AutoP_rdev.CB_TIPO2.text:=form_Ped_AutoP_rdev.CB_TIPO2.items[form_Ped_AutoP_rdev.CB_TIPO2.itemIndex];
   form_Ped_AutoP_rdev.mtipop:=form_Ped_AutoP_rdev.CB_TIPO2.ItemIndex;

   form_Ped_AutoP_rdev.CB_TIPO.text:=form_Ped_AutoP_rdev.CB_TIPO2.Text;

   with form_Ped_AutoP_rdev.CB_TIPO do
      ItemIndex := Items.IndexOf(form_Ped_AutoP_rdev.CB_TIPO.Text);
   if form_Ped_AutoP_rdev.CB_TIPO.ItemIndex<0 then
      begin
      fmensagem('o Sistema Não Esta Configurado para Esta Opção. Favor Contactar Suporte '
                       +'para configura-lo!',0,['0'],0);
      form_Ped_AutoP_rdev.free;
      form_Ped_AutoP_rdev:=nil;
      exit;
      end;


   While not Qr_Ped.Eof do
      begin
      if Qr_Pedsaldo.Value<=0 then
         begin
         Qr_Ped.Next;
         Continue;
         end;
      mqtd:=mqtd+1;
      flcadpro(1,0,0,Qr_PedCODPRO.AsString);
      form_Ped_AutoP_rdev.Tb_Ped02.Append;
      form_Ped_AutoP_rdev.Tb_Ped02P2CODEMP.Value      :=codemp;
      form_Ped_AutoP_rdev.Tb_Ped02P2LOTSEQ.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2CHAVE.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ORDEM.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ITEM.Value        :=mqtd;
      form_Ped_AutoP_rdev.Tb_Ped02P2CODPRO.Value      :=Qr_PedCODPRO.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2CODANT.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2QTD.Value         :=Qr_Pedsaldo.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2QTDDEV.Value      :=0;
      if (Qr_PedLOTE.AsString)='' then
         form_Ped_AutoP_rdev.Tb_Ped02P2LOTE.Value     :=''
      else
         form_Ped_AutoP_rdev.Tb_Ped02P2LOTE.Value     :=Qr_PedLOTE.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2PROMOCAO.Value    :='';
      form_Ped_AutoP_rdev.Tb_Ped02P2DTVCTO.Value      :=Qr_PedDTVCTO.AsDateTime;
      form_Ped_AutoP_rdev.Tb_Ped02P2DESC1.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2DESC2.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VALDES.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2PRECO.Value       :=Qr_PedPRECO.Value;
     if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
        begin
        if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
           form_Ped_AutoP_rdev.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
        else
           form_Ped_AutoP_rdev.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString
        end
    else
        begin
        if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
           form_Ped_AutoP_rdev.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString
        else
           form_Ped_AutoP_rdev.Tb_Ped02P2SIT.Value   := DM1.Tb_ProPDFIS_ORIGEM.Value+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString
        end;

//      form_Ped_AutoP_rdev.Tb_Ped02P2SIT.Value         :=DM1.Tb_ProPDSIT.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2CODFAB.Value      :=DM1.Tb_ProPDCODFOR.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2BASEN.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ICMSN.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2REPAS.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2BASER.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ICMSR.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2LISTA.Value       :=DM1.Tb_ProPDLISTA.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2STATUS.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2PCOTAB.Value      :=DM1.Tb_ProPDPRECO1.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2PCOFPG.Value      :=DM1.Tb_Propcoven.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2UCPR.Value        :=DM1.Tb_ProPDUCPR.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2PCOCUS.Value      :=DM1.Tb_ProPDPRECOC.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2PCOMAX.Value      :=DM1.Tb_ProPDPMC.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2TOTDES.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2DESCRAT.Value     :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2TABELA.Value      :=DM1.Tb_ProPDTABICM.Value;
      form_Ped_AutoP_rdev.Tb_Ped02P2ALIPI.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VALIPI.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2BCINR.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ICMSNR.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ISENTAS.Value     :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2TOTOUT.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ALIQ.Value        :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ALIQNR.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2PCOMIS.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VCOMIS.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VCOM02.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VCOM03.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2DESCM.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2CFO.Value         :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2SEMCOM.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2TOTLIQ.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2PDESCF.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VDESCF.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ACRECONV.Value    :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ACREGER.Value     :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2DESC3.Value       :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2CODGRU.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2VCOM04.Value      :=0;
      form_Ped_AutoP_rdev.Tb_Ped02P2ACRERAT.Value     :=0;
      form_Ped_AutoP_rdev.Tb_Ped02NOMEPRO.Value       :=DM1.Tb_ProPDNOME.Value;
      form_Ped_AutoP_rdev.Tb_Ped02UNDPRO.Value        :=DM1.Tb_ProPDUND.Value;
      form_Ped_AutoP_rdev.Tb_Ped02NOMEPRO2.Value      :=DM1.Tb_ProPDNOME2.Value;
      form_Ped_AutoP_rdev.Tb_Ped02MARCAPRO.Value      :=DM1.Tb_ProPDMARCA.Value;
      form_Ped_AutoP_rdev.Tb_Ped02SECAOPRO.Value      :=DM1.Tb_ProPDSECAO.Value;
      form_Ped_AutoP_rdev.Tb_Ped02.Post;
      Qr_Ped.Next;
      end;
   form_Ped_AutoP_rdev.CHAVE.Text :='';
   form_Ped_AutoP_rdev.ORDEM.Text :='';
   form_Ped_AutoP_rdev.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
   form_Ped_AutoP_rdev.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   form_Ped_AutoP_rdev.DATAP.Text :=FormatDatetime(fdt2,date);
   form_Ped_AutoP_rdev.PEDORI1.Text:=mchaves1;
   form_Ped_AutoP_rdev.PEDORI2.Text:=mchaves2;
   form_Ped_AutoP_rdev.DATANF.Text:='/  /';
   form_Ped_AutoP_rdev.NUMNF.Text  :='';
   form_Ped_AutoP_rdev.SERIENF.Text:='';
   form_Ped_AutoP_rdev.SUBSER.Text :='';
   form_Ped_AutoP_rdev.PCOMIS.Text :='';
   form_Ped_AutoP_rdev.MODELO.Text :='';
   form_Ped_AutoP_rdev.OBS1.Text   :='';
   form_Ped_AutoP_rdev.OBS2.Text   :='';
   form_Ped_AutoP_rdev.OBS3.Text   :='';
   mStatus                   :=0;

   with form_Ped_AutoP_rdev.CB_TIPO do ItemIndex:=Items.IndexOf(form_Ped_AutoP_rdev.CB_TIPO2.Text);
   form_Ped_AutoP_rdev.CB_TIPO.text:=form_Ped_AutoP_rdev.CB_TIPO.items[form_Ped_AutoP_rdev.CB_TIPO.itemIndex];

   form_Ped_AutoP_rdev.CODDIG.Text :=Inttostr(codusr);
   form_Ped_AutoP_rdev.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
   flcadusr(1,0,Inttostr(codusr));
   form_Ped_AutoP_rdev.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
   form_Ped_AutoP_rdev.DTMOD.Text  :='';
   form_Ped_AutoP_rdev.NOMUSRM.Text:='';
   form_Ped_AutoP_rdev.CB_CONF.Checked:=False;
   form_Ped_AutoP_rdev.CODCON.Text    :='';
   form_Ped_AutoP_rdev.DATCON.Text :='/  /';
   form_Ped_AutoP_rdev.HORCON.Text :='';
   form_Ped_AutoP_rdev.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
   form_Ped_AutoP_rdev.DESC01.Text   :='0';
   form_Ped_AutoP_rdev.DESC02.Text   :='0';
   form_Ped_AutoP_rdev.VALDES.Text   :='0';
   form_Ped_AutoP_rdev.CODTRA.Text:='';
   form_Ped_AutoP_rdev.NOMTRA.Text:='';
   form_Ped_AutoP_rdev.QTDVOL.Text:='0';
   form_Ped_AutoP_rdev.PESOL.Text :='0';
   form_Ped_AutoP_rdev.PESOB.Text :='0';
   form_Ped_AutoP_rdev.ESPECIE.Text       :='';
   form_Ped_AutoP_rdev.RGFRETEPC.ItemIndex:=0;
   form_Ped_AutoP_rdev.VALFRE.Text        :='0';
   form_Ped_AutoP_rdev.UFPV.Text          :='';
   form_Ped_AutoP_rdev.PLACAV.Text        :='';
   form_Ped_AutoP_rdev.CODBCO.Text        :='';
   form_Ped_AutoP_rdev.RGCODSER.ItemIndex :=0;
   mcodldr            :=0;
   mbcissqn           :=0;
   missqn             :=0;
   form_Ped_AutoP_rdev.CODVEN.Text :=CODVEN.Text;
   form_Ped_AutoP_rdev.CODVEN2.Text:='';
   form_Ped_AutoP_rdev.NOMVEN2.Text:='';
   form_Ped_AutoP_rdev.CODVEN3.Text:='';
   form_Ped_AutoP_rdev.NOMVEN3.Text:='';
   flcadven(1,0,form_Ped_AutoP_rdev.CODVEN.Text);
   form_Ped_AutoP_rdev.NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   mcomis     :=0;
   form_Ped_AutoP_rdev.CB_ORIGEM.ItemIndex:=0;
   form_Ped_AutoP_rdev.CODTLV.Text:='';
   form_Ped_AutoP_rdev.NOMTLV.Text:='';
   form_Ped_AutoP_rdev.CB_ETIVOL.Checked :=False;
   form_Ped_AutoP_rdev.CODSEP.Text:='';
   form_Ped_AutoP_rdev.NOMSEP.Text:='';
   form_Ped_AutoP_rdev.DATSEP.Text:='/  /';
   form_Ped_AutoP_rdev.HORSEP.Text:='';
   form_Ped_AutoP_rdev.codemb.Text:='';
   form_Ped_AutoP_rdev.NOMEMB.Text:='';
   form_Ped_AutoP_rdev.NUMCF.Text:='0';
   form_Ped_AutoP_rdev.Tool_Calcular.Click;
   form_Ped_AutoP_rdev.CB_TIPO.Enabled    :=True;
   form_Ped_AutoP_rdev.Tool_Arredondar.Enabled     :=True;
   mGravarCh_Terc:=true;
   mChaveTerc    :=0;
   verteclado(0);
   form_Ped_AutoP_rdev.ShowModal;
   mChaveTerc:=form_Ped_AutoP_rdev.mchave;
   if mChaveTerc=0 then
      begin
      Fmensagem('Não Foi Faturado!',0,['0'],0);
      form_Ped_AutoP_rdev.mAceitaConfirmacao:=true;
      form_Ped_AutoP_rdev.free;
      form_Ped_AutoP_rdev:=nil;
      exit;
      end;
   if fmensagem('Posso confirmar o Acerto',0,['1','2'],2)=MrYes then
      begin
      mLoteAcerto:=fbuscaChAcRem(0);

      for x:=0 to STG.RowCount do
         begin
         if Trim(STG.Cells[0,x])='' then
            Continue;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                           +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                           +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                           +' where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                           +' P1LOTSEQ=0'+Trim(STG.Cells[7,x])
                           +' and P1CHAVE=0'+ Trim(STG.Cells[0,x])
                           +' and P1ORDEM=0'+Trim(STG.Cells[1,x]));
            try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(02,743,'Frm_RDev','CADP01');
               end;
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                        +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                          +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                          +' where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                          +' P1LOTSEQ=0'+IntToStr(form_Ped_AutoP_rdev.ped_lotseq)
                          +' and P1CHAVE=0'+FloatToStr(mChaveTerc));
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,851,'Frm_RDev','CADP01');
         end;
      fAjustaAcerto(MLoteAcerto, RG_TIPOREM.Itemindex);
      end;
   Qr_Ped.close;
   form_Ped_AutoP_rdev.mAceitaConfirmacao:=true;
   form_Ped_AutoP_rdev.Free;
   form_Ped_AutoP_rdev:=nil;
   end
else
   begin
   testeform := TFrm_RDev(FindGlobalComponent('form_Ped_rdev'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Ped, form_Ped_rdev)
   else
      begin
      fMensagem('Favor Fechar o Programa de Pedido Antes de clicar em Faturar!',0,['0'],0);
      exit;
      end;
   // plano de vendas
   if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
      begin
      NOMPV.Text:='Plano Opcional(Digitado)';
      form_pvo_rdev.ShowModal;
      mpvtdc       := form_pvo_rdev.CB_PVTPDC.ItemIndex;
      mpvtc        := form_pvo_rdev.CB_PVTPC.ItemIndex;
      mpvtpd1      := form_pvo_rdev.CB_PVTPD1.ItemIndex;
      mpvtpd2      := form_pvo_rdev.CB_PVTPD2.ItemIndex;
      mpvtpdesf    := form_pvo_rdev.CB_PVTPDESF.ItemIndex;
      mtpp         := form_pvo_rdev.CB_TPP.ItemIndex;
      mpvcom       := valfloat(form_pvo_rdev.COM.Text);
      mpvactd      := valfloat(form_pvo_rdev.ACTD.Text);
      mpvact00     := valfloat(form_pvo_rdev.ACT00.Text);
      mpvact01     := ValFloat(form_pvo_rdev.ACT01.Text);
      mpvact99     := ValFloat(form_pvo_rdev.ACT99.Text);
      mpvdes       := ValFloat(form_pvo_rdev.DES.Text);
      mpvdes1      := ValFloat(form_pvo_rdev.DES1.Text);
      mpvdes2      := ValFloat(form_pvo_rdev.DES2.Text);
      mpvdescf     := ValFloat(form_pvo_rdev.DESCF.Text);
      mpvddescf    := form_pvo_rdev.CB_PVDDESCF.ItemIndex;
      mpvdiasdescf := StrToInt('0'+Trim(form_pvo_rdev.DIASDESCF.Text));
      end
   else
      begin
      flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
      if DM1.Tb_PV.Eof then
         begin
         Fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
         form_Ped_rdev.Free;
         form_Ped_rdev:=nil;
         CB_TABPV.SetFocus;
         exit;
         end
      else
         begin
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
         mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
         mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
         mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
         mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
         mtpp         := DM1.Tb_PVPVTPP.AsInteger;
         mpvcom       := DM1.Tb_PVPVCOM.Value;
         mpvactd      := DM1.Tb_PVPVACTD.Value;
         mpvact00     := DM1.Tb_PVPVACT00.Value;
         mpvact01     := DM1.Tb_PVPVACT01.Value;
         mpvact99     := DM1.Tb_PVPVACT99.Value;
         mpvdes       := DM1.Tb_PVPVDES.Value;
         mpvdes1      := DM1.Tb_PVPVDES1.Value;
         mpvdes2      := DM1.Tb_PVPVDES2.Value;
         mpvdescf     := DM1.Tb_PVPVDESCF.Value;
         mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
         mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
         end;
      end;
   if mpvtdc=0 then
      form_Ped_rdev.DESC01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      form_Ped_rdev.DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);

   // fim do plano de vendas


   bbFaturar.Enabled:=false;
   form_Ped_rdev.BBINCLUIR.Enabled  :=False;
   form_Ped_rdev.BBLOCALIZAR.Enabled:=False;
   form_Ped_rdev.BBALTERAR.Enabled  :=False;
   form_Ped_rdev.BBEXCLUIR.Enabled  :=False;
   form_Ped_rdev.BBGRAVAR.Enabled   :=True;
   form_Ped_rdev.BBIMPRIMIR.Enabled :=False;
   form_Ped_rdev.BBEMITENF.Enabled  :=False;
   form_Ped_rdev.BBCUPOM.Enabled    :=False;
   form_Ped_rdev.BBCALCULAR.Enabled :=True;
   form_Ped_rdev.BBFATURAR.Enabled  :=False;
   form_Ped_rdev.PC_CAB.ActivePageIndex     :=0;
   form_Ped_rdev.PC_CAB.Enabled             :=true;
   form_Ped_rdev.Pn_DigPro.Enabled     :=True;
   form_Ped_rdev.Pn_Servicos.Enabled     :=True;
   form_Ped_rdev.Pn_Complementares.Enabled     :=True;
   form_Ped_rdev.Pn_Situacao.Enabled     :=True;
   form_Ped_rdev.CB_TIPO.Enabled    :=True;
   form_Ped_rdev.CODDIG.Text        :=IntToStr(codusr);
   flcadusr(1,0,form_Ped_rdev.CODDIG.Text);
   form_Ped_rdev.NOMDIG.Text        :=DM4.Tb_UsrNOMUSR.Value;
   form_Ped_rdev.HORDIG.Text        :=FormatDatetime('hh:nn:ss',time);
   form_Ped_rdev.DATAP.Text:=FormatDatetime('dd/mm/yyyy',date);
   form_Ped_rdev.Qr_PedFP.Close;
   form_Ped_rdev.Qr_PedFP.Sql.Clear;
   form_Ped_rdev.Qr_PedFP.Sql.Add('select PFPCODEMP, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPLOTSEQ, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPSEQ, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPFORMA, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPDATA, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPBANCO, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPSERIE, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPVALOR, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPCC, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPCOMP, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       FPDESC ');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       ,PFPFPGTO');

   form_Ped_rdev.Qr_PedFP.Sql.Add('       from CADPFP,CADFP where PFPCODEMP=0');
   form_Ped_rdev.Qr_PedFP.Sql.Add('       and FPCODIGO=PFPFORMA');
   form_Ped_rdev.Qr_PedFP.Open;

   moper:=0;
   form_Ped_rdev.STG1.RowCount:=2;
   form_Ped_rdev.STG1.Rows[1].Clear;
   mqtd:=1;
   Qr_Ped.First;
   While not Qr_Ped.Eof do
      begin
      if Qr_Pedsaldo.Value<=0 then
         begin
         Qr_Ped.Next;
         Continue;
         end;
      form_Ped_rdev.STG1.RowCount:=mqtd+1;
      flcadpro(1,0,0,Qr_PedCODPRO.AsString);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[00],mqtd]:=Qr_PedCODPRO.AsString;
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[01],mqtd]:=FormatFloat(mcasqtd,Qr_Pedsaldo.Value);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[02],mqtd]:=DM1.Tb_ProPDUND.Value;
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[03],mqtd]:=DM1.Tb_ProPDNOME.Value;
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[04],mqtd]:=Formatfloat(mcasas,Qr_PedPRECO.Value);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[06],mqtd]:=Formatfloat(mcasas,0);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[07],mqtd]:=Formatfloat(mcasas,0);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[08],mqtd]:=Formatfloat(mcasas,0);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[05],mqtd]:=Formatfloat(mcasas,(Qr_PedSALDO.Value*Qr_PedPRECO.Value));
      if Qr_PedLOTE.IsNull then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[09],mqtd]:=''
      else
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[09],mqtd]:=Qr_PedLOTE.Value;
   //   if Qr_PedDTVCTO.IsNull then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[10],mqtd]:='';
   //   else
   //      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[10],mqtd]:=FormatDateTime(fdt2, Qr_PedDTVCTO.Value);

     if (DM1.Tb_CliCCONSF.Value = 1) or (DM1.Tb_CliCREVENDA_CP.AsInteger = 1) then
        begin
        if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
           form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString))
        else
           form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString));
        end
    else
        begin
        if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
           form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString))
        else
           form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[17],mqtd]:=FormatFloat('000',ValFloat(DM1.Tb_ProPDFIS_ORIGEM.AsString+DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString));
        end;


//      form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[17],mqtd]:=FormatFloat('000',DM1.Tb_ProPDSIT.AsFloat);
      form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[18],mqtd]:=DM1.Tb_ProPDTABICM.Value;
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[19],mqtd]:=Formatfloat('0',DM1.Tb_ProPDLISTA.Value);
      form_Ped_rdev.STG1.cells[form_Ped_rdev.stg1_col[25],mqtd]:=Qr_PedPRECO.AsString;
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[29],mqtd]:='';
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[11],mqtd]:='';
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[30],mqtd]:='0';   // Media de descontos
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[31],mqtd]:='0';   // percentual de comissao
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[32],mqtd]:=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[33],mqtd]:='0';   // Isentas
      form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[34],mqtd]:=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);


      if DM4.Tb_Par01PORDGPED.Value=1 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=2 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=DM1.Tb_ProPDNOME2.Value
      else if DM4.Tb_Par01PORDGPED.Value=3 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=insere(DM1.Tb_ProPDCODPRO.AsString,'0',15)
      else if DM4.Tb_Par01PORDGPED.Value=4 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=DM1.Tb_ProPDMARCA.Value+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=5 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=FormatFloat('00',DM1.Tb_ProPDLISTA.Value)+DM1.Tb_ProPDNOME.Value
      else if DM4.Tb_Par01PORDGPED.Value=6 then
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=DM1.Tb_ProPDSECAO.Value+DM1.Tb_ProPDNOME.Value
      else
         form_Ped_rdev.STG1.Cells[form_Ped_rdev.stg1_col[35],mqtd]:=Formatfloat('000000000',mqtd);



      mqtd:=mqtd+1;
      Qr_Ped.Next;
      end;
   form_Ped_rdev.STG1.RowCount:=mqtd+1;
   flcadcli(1,0,Frm_RDev.CODCLI.Text);
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
   form_Ped_rdev.CB_TABPV.Text:=Trim(CB_TABPV.Text);
   form_Ped_rdev.CODPV.Text:=Trim(CODPV.Text);
   flcadpv(1,0,form_Ped_rdev.CB_TABPV.Text,form_Ped_rdev.CODPV.Text);
   form_Ped_rdev.CHAVE.Text :='';
   form_Ped_rdev.ORDEM.Text :='';
   form_Ped_rdev.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
   form_Ped_rdev.NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   form_Ped_rdev.DATAP.Text :=FormatDatetime(fdt2,date);
   form_Ped_rdev.PEDORI1.Text:=mchaves1;
   form_Ped_rdev.PEDORI2.Text:=mchaves2;
   form_Ped_rdev.DATANF.Text:='/  /';
   form_Ped_rdev.NUMNF.Text  :='';
   form_Ped_rdev.SERIENF.Text:='';
   form_Ped_rdev.SUBSER.Text :='';
   form_Ped_rdev.PCOMIS.Text :='';
   form_Ped_rdev.MODELO.Text :='';
   form_Ped_rdev.OBS1.Text   :='';
   form_Ped_rdev.OBS2.Text   :='';
   form_Ped_rdev.OBS3.Text   :='';
   form_Ped_rdev.STATUS.Text :='0';
   if RG_TIPOREM.ItemIndex=1 then
      form_Ped_rdev.mtipop_ant      :=15
   else
      form_Ped_rdev.mtipop_ant      :=14;
   form_Ped_rdev.CB_TIPO2.ItemIndex  :=form_Ped_rdev.mtipop_ant;
   form_Ped_rdev.CB_TIPO2.text:=form_Ped_rdev.CB_TIPO2.items[form_Ped_rdev.CB_TIPO2.itemIndex];
   form_Ped_rdev.mtipop_ant:=form_Ped_rdev.CB_TIPO2.ItemIndex;

   with form_Ped_rdev.CB_TIPO do ItemIndex:=Items.IndexOf(form_Ped_rdev.CB_TIPO2.Text);
   form_Ped_rdev.CB_TIPO.text:=form_Ped_rdev.CB_TIPO.items[form_Ped_rdev.CB_TIPO.itemIndex];

   if form_Ped_rdev.CB_TIPO.ItemIndex<0 then
      begin
      fmensagem('o Sistema Não Esta Configurado para Esta Opção. Favor Contactar Suporte '
                       +'para configura-lo!',0,['0'],0);
      form_Ped_rdev.free;
      form_Ped_rdev:=nil;
      exit;
      end;



   form_Ped_rdev.CODDIG.Text :=Inttostr(codusr);
   form_Ped_rdev.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
   flcadusr(1,0,Inttostr(codusr));
   form_Ped_rdev.NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value;
   form_Ped_rdev.DTMOD.Text  :='';
   form_Ped_rdev.NOMUSRM.Text:='';
   form_Ped_rdev.CB_CONF.Checked:=False;
   form_Ped_rdev.CODCON.Text    :='';
   form_Ped_rdev.DATCON.Text :='/  /';
   form_Ped_rdev.HORCON.Text :='';
   form_Ped_rdev.NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
   form_Ped_rdev.CB_ECF.Checked:=False;
   form_Ped_rdev.DESC01.Text   :='0';
   form_Ped_rdev.DESC02.Text   :='0';
   form_Ped_rdev.VALDES.Text   :='0';
   form_Ped_rdev.CODTRA.Text:='';
   form_Ped_rdev.NOMTRA.Text:='';
   form_Ped_rdev.QTDVOL.Text:='0';
   form_Ped_rdev.PESOL.Text :='0';
   form_Ped_rdev.PESOB.Text :='0';
   form_Ped_rdev.ESPECIE.Text       :='';
   form_Ped_rdev.RGFRETEPC.ItemIndex:=0;
   form_Ped_rdev.VALFRE.Text        :='0';
   form_Ped_rdev.UFPV.Text          :='';
   form_Ped_rdev.PLACAV.Text        :='';
   form_Ped_rdev.CODBCO.Text        :='';
   form_Ped_rdev.RGCODSER.ItemIndex :=0;
   mcodldr            :=0;
   mbcissqn           :=0;
   missqn             :=0;
   form_Ped_rdev.CODVEN2.Text:='';
   form_Ped_rdev.NOMVEN2.Text:='';
   form_Ped_rdev.CODVEN3.Text:='';
   form_Ped_rdev.NOMVEN3.Text:='';
   form_Ped_rdev.CODVEN.text:=Trim(CODVEN.Text);
   flcadven(1,0,form_Ped_rdev.CODVEN.Text);
   form_Ped_rdev.NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   mcomis     :=0;
   form_Ped_rdev.RG_ORIGEM.ItemIndex:=0;
   form_Ped_rdev.CODTLV.Text:='';
   form_Ped_rdev.NOMTLV.Text:='';
   form_Ped_rdev.CB_ETIVOL.Checked :=False;
   form_Ped_rdev.CODSEP.Text:='';
   form_Ped_rdev.NOMSEP.Text:='';
   form_Ped_rdev.DATSEP.Text:='/  /';
   form_Ped_rdev.HORSEP.Text:='';
   form_Ped_rdev.codemb.Text:='';
   form_Ped_rdev.NOMEMB.Text:='';
   form_Ped_rdev.NUMCF.Text:='0';
   form_Ped_rdev.BBCALCULAR.Click;
   form_Ped_rdev.CB_TIPO.Enabled    :=True;
   form_Ped_rdev.BB_ARR.Enabled     :=True;
   form_Ped_rdev.TS_Principal.Enabled  :=True;
   form_Ped_rdev.TS_Adicionais.Enabled  :=True;
   form_Ped_rdev.Ts_Fpgto.Enabled   :=True;

   form_Ped_rdev.Pn_DigPro.Enabled     :=True;
   form_Ped_rdev.Pn_Servicos.Enabled     :=True;
   form_Ped_rdev.Pn_Complementares.Enabled     :=True;
   form_Ped_rdev.Pn_Situacao.Enabled     :=True;
   mGravarCh_Terc:=true;
   mChaveTerc    :=0;
   verteclado(0);
   form_Ped_rdev.ShowModal;
   if mChaveTerc=0 then
      begin
      Fmensagem('Não Foi Faturado!',0,['0'],0);
      form_Ped_rdev.free;
      exit;
      
      end;
   if fMensagem('Posso confirmar o Acerto',0,['1','2'],2)=MrYes then
      begin
      mLoteAcerto:=fbuscaChAcRem(0);

      for x:=0 to STG.RowCount do
         begin
         if Trim(STG.Cells[0,x])='' then
            Continue;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                           +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                           +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                           +' where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                           +' P1LOTSEQ=0'+Trim(STG.Cells[7,x])
                           +' and P1CHAVE=0'+ Trim(STG.Cells[0,x])
                           +' and P1ORDEM=0'+Trim(STG.Cells[1,x]));
            try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(02,743,'Frm_RDev','CADP01');
               end;
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Update CADP01 set P1SITAC=1 '
                        +', P1LTACERTO=0'+FloatTostr(mLoteAcerto)
                          +', P1DTACERTO='+chr(39)+FormatDatetime(fdt, date)+chr(39)
                          +' where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                          +' P1LOTSEQ=0'+IntToStr(form_Ped_rdev.ped_lotseq)
                          +' and P1CHAVE=0'+FloatToStr(mChaveTerc));
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,851,'Frm_RDev','CADP01');
         end;
      fAjustaAcerto(MLoteAcerto, RG_TIPOREM.Itemindex);
      end;
   Qr_Ped.close;
   form_Ped_rdev.Free;
   form_Ped_rdev:=nil;
   end;

Frm_RDev.WindowState:=wsNormal;
bbFaturar.Enabled:=False;
end;

procedure TFrm_RDev.CODVENExit(Sender: TObject);
begin
if flcadven(1,0,Trim(CODVEN.Text)) then
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   begin
   Fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;

end;

procedure TFrm_RDev.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RDev',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RDev.CB_TABPVExit(Sender: TObject);
begin
if (BitBtn3.Focused) then
   exit;
with CB_TABPV do ItemIndex:=Items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.items[CB_TABPV.itemIndex];
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') then
   begin
   Fmensagem('Tabelas Válidas "AV","AP","PP","PO"',0,['0'],0);
   exit;
   end;
if CB_TABPV.Text='PO' then
   CODPV.Text:='99';

end;

procedure TFrm_RDev.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPV.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(codpv.Text)<>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
      CODPVExit(self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RDev.CODPVExit(Sender: TObject);
begin
if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   Fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
   CB_TABPV.SetFocus;
   end
else
   begin
   NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   end;
end;

procedure TFrm_RDev.FormCreate(Sender: TObject);
begin

mtabtemp:='';
mtabtemp:=fProcTemp(0);
mtabtemp2:='';

fRdevCriaTmp(0);


if StrToInt('0'+copy(mpseg,4,2))=02 then  // Grades cores tamanhos
   DBGrid1.Columns[3].Visible:=True
else
   DBGrid1.Columns[3].Visible:=False;
testeform := TFrm_RDev(FindGlobalComponent('frm_trocamer'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_TrocaMer, Frm_TrocaMer);

MDT1.Text:=FormatDateTime(fdt, Date);
MDT2.Text:=FormatDateTime(fdt, Date);
fCarregaDadosCaixa('CADDAP0');


end;

procedure TFrm_RDev.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
fRdevCriaTmp(2);
Frm_TrocaMer.Free;
Frm_TrocaMer:=NIL;
if Tb_TrocaMer.Active then
   Tb_TrocaMer.Close;
if Tb_TrocaMer.Exists then
   Tb_TrocaMer.DeleteTable;


end;

function fRdevCriaTmp(ptipo: Integer): Boolean;
// ptipo=0 so cria
//      =1 deleta depois cria
//      =2 so deleta
begin
if (ptipo=1) or (ptipo=2) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Drop table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;
if ptipo<>2 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   if pbanco=1 then // interbase
      begin
      DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                        +' NOMPRO    VARCHAR(40), '
                        +' UNID      VARCHAR(03), '
                        +' CODPRO    DOUBLE PRECISION, '
                        +' LOTE      VARCHAR(20), '
                        +' DTVCTO    TIMESTAMP, '
                        +' VENDAS    DOBLE PRECISION, '
                        +' DEVOLUCAO DOUBLE PRECISION,'
                        +' PRECO     DOUBLE PRECISION, '
                        +' SIT       VARCHAR(03), '
                        +' LISTA     DOUBLE PRECISION, '
                        +' TABELA    VARCHAR(01), '
                        +' CODFOR    DOUBLE PRECISION )');
      end
   else
      begin
      DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                        +' NOMPRO    VARCHAR2(40), '
                        +' UNID      VARCHAR2(03), '
                        +' CODPRO    NUMBER(14), '
                        +' LOTE      VARCHAR2(20), '
                        +' DTVCTO    DATE, '
                        +' VENDAS    NUMBER(15,3), '
                        +' DEVOLUCAO NUMBER(15,3),'
                        +' PRECO     NUMBER(15,3), '
                        +' SIT       VARCHAR(03), '
                        +' LISTA     NUMBER(1), '
                        +' TABELA    VARCHAR2(01), '
                        +' CODFOR    NUMBER(10) )');
      end;
   DM1.Query1.execSql;
   end;
Result:=True;
end;
procedure TFrm_RDev.bbTrocasClick(Sender: TObject);
begin
Frm_TrocaMer.ShowModal;
end;

procedure TFrm_RDev.bbAcertosClick(Sender: TObject);
begin

testeform := TFrm_RDev(FindGlobalComponent('frm_acrem'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_AcRem, Frm_AcRem);

Frm_AcRem.ShowModal;
Frm_AcRem.Free;
Frm_AcRem:=nil;

end;

procedure TFrm_RDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
