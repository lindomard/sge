unit S_Graf_Dep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  DbChart, ComCtrls, StdCtrls, Mask, Buttons, ToolEdit, S_SelEmp, ExtDlgs;

type
  TFrm_Graf_Dep = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Departamentos: TDBChart;
    DataSource1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    btn_aplicar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Ts_Filtros: TTabSheet;
    lbx_codccu: TListBox;
    OMITIR_CCU: TCheckBox;
    CODCCU: TEdit;
    sbn_codccu: TSpeedButton;
    StaticText3: TStaticText;
    OMITIR_DEP: TCheckBox;
    lbx_coddep: TListBox;
    sbn_coddep: TSpeedButton;
    CODDEP: TEdit;
    StaticText1: TStaticText;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    CODBCO: TEdit;
    StaticText2: TStaticText;
    RG_TPPESQ: TRadioGroup;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btn_Imprimir: TButton;
    SaveDialog1: TSaveDialog;
    Series1: THorizBarSeries;
    Query1LINHA: TFloatField;
    Query1CODIGO: TStringField;
    Query1NOME: TStringField;
    Query1REAL: TFloatField;
    procedure btn_aplicarClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODDEPExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pTipo: Integer;
  end;

var
  Frm_Graf_Dep: TFrm_Graf_Dep;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_Graf_Dep.btn_aplicarClick(Sender: TObject);
begin
if (trim(DateEdit1.Text)='/  /') or (trim(DateEdit2.Text)='/  /') then
  begin
  fmensagem('Favor inserir uma data valida!',0,['0'],0);
  Exit;
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' SELECT ROWNUM*5 AS LINHA, CODIGO, NOME, REAL FROM ( ');
if pTipo=0 then
  Query1.SQL.Add(' select CODDEP AS CODIGO, NOMDEP AS NOME, SUM(VALORR) AS REAL ')
else
  Query1.SQL.Add(' select CODCC AS CODIGO, NOMCCU AS NOME, SUM(VALORR) AS REAL ');
Query1.SQL.Add(' from cadldr                                ');
Query1.SQL.Add(' where STATUS<9 ');

la_Empresas:=fEmpresas_Selecionadas('','CODEMP',Form_SelEmp.CLB_EMPRESAS);

if trim(la_Empresas)<>'' then
  Query1.SQL.Add(' and '+la_Empresas);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
  Query1.SQL.Add(' and CODBCO '+mcinst2);
mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
  Query1.SQL.Add(' and CODCC '+mcinst2);
mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
  Query1.SQL.Add(' and CODDEP '+mcinst2);
if RG_TPPESQ.ItemIndex=0 then
  begin
  if trim(DateEdit1.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAREF>='+chr(39)+DateEdit1.Text+chr(39));
  if trim(DateEdit2.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAREF<='+chr(39)+DateEdit2.Text+chr(39));
  end
else if RG_TPPESQ.ItemIndex=1 then
  begin
  if trim(DateEdit1.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAPREV>='+chr(39)+DateEdit1.Text+chr(39));
  if trim(DateEdit1.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAPREV<='+chr(39)+DateEdit2.Text+chr(39));
  end
else if RG_TPPESQ.ItemIndex=2 then
  begin
  if trim(DateEdit1.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAREAL>='+chr(39)+DateEdit1.Text+chr(39));
  if trim(DateEdit2.Text)<>'/  /' then
    Query1.SQL.Add(' and DATAREAL<='+chr(39)+DateEdit2.Text+chr(39));
  end;
if pTipo=0 then
  begin
  Query1.SQL.Add(' and CODDEP>0 ');
  Query1.SQL.Add(' GROUP BY CODDEP, NOMDEP) ');
  end
else
  begin
  Query1.SQL.Add(' and CODCC>0 ');  
  Query1.SQL.Add(' GROUP BY CODCC, NOMCCU) ');
  end;
Try
  Query1.Open;
except
  fmensagem('Erro ao processar arquivo!',0,['0'],0);
  Query1.Sql.SaveToFile(SALVA_NOME('C:\SGE\ERROSQL','EX'));
  end;
end;

procedure TFrm_Graf_Dep.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
  begin
  if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
    begin
    lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    codbco.text := '';
    codbco.SetFocus;
    end
  else
    begin
    fmensagem('Banco não Cadastrado!',0,['0'],0);
    codbco.text := '';
    CODBCO.SetFocus;
    end;
  end;

end;

procedure TFrm_Graf_Dep.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Graf_Dep.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);


end;

procedure TFrm_Graf_Dep.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);


end;

procedure TFrm_Graf_Dep.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);


end;

procedure TFrm_Graf_Dep.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
  begin
  if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
    begin
    lbx_coddep.Items.Add(CODDEP.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
    CODDEP.text := '';
    CODDEP.SetFocus;
    end
  else
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    CODDEP.text := '';
    CODDEP.SetFocus;
    end;
  end;
end;

procedure TFrm_Graf_Dep.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_RcPReal','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_Graf_Dep.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
    begin
    lbx_codccu.Items.Add(CODCCU.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
    CODCCU.text := '';
    CODCCU.SetFocus;
    end
  else
    begin
    fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
    CODCCU.text := '';
    CODCCU.SetFocus;
    end;
  end;
end;

procedure TFrm_Graf_Dep.sbn_codccuClick(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_rcprel','');
if trim(codccu.Text)<>'' then
   CODCCUExit(self);
end;

procedure TFrm_Graf_Dep.FormCreate(Sender: TObject);
begin
DateEdit1.Date:=Now-30;
DateEdit2.Date:=Now;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Graf_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

end;

procedure TFrm_Graf_Dep.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Graf_Dep.btn_ImprimirClick(Sender: TObject);
begin
if SaveDialog1.Execute then
  begin
  Departamentos.SaveToBitmapFile(Pchar(SaveDialog1.FileName));
  ShowMessage('Arquivo salvo com exito!!!');
  end;
end;

procedure TFrm_Graf_Dep.FormActivate(Sender: TObject);
begin
Departamentos.Title.Text.Clear;
if pTipo=0 then
  begin
  Departamentos.Title.Text.Add('Relatorio Grafico - Departamento');
  Frm_Graf_Dep.Caption:='Relatorio Grafico - Departamento';
  end
else
  begin
  Departamentos.Title.Text.Add('Relatorio Grafico - Centro de Custo');
  Frm_Graf_Dep.Caption:='Relatorio Grafico - Centro de Custo';
  end;
end;

end.
