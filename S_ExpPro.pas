unit S_ExpPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_DM1, db, dbtables, func, Buttons, Gauges, S_Emp,
  S_DM2, S_Pro,lerarq, s_lerarq_geral;

type
  TFrm_ExpPro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MCODEMP: TEdit;
    NOMEMP: TEdit;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    Gauge1: TGauge;
    Qr_Pro: TQuery;
    Qr_ProPDCODEMP: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODBAR: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDNOME2: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDNIVEL: TFloatField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDPRECO2: TFloatField;
    Qr_ProPDPRECO3: TFloatField;
    Qr_ProPDPRECOA1: TFloatField;
    Qr_ProPDPRECOA2: TFloatField;
    Qr_ProPDPRECOA3: TFloatField;
    Qr_ProPDSIT: TStringField;
    Qr_ProPDDTUATP1: TDateTimeField;
    Qr_ProPDUSRALT1: TFloatField;
    Qr_ProPDDTUATP2: TDateTimeField;
    Qr_ProPDUSRALT2: TFloatField;
    Qr_ProPDDTUATP3: TDateTimeField;
    Qr_ProPDUSRALT3: TFloatField;
    Qr_ProPDDATAUA: TDateTimeField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDCODGRU: TFloatField;
    Qr_ProPDCODCON: TFloatField;
    Qr_ProPDCODRAM: TFloatField;
    Qr_ProPDCODTIP: TFloatField;
    Qr_ProPDESTMAX: TFloatField;
    Qr_ProPDESTMIN: TFloatField;
    Qr_ProPDFRACAO: TFloatField;
    Qr_ProPDLISTA: TFloatField;
    Qr_ProPDPRECOC: TFloatField;
    Qr_ProPDPCOMC: TFloatField;
    Qr_ProPDPCOFAB: TFloatField;
    Qr_ProPDSTATUS: TFloatField;
    Qr_ProPDTABICM: TStringField;
    Qr_ProPDIPI: TFloatField;
    Qr_ProPDREGMS: TStringField;
    Qr_ProPDCLAS: TStringField;
    Qr_ProPDSECAO: TStringField;
    Qr_ProPDEMBPAD: TFloatField;
    Qr_ProPDEMBMUL: TFloatField;
    Qr_ProPDCOMIS: TFloatField;
    Qr_ProPDSEMCOM: TFloatField;
    Qr_ProPDPRZVAL: TFloatField;
    Qr_ProPDUCPR: TFloatField;
    Qr_ProPDCODUSR: TFloatField;
    Qr_ProPDDTALT: TDateTimeField;
    Qr_ProPDHRALT: TStringField;
    Qr_ProPDPMC: TFloatField;
    Qr_ProPDDESC1: TFloatField;
    Qr_ProPDDESC1A: TFloatField;
    Qr_ProPDDESC2: TFloatField;
    Qr_ProPDDESC3: TFloatField;
    Qr_ProPDQTDP: TFloatField;
    Qr_ProPDPRAZO: TFloatField;
    Qr_ProPDDESFIN: TFloatField;
    Qr_ProPDCURVA: TStringField;
    Qr_ProPDSALDO: TFloatField;
    Qr_ProPDEMBPAD2: TStringField;
    Qr_ProPDCODPROC: TFloatField;
    Qr_ProPDDTULTSAI: TDateTimeField;
    Qr_ProPDDTULTENT: TDateTimeField;
    Qr_ProPDVDAMAXM: TFloatField;
    Qr_ProPDPESOB: TFloatField;
    Qr_ProPDPESOL: TFloatField;
    Qr_ProPDDATCAD: TDateTimeField;
    Qr_ProPDPROALT: TFloatField;
    Qr_ProPDNOMFOR: TStringField;
    Qr_ProPDNOMPROC: TStringField;
    Qr_ProPDNOMGRU: TStringField;
    Qr_ProPDNOMCON: TStringField;
    Qr_ProPDNOMRAM: TStringField;
    Qr_ProPDNOMTIP: TStringField;
    Qr_ProPDNOMPROALT: TStringField;
    Qr_ProPDALTO: TFloatField;
    Qr_ProPDREST: TFloatField;
    Qr_ProPDBAIXO: TFloatField;
    Qr_ProPDSTATUS02: TFloatField;
    Qr_ProPDSALDOR: TFloatField;
    Qr_ProPDBAIXOR: TFloatField;
    Qr_ProPDALTOR: TFloatField;
    Qr_ProPDSALDOC: TFloatField;
    Qr_ProPDBAIXOC: TFloatField;
    Qr_ProPDALTOC: TFloatField;
    Qr_ProPDCODNCM: TStringField;
    CB_PRECOS: TCheckBox;
    Label4: TLabel;
    PERC: TEdit;
    Label5: TLabel;
    bbSalvarPadrao: TBitBtn;
    Qr_ProPDAPRES: TStringField;
    Qr_ProPDCODFAB: TStringField;
    Qr_ProPDCX_PVDA: TFloatField;
    Qr_ProPDCX_PFAB: TFloatField;
    Qr_ProPDCX_PMAX: TFloatField;
    Qr_ProPDQTDM3: TFloatField;
    Qr_ProPDPMC02: TFloatField;
    Qr_ProPDPMC03: TFloatField;
    Qr_ProPDCUSFAB: TFloatField;
    Qr_ProPDCUSENV: TFloatField;
    Qr_ProPDUCODFOR: TFloatField;
    Qr_ProPDUNOMFOR: TStringField;
    Qr_ProPDCUSFIN: TFloatField;
    Qr_ProPDPRAT: TStringField;
    Qr_ProPDLADO: TStringField;
    Qr_ProPDRUA: TStringField;
    Qr_ProPDUNDVDA: TFloatField;
    Qr_ProPDCOMIS_EXTRA: TFloatField;
    Qr_ProPDQTDGRML: TFloatField;
    Qr_ProPDSALDOT: TFloatField;
    Qr_ProPDALTOT: TFloatField;
    Qr_ProPDBAIXOT: TFloatField;
    Qr_ProPDICMSCRED: TFloatField;
    Qr_ProPDICMSDEB: TFloatField;
    Qr_ProPDVLRINC: TFloatField;
    Qr_ProPDAPLIC: TStringField;
    Qr_ProPDBLDESCAV: TFloatField;
    Qr_ProPDRESTFOR: TFloatField;
    Qr_ProPDRESTCON: TFloatField;
    Qr_ProPDSITCF: TStringField;
    Qr_ProPDCODBAR_EMBPAD: TStringField;
    Qr_ProPDUSRALT: TFloatField;
    Qr_ProPDUSRINC: TFloatField;
    Qr_ProPDENTPEN: TFloatField;
    Qr_ProPDSALDO_PRAT: TFloatField;
    Qr_ProPDSALDO_DEP: TFloatField;
    Label6: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label3: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPExit(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure PERCExit(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     function fAtualizaPadrao(pTipo: Integer): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_ExpPro: TFrm_ExpPro;
  mperc: Real=0;

implementation

uses func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_ExpPro.FormCreate(Sender: TObject);
begin
Label1.Caption:='Voce Esta Trabalhando na Empresa: '+DM1.Tb_EmpCODEMP.AsString+' - '+Trim(DM1.Tb_EmpRAZAO.Value);
fAtualizaPadrao(0);

end;

procedure TFrm_ExpPro.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpPro.MCODEMPKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      MCODEMP.Text := fChamaEmp(0,'Frm_Emp',key);
      key:=#0;
      MCODEMPExit(Self);
   end;
end;

procedure TFrm_ExpPro.MCODEMPExit(Sender: TObject);
begin
{if not CODPRO.Focused then
   exit;}
   if not flcademp(1,0,trim(MCODEMP.Text)) then begin
      MessageDlg('Empresa não Cadastrada!',mtWarning,[mbOk],0);
      mcodemp.setfocus;
   end else
      nomemp.Text:=DM2.Tb_EmpRAZAO.Value;
end;

procedure TFrm_ExpPro.bbExportarClick(Sender: TObject);
var
x, mqtd, mlidos: Integer;
minc2: String;
begin
if Trim(mcodemp.Text)='' then
   begin
   MessageDlg('Favor Selecionar uma Empresa Destino.',mtWarning,[mbOk],0);
   MCODEMP.SetFocus;
   exit;
   end;
if (CB_PRECOS.Checked) and (valFloat(PERC.Text)=0) then
   begin
   MessageDlg('Favor Digitar um percentual válido!',mtWarning,[mbOk],0);
   PERC.SetFocus;
   exit;
   end;
mperc:=ValFloat(PERC.Text);
minc2:=' where ';
Qr_Pro.Close;
Qr_Pro.SQL.Clear;
Qr_Pro.SQL.Add('Select * from CADPRO ');
if not DM1.Qr_Tid.Locate('TINOME', 'CADPRO',[]) then
   begin
   Qr_Pro.Sql.add(' Where PDCODEMP=0'+IntToStr(codemp));
   minc2:=' and ';
   end;

if trim(mcinst2)<>'' then
   begin
   Qr_Pro.SQL.Add(minc2+' PDCODPRO '+mcinst2);
   minc2:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   Qr_Pro.SQL.Add(minc2+' PDCODFOR '+mcinst2);
   minc2:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   begin
   Qr_Pro.SQL.Add(minc2+' PDCODGRU '+mcinst2);
   minc2:=' and ';
   end;

Qr_Pro.Open;
mqtd:=Qr_Pro.RecordCount;
mlidos:=0;
Gauge1.Visible:=True;

DM1.Tb_Pro.Close;
{
if pbanco=0 then
   begin
   if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      DM1.Tb_Pro.ParamByName('CODEMP').AsString:='%'
   else
      DM1.Tb_Pro.ParamByName('CODEMP').AsString:= Trim(MCODEMP.Text);
   DM1.Tb_Pro.ParamByName('CODPRO').AsString:='%';
   DM1.Tb_Pro.ParamByName('NOME').AsString:='%';
   DM1.Tb_Pro.ParamByName('NOME2').AsString:='%';
   end
else
   begin
}
   DM1.Tb_Pro.Close;
   DM1.Tb_Pro.SQL.Clear;
   DM1.Tb_Pro.SQL.Add('Select CADPRO.* '
                     +',case when nvl(PDPRECO_CODINDEX,0)=0 then null else (SELECT max(MNOME) from CADMOE where MCODMOE=PDPRECO_CODINDEX) end as preco_index_nome '
                     +' from CADPRO ');

   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      begin
      DM1.Tb_Pro.Sql.add(' where PDCODEMP=0'+Trim(MCODEMP.Text)
                        +' order by PDCODEMP,PDCODPRO');
      end;
//   end;
DM1.Tb_Pro.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

mcinst:=',';
DM1.Query2.Params.CreateParam(ftString,'PDCODEMP2',ptInput);
DM1.Query2.Params.CreateParam(ftString,'PDCODPRO2',ptInput);


DM1.Query2.SQL.Add('Insert into CADPRO (PDCODEMP');

for x:=0 to Qr_Pro.FieldCount-1 do
   begin
   if Qr_Pro.Fields[x].FieldName<>'PDCODEMP' then
      begin
      DM1.Query2.SQL.Add(mcinst+Qr_Pro.Fields[x].FieldName);
      end;
   mcinst:=',';
   end;

DM1.Query2.SQL.Add(')  Select (PDCODEMP-PDCODEMP)+'+FormatFloat('00000',ValFloat(MCODEMP.Text)) );
mcinst:=',';
for x:=0 to Qr_Pro.FieldCount-1 do
   begin
   if mperc<>0 then
      begin
      if Qr_Pro.Fields[x].FieldName='PDPRECO1' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECO1+(PDPRECO1*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECO1 ')
      else if Qr_Pro.Fields[x].FieldName='PDPRECO2' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECO2+(PDPRECO2*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECO2 ')
      else if Qr_Pro.Fields[x].FieldName='PDPRECO3' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECO3+(PDPRECO3*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECO3 ')
      else if Qr_Pro.Fields[x].FieldName='PDPRECOA1' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECOA1+(PDPRECOA1*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECOA1 ')
      else if Qr_Pro.Fields[x].FieldName='PDPRECOA2' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECOA2+(PDPRECOA2*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECOA2 ')
      else if Qr_Pro.Fields[x].FieldName='PDPRECOA3' then
         DM1.Query2.SQL.Add(mcinst+' round((PDPRECOA3+(PDPRECOA3*'+mudavp(PERC.Text)+'/100)),'+InttoStr(mQtdCas_arredpu)+') AS P1PRECOA3 ')
      else if Qr_Pro.Fields[x].FieldName<>'PDCODEMP' then
         begin
         DM1.Query2.SQL.Add(mcinst+Qr_Pro.Fields[x].FieldName);
         end
      end
   else if Qr_Pro.Fields[x].FieldName<>'PDCODEMP' then
      begin
      DM1.Query2.SQL.Add(mcinst+Qr_Pro.Fields[x].FieldName);
      end
   end;
DM1.Query2.SQL.Add(' from CADPRO where PDCODEMP=:PDCODEMP2 and '
                  +'  PDCODPRO=:PDCODPRO2 ');

While not Qr_Pro.Eof do
   begin
   mlidos:=mlidos+1;
   Gauge1.Progress:=mlidos*100 div mqtd;
   if not DM1.Tb_Pro.Locate('PDCODPRO',Qr_ProPDCODPRO.Value,[]) then
      begin
      DM1.Query2.ParamByName('PDCODEMP2').AsFloat:=Qr_Pro.FieldbyName('PDCODEMP').AsFloat;
      DM1.Query2.ParamByName('PDCODPRO2').Asfloat:=Qr_Pro.FieldbyName('PDCODPRO').AsFloat;
      DM1.Query2.ExecSQL;
      end;
   Qr_Pro.Next;
   end;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
Gauge1.Visible:=False;


end;

procedure TFrm_ExpPro.PERCExit(Sender: TObject);
begin
PERC.Text:=FormatFloat(mcasas, ValFloat(PERC.Text));
end;

function TFrm_ExpPro.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
begin
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

mform:='_EXPPRO';
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_PRECOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_PRECOS.Checked:=true
   else
      CB_PRECOS.Checked:=false;
   end
else
   CB_PRECOS.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'MCODEMP']),[]) then
   MCODEMP.Text:=DM4.Tb_FilPadFPVALOR.Value;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'PERC']),[]) then
   PERC.Text:=FormatFloat(mcasas, ValFloat(DM4.Tb_FilPadFPVALOR.Value));
if ValFloat(MCODEMP.Text)>0 then
   begin
   if not flcademp(1,0,trim(MCODEMP.Text)) then
      nomemp.Text:=DM2.Tb_EmpRAZAO.Value
   else
      NOMEMP.Text:='Não Cadastrada';
   end;
result:=True;
end;


procedure TFrm_ExpPro.bbSalvarPadraoClick(Sender: TObject);
var
mForm: String;
begin
mForm:='_EXPPRO';
fDeletaPadroes(codusr,mForm,'');
fGravaPadroes(codusr,'CB_PRECOS'     ,'checked'   ,mForm,iif(CB_PRECOS.Checked,'true','false'));
if Trim(MCODEMP.Text)<>'' then
   fGravaPadroes(codusr,'MCODEMP'    ,'text'       ,mForm,MCODEMP.Text);
if Trim(PERC.Text)<>'' then
   fGravaPadroes(codusr,'PERC'       ,'text'       ,mForm,PERC.Text);
MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_ExpPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ExpPro.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      end;

   end;

end;

procedure TFrm_ExpPro.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ExpPro.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      codfor.setfocus;
      end;
   end;


end;

procedure TFrm_ExpPro.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ExpPro.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_ExpPro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ExpPro.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);



end;

procedure TFrm_ExpPro.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

end.
