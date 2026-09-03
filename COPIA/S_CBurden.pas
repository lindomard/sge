unit S_CBurden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DB, DBGrids, StdCtrls, ComCtrls, DBClient, DBTables,
  Menus, S_SelEmp, ExtCtrls, Buttons, RLReport, CheckLst, Mask, ToolEdit;

type
  TFrm_CBurden = class(TForm)
    PageControl1: TPageControl;
    Ts_Demonstrativo: TTabSheet;
    Ts_Config: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CODDF_0: TEdit;
    NOMDF_0: TEdit;
    NATDF_0: TEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    NOMDF_1: TEdit;
    NATDF_1: TEdit;
    CODDF_1: TEdit;
    DBGrid2: TDBGrid;
    STG1: TStringGrid;
    Src_CBurnden0: TDataSource;
    Src_CBurnden1: TDataSource;
    Tb_CBurnden0: TQuery;
    Up_CBurnden0: TUpdateSQL;
    Tb_CBurnden0CCB_CODEMP: TFloatField;
    Tb_CBurnden0CCB_ITEM: TFloatField;
    Tb_CBurnden0CCB_TIPO: TFloatField;
    Tb_CBurnden1: TQuery;
    Up_CBurnden1: TUpdateSQL;
    Tb_CBurnden0nomccu: TStringField;
    Tb_CBurnden0natdc: TStringField;
    Tb_CBurnden1nomccu: TStringField;
    Tb_CBurnden1natdc: TStringField;
    Tb_CBurnden1CCB_CODEMP: TFloatField;
    Tb_CBurnden1CCB_ITEM: TFloatField;
    Tb_CBurnden1CCB_TIPO: TFloatField;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Deletar1: TMenuItem;
    Deletar2: TMenuItem;
    Panel1: TPanel;
    Tb_CBurnden0CCB_CCU: TStringField;
    Tb_CBurnden1CCB_CCU: TStringField;
    btn_Calcular: TBitBtn;
    btn_Imprimir: TBitBtn;
    Cds_Imprimir: TClientDataSet;
    Src_Imprimir: TDataSource;
    Cds_ImprimirTIPO: TStringField;
    Cds_ImprimirNOME: TStringField;
    Cds_ImprimirVALOR: TFloatField;
    Ts_Rel: TTabSheet;
    DBGrid3: TDBGrid;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    rlTipo: TRLLabel;
    rlNome: TRLLabel;
    rlValor: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    rltotalg: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    lbl_data: TRLLabel;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    rlValBurden: TRLLabel;
    rlCustoTotal: TRLLabel;
    RLBand6: TRLBand;
    rlbanner: TRLLabel;
    Label9: TLabel;
    Panel2: TPanel;
    RG_TIPOPED: TCheckListBox;
    rlValLucroPejuizo: TRLLabel;
    RLLabel8: TRLLabel;
    Label10: TLabel;
    dtInicial: TDateEdit;
    Label11: TLabel;
    dtFinal: TDateEdit;
    procedure CODDF_0KeyPress(Sender: TObject; var Key: Char);
    procedure CODDF_0Exit(Sender: TObject);
    procedure CODDF_1KeyPress(Sender: TObject; var Key: Char);
    procedure CODDF_1Exit(Sender: TObject);
    procedure NATDF_0Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_CBurnden0CalcFields(DataSet: TDataSet);
    procedure Tb_CBurnden0AfterPost(DataSet: TDataSet);
    procedure Tb_CBurnden0AfterDelete(DataSet: TDataSet);
    procedure Tb_CBurnden1AfterDelete(DataSet: TDataSet);
    procedure Tb_CBurnden1AfterPost(DataSet: TDataSet);
    procedure Tb_CBurnden2AfterPost(DataSet: TDataSet);
    procedure Tb_CBurnden2AfterDelete(DataSet: TDataSet);
    procedure NATDF_1Exit(Sender: TObject);
    procedure Tb_CBurnden1CalcFields(DataSet: TDataSet);
    procedure Deletar1Click(Sender: TObject);
    procedure Deletar2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure btn_CalcularClick(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CBurden: TFrm_CBurden;
  Form_SelEmp: TFrm_SelEmp;
  mObra: real;
  cFixo: real;
  tPedido: Real;
  TotalC: Real;

implementation

uses S_CCU, S_DM1, lerarq, Func, Types, S_DM4;

{$R *.dfm}

procedure TFrm_CBurden.CODDF_0KeyPress(Sender: TObject; var Key: Char);
var
  Letra: string;
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  Letra:=Key;
  Key:=' ';
  CODDF_0.Text:=trim(fChamaCCU(0,Frm_CBurden.Name,Letra));
  end;
end;

procedure TFrm_CBurden.CODDF_0Exit(Sender: TObject);
begin
if Trim(CODDF_0.Text)<>'' then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',trim(CODDF_0.Text)) then
    begin
    NOMDF_0.Text:=DM1.Query1.Fields[1].AsString;
    NATDF_0.Text:=DM1.Query1.Fields[0].AsString;
    end
  else
    begin
    NOMDF_0.Text:='Não Cadastrado!';
    CODDF_0.setfocus;
    end;
  end;
end;

procedure TFrm_CBurden.CODDF_1KeyPress(Sender: TObject; var Key: Char);
var
  Letra: string;
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  Letra:=Key;
  Key:=' ';
  CODDF_1.Text:=trim(fChamaCCU(0,Frm_CBurden.Name,Letra));
  end;
end;

procedure TFrm_CBurden.CODDF_1Exit(Sender: TObject);
begin
if Trim(CODDF_1.Text)<>'' then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',trim(CODDF_1.Text)) then
    begin
    NOMDF_1.Text:=DM1.Query1.Fields[1].AsString;
    NATDF_1.Text:=DM1.Query1.Fields[0].AsString;
    end
  else
    begin
    NOMDF_1.Text:='Não Cadastrado!';
    CODDF_1.setfocus;
    end;
  end;
end;

procedure TFrm_CBurden.NATDF_0Exit(Sender: TObject);
begin
if ValFloat(CODDF_0.Text)>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select max(CCB_ITEM) as Item from CADCBURDEN ');
  DM1.Query1.SQL.Add(' where CCB_TIPO=0 and CCB_CODEMP='+IntToStr(iif(codemp<100,codemp,codemp-100)));
  DM1.Query1.Open;
  Tb_CBurnden0.Insert;
  Tb_CBurnden0CCB_CODEMP.AsInteger:=IIF(codemp<100,codemp,codemp-100);
  Tb_CBurnden0CCB_ITEM.AsInteger:=DM1.Query1.Fields[0].AsInteger+1;
  Tb_CBurnden0CCB_TIPO.AsInteger:=0;
  Tb_CBurnden0CCB_CCU.AsString:=Trim(CODDF_0.Text);
  Tb_CBurnden0.Post;
  CODDF_0.Clear;
  NOMDF_0.Clear;
  NATDF_0.Clear;
  CODDF_0.SetFocus;
  end;
end;

procedure TFrm_CBurden.FormCreate(Sender: TObject);
var
  X: Integer;
begin
PageControl1.ActivePage:=Ts_Demonstrativo;
Cds_ImprimirVALOR.DisplayFormat:=mcasas;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Tb_CBurnden0.Close;
Tb_CBurnden0.SQL.Clear;
Tb_CBurnden0.SQL.Add(' select * from CADCBURDEN ');
Tb_CBurnden0.SQL.Add(' where CCB_TIPO=0 and CCB_CODEMP='+IntToStr(iif(codemp<100,codemp,codemp-100)));
Tb_CBurnden0.Open;

Tb_CBurnden1.Close;
Tb_CBurnden1.SQL.Clear;
Tb_CBurnden1.SQL.Add(' select * from CADCBURDEN ');
Tb_CBurnden1.SQL.Add(' where CCB_TIPO=1 and CCB_CODEMP='+IntToStr(iif(codemp<100,codemp,codemp-100)));
Tb_CBurnden1.Open;


RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
  begin
  RG_TIPOPED.Items.Add(tab_tped[x]);
  RG_TIPOPED.Checked[x-1]:=true;
  end;

if flfilpad(0,'_BURDEN','') then
  begin
  for X:=0 to RG_TIPOPED.Items.Count -1 do
    begin
    if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED'+IntToStr(X),[]) then
      RG_TIPOPED.Checked[X]:=DM4.Tb_FilPad2FPVALOR.AsString='true';
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','dtInicial',[]) then
    dtInicial.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  if DM4.Tb_FilPad2.Locate('FPCOMP','dtFinal',[]) then
    dtFinal.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  end;
end;

procedure TFrm_CBurden.Tb_CBurnden0CalcFields(DataSet: TDataSet);
begin
if length(trim(Tb_CBurnden0CCB_CCU.AsString))>0 then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',Tb_CBurnden0CCB_CCU.AsString) then
    begin
    Tb_CBurnden0nomccu.AsString:=DM1.Query1.Fields[1].AsString;
    Tb_CBurnden0natdc.AsString :=DM1.Query1.Fields[0].AsString;
    end;
  end;
end;

procedure TFrm_CBurden.Tb_CBurnden0AfterPost(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.Tb_CBurnden0AfterDelete(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.Tb_CBurnden1AfterDelete(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.Tb_CBurnden1AfterPost(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.Tb_CBurnden2AfterPost(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.Tb_CBurnden2AfterDelete(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_CBurden.NATDF_1Exit(Sender: TObject);
begin
if ValFloat(CODDF_1.Text)>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select max(CCB_ITEM) as Item from CADCBURDEN ');
  DM1.Query1.SQL.Add(' where CCB_TIPO=1 and CCB_CODEMP='+IntToStr(iif(codemp<100,codemp,codemp-100)));
  DM1.Query1.Open;
  Tb_CBurnden1.Insert;
  Tb_CBurnden1CCB_CODEMP.AsInteger:=IIF(codemp<100,codemp,codemp-100);
  Tb_CBurnden1CCB_ITEM.AsInteger:=DM1.Query1.Fields[0].AsInteger+1;
  Tb_CBurnden1CCB_TIPO.AsInteger:=1;
  Tb_CBurnden1CCB_CCU.AsString:=Trim(CODDF_1.Text);
  Tb_CBurnden1.Post;
  CODDF_1.Clear;
  NOMDF_1.Clear;
  NATDF_1.Clear;
  CODDF_1.SetFocus;
  end;
end;

procedure TFrm_CBurden.Tb_CBurnden1CalcFields(DataSet: TDataSet);
begin
if length(trim(Tb_CBurnden1CCB_CCU.AsString))>0 then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',Tb_CBurnden1CCB_CCU.AsString) then
    begin
    Tb_CBurnden1nomccu.AsString:=DM1.Query1.Fields[1].AsString;
    Tb_CBurnden1natdc.AsString :=DM1.Query1.Fields[0].AsString;
    end;
  end;
end;

procedure TFrm_CBurden.Deletar1Click(Sender: TObject);
begin
Tb_CBurnden0.Delete;
end;

procedure TFrm_CBurden.Deletar2Click(Sender: TObject);
begin
Tb_CBurnden1.Delete;
end;

procedure TFrm_CBurden.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  x: Integer;
begin
fDeletaPadroes(0,'_BURDEN','');
for x := 0 to RG_TIPOPED.Items.Count - 1 do
  begin
  fGravaPadroes(0,'RG_TIPOPED'+IntToStr(X),'checked','_BURDEN',iif(RG_TIPOPED.Checked[X],'true','false'));
  end;
fGravaPadroes(0,'dtInicial'     ,'text'       ,'_BURDEN',dtInicial.Text);
fGravaPadroes(0,'dtFinal'       ,'text'       ,'_BURDEN',dtFinal.Text);
Form_SelEmp.free;
Form_SelEmp:=nil;
//if (FormState<>[fsModal]) then
//   Action := CaFree;
end;

procedure TFrm_CBurden.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CBurden.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  X, Y: integer;
  Texto: string;
begin
Texto := STG1.Cells[ACol, ARow];
if ValFloat(STG1.Cells[2,arow])<0 then
  STG1.Canvas.Font.Color:=clRed;
if (STG1.Cells[0,arow]='T') then
  STG1.Canvas.Brush.Color:=clYellow
else if (STG1.Cells[0,arow]='C') then
  STG1.Canvas.Brush.Color:=clSkyBlue
else if (STG1.Cells[0,arow]='P') then
  STG1.Canvas.Brush.Color:=clTeal
else if (STG1.Cells[0,arow]='X') then
  STG1.Canvas.Brush.Color:=clMoneyGreen;

STG1.canvas.fillRect(Rect);
if (ARow=0) and (ACol=1) then
  X:=Rect.Right + ((Rect.Left - Rect.Right - STG1.Canvas.TextWidth(Texto)) div 2)
else if (aCol=2) then
  X := Rect.Right - STG1.Canvas.TextWidth(Texto) - 2
else
  X:=Rect.Left;
Y:=Rect.Top + ((Rect.Bottom - Rect.Top - STG1.Canvas.TextHeight(Texto)) div 2);
STG1.Canvas.TextRect(Rect, X, Y, Texto);
end;

procedure TFrm_CBurden.btn_ImprimirClick(Sender: TObject);
begin
btn_CalcularClick(self);
RLReport1.PreviewModal;
end;

procedure TFrm_CBurden.btn_CalcularClick(Sender: TObject);
var
  dia0, mes0, ano0: Word;
  ano: String;
begin
DecodeDate(Now,ano0,mes0,dia0);
ano:=IntToStr(ano0-1);
lbl_data.caption:='Calculo de Burden Referente a '+ano;
STG1.Cells[0,0]:='';
STG1.Cells[1,0]:='LEVANTAMENTO DOS CUSTOS FIXOS';
STG1.Cells[2,0]:='VALOR R$';
STG1.Cells[0,1]:='';
STG1.Cells[1,1]:='';
STG1.Cells[2,1]:='';
STG1.RowCount:=2;

tPedido:=0;
mObra:=0;
cFixo:=0;
Cds_Imprimir.EmptyDataSet;
Tb_CBurnden0.First;
while not Tb_CBurnden0.Eof do
  begin
  la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' select sum(valorr) as total');
  DM1.Query2.SQL.Add(' from cadldr where status<>9 ');
  DM1.Query2.SQL.Add(' and codcc='+chr(39)+Tb_CBurnden0CCB_CCU.AsString+chr(39)
                    +iif(la_Empresas='','',' and '+la_Empresas));
  if (trim(dtInicial.Text)<>'/  /') then
    DM1.Query2.SQL.Add(' and datareal>='+chr(39)+dtInicial.Text+chr(39));
  if (trim(dtFinal.Text)<>'/  /') then
    DM1.Query2.SQL.Add(' and datareal<='+chr(39)+dtFinal.Text+chr(39));
//                    +' and to_char(datareal,'+chr(39)+'yyyy'+chr(39)+')='+chr(39)+ano+chr(39)
  DM1.Query2.Open;
  la_Empresas:=fEmpresas_Selecionadas('CADCCU','CCCODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query3.Close;
  DM1.Query3.SQL.Clear;
  DM1.Query3.SQL.Add(' select ccnome ');
  DM1.Query3.SQL.Add(' from cadccu where '
                    +' cccodccu='+chr(39)+Tb_CBurnden0CCB_CCU.AsString+chr(39)
                    +iif(la_Empresas='','',' and '+la_Empresas));
  DM1.Query3.Open;
  STG1.Cells[0,STG1.RowCount-1]:='A';
  STG1.Cells[1,STG1.RowCount-1]:=DM1.Query3.Fields[0].AsString;
  STG1.Cells[2,STG1.RowCount-1]:=FormatFloat(mcasas,iif(Tb_CBurnden0natdc.AsString='C',DM1.Query2.Fields[0].AsFloat,DM1.Query2.Fields[0].AsFloat*(-1)));

  Cds_Imprimir.Append;
  Cds_ImprimirTIPO.AsString :=STG1.Cells[0,STG1.RowCount-1];
  Cds_ImprimirNOME.AsString :=STG1.Cells[1,STG1.RowCount-1];
  Cds_ImprimirVALOR.AsFloat :=ValFloat(STG1.Cells[2,STG1.RowCount-1]);
  Cds_Imprimir.Post;

  mObra:=mObra+iif(Tb_CBurnden0natdc.AsString='C',DM1.Query2.Fields[0].AsFloat,DM1.Query2.Fields[0].AsFloat*(-1));
  STG1.RowCount:=STG1.RowCount+1;
  Tb_CBurnden0.Next;
  end;

STG1.Cells[0,STG1.RowCount-1]:='T';
STG1.Cells[1,STG1.RowCount-1]:='CUSTO DA MAO DE OBRA TOTAL ';
STG1.Cells[2,STG1.RowCount-1]:=FormatFloat(mcasas,mObra);
STG1.RowCount:=STG1.RowCount+1;
STG1.RowCount:=STG1.RowCount+1;

Tb_CBurnden1.First;
while not Tb_CBurnden1.Eof do
  begin
  la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' select sum(valorr) as total');
  DM1.Query2.SQL.Add(' from cadldr where status<>9 ');
  DM1.Query2.SQL.Add(' and codcc='+chr(39)+Tb_CBurnden1CCB_CCU.AsString+chr(39)
                    +iif(la_Empresas='','',' and '+la_Empresas));
  if (trim(dtInicial.Text)<>'/  /') then
    DM1.Query2.SQL.Add(' and datareal>='+chr(39)+dtInicial.Text+chr(39));
  if (trim(dtFinal.Text)<>'/  /') then
    DM1.Query2.SQL.Add(' and datareal<='+chr(39)+dtFinal.Text+chr(39));
//                    +' and to_char(datareal,'+chr(39)+'yyyy'+chr(39)+')='+chr(39)+ano+chr(39)
  DM1.Query2.Open;
  la_Empresas:=fEmpresas_Selecionadas('CADCCU','CCCODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query3.Close;
  DM1.Query3.SQL.Clear;
  DM1.Query3.SQL.Add(' select ccnome ');
  DM1.Query3.SQL.Add(' from cadccu where '
                    +' cccodccu='+chr(39)+Tb_CBurnden1CCB_CCU.AsString+chr(39)
                    +iif(la_Empresas='','',' and '+la_Empresas));
  DM1.Query3.Open;
  STG1.Cells[0,STG1.RowCount-1]:='B';
  STG1.Cells[1,STG1.RowCount-1]:=DM1.Query3.Fields[0].AsString;
  STG1.Cells[2,STG1.RowCount-1]:=FormatFloat(mcasas,iif(Tb_CBurnden0natdc.AsString='C',DM1.Query2.Fields[0].AsFloat,DM1.Query2.Fields[0].AsFloat*(-1)));
  cFixo:=cFixo+iif(Tb_CBurnden0natdc.AsString='C',DM1.Query2.Fields[0].AsFloat,DM1.Query2.Fields[0].AsFloat*(-1));

  Cds_Imprimir.Append;
  Cds_ImprimirTIPO.AsString :=STG1.Cells[0,STG1.RowCount-1];
  Cds_ImprimirNOME.AsString :=STG1.Cells[1,STG1.RowCount-1];
  Cds_ImprimirVALOR.AsFloat :=ValFloat(STG1.Cells[2,STG1.RowCount-1]);
  Cds_Imprimir.Post;

  STG1.RowCount:=STG1.RowCount+1;
  Tb_CBurnden1.Next;
  end;
STG1.Cells[0,STG1.RowCount-1]:='T';
STG1.Cells[1,STG1.RowCount-1]:='DEMAIS CUSTOS FIXOS TOTAL';
STG1.Cells[2,STG1.RowCount-1]:=FormatFloat('#,##0.00',cFixo);
STG1.RowCount:=STG1.RowCount+1;
STG1.RowCount:=STG1.RowCount+1;
STG1.Cells[0,STG1.RowCount-1]:='C';
STG1.Cells[1,STG1.RowCount-1]:='CUSTO FIXO TOTAL ';
STG1.Cells[2,STG1.RowCount-1]:=FormatFloat('#,##0.00',cFixo+mObra);
TotalC:=cFixo+mObra;
STG1.RowCount:=STG1.RowCount+1;
STG1.RowCount:=STG1.RowCount+1;


la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add(' select SUM(DECODE(P1TIPO_ENTSAI,1,P1TOTALL*-1,P1TOTALL)) as Total '
                  +' from cadp01 where P1STATUS<'+mstatus_excluido+' '
                  +iif(la_Empresas='','',' and '+la_Empresas));
if (trim(dtInicial.Text)<>'/  /') then
  DM1.Query2.SQL.Add(' and p1datanf>='+chr(39)+dtInicial.Text+chr(39));
if (trim(dtFinal.Text)<>'/  /') then
  DM1.Query2.SQL.Add(' and p1datanf<='+chr(39)+dtFinal.Text+chr(39));
//                  and to_char(p1datanf,'+chr(39)+'yyyy'+chr(39)+')='+chr(39)+ano+chr(39)
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
  DM1.Query2.SQL.Add(' and P1TIPO '+mcinst2);
DM1.Query2.Open;

STG1.Cells[0,STG1.RowCount-1]:='P';
STG1.Cells[1,STG1.RowCount-1]:='TOTAL DO FATURAMENTO (PEDIDO) ';
STG1.Cells[2,STG1.RowCount-1]:=FormatFloat(mcasas,DM1.Query2.Fields[0].AsFloat);
tPedido:=DM1.Query2.Fields[0].AsFloat;


Cds_Imprimir.Append;
Cds_ImprimirTIPO.AsString :=STG1.Cells[0,STG1.RowCount-1];
Cds_ImprimirNOME.AsString :=STG1.Cells[1,STG1.RowCount-1];
Cds_ImprimirVALOR.AsFloat :=ValFloat(STG1.Cells[2,STG1.RowCount-1]);
Cds_Imprimir.Post;


STG1.RowCount:=STG1.RowCount+1;
STG1.RowCount:=STG1.RowCount+1;
STG1.Cells[0,STG1.RowCount-1]:='X';
STG1.Cells[1,STG1.RowCount-1]:='VALOR DO BURDEN  ';
try
  STG1.Cells[2,STG1.RowCount-1]:=FormatFloat('#,##0.00',(cFixo+mObra)/mObra);
except
  STG1.Cells[2,STG1.RowCount-1]:=FormatFloat('#,##0.00',0);
  end;

end;



procedure TFrm_CBurden.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Cds_ImprimirTIPO.AsString='A' then
  begin
  rltotalg.Caption :=FormatFloat(mcasas,mObra);
  end
else if Cds_ImprimirTIPO.AsString='B' then
  begin
  rltotalg.Caption :=FormatFloat(mcasas,cFixo);
  end
else if Cds_ImprimirTIPO.AsString='P' then
  begin
  rltotalg.Caption :=FormatFloat(mcasas,tPedido);
  end;                                           
end;

procedure TFrm_CBurden.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlCustoTotal.Caption :=FormatFloat(mcasas,mObra+cFixo);
try
  rlValBurden.Caption:=FormatFloat(mcasas,(mObra+cFixo)/mObra);
except
  rlValBurden.Caption:=FormatFloat(mcasas,0);
  end;
rlValLucroPejuizo.Caption:=FormatFloat(mcasas,tPedido+(mObra+cFixo));

end;

procedure TFrm_CBurden.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlbanner.Caption:=pBanner_Intersys;
end;

procedure TFrm_CBurden.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_CBurden.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_CBurden.FormShow(Sender: TObject);
begin
btn_CalcularClick(self);
end;

end.
