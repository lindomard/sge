unit S_PedCabXMer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls,s_dm1,db,dbtables,func, Grids,
  DBGrids,S_Agde;

type
  TFrm_PedCabXMer = class(TForm)
    Panel1: TPanel;
    bbVerificar: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    GroupBox1: TGroupBox;
    bbRecalcular: TBitBtn;
    BitBtn1: TBitBtn;
    Tb_Ped: TQuery;
    Src_Ped: TDataSource;
    DBGrid1: TDBGrid;
    Tb_PedTPCODEMP: TFloatField;
    Tb_PedTPCHAVE: TFloatField;
    Tb_PedTPTOTCAB: TFloatField;
    Tb_PedTPTOTTFRE: TFloatField;
    Tb_PedTPTOTMER: TFloatField;
    Tb_PedTPTOTSER: TFloatField;
    Tb_PedTPTOTDUP: TFloatField;
    Tb_PedTPTOTNFS: TFloatField;
    Tb_PedTPTIPO: TFloatField;
    GroupBox2: TGroupBox;
    CB_PRODSERV: TCheckBox;
    CB_NFS: TCheckBox;
    CB_DUPLIC: TCheckBox;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbVerificarClick(Sender: TObject);
    procedure bbRecalcularClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedCabXMer: TFrm_PedCabXMer;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_PedCabXMer.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_PedCabXMer.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDatetime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_PedCabXMer.bbVerificarClick(Sender: TObject);
var
mNomeView: String;
begin
if (Trim(MDT1.Text)<>'/  /') and
   (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      fmensagem('Data inicial maior que final invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if not (CB_PRODSERV.Checked) and
   not (CB_NFS.Checked) and
   not (CB_DUPLIC.Checked) then
   begin
   FMensagem('Pelo menos 1 item tem que ser verificado!',0,['0'],0);
   exit;
   end;
if trim(mNomeview)='' then
   mNomeView:=fProcTemp(22);


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as Select ');
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' 0 as TPCODEMP ')
else
   DM1.Query1.SQL.Add(' P1CODEMP as TPCODEMP ');
DM1.Query1.SQL.Add(',P1CHAVE AS TPCHAVE '
              +' ,sum(P1TOTALL) as TPTOTCAB '
              +' ,sum(P1VALFRE) as TPTOTTFRE '
              +' ,0 AS TPTOTMER '
              +' ,0 AS TPTOTSER '
              +' ,0 AS TPTOTDUP '
              +' ,0 AS TPTOTNFS '
              +' ,P1TIPO AS TPTIPO '
              +' from cadp01 '
              +' where P1STATUS<'+mstatus_excluido+' and P1EMIDOC>0');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT1.Text)));

DM1.Query1.SQL.Add(' Group by ');

if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' P1CODEMP, ');
DM1.Query1.SQL.Add(' P1CHAVE,P1TIPO ');



// INICIO DO PEDIDOS 02
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add(' Select ');

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' 0 as TPCODEMP ')
else
   DM1.Query1.SQL.Add(' P2CODEMP as TPCODEMP ');
