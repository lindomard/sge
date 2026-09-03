unit S_RCobC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1;

type
  TFrm_RCobC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TMaskEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    STG_DUP: TStringGrid;
    SAIR: TBitBtn;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    Tb_Dup: TQuery;
    Tb_DupCRNUMERO: TFloatField;
    Tb_DupCRDESD: TStringField;
    Tb_DupCRDUP: TFloatField;
    Tb_DupCRDTEMIS: TDateTimeField;
    Tb_DupCRDTVCTO: TDateTimeField;
    Tb_DupCRVALOR: TFloatField;
    Tb_DupCRJURD: TFloatField;
    Tb_DupCRCOMVEN: TFloatField;
    Tb_DupCRAZAO: TStringField;
    Tb_Dupatraso: TFloatField;
    Label32: TLabel;
    CB_SITPAG: TComboBox;
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure STG_DUPDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Tb_DupCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }

    mCol_X: Integer;
    mCol_Numero: Integer;
    mCol_Desd: Integer;
    mCol_Tipo: Integer;
    mCol_Dtemis: Integer;
    mCol_Crazao: Integer;
    mCol_Dtvcto: Integer;
    mCol_Valor: Integer;
    mCol_Atraso: Integer;
    mCol_Jurdia: Integer;

  end;




var
  Frm_RCobC: TFrm_RCobC;

implementation

uses S_RCob;

{$R *.dfm}

procedure TFrm_RCobC.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RCobC.FormCreate(Sender: TObject);
begin

    mCol_X      := 00;
    mCol_Numero := 01;
    mCol_Desd   := 02;
    mCol_Tipo   := 03;
    mCol_Dtemis := 04;
    mCol_Crazao := 05;
    mCol_Dtvcto := 06;
    mCol_Valor  := 07;
    mCol_Atraso := 08;
    mCol_Jurdia := 09;

STG_DUP.RowCount:=2;
STG_DUP.Cells[00,0]:='Sel';
STG_DUP.Cells[01,0]:='Número';
STG_DUP.Cells[02,0]:='Desd';
STG_DUP.Cells[03,0]:='Tipo Doc';
STG_DUP.Cells[04,0]:='Dt.Emissão';
STG_DUP.Cells[05,0]:='Sacado';
STG_DUP.Cells[06,0]:='Dt.Vcto';
STG_DUP.Cells[07,0]:='Valor';
STG_DUP.Cells[08,0]:='Atraso';
STG_DUP.Cells[09,0]:='Juros dia';
STG_DUP.Rows[1].Clear;
nome.Text:=FormatDateTime(fdt2,date);
end;

procedure TFrm_RCobC.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];

if CB_TIPO.ItemIndex<2 then
   NOME.EditMask:='!99/99/9999;1; '
else
   NOME.EditMask:='';

end;

procedure TFrm_RCobC.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_RCobC.BitBtn1Click(Sender: TObject);
var
x: integer;
begin
Tb_Dup.Close;
Tb_Dup.SQL.Clear;
Tb_Dup.SQL.add('Select CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
              +'       CRDTVCTO,CRVALOR,CRJURD,CRCOMVEN,CRAZAO'
              +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO '
              +'       from CADDAR,CADCLI where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'','CRCODEMP=0'+IntTostr(codemp)+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'','CCODEMP=0'+IntTostr(codemp)+' and ')
              +' CCODCLI=CRCODCLI '
              +iif(valfloat(Frm_RCob.CODVEN.Text)>0,' and CRCODVEN=0'+Frm_Rcob.CODVEN.Text,''));

if CB_SITPAG.ItemIndex=1 then
   Tb_Dup.SQL.Add(' and CRSTATUS>1 ')
else if CB_SITPAG.ItemIndex=2 then
   Tb_Dup.SQL.Add(' and CRSTATUS=0 ');
   
if CB_TIPO.ItemIndex=0 then
   begin
   if Trim(NOME.Text)<>'/  /' then
      Tb_Dup.SQL.Add(' and CRDTVCTO='+chr(39)+FormatDateTime(fdt,StrToDate(NOME.Text))+chr(39));
   Tb_Dup.SQL.Add(' order by CRDTVCTO');
   end
else if CB_TIPO.ItemIndex=1 then
   begin
   if Trim(NOME.Text)<>'/  /' then
      Tb_Dup.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(NOME.Text))+chr(39));
   Tb_Dup.SQL.Add(' order by CRDTEMIS ');
   end
