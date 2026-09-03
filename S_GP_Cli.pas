unit S_GP_Cli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, BubbleCh, ArrowCha, Series, TeeShape, GanttCh,
  TeEngine, TeeProcs, Chart, DBChart, StdCtrls, Mask, Buttons, func,
  S_Cli, S_DM1,lerarq, S_Tab05,S_SQL, variants, S_SelEmp;

type
  TFrm_GP_Cli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: THorizBarSeries;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MDTI1: TMaskEdit;
    MDTI2: TMaskEdit;
    MDTF1: TMaskEdit;
    MDTF2: TMaskEdit;
    RGTipo: TRadioGroup;
    APLICAR: TBitBtn;
    ESTILO: TBitBtn;
    IMPRIMIR: TBitBtn;
    SAIR: TBitBtn;
    Label7: TLabel;
    CODCLI: TEdit;
    Series3: TLineSeries;
    Series4: TFastLineSeries;
    Series5: TAreaSeries;
    Series6: TPointSeries;
    Series7: TPieSeries;
    cbxfundo: TCheckBox;
    NOMCLI: TEdit;
    Tb_VPro: TQuery;
    Tb_VProTMCHAVE: TFloatField;
    Tb_VProTMANO: TFloatField;
    Tb_VProTMMES: TFloatField;
    Tb_VProTMVALOR: TFloatField;
    Tb_VPronome: TStringField;
    U_Vpro: TUpdateSQL;
    procedure RGTipoExit(Sender: TObject);
    procedure APLICARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure ESTILOClick(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure cbxfundoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDTI1Exit(Sender: TObject);
    procedure MDTF1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MDTI2Exit(Sender: TObject);
    procedure MDTF2Exit(Sender: TObject);
    procedure RGTipoClick(Sender: TObject);
    procedure Tb_VProCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
      Form_SelEmp: TFrm_SelEmp; 
    { Public declarations }
  end;

var
  Frm_GP_Cli: TFrm_GP_Cli;
  mitem: integer=0;

implementation

uses S_EstGrf, S_GPer, S_DM2;

{$R *.DFM}

procedure TFrm_GP_Cli.RGTipoExit(Sender: TObject);
begin
if RGTipo.ItemIndex=0 then
   begin
   Label1.Visible:=True;
   Label2.Visible:=True;
   MDT1.Visible  :=True;
   MDT2.Visible  :=True;

   Label3.Visible:=False;
   Label4.Visible:=False;
   Label5.Visible:=False;
   Label6.Visible:=False;
   MDTI1.Visible :=False;
   MDTI2.Visible :=False;
   MDTF1.Visible :=False;
   MDTF2.Visible :=False;
   end
else
   begin
   Label1.Visible:=False;
   Label2.Visible:=False;
   MDT1.Visible  :=False;
   MDT2.Visible  :=False;

   Label3.Visible:=True;
   Label4.Visible:=True;
   Label5.Visible:=True;
   Label6.Visible:=True;
   MDTI1.Visible :=True;
   MDTI2.Visible :=True;
   MDTF1.Visible :=True;
   MDTF2.Visible :=True;

   end;

end;

procedure TFrm_GP_Cli.APLICARClick(Sender: TObject);
var
x: Integer;
mMes, mAno: Real;

begin
if Trim(CODCLI.Text)='' then
   begin
   ShowMessage('Favor Selecionar um produto valido');
   CODCLI.SetFocus;
   exit;
   end;

Tb_VPro.Close;
Tb_VPro.Open;
Frm_SQL.STG_COND.RowCount:=1;
Frm_SQl.STG_COND.rows[0].Clear;

if RGTipo.ItemIndex=0 then
   begin
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
   end
else
   begin
   if Trim(MDTI1.Text)<>'/  /' then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
      Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDTI1.Text));
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;
   if Trim(MDTI2.Text)<>'/  /' then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
      Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDTI2.Text));
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;
   end;

