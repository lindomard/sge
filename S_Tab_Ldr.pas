unit S_Tab_Ldr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_Bco, Gauges, S_SQL, Mask, lerarq,S_Tab05,S_Dpto,S_CCU,S_TCon,S_TipPro,
  S_Ven,S_Cli,S_Tra,S_For, S_SelEmp;

type
  TFrm_Tab_Ldr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label10: TLabel;
    Label1: TLabel;
    MES: TEdit;
    ANO: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    NUMCOL: TEdit;
    Label7: TLabel;
    INTCOL: TEdit;
    Label8: TLabel;
    RG_TPCOL: TRadioGroup;
    Bevel1: TBevel;
    CB_AVPTPI: TCheckBox;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    CB_SGRUPO: TCheckBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    CODDEP: TEdit;
    NOMDEP: TEdit;
    Label5: TLabel;
    CODCCU: TEdit;
    NOMCCU: TEdit;
    NOME: TEdit;
    CB_TIPO: TComboBox;
    Label9: TLabel;
    Label13: TLabel;
    CODIGO: TEdit;
    RG_COMPENS: TRadioGroup;
    St_NomRel: TStaticText;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCCUKeyPress(Sender: TObject; var Key: Char);
    procedure CODCCUExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TIPOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_Ldr: TFrm_Tab_Ldr;
implementation

uses S_Per2;


{$R *.dfm}

procedure TFrm_Tab_Ldr.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Ldr.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
      MES.SetFocus;
      exit;
      end;
   end;