else if CB_TIPO.ItemIndex=2 then
   begin
   if Trim(NOME.Text)<>'' then
      Tb_Dup.SQL.Add(' and CRCODCLI=0'+Trim(NOME.Text));
   Tb_Dup.SQL.Add(' order by CRCODCLI ');
   end
else if CB_TIPO.ItemIndex=3 then
   begin
   if Trim(NOME.Text)<>'' then
      Tb_Dup.SQL.Add(' and CRNUMERO=0'+Trim(NOME.Text));
   Tb_Dup.SQL.Add(' order by CRNUMERO ');
   end
else if CB_TIPO.ItemIndex=4 then
   begin
   if Trim(NOME.Text)<>'' then
      Tb_Dup.SQL.Add(' and CRVALOR=0'+mudavp(NOME.Text));
   Tb_Dup.SQL.Add(' order by CRVALOR ');
   end;

Tb_Dup.Open;
x:=2;
STG_DUP.RowCount:=x;
STG_DUP.Rows[x-1].Clear;
While not Tb_Dup.Eof do
   begin
   STG_DUP.Cells[00,x-1]:='X';
   STG_DUP.Cells[01,x-1]:=Tb_DupCRNUMERO.AsString;
   STG_DUP.Cells[02,x-1]:=Tb_DupCRDESD.Value;
   STG_DUP.Cells[03,x-1]:=Formatfloat('0',Tb_DupCRDUP.Value)+ptpdoc[Tb_DupCRDUP.Asinteger];
   STG_DUP.Cells[04,x-1]:=FormatDateTime(fdt2,Tb_DupCRDTEMIS.Value);
   STG_DUP.Cells[05,x-1]:=Tb_DupCRAZAO.AsString;
   STG_DUP.Cells[06,x-1]:=FormatDateTime(fdt2,Tb_DupCRDTVCTO.Value);
   STG_DUP.Cells[07,x-1]:=insere(FormatFloat(mcasas,Tb_DupCRVALOR.Value),' ',10);
   STG_DUP.Cells[08,x-1]:=insere(Tb_DupAtraso.AsString,' ',10);
   STG_DUP.Cells[09,x-1]:=insere(FormatFloat(mcasas,Tb_DupCRJURD.Value),' ',10);
   x:=x+1;
   STG_DUP.RowCount:=x;
   STG_DUP.Rows[x-1].Clear;
   Tb_Dup.Next;
   end;

end;

procedure TFrm_RCobC.SELECIONARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG_DUP.RowCount do
   begin
   if Trim(STG_DUP.Cells[1,x])='' then
      Continue;
   STG_DUP.Cells[0,x]:='X';
   end;
end;

procedure TFrm_RCobC.DESMARCARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG_DUP.RowCount do
   begin
   if Trim(STG_DUP.Cells[1,x])='' then
      Continue;
   STG_DUP.Cells[0,x]:=' ';
   end;
end;

procedure TFrm_RCobC.STG_DUPDblClick(Sender: TObject);
var
mlin: Integer;
begin
mlin:=STG_DUP.Row;
if mlin<1 then
   exit;
if STG_DUP.Cells[0,mlin]='X' then
   STG_DUP.Cells[0,mlin]:=' '
else
   STG_DUP.Cells[0,mlin]:='X';

end;

procedure TFrm_RCobC.FormActivate(Sender: TObject);
begin
cb_tipo.ItemIndex:=0;
CB_TIPO.Text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];
if CB_TIPO.ItemIndex<2 then
   NOME.EditMask:='!99/99/9999;1; '
else
   NOME.EditMask:='';
NOME.text:=FormatDateTime(fdt2, pdatasis);
NOME.SetFocus;

end;

procedure TFrm_RCobC.Tb_DupCalcFields(DataSet: TDataSet);
begin
if Trim(Frm_RCob.MDATA.Text)<>'/  /' then
   begin
   Tb_Dupatraso.Value:=StrToDate(Frm_RCob.MDATA.Text)-Tb_DupCRDTVCTO.Value;

   end
else
   Tb_Dupatraso.Value:=date-Tb_DupCRDTVCTO.Value;
if Tb_Dupatraso.Value<=0 then
   Tb_Dupatraso.Value:=0;
      
end;

procedure TFrm_RCobC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
