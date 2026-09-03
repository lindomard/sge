unit S_ManProSim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,S_DM1, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, DB, DBTables,func,lerarq, s_lerarq_geral;

type
  TFrm_ManProSim = class(TForm)
    PageControl1: TPageControl;
    tsConfiguracao: TTabSheet;
    tsManipular: TTabSheet;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bbSalvar: TBitBtn;
    GroupBox2: TGroupBox;
    STG1: TStringGrid;
    Tb_Pro: TQuery;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_ProPDNOME: TStringField;
    U_Pro: TUpdateSQL;
    Src_Pro: TDataSource;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_ProPDCODPROC: TFloatField;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Tb_ProPDCODBAR_EMBPAD: TStringField;
    procedure STG1DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure STG1RowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure Tb_ProBeforePost(DataSet: TDataSet);
    procedure Tb_ProAfterPost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Tb_ProBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function fManProSimAtualizaStringGrid(pTipo: Integer): Boolean;
    function fManProSimAtualizaDbGrid(pTipo: Integer): Boolean;
  end;

var
  Frm_ManProSim: TFrm_ManProSim;

implementation

uses S_DM4;

{$R *.dfm}
function TFrm_ManProSim.fManProSimAtualizaStringGrid(pTipo: Integer): Boolean;
var
x: Integer;
begin
STG1.Cells[00,00]:='Campo';
STG1.Cells[01,00]:='Visivel';
STG1.Cells[02,00]:='Alterar';
STG1.Cells[03,00]:='Ordem';
STG1.RowCount:=DBGrid1.Columns.Count+1;
for x:=0 to DBGrid1.Columns.Count-1 do
   begin
   STG1.Cells[00,x+1]:=DBGrid1.Columns[x].Title.Caption;
   STG1.Cells[03,x+1]:=IntToStr(x);
   if DBGrid1.Columns[x].Visible then
      STG1.Cells[01,x+1]:='S'
   else
      STG1.Cells[01,x+1]:='';
   if DBGrid1.Columns[x].ReadOnly then
      STG1.Cells[02,x+1]:=''
    else
      STG1.Cells[02,x+1]:='S';
   STG1.Cells[04,x+1]:=DBGrid1.Columns[x].FieldName;
   if STG1.Cells[04,x+1]='PDCODPRO' then
      begin
      STG1.Cells[01,x+1]:='S';
      STG1.Cells[02,x+1]:='S';
      end
   else if STG1.Cells[04,x+1]='PDNOMFOR' then
      STG1.Cells[02,x+1]:=''
   else if STG1.Cells[04,x+1]='PDNOMGRU' then
      STG1.Cells[02,x+1]:=''
   else if STG1.Cells[04,x+1]='PDNOMTIP' then
      STG1.Cells[02,x+1]:=''
   else if STG1.Cells[04,x+1]='PDNOMCON' then
      STG1.Cells[02,x+1]:='';

   end;

result:=true;
end;
procedure TFrm_ManProSim.STG1DblClick(Sender: TObject);
var
x: Integer;
begin
if (STG1.Col=2) or (STG1.Col=1) then
   begin
   if STG1.Row=0 then
      begin
      if STG1.Cells[STG1.Col,02]='S' then
         mcinst:=''
      else
         mcinst:='S';
      for x:=1 to STG1.RowCount-1 do
         begin
         STG1.Cells[STG1.Col,x]:=mcinst;
         end;
      end
   else
      begin
      if STG1.Cells[STG1.Col,STG1.Row]='S' then
         STG1.Cells[STG1.Col,STG1.Row]:=''
      else
         STG1.Cells[STG1.Col,STG1.Row]:='S';
      end;
   end;
for x:=1 to STG1.RowCount-1 do
   begin
   if STG1.Cells[04,x]='PDCODPRO' then
      begin
      STG1.Cells[01,x]:='S';
      STG1.Cells[02,x]:='S';
      end
   else if STG1.Cells[04,x]='PDNOMFOR' then
      STG1.Cells[02,x]:=''
   else if STG1.Cells[04,x]='PDNOMGRU' then
      STG1.Cells[02,x]:=''
   else if STG1.Cells[04,x]='PDNOMTIP' then
      STG1.Cells[02,x]:=''
   else if STG1.Cells[04,x]='PDNOMCON' then
      STG1.Cells[02,x]:='';
   end;