mpaggr:=iif(CB_MPAGGR.Checked,true,false);
mpagsg:=iif(CB_MPAGSG.Checked,true,false);
rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
fnumcol:=StrtoInt('0'+NUMCOL.Text);
fintcol:=StrToInt('0'+INTCOL.Text);
ftpcol :=RG_TPCOL.ItemIndex;
Frm_SQL.STG_COND.RowCount:=1;
Frm_SQl.STG_COND.rows[0].Clear;
if Trim(MDT1.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT1.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT2.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(CODBCO.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='CODBCO';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODBCO.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(CODDEP.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='CODDEP';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODDEP.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if Trim(CODCCU.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='CODCC';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODCCU.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if Trim(CB_TIPO.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='TIPO';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CB_TIPO.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if Trim(CODIGO.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='CODIGO';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODIGO.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if RG_COMPENS.ItemIndex<>2 then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='COMPENS';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=IntTostr(RG_COMPENS.ItemIndex);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,fEmpresas_Selecionadas('CADLDR','CADLDR.CODEMP',Form_SelEmp.CLB_EMPRESAS),x));
DM2.Qr_ImpRel.Open;
//DM2.Qr_ImpRel.Sql.SaveToFile(mpastatemp + 'SQL.txt');
if DM2.Qr_ImpRel.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição Solicitada',mtWarning,[mbOk],0);
   exit;
   end;
if CB_GRUPO.Checked  then pimpg:=True  else pimpg :=False;
if CB_SGRUPO.Checked then pimpsg:=True else pimpsg:=False;
if CB_AVPTPI.Checked then pavptpi:=true else pavptpi:=False;
if CB_AVPIPF.Checked then pavpipf:= true else pavpipf:=False;
if RG_PERIODO.Visible then
   pperiodo:=fperiodo(0,mdt1.text,mdt2.Text)
else
   pperiodo:='';

if (Trim(MDT1.Text)<>'/  /') and (Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'') then
   begin
// debito
   if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
     la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM(VALORR) AS VALOR');
   DM1.Query1.SQL.Add(' from  CADLDR WHERE STATUS<>9');
   if trim(la_empresas)<>'' then
      DM1.Query1.SQL.add(' and '+la_empresas);
   if DM1.Tb_TDVCATCPERIODO.Value='DATAREAL' then
      DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')')
   else
      DM1.Query1.SQL.Add(' and (DATAREAL is null and DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');
   DM1.Query1.SQL.Add(' and '+DM1.Tb_TDVCATCPERIODO.Value+'<'+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   if Trim(CODBCO.Text)<>'' Then
      DM1.Query1.SQL.Add(' and CODBCO=0'+trim(CODBCO.Text));
   if Trim(CODDEP.Text)<>'' then
      DM1.Query1.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
   if Trim(CODCCU.Text)<>'' Then
      DM1.Query1.SQL.add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
   if Trim(CODIGO.Text)<>'' then
      begin
      DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                        +' and CODIGO=0'+trim(CODIGO.Text));
      end;
   DM1.Query1.SQL.Add(' Group by NATDC');
   DM1.Query1.open;

   psini:=0;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         psini:=psini-DM1.Query1.Fields[1].AsFloat
      else
         psini:=psini+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   end
else
   psini:=0;

//*****************************************************************************
//********************** Vendas do Periodo inicio******************************
//*****************************************************************************
pVdaPer:=fVerificaVendas('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,MDT1.Text,MDT2.Text);
//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************




plocori:='FRM_TAB_LDR';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Ldr.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

St_NomRel.Caption:='Relatorio: '+per2_NomeRel;


fltdvca(0,0,per2_Doc,per2_NomeRel,'CADTDV');


if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   MDT1.Text:=FormatDatetime(fdt2, date);
   MDT2.Text:=FormatDatetime(fdt2, date);
   
   end;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   MES.Text      :=FormatDateTime('mm',Date);
   ANO.Text      :=FormatDateTime('yyyy',date);
   MES.Visible   :=True;
   ANO.Visible   :=True;
   label1.Visible:=True;
   label2.Visible:=True;
   end;
NUMCOL.Text       :=DM1.Tb_TDVCATCNUMCOL.AsString;
INTCOL.Text       :=DM1.Tb_TDVCATCINTCOL.AsString;
RG_TPCOL.ItemIndex:=DM1.Tb_TDVCATCTPCOL.AsInteger;
CB_GRUPO.Checked  :=DM1.Tb_TDVCATCIMPG.Value=0;
CB_SGRUPO.Checked :=DM1.Tb_TDVCATCIMPSG.Value=0;
CB_AVPTPI.Checked :=DM1.Tb_TDVCATCAVPTPI.Value=0;
CB_AVPIPF.Checked :=DM1.Tb_TDVCATCAVPIPF.Value=0;
if DM1.Tb_TDVCATCMPAGGR.Value=1 then
   CB_MPAGGR.Checked:=True
else
   CB_MPAGGR.Checked:=False;

end;

procedure TFrm_Tab_Ldr.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_Ldr.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
procedure TFrm_Tab_Ldr.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Ldr.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_Tab_Ldr',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Ldr.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)='' then
   NOMBCO.Text:='Todos...'
else
   begin
   if not flqr1('BCBANCO','N','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      ShowMessage('Banco Não Cadastrado!');
      CODBCO.SetFocus;
      exit;
      end
   else
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;
procedure TFrm_Tab_Ldr.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Ldr.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)='' then
   NOMDEP.Text:='Todos...'
else
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      ShowMessage('Departamento Não Cadastrado!');
      CODDEP.SetFocus;
      exit;
      end
   else
      NOMDEP.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_Tab_Ldr.CODDEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDEP.Text:=fChamaDeptoCX(0,'frm_Tab_Ldr',Key);
   if trim(CODDEP.Text)<>'' then
      CODDEPExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Ldr.CODCCUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCCU.Text:=fChamaCCU(0,'frm_Tab_Ldr',Key);
   if trim(CODCCU.Text)<>'' then
      CODCCUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Ldr.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)='' Then
   NOMCCU.Text:='Todos...'
else
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      ShowMessage('Centro de Custo não cadastrado');
      CODCCU.SetFocus;
      exit;
      end
   else
      NOMCCU.Text:=DM1.Query1.Fields[0].AsString;
   end
end;

procedure TFrm_Tab_Ldr.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)='' Then
   NOME.Text:='Todos...'
else if CB_TIPO.Text='FR' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text) then
      begin
      ShowMessage('Fornecedor não cadastrado');
      CODIGO.SetFocus;
      exit;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else if CB_TIPO.Text='TR' then
   begin
   if not flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text) then
      begin
      ShowMessage('Transportadora nao cadastrado');
      CODIGO.SetFocus;
      abort;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else if CB_TIPO.Text='VD' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text) then
      begin
      ShowMessage('Vendedor nao cadastrado');
      CODIGO.SetFocus;
      abort;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else if CB_TIPO.Text='CL' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text) then
      begin
      ShowMessage('Cliente nao cadastrado');
      CODIGO.SetFocus;
      abort;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   begin
   ShowMessage('Tipo Selecionado Invalido');
   CB_TIPO.SetFocus;
   end;


end;

procedure TFrm_Tab_Ldr.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODIGO.Text:=fChamaVen(0,'frm_Tab_Ldr',Key);
   key:=#0;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_Tab_Ldr',Key);
      key:=#0;
      end
   else if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_Tab_Ldr',Key);
      key:=#0;
      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_Tab_Ldr',key);
      key:=#0;
      end
   end;

procedure TFrm_Tab_Ldr.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.items.Strings[CB_TIPO.itemindex];

end;

procedure TFrm_Tab_Ldr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Tab_Ldr.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

