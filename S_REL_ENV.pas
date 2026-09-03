unit S_REL_ENV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, Buttons, RLReport, StdCtrls,
  DB, DBTables,COMobj,s_lerarq_geral;

type
  Tfrm_rel_env = class(TForm)
    PC1: TPageControl;
    ts_filtros: TTabSheet;
    ts_rel: TTabSheet;
    Label1: TLabel;
    edt_prod: TEdit;
    List_prod: TListBox;
    List_env: TListBox;
    edt_env: TEdit;
    Label2: TLabel;
    cb_prod: TCheckBox;
    cb_env: TCheckBox;
    ts_filtros_sec: TTabSheet;
    RLReport1: TRLReport;
    sbt_Buscar: TSpeedButton;
    sbt_expexcel: TSpeedButton;
    sbt_imprimir: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    DBGrid1: TDBGrid;
    Qr1: TQuery;
    Qr1CODPRO: TFloatField;
    Qr1CODMAT: TFloatField;
    Qr1QUANT: TFloatField;
    ds1: TDataSource;
    Qr1nompro: TStringField;
    Qr1nommat: TStringField;
    RLBand1: TRLBand;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    rl_produto: TRLLabel;
    rl_cod: TRLLabel;
    rl_descricao: TRLLabel;
    rl_qtd: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    procedure Timer1Timer(Sender: TObject);
    procedure sbt_expexcelClick(Sender: TObject);
    procedure Qr1CalcFields(DataSet: TDataSet);
    procedure sbt_BuscarClick(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure sbt_imprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure List_prodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure List_envKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_prodKeyPress(Sender: TObject; var Key: Char);
    procedure edt_envKeyPress(Sender: TObject; var Key: Char);
    procedure edt_prodExit(Sender: TObject);
    procedure edt_envExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_env: Tfrm_rel_env;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure Tfrm_rel_env.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=DateToStr(date)+' - '+TimeToStr(time);
end;

procedure Tfrm_rel_env.sbt_expexcelClick(Sender: TObject);
begin
sbt_BuscarClick(self);
Excel_Exp_DbGrid(DBGrid1,Qr1,'SGE - Exportar Material de Envase');
end;

procedure Tfrm_rel_env.Qr1CalcFields(DataSet: TDataSet);
begin
Qr1nompro.AsString:=Campo_Calculado(dm1.Query1,'PDNOME','CADPRO','PDCODPRO',Qr1CODPRO.AsString);
Qr1nommat.AsString:=Campo_Calculado(dm1.Query1,'PDNOME','CADPRO','PDCODPRO',Qr1CODMAT.AsString);
end;

procedure Tfrm_rel_env.sbt_BuscarClick(Sender: TObject);
begin
Qr1.Close;
Qr1.SQL.Clear;
Qr1.SQL.Add(' select ');
Qr1.SQL.Add('    CPCODPRO as CODPRO, CPCODMAT as CODMAT,  CPQUANT as QUANT ');
Qr1.SQL.Add('from ');
Qr1.SQL.Add('    CADCOMP ');
Qr1.SQL.Add('where ');
Qr1.SQL.Add('    CPTIPO=1 ');
if List_prod.Items.Count>0 then
  begin
  if cb_prod.Checked=False then
    Qr1.SQL.Add(funcao_OR_ListBox(List_prod,'CPCODPRO',0))
  else
    Qr1.SQL.Add(funcao_OR_ListBox(List_prod,'CPCODPRO',1));
  end;
if List_env.Items.Count>0 then
  begin
  if cb_env.Checked=False then
    Qr1.SQL.Add(funcao_OR_ListBox(List_env,'CPCODMAT',0))
  else
    Qr1.SQL.Add(funcao_OR_ListBox(List_env,'CPCODMAT',1));
  end;
Qr1.SQL.Add('order by ');
Qr1.SQL.Add('    CPCODPRO, CPCODMAT');
try
  Qr1.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Qr1.SQL.SaveToFile(error);
  ShowMessage('Gerado Arquivo '+error);
  end;
end;

procedure Tfrm_rel_env.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_produto.Caption:='Produto Acabado...: '+Qr1CODPRO.AsString+' - '+Qr1nompro.AsString;
end;

procedure Tfrm_rel_env.sbt_imprimirClick(Sender: TObject);
begin
sbt_BuscarClick(self);
RLReport1.PreviewModal;
end;

procedure Tfrm_rel_env.FormActivate(Sender: TObject);
begin
PC1.TabIndex:=0;
if codusr<>1111 then
  begin
  ts_rel.TabVisible:=False;
  end
else
  begin
  ts_rel.TabVisible:=True;
  end;
end;

procedure Tfrm_rel_env.List_prodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  begin
  if List_prod.ItemIndex>=0 then
    begin
    List_prod.Items.Delete(List_prod.ItemIndex);
    end;
  end;
end;

procedure Tfrm_rel_env.List_envKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  begin
  if List_env.ItemIndex>=0 then
    begin
    List_env.Items.Delete(List_env.ItemIndex);
    end;
  end;
end;

procedure Tfrm_rel_env.edt_prodKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_prod.Text:=fChamaPro(2,'Frm_REL_ENV',key);
  edt_prodexit(self);
  edt_prod.setfocus;
  edt_prod.Clear;
  key:=#0;
  end;
end;

procedure Tfrm_rel_env.edt_envKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_env.Text:=fChamaPro(2,'Frm_REL_ENV',key);
  edt_envexit(self);
  edt_env.setfocus;
  edt_env.Clear;
  key:=#0;
  end;
end;

procedure Tfrm_rel_env.edt_prodExit(Sender: TObject);
begin
edt_prod.Text:=fdeixanum2(edt_prod.Text);
if edt_prod.Text<>'' then
  begin
  List_prod:=Coloca_ListBox('cadpro','pdcodpro',edt_prod.text,'pdnome',List_prod,DM1.Query3);
  edt_prod.setfocus;
  edt_prod.Clear;
  end;
end;

procedure Tfrm_rel_env.edt_envExit(Sender: TObject);
begin
edt_env.Text:=fdeixanum2(edt_env.Text);
if edt_env.Text<>'' then
  begin
  List_env:=Coloca_ListBox('cadpro','pdcodpro',edt_env.text,'pdnome',List_env,DM1.Query3);
  edt_env.setfocus;
  edt_env.Clear;
  end;
end;

procedure Tfrm_rel_env.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