DM1.Query1.SQL.Add(',P2CHAVE AS TPCHAVE '
              +' ,0 as TPTOTCAB '
              +' ,0 as TPTOTTFRE '
//              +' ,sum(P2TOTLIQ+P2VALIPI) AS TPTOTMER '
              +' ,sum( (P2QTD*P2PRECO)-P2TOTDES+P2VALIPI) AS TPTOTMER '
              +' ,0 AS TPTOTSER '
              +' ,0 AS TPTOTDUP '
              +' ,0 AS TPTOTNFS '
              +' ,P1TIPO AS TPTIPO '
              +' from cadp01,CADP02 '
              +' where P1STATUS<'+mstatus_excluido+' and P1EMIDOC>0 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' and P2CODEMP=P1CODEMP ');
DM1.Query1.SQL.Add(' and P2LOTSEQ=P1LOTSEQ ');
DM1.Query1.SQL.Add(' and P2CHAVE=P1CHAVE ');
DM1.Query1.SQL.Add(' and P2ORDEM=P1ORDEM ');
DM1.Query1.SQL.Add(' group by ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' P2CODEMP, ');
DM1.Query1.SQL.Add(' P2CHAVE,P1TIPO ');



// INICIO DO PEDIDOS 02S
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add(' Select ');

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' 0 as TPCODEMP ')
else
   DM1.Query1.SQL.Add(' P2SCODEMP as TPCODEMP ');
DM1.Query1.SQL.Add(',P2SCHAVE AS TPCHAVE '
              +' ,0 as TPTOTCAB '
              +' ,0 as TPTOTTFRE '
              +' ,0 AS TPTOTMER '
              +' ,sum((P2SPRECO*P2SQTD)-P2STOTDES) AS TPTOTSER '
              +' ,0 AS TPTOTDUP '
              +' ,0 AS TPTOTNFS '
              +' ,P1TIPO AS TPTIPO '
              +' from cadp01,CADP02S '
              +' where P1STATUS<'+mstatus_excluido+' and P1EMIDOC>0 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' and P2SCODEMP=P1CODEMP ');
DM1.Query1.SQL.Add(' and P2SLOTSEQ=P1LOTSEQ ');
DM1.Query1.SQL.Add(' and P2SCHAVE=P1CHAVE ');
DM1.Query1.SQL.Add(' and P2SORDEM=P1ORDEM ');
DM1.Query1.SQL.Add(' group by ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' P2SCODEMP, ');
DM1.Query1.SQL.Add(' P2SCHAVE,P1TIPO ');


// INICIO DO PEDIDOS CADDAR
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add(' Select ');

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' 0 as TPCODEMP ')
else
   DM1.Query1.SQL.Add(' CRCODEMP as TPCODEMP ');
DM1.Query1.SQL.Add(',CRNPED AS TPCHAVE '
              +' ,0 as TPTOTCAB '
              +' ,0 as TPTOTTFRE '
              +' ,0 AS TPTOTMER '
              +' ,0 AS TPTOTSER '
              +' ,sum(CRVALOR) AS TPTOTDUP '
              +' ,0 AS TPTOTNFS '
              +' ,0 AS TPTIPO '
              +' from CADDAR '
              +' where CRSTATUS<>9 and CRNPED>0');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt2, strtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt2, strtoDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.Add(' group by ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' CRCODEMP, ');
DM1.Query1.SQL.Add(' CRNPED ');


// INICIO DO PEDIDOS CADNS
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add(' Select ');

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' 0 as TPCODEMP ')
else
   DM1.Query1.SQL.Add(' NSCODEMP as TPCODEMP ');
DM1.Query1.SQL.Add(',NSCHAVEP AS TPCHAVE '
              +' ,0 as TPTOTCAB '
              +' ,0 as TPTOTTFRE '
              +' ,0 AS TPTOTMER '
              +' ,0 AS TPTOTSER '
              +' ,0 AS TPTOTDUP '
              +' ,sum(NSTOTNOTA) AS TPTOTNFS '
              +' ,0 AS TPTIPO '
              +' from CADNS '
              +' where NSSTATUS<>9 and NSCHAVEP>0');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and NSDTEMIS>='+chr(39)+FormatDateTime(fdt2, strtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and NSDTEMIS<='+chr(39)+FormatDateTime(fdt2, strtoDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.Add(' group by ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add(' NSCODEMP, ');
DM1.Query1.SQL.Add(' NSCHAVEP ');

try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.txt');
   exit;
   end;


Tb_Ped.Close;
Tb_Ped.sQL.Clear;
Tb_Ped.sQL.Add('Select TPCODEMP '
              +'      ,TPCHAVE '
              +'      ,sum(TPTOTCAB) AS TPTOTCAB '
              +'      ,sum(TPTOTTFRE) AS TPTOTTFRE '
              +'      ,sum(TPTOTMER) AS TPTOTMER '
              +'      ,sum(TPTOTSER) AS TPTOTSER '
              +'      ,sum(TPTOTDUP) AS TPTOTDUP '
              +'      ,sum(TPTOTNFS) AS TPTOTNFS '
              +'      ,max(TPTIPO)   AS TPTIPO '
              +' from '+mNomeView
              +' group by TPCODEMP,TPCHAVE '
              +' having (');
mcinst:='';
if CB_PRODSERV.Checked then
   begin
   Tb_Ped.SQL.Add(mcinst+' sum(TPTOTCAB)<>sum(TPTOTMER+TPTOTSER+TPTOTTFRE) ');
   mcinst:=' or ';
   end;
if CB_DUPLIC.Checked then
   begin
   Tb_Ped.sql.add(mcinst+'      sum(TPTOTCAB)<>sum(TPTOTDUP) ' );
   mcinst:=' or ';
   end;
if CB_NFS.Checked then
   begin
   Tb_Ped.SQL.Add(mcinst+'      sum(TPTOTCAB)<>sum(TPTOTNFS) ');
   mcinst:=' or ';
   end;

Tb_Ped.SQL.Add(')     and (MAX(TPTIPO)<>9 and MAX(TPTIPO)<>10)');

//Tb_Ped.Sql.Savetofile(mpastatemp + 'SQLCABX.txt');

try
   Tb_ped.Open;
except
   Tb_Ped.Sql.Savetofile(mpastatemp + 'SQL.txt');
   end;
if Trim(mnomeView)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop view '+mnomeView);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;




end;

procedure TFrm_PedCabXMer.bbRecalcularClick(Sender: TObject);
var
mlid, mqtd: Integer;
mdif, mtotdes, mtotliq:Real;
begin
{
Tb_Ped.First;
mqtd:=Tb_Ped.RecordCount;
mlid:=0;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'LOTSEQ',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CHAVE',ptinput);

DM1.Query2.SQL.Add('Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM,P2DESC1,P2DESC2,'
                  +'P2QTD*P2PRECO AS TOTAL from CADP02 where '
                  +'P2CODEMP=:CODEMP and '
                  +'P2LOTSEQ =:LOTSEQ  '
                  +'P2CHAVE =:CHAVE  ');
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftstring,'CODEMP',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'CHAVE',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'LOTSEQ',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'ORDEM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'ITEM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'TOTDES',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'TOTLIQ',ptinput);

DM1.Query3.SQL.Add('Update CADP02 set P2TOTDES=:TOTDES, '
                  +' P2TOTLIQ=:TOTLIQ'
                  +' where P2CODEMP=:CODEMP '
                  +' and   P2LOTSEQ =:LOTSEQ '
                  +' and   P2CHAVE =:CHAVE '
                  +' and   P2ORDEM =:ORDEM '
                  +' and   P2ITEM  =:ITEM ');
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Calculando as mercadorias de Pedidos,Aguarde...';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Show;
While not Tb_Ped.Eof do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   mdif:=Tb_PedP1TOTALL.Value-Tb_PedTOTLIQ.Value;
   if mdif<0 then
      mdif:=mdif*-1;
   if mdif<0.11 then
      begin
      Tb_Ped.Next;
      Continue;
      end;

   DM1.Query2.Close;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=Tb_PedP1CODEMP.Value;
   DM1.Query2.ParamByName('CHAVE').AsFloat :=Tb_PedP1CHAVE.Value;
   DM1.Query2.ParamByName('LOTSEQ').AsFloat:=Tb_PedP1LOTSEQ.Value;
   DM1.Query2.Open;
   While not DM1.Query2.Eof do
      begin
      if Tb_PedP1TPPCO.Value=3 then
         mtotdes:=0
      else
         mtotdes:=DM1.Query2.Fields[6].Value*DM1.Query2.Fields[4].Value/100;
      mtotdes:=mtotdes+(DM1.Query2.Fields[6].Value-mtotdes)*DM1.Query2.Fields[5].Value/100;
      mtotdes:=mtotdes+(DM1.Query2.fields[6].Value-mtotdes)*Tb_PedP1DESC01.Value/100;
      mtotdes:=mtotdes+(DM1.Query2.fields[6].Value-mtotdes)*Tb_PedP1DESC02.Value/100;
      mtotdes:=Arredonda(mtotdes,2);
      mtotliq:=DM1.Query2.Fields[6].Value-mtotdes;
      DM1.Query3.Close;
      DM1.Query3.ParamByName('CODEMP').Value:=Tb_PedP1CODEMP.Value;
      DM1.Query3.ParamByName('CHAVE').Value :=DM1.Query2.fields[1].Value;
      DM1.Query3.ParamByName('ORDEM').Value :=DM1.Query2.fields[2].Value;
      DM1.Query3.ParamByName('ITEM').Value  :=DM1.Query2.fields[3].Value;
      DM1.Query3.ParamByName('TOTDES').Value:=mtotdes;
      DM1.Query3.ParamByName('TOTLIQ').Value:=mtotliq;
      DM1.Query3.ExecSQL;
      DM1.Query2.Next;
      end;
   Tb_Ped.Next;
   end;
Frm_Agde.Free;
MessageDlg('Concluido!',mtWarning,[mbOk],0);
}
end;

procedure TFrm_PedCabXMer.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PedCabXMer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