end;


procedure TFrm_ManProSim.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsConfiguracao then
   fManProSimAtualizaStringGrid(0)
else
   fManProSimAtualizaDbGrid(0);



end;
function TFrm_ManProSim.fManProSimAtualizaDbGrid(pTipo: Integer): Boolean;
var
y,x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   for y:=0 to DBGrid1.Columns.Count-1 do
      begin
      if DBGrid1.Columns[y].FieldName=STG1.Cells[04,x] then
         begin
         DBGrid1.Columns[y].Visible :=STG1.cells[01,x]='S';
         DBGrid1.Columns[y].ReadOnly:=STG1.cells[02,x]='';

         break;
         end;
      end;
   end;
result:=true;
end;

procedure TFrm_ManProSim.FormCreate(Sender: TObject);
var
x: Integer;
begin
Tb_Pro.Close;
Tb_Pro.SQL.Clear;
Tb_Pro.sql.Add('Select PDCODPRO,PDCODBAR,PDCODBAR_EMBPAD,PDNOME,PDNOME2, '
              +'PDUND, '
              +'PDMARCA,PDCODFOR,PDNOMFOR, '
              +'PDPRECO1,PDPRECO2,PDPRECO3, '
              +'PDPMC,PDDESC1,PDDESC2,PDDESC3, '
              +'PDQTDP,PDPRAZO,PDDESFIN,PDSIT, '
              +'PDCURVA, '
              +'PDCODGRU,PDNOMGRU,PDCODCON, '
              +'PDNOMCON, '
              +'PDCODRAM,PDNOMRAM,PDCODTIP, PDNOMTIP, '
              +'PDESTMAX,PDESTMIN,PDFRACAO, '
              +'PDLISTA,PDPRECOC,PDPCOMC,PDPCOFAB, '
              +'PDTABICM,PDIPI,PDREGMS,PDCLAS,PDSECAO, '
              +'PDEMBPAD,PDEMBMUL,PDCOMIS,PDUCPR, '
              +'PDEMBPAD2,PDCODPROC, '
              +'PDPESOB,PDPESOL '
              +'FROM CADPRO '
              +' where PDCODEMP=0 and PDCODPRO=0 ');
Tb_Pro.open;

if flfilpad(codusr,'_MANPROSIM','') then
   begin
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP',DBGrid1.Columns[x].FieldName+'V',[]) then
         DBGrid1.Columns[x].Visible:=false;
      if DM4.Tb_FilPad2.Locate('FPCOMP',DBGrid1.Columns[x].FieldName+'R',[]) then
         DBGrid1.Columns[x].ReadOnly:=true;
      end;
   end;
end;