if Trim(CODCLI.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='CCODCLI';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=CODCLI.Text;
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if RGTipo.ItemIndex=0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',1));
   DM1.Query2.Open;

   if DM1.Query2.Eof then
      begin
      Messagedlg('Nada encontrado no periodo solicitado',mtWarning,[mbOk],0);
      exit;
      end;
   While not DM1.Query2.Eof do
      begin
      mMes:=StrToFloat(FormatDateTime('mm',DM1.Query2.Fields[1].AsDateTime));
      maNo:=StrToFloat(FormatDateTime('yyyy',DM1.Query2.Fields[1].AsDateTime));
      if Tb_Vpro.Locate('TMANO;TMMES',vararrayof([MaNO,mMes]),[]) then
         begin
         Tb_Vpro.Edit;
         Tb_VproTMVALOR.Value:=Tb_VproTMVALOR.Value+DM1.Query2.fields[0].asFloat;
         end
      else
         begin
         Tb_vPro.Append;
         Tb_VproTMCHAVE.Value:=0;
         Tb_VproTMANO.Value  :=mAno;
         Tb_VproTMMES.Value  :=mMes;
         Tb_VproTMVALOR.Value:=DM1.Query2.fields[0].asFloat;
         end;
      Tb_Vpro.Post;
      DM1.Query2.Next;
      end;
   end
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   msubst:=' PDCODPRO ';
   DM1.Query2.SQL.add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',8));
   Frm_SQL.STG_COND.RowCount:=1;
   Frm_SQl.STG_COND.rows[0].Clear;
   if Trim(MDTF1.Text)<>'/  /' then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
      Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDTF1.Text));
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;
   if Trim(MDTF2.Text)<>'/  /' then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
      Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDTF2.Text));
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;
   DM1.Query2.SQL.Add(' union ');
   DM1.Query2.SQL.add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',9));
   DM1.Query2.Open;

   While not DM1.Query2.Eof do
      begin
      mMes:=DM1.Query2.Fields[1].AsInteger;
      maNo:=0;
      if Tb_Vpro.Locate('TMMES',mMes,[]) then
         begin
         Tb_Vpro.Edit;
         Tb_VproTMVALOR.Value:=Tb_VproTMVALOR.Value+DM1.Query2.fields[2].asFloat;
         end
      else
         begin
         Tb_vPro.Append;
         Tb_VproTMCHAVE.Value:=0;
         Tb_VproTMANO.Value  :=mAno;
         Tb_VproTMMES.Value  :=mMes;
         Tb_VproTMVALOR.Value:=DM1.Query2.fields[0].asFloat;
         end;
      Tb_Vpro.Post;
      DM1.Query2.Next;
      end;
   end;

DBChart1.Title.Text.Clear;
DBChart1.Title.Text.Add('Produto: '
+FormatFloat('00000',StrToInt(Trim(CODCLI.Text)))+' - '+NOMCLI.Text);
DBChart1.View3DOptions.Orthogonal:=True;

end;

procedure TFrm_GP_Cli.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GP_Cli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_GP_CLI',key);
   key:=#0;
   end;
end;

procedure TFrm_GP_Cli.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   begin
   ShowMessage('Digite um Codigo Valido!');
   CODCLI.SetFocus;
   end
else
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      ShowMessage('Cliente não Cadastrado.');
      CODCLI.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure TFrm_GP_Cli.ESTILOClick(Sender: TObject);
var
  x: integer;
begin
Application.CreateForm(TFrm_EstGrf, Frm_EstGrf);
Frm_EstGrf.RgEstilo.ItemIndex:=mitem;
If Frm_EstGrf.ShowModal=mrOk then
   begin
   for x:=1 to DBChart1.SeriesCount do
      DBChart1.Series[x-1].Active:=False;
   DBChart1.Series[Frm_EstGrf.RgEstilo.ItemIndex].Active:=True;
   mitem:=Frm_EstGrf.RgEstilo.ItemIndex;
   end;
Frm_EstGrf.Free;
DBChart1.View3DOptions.Orthogonal:=True;
end;
procedure TFrm_GP_Cli.IMPRIMIRClick(Sender: TObject);
begin
DBChart1.PrintLandscape;
end;

procedure TFrm_GP_Cli.cbxfundoClick(Sender: TObject);
begin
If CBxFundo.Checked then
   DBChart1.Gradient.EndColor:=clGreen
else
   DBChart1.Gradient.EndColor:=clWhite;
end;


procedure TFrm_GP_Cli.FormActivate(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQl.add('select tcampo as campo from CADTDV '
                  +' where ttipo=1 and tdoc='+chr(39)+Frm_GPer.Qr_RelTCDOC.Value+chr(39)
                  +' and TNOME='+chr(39)+Frm_GPer.Qr_RelTCNOME.Value+chr(39)
                  +' and TCTPVAR<>1');
DM1.Query1.Open;
if DM1.Query1.Eof then
   Frm_GP_Cli.Caption:='Gráfico não Identificado'
else
   Frm_GP_Cli.Caption:=DM1.Query1.Fields[0].AsString;

DBChart1.Gradient.EndColor:=clGreen

end;

procedure TFrm_GP_Cli.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' Then
   Try
   MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(mdt1.Text));