procedure TFrm_ManProSim.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField=Tb_ProPDCODPRO then
   begin
   if Tb_ProPDCODPRO.IsNull then
      exit;
   if not flcadpro(1,0,0,Tb_ProPDCODPRO.AsString) then
      begin
      fmensagem('Produto não Cadastrado!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_ProPDCODPRO;
      abort;
      end
   else
      begin
      if Tb_Pro.State in [dsEdit,dsInsert] then
         begin
         Tb_ProPDCODPRO.Value :=DM1.Tb_ProPDCODPRO.Value;
         Tb_ProPDCODBAR.Value :=DM1.Tb_ProPDCODBAR.Value;
         Tb_ProPDNOME.Value          :=DM1.Tb_ProPDNOME.Value;
         Tb_ProPDCODBAR_EMBPAD.Value :=DM1.Tb_ProPDCODBAR_EMBPAD.Value;
         Tb_ProPDNOME2.Value  :=DM1.Tb_ProPDNOME2.Value;
         Tb_ProPDUND.Value    :=DM1.Tb_ProPDUND.Value;
         Tb_ProPDMARCA.Value  :=DM1.Tb_ProPDMARCA.Value;
         Tb_ProPDCODFOR.Value :=DM1.Tb_ProPDCODFOR.Value;
         Tb_ProPDNOMFOR.Value :=DM1.Tb_ProPDNOMFOR.Value;
         Tb_ProPDPRECO1.Value :=DM1.Tb_ProPDPRECO1.Value;
         Tb_ProPDPRECO2.Value :=DM1.Tb_ProPDPRECO2.Value;
         Tb_ProPDPRECO3.Value :=DM1.Tb_ProPDPRECO3.Value;
         Tb_ProPDPMC.Value    :=DM1.Tb_ProPDPMC.Value;
         Tb_ProPDDESC1.Value  :=DM1.Tb_ProPDDESC1.Value;
         Tb_ProPDDESC2.Value  :=DM1.Tb_ProPDDESC2.Value;
         Tb_ProPDDESC3.Value  :=DM1.Tb_ProPDDESC3.Value;
         Tb_ProPDQTDP.Value   :=DM1.Tb_ProPDQTDP.Value;
         Tb_ProPDPRAZO.Value  :=DM1.Tb_ProPDPRAZO.Value;
         Tb_ProPDDESFIN.Value :=DM1.Tb_ProPDDESFIN.Value;
         Tb_ProPDSIT.Value    :=DM1.Tb_ProPDSIT.Value;
         Tb_ProPDCURVA.Value  :=DM1.Tb_ProPDCURVA.Value;
         Tb_ProPDCODGRU.Value :=DM1.Tb_ProPDCODGRU.Value;
         Tb_ProPDNOMGRU.Value :=DM1.Tb_ProPDNOMGRU.Value;
         Tb_ProPDCODCON.Value :=DM1.Tb_ProPDCODCON.Value;
         Tb_ProPDNOMCON.Value :=DM1.Tb_ProPDNOMCON.Value;
         Tb_ProPDCODRAM.Value :=DM1.Tb_ProPDCODRAM.Value;
         Tb_ProPDNOMRAM.Value :=DM1.Tb_ProPDNOMRAM.Value;
         Tb_ProPDCODTIP.Value :=DM1.Tb_ProPDCODTIP.Value;
         Tb_ProPDNOMTIP.Value :=DM1.Tb_ProPDNOMTIP.Value;
         Tb_ProPDESTMAX.Value :=DM1.Tb_ProPDESTMAX.Value;
         Tb_ProPDESTMIN.Value :=DM1.Tb_ProPDESTMIN.Value;
         Tb_ProPDFRACAO.Value :=DM1.Tb_ProPDFRACAO.Value;
         Tb_ProPDLISTA.Value  :=DM1.Tb_ProPDLISTA.Value;
         Tb_ProPDTABICM.Value :=DM1.Tb_ProPDTABICM.Value;
         Tb_ProPDIPI.Value    :=DM1.Tb_ProPDIPI.Value;
         Tb_ProPDREGMS.Value  :=DM1.Tb_ProPDREGMS.Value;
         Tb_ProPDESTMAX.Value :=DM1.Tb_ProPDESTMAX.Value;
         Tb_ProPDESTMIN.Value :=DM1.Tb_ProPDESTMIN.Value;
         Tb_ProPDFRACAO.Value :=DM1.Tb_ProPDFRACAO.Value;
         Tb_ProPDLISTA.Value  :=DM1.Tb_ProPDLISTA.Value;
         Tb_ProPDPRECOC.Value :=DM1.Tb_ProPDPRECOC.Value;
         Tb_ProPDPCOMC.Value  :=DM1.Tb_ProPDPMC.Value;
         Tb_ProPDPCOFAB.Value :=DM1.Tb_ProPDPCOFAB.Value;
         Tb_ProPDTABICM.Value :=DM1.Tb_ProPDTABICM.Value;
         Tb_ProPDIPI.Value    :=DM1.Tb_ProPDIPI.Value;
         Tb_ProPDREGMS.Value  :=DM1.Tb_ProPDREGMS.Value;
         Tb_ProPDSECAO.Value  :=DM1.Tb_ProPDSECAO.Value;
         Tb_ProPDEMBPAD.Value :=DM1.Tb_ProPDEMBPAD.Value;
         Tb_ProPDEMBMUL.Value :=DM1.Tb_ProPDEMBMUL.Value;
         Tb_ProPDCOMIS.Value  :=dm1.Tb_ProPDCOMIS.Value;
         Tb_ProPDCLAS.Value   :=dm1.Tb_ProPDCLAS.Value;
         Tb_ProPDUCPR.Value   :=dm1.Tb_ProPDUCPR.Value;
         Tb_ProPDEMBPAD2.Value:=DM1.Tb_ProPDEMBPAD2.Value;
         Tb_ProPDPESOB.Value  :=DM1.Tb_ProPDPESOB.Value;
         Tb_ProPDPESOL.Value  :=DM1.Tb_ProPDPESOL.Value;
         end;
      end;
   end;
end;

procedure TFrm_ManProSim.bbSalvarClick(Sender: TObject);
var
y: Integer;
begin
fManProSimAtualizaDbGrid(0);

fDeletaPadroes(codusr,'_MANPROSIM','');
for y:=0 to DBGrid1.Columns.Count-1 do
   begin
   if not DBGrid1.Columns[Y].Visible then
      begin
      fGravaPadroes(codusr,DBGrid1.Columns[y].FieldName+'V','Text'
                 ,'_MANPROSIM','N');
      end;
   if DBGrid1.Columns[Y].ReadOnly then
      begin
      fGravaPadroes(codusr,DBGrid1.Columns[y].FieldName+'R','Text'
                 ,'_MANPROSIM','N');
      end;
   end;
for y:=1 to STG1.RowCount-1 do
   begin
   fGravaPadroes(codusr,STG1.Cells[04,y]+'O','Text'
                 ,'_MANPROSIM',STG1.Cells[y,03]);
   end;

fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_ManProSim.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ManProSim.STG1RowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var
x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   STG1.Cells[03,x]:=Inttostr(x);
   end;

end;

procedure TFrm_ManProSim.Tb_ProBeforePost(DataSet: TDataSet);
begin
if Tb_ProPDCODPRO.IsNull then
   begin
   Tb_Pro.Cancel;
   abort;
   end;
end;

procedure TFrm_ManProSim.Tb_ProAfterPost(DataSet: TDataSet);
var
x: Integer;
begin
if trim(Tb_ProPDNOME.AsString)<>'' then
   begin
   if flcadpro(1,0,0,Tb_ProPDCODPRO.AsString) then
      begin
      if (vaLfloat(Tb_ProPDCODPRO.AsString)>0)
         and (Tb_ProPDCODPRO.AsFloat=DM1.Tb_ProPDCODPRO.AsFloat) then
         begin
         DM1.Query5.close;
         DM1.Query5.sql.clear;
         for x:=0 to Tb_Pro.Fields.Count-1 do
            begin
            if Tb_Pro.FieldS[x].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).AsFloat<>Tb_Pro.Fields[x].AsFloat then
                  DM1.Query5.Params.CreateParam(ftString,Tb_Pro.Fields[x].FieldName,ptInput);
               end
            else if Tb_Pro.FieldS[x].DataType in [ftdate,ftdatetime] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).Asdatetime<>Tb_Pro.Fields[x].AsDateTime then
                  DM1.Query5.Params.CreateParam(ftString,Tb_Pro.Fields[x].FieldName,ptInput);
               end
            else if Tb_Pro.FieldS[x].DataType in [ftString,ftMemo] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).AsString<>Tb_Pro.Fields[x].AsString then
                  DM1.Query5.Params.CreateParam(ftString,Tb_Pro.Fields[x].FieldName,ptInput);
               end
            else
               begin
               fmensagem('Campo Desconhecido: '+IntToStr(x)+' Nome: '+Tb_Pro.Fields[x].FieldName,0,['0'],0);
               break;
               exit;
               end;
            end;
         DM1.Query5.SQL.Add('Update CADPRO set ');
         mcinst:=' ';
         for x:=0 to Tb_Pro.Fields.Count-1 do
            begin
            if Tb_Pro.FieldS[x].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).AsFloat<>Tb_Pro.Fields[x].AsFloat then
                  begin
                  DM1.Query5.SQL.Add(mcinst+Tb_Pro.Fields[x].FieldName+'=:'+tb_Pro.Fields[x].FieldName);
                  DM1.Query5.ParambyName(Tb_Pro.Fields[x].FieldName).AsFloat:=Tb_Pro.Fields[x].AsFloat;
                  mcinst:=',';
                  end
               end
            else if Tb_Pro.FieldS[x].DataType in [ftdate,ftdatetime] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).Asdatetime<>Tb_Pro.Fields[x].AsDateTime then
                  begin
                  DM1.Query5.SQL.Add(mcinst+Tb_Pro.Fields[x].FieldName+'=:'+tb_Pro.Fields[x].FieldName);
                  DM1.Query5.ParambyName(Tb_Pro.Fields[x].FieldName).AsDateTime:=Tb_Pro.Fields[x].AsDateTime;
                  mcinst:=',';
                  end
               end
            else if Tb_Pro.FieldS[x].DataType in [ftString,ftMemo] then
               begin
               if DM1.Tb_Pro.FieldByName(Tb_Pro.Fields[x].FieldName).AsString<>Tb_Pro.Fields[x].AsString then
                  begin
                  DM1.Query5.SQL.Add(mcinst+Tb_Pro.Fields[x].FieldName+'=:'+tb_Pro.Fields[x].FieldName);
                  if Tb_Pro.Fields[x].IsNull then
                     DM1.Query5.ParambyName(Tb_Pro.Fields[x].FieldName).AsString:=' '
                  else
                     DM1.Query5.ParambyName(Tb_Pro.Fields[x].FieldName).AsString:=Tb_Pro.Fields[x].AsString;
                  mcinst:=',';
                  end
               end
            else
               begin
               fmensagem('Campo Desconhecido: '+IntToStr(x)+' Nome: '+Tb_Pro.Fields[x].FieldName,0,['0'],0);
               break;
               exit;
               end;
            end;
         DM1.Query5.SQL.Add(' where PDCODEMP=0'+DM1.Tb_ProPDCODEMP.AsString
                          +' and PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   //      DM1.Query5.SQL.SaveToFile('c:\sql.txt');

         if trim(mcinst)<>'' then
            begin
            try
               DM1.Query5.ExecSQL;
               fdm1StartCommit;
            except
               DM1.Query5.SQL.SaveToFile('c:\sql.txt');
               end;
            end;
         end;
      end;
  end;
{
         lindomar
      if DM1.Tb_ProPDCODBAR.AsFloat<>Tb_ProPDCODBAR.AsFloat then
         begin
         DM1.Query2.Params.CreateParam(ftString,'CODBAR',ptInput);
         DM1.Query2.ParambyName('CODBAR').AsFloat:=Tb_ProPDCODBAR.AsFloat;
         end;
      if DM1.Tb_ProPDCODBAR_EMBPAD.AsFloat<>Tb_ProPDCODBAR_EMBPAD.AsFloat then
         begin
         DM1.Query2.Params.CreateParam(ftString,'CODBAR_EMBPAD',ptInput);
         DM1.Query2.ParambyName('CODBAR_EMBPAD').AsFloat:=Tb_ProPDCODBAR_EMBPAD.AsFloat;
         end;
      if DM1.Tb_ProPDNOME.AsString<>Tb_ProPDNOME.AsString then
         begin
         DM1.Query2.Params.CreateParam(ftString,'NOME',ptInput);
         DM1.Query2.ParambyName('NOME').AsString:=Tb_ProPDNOME.AsString;
         end;
      if DM1.Tb_ProPDNOME2.AsString<>Tb_ProPDNOME2.AsString then
         begin
         DM1.Query2.Params.CreateParam(ftString,'NOME2',ptInput);
         DM1.Query2.ParambyName('NOME2').AsString:=Tb_ProPDNOME2.AsString;
         end;
      if DM1.Tb_ProPDUND.AsString<>Tb_ProPDUND.AsString then
         begin
         DM1.Query2.Params.CreateParam(ftString,'UND',ptInput);
         DM1.Query2.ParambyName('UND').AsString:=Tb_ProPDUND.AsString;
         end;


   DM1.Tb_ProPDMARCA.Value  :=Tb_ProPDMARCA.Value;
   DM1.Tb_ProPDCODFOR.Value :=Tb_ProPDCODFOR.Value;
   DM1.Tb_ProPDNOMFOR.Value :=Tb_ProPDNOMFOR.Value;
   DM1.Tb_ProPDPRECO1.Value :=Tb_ProPDPRECO1.Value;
   DM1.Tb_ProPDPRECO2.Value :=Tb_ProPDPRECO2.Value;
   DM1.Tb_ProPDPRECO3.Value :=Tb_ProPDPRECO3.Value;
   DM1.Tb_ProPDPMC.Value    :=Tb_ProPDPMC.Value;
   DM1.Tb_ProPDDESC1.Value  :=Tb_ProPDDESC1.Value;
   DM1.Tb_ProPDDESC2.Value  :=Tb_ProPDDESC2.Value;
   DM1.Tb_ProPDDESC3.Value  :=Tb_ProPDDESC3.Value;
   DM1.Tb_ProPDQTDP.Value   :=Tb_ProPDQTDP.Value;
   DM1.Tb_ProPDPRAZO.Value  :=Tb_ProPDPRAZO.Value;
   DM1.Tb_ProPDDESFIN.Value :=Tb_ProPDDESFIN.Value;
   DM1.Tb_ProPDSIT.Value    :=Tb_ProPDSIT.Value;
   DM1.Tb_ProPDCURVA.Value  :=Tb_ProPDCURVA.Value;
   DM1.Tb_ProPDCODGRU.Value :=Tb_ProPDCODGRU.Value;
   DM1.Tb_ProPDNOMGRU.Value :=Tb_ProPDNOMGRU.Value;
   DM1.Tb_ProPDCODCON.Value :=Tb_ProPDCODCON.Value;
   DM1.Tb_ProPDNOMCON.Value :=Tb_ProPDNOMCON.Value;
   DM1.Tb_ProPDCODRAM.Value :=Tb_ProPDCODRAM.Value;
   DM1.Tb_ProPDNOMRAM.Value :=Tb_ProPDNOMRAM.Value;
   DM1.Tb_ProPDCODTIP.Value :=Tb_ProPDCODTIP.Value;
   DM1.Tb_ProPDNOMTIP.Value :=Tb_ProPDNOMTIP.Value;
   DM1.Tb_ProPDESTMAX.Value :=Tb_ProPDESTMAX.Value;
   DM1.Tb_ProPDESTMIN.Value :=Tb_ProPDESTMIN.Value;
   DM1.Tb_ProPDFRACAO.Value :=Tb_ProPDFRACAO.Value;
   DM1.Tb_ProPDLISTA.Value  :=Tb_ProPDLISTA.Value;
   DM1.Tb_ProPDTABICM.Value :=Tb_ProPDTABICM.Value;
   DM1.Tb_ProPDIPI.Value    :=Tb_ProPDIPI.Value;
   DM1.Tb_ProPDREGMS.Value  :=Tb_ProPDREGMS.Value;
   DM1.Tb_ProPDESTMAX.Value :=Tb_ProPDESTMAX.Value;
   DM1.Tb_ProPDESTMIN.Value :=Tb_ProPDESTMIN.Value;
   DM1.Tb_ProPDFRACAO.Value :=Tb_ProPDFRACAO.Value;
   DM1.Tb_ProPDLISTA.Value  :=Tb_ProPDLISTA.Value;
   DM1.Tb_ProPDPRECOC.Value :=Tb_ProPDPRECOC.Value;
   DM1.Tb_ProPDPCOMC.Value  :=Tb_ProPDPMC.Value;
   DM1.Tb_ProPDPCOFAB.Value :=Tb_ProPDPCOFAB.Value;
   DM1.Tb_ProPDTABICM.Value :=Tb_ProPDTABICM.Value;
   DM1.Tb_ProPDIPI.Value    :=Tb_ProPDIPI.Value;
   DM1.Tb_ProPDREGMS.Value  :=Tb_ProPDREGMS.Value;
   DM1.Tb_ProPDSECAO.Value  :=Tb_ProPDSECAO.Value;
   DM1.Tb_ProPDEMBPAD.Value :=Tb_ProPDEMBPAD.Value;
   DM1.Tb_ProPDEMBMUL.Value :=Tb_ProPDEMBMUL.Value;
   DM1.Tb_ProPDCOMIS.Value  :=Tb_ProPDUCPR.Value;
   DM1.Tb_ProPDUCPR.Value   :=Tb_ProPDUCPR.Value;
   DM1.Tb_ProPDEMBPAD2.Value:=Tb_ProPDEMBPAD2.Value;
   DM1.Tb_ProPDPESOB.Value  :=Tb_ProPDPESOB.Value;
   DM1.Tb_ProPDPESOL.Value  :=Tb_ProPDPESOL.Value;
   DM1.Tb_ProPDCODUSR.Value:=codusr;
   DM1.Tb_ProPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
   DM1.Tb_ProPDHRALT.Value :=FormatDateTime(fhr, time);
   DM1.Tb_Pro.Post;

   DM1.Tb_ProPDCODPRO.Value :=Tb_ProPDCODPRO.Value;

{
   DM1.Tb_Pro.Edit;
   DM1.Tb_ProPDCODPRO.Value :=Tb_ProPDCODPRO.Value;
   DM1.Tb_ProPDCODBAR.Value :=Tb_ProPDCODBAR.Value;
   DM1.Tb_ProPDCODBAR_EMBPAD.Value :=Tb_ProPDCODBAR_EMBPAD.Value;
   DM1.Tb_ProPDNOME.Value   :=Tb_ProPDNOME.Value;
   DM1.Tb_ProPDNOME2.Value  :=Tb_ProPDNOME2.Value;
   DM1.Tb_ProPDUND.Value    :=Tb_ProPDUND.Value;
   DM1.Tb_ProPDMARCA.Value  :=Tb_ProPDMARCA.Value;
   DM1.Tb_ProPDCODFOR.Value :=Tb_ProPDCODFOR.Value;
   DM1.Tb_ProPDNOMFOR.Value :=Tb_ProPDNOMFOR.Value;
   DM1.Tb_ProPDPRECO1.Value :=Tb_ProPDPRECO1.Value;
   DM1.Tb_ProPDPRECO2.Value :=Tb_ProPDPRECO2.Value;
   DM1.Tb_ProPDPRECO3.Value :=Tb_ProPDPRECO3.Value;
   DM1.Tb_ProPDPMC.Value    :=Tb_ProPDPMC.Value;
   DM1.Tb_ProPDDESC1.Value  :=Tb_ProPDDESC1.Value;
   DM1.Tb_ProPDDESC2.Value  :=Tb_ProPDDESC2.Value;
   DM1.Tb_ProPDDESC3.Value  :=Tb_ProPDDESC3.Value;
   DM1.Tb_ProPDQTDP.Value   :=Tb_ProPDQTDP.Value;
   DM1.Tb_ProPDPRAZO.Value  :=Tb_ProPDPRAZO.Value;
   DM1.Tb_ProPDDESFIN.Value :=Tb_ProPDDESFIN.Value;
   DM1.Tb_ProPDSIT.Value    :=Tb_ProPDSIT.Value;
   DM1.Tb_ProPDCURVA.Value  :=Tb_ProPDCURVA.Value;
   DM1.Tb_ProPDCODGRU.Value :=Tb_ProPDCODGRU.Value;
   DM1.Tb_ProPDNOMGRU.Value :=Tb_ProPDNOMGRU.Value;
   DM1.Tb_ProPDCODCON.Value :=Tb_ProPDCODCON.Value;
   DM1.Tb_ProPDNOMCON.Value :=Tb_ProPDNOMCON.Value;
   DM1.Tb_ProPDCODRAM.Value :=Tb_ProPDCODRAM.Value;
   DM1.Tb_ProPDNOMRAM.Value :=Tb_ProPDNOMRAM.Value;
   DM1.Tb_ProPDCODTIP.Value :=Tb_ProPDCODTIP.Value;
   DM1.Tb_ProPDNOMTIP.Value :=Tb_ProPDNOMTIP.Value;
   DM1.Tb_ProPDESTMAX.Value :=Tb_ProPDESTMAX.Value;
   DM1.Tb_ProPDESTMIN.Value :=Tb_ProPDESTMIN.Value;
   DM1.Tb_ProPDFRACAO.Value :=Tb_ProPDFRACAO.Value;
   DM1.Tb_ProPDLISTA.Value  :=Tb_ProPDLISTA.Value;
   DM1.Tb_ProPDTABICM.Value :=Tb_ProPDTABICM.Value;
   DM1.Tb_ProPDIPI.Value    :=Tb_ProPDIPI.Value;
   DM1.Tb_ProPDREGMS.Value  :=Tb_ProPDREGMS.Value;
   DM1.Tb_ProPDESTMAX.Value :=Tb_ProPDESTMAX.Value;
   DM1.Tb_ProPDESTMIN.Value :=Tb_ProPDESTMIN.Value;
   DM1.Tb_ProPDFRACAO.Value :=Tb_ProPDFRACAO.Value;
   DM1.Tb_ProPDLISTA.Value  :=Tb_ProPDLISTA.Value;
   DM1.Tb_ProPDPRECOC.Value :=Tb_ProPDPRECOC.Value;
   DM1.Tb_ProPDPCOMC.Value  :=Tb_ProPDPMC.Value;
   DM1.Tb_ProPDPCOFAB.Value :=Tb_ProPDPCOFAB.Value;
   DM1.Tb_ProPDTABICM.Value :=Tb_ProPDTABICM.Value;
   DM1.Tb_ProPDIPI.Value    :=Tb_ProPDIPI.Value;
   DM1.Tb_ProPDREGMS.Value  :=Tb_ProPDREGMS.Value;
   DM1.Tb_ProPDSECAO.Value  :=Tb_ProPDSECAO.Value;
   DM1.Tb_ProPDEMBPAD.Value :=Tb_ProPDEMBPAD.Value;
   DM1.Tb_ProPDEMBMUL.Value :=Tb_ProPDEMBMUL.Value;
   DM1.Tb_ProPDCOMIS.Value  :=Tb_ProPDUCPR.Value;
   DM1.Tb_ProPDUCPR.Value   :=Tb_ProPDUCPR.Value;
   DM1.Tb_ProPDEMBPAD2.Value:=Tb_ProPDEMBPAD2.Value;
   DM1.Tb_ProPDPESOB.Value  :=Tb_ProPDPESOB.Value;
   DM1.Tb_ProPDPESOL.Value  :=Tb_ProPDPESOL.Value;
   DM1.Tb_ProPDCODUSR.Value:=codusr;
   DM1.Tb_ProPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
   DM1.Tb_ProPDHRALT.Value :=FormatDateTime(fhr, time);
   DM1.Tb_Pro.Post;
  end;
}
end;

procedure TFrm_ManProSim.DBGrid1Exit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if Tb_ProPDCODPRO.IsNull then
      Tb_Pro.Cancel
   else
      Tb_Pro.Post;
   end;
end;

procedure TFrm_ManProSim.Tb_ProBeforeDelete(DataSet: TDataSet);
begin
Tb_Pro.Cancel;
abort;
end;

procedure TFrm_ManProSim.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if ((key in ['A'..'Z']) or (key in ['a'..'z'])) and (DBGrid1.SelectedField=Tb_ProPDCODPRO) then
  begin
  if DM1.Tb_PargerPPCOGRA.Value=1 then
    Tb_ProPDCODPRO.Value:=ValFloat( fChamaPro(2,'Frm_Ped_AutoP',key))
  else if (valint(copy(mpseg,4,2))=2) then
    begin
    Tb_ProPDCODPRO.Value:=ValFloat(fChamaPro(0,'Frm_Ped_AutoP',key))
    end
  else
    begin
    if not (tb_pro.state in [dsedit,dsinsert]) then
      Tb_pro.insert;  
    Tb_ProPDCODPRO.AsFloat:=ValFloat(fChamaPro(0,'Frm_Ped_AutoP',key));
    end;
  end;
end;

procedure TFrm_ManProSim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