Except
   ShowMessage('Data Invalida!');
   MDT1.SetFocus;
   end;

end;

procedure TFrm_GP_Cli.MDTI1Exit(Sender: TObject);
begin
if Trim(MDTI1.Text)<>'/  /' Then
   Try
   MDTI1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(mdtI1.Text));
Except
   ShowMessage('Data Invalida!');
   MDTI1.SetFocus;
   end;

end;

procedure TFrm_GP_Cli.MDTF1Exit(Sender: TObject);
begin
if Trim(MDTF1.Text)<>'/  /' Then
   Try
   MDTF1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(mdtF1.Text));
Except
   ShowMessage('Data Invalida!');
   MDTF1.SetFocus;
   end;

end;

procedure TFrm_GP_Cli.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' Then
   Begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(mdt2.Text));
   Except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      abort;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Invalido Data Inicial Maior que Final');
      MDT1.SetFocus;
      Abort;
      end;
   end;
end;

procedure TFrm_GP_Cli.MDTI2Exit(Sender: TObject);
begin
if Trim(MDTI2.Text)<>'/  /' Then
   Begin
   Try
      MDTI2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDTI2.Text));
   Except
      ShowMessage('Data Invalida!');
      MDTI2.SetFocus;
      abort;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDTI2.Text)<>'/  /') then
   begin
   if StrToDate(MDTI2.Text)<StrToDate(MDTI1.Text) then
      begin
      ShowMessage('Invalido Data Inicial Maior que Final');
      MDTI1.SetFocus;
      Abort;
      end;
   end;

end;

procedure TFrm_GP_Cli.MDTF2Exit(Sender: TObject);
begin
if Trim(MDTF2.Text)<>'/  /' Then
   Begin
   Try
      MDTF2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDTF2.Text));
   Except
      ShowMessage('Data Invalida!');
      MDTF2.SetFocus;
      abort;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDTF2.Text)<>'/  /') then
   begin
   if StrToDate(MDTF2.Text)<StrToDate(MDTF1.Text) then
      begin
      ShowMessage('Invalido Data Inicial Maior que Final');
      MDTF1.SetFocus;
      Abort;
      end;
   end;



end;

procedure TFrm_GP_Cli.RGTipoClick(Sender: TObject);
begin
if RGTipo.ItemIndex=0 then
   begin
   Label1.Visible:=True;
   Label2.Visible:=True;
   MDT1.Visible  :=True;
   MDT2.Visible  :=True;

   Label3.Visible:=False;
   Label4.Visible:=False;
   Label5.Visible:=False;
   Label6.Visible:=False;
   MDTI1.Visible :=False;
   MDTI2.Visible :=False;
   MDTF1.Visible :=False;
   MDTF2.Visible :=False;
   end
else
   begin
   Label1.Visible:=False;
   Label2.Visible:=False;
   MDT1.Visible  :=False;
   MDT2.Visible  :=False;

   Label3.Visible:=True;
   Label4.Visible:=True;
   Label5.Visible:=True;
   Label6.Visible:=True;
   MDTI1.Visible :=True;
   MDTI2.Visible :=True;
   MDTF1.Visible :=True;
   MDTF2.Visible :=True;

   end;


end;

procedure TFrm_GP_Cli.Tb_VProCalcFields(DataSet: TDataSet);
begin
if Tb_VProTMANO.Value=0 then
   begin
   if Tb_VProTMMES.Value=1 then
      Tb_VPronome.Value:='Primeiro'
   else
      Tb_VPronome.Value:='Segundo';
   end
else
   Tb_VPronome.Value:=FormatFloat('00',Tb_VProtmmes.Value)+'/'+FormatFloat('0000',Tb_VProTMANO.Value);

end;

procedure TFrm_GP_Cli.FormCreate(Sender: TObject);
begin
fltdvca(0,0,Frm_GPer.Qr_RelTCDOC.Value,Frm_GPer.Qr_RelTCNOME.Value,'CADTDV');

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_GP_Cli.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
   
end;

procedure TFrm_GP_Cli.FormKeyDown(Sender: TObject; var Key: Word;
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
