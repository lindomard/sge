unit s_estmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons,
  RLReport, CheckLst;

type
  Tfrm_estmin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    cb_navise: TCheckBox;
    Query1CODIGO: TFloatField;
    Query1NOME: TStringField;
    Query1ESTMIN: TFloatField;
    Query1ESTATUAL: TFloatField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rl_codigo: TRLLabel;
    rl_nome: TRLLabel;
    rl_est_atu: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    rl_estmin: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    bb_configuracao: TButton;
    pnl_conf: TPanel;
    bb_gravar: TButton;
    CLFNivel: TCheckListBox;
    Label89: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure bb_configuracaoClick(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_estmin: Tfrm_estmin;

implementation

uses S_DM1, S_DM4, lerarq, Func;

{$R *.dfm}

procedure Tfrm_estmin.FormActivate(Sender: TObject);
var
  n: integer;
  sql: String;
  sqls:String;
begin
if flfilpad(codusr,'_ESTMIN','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATPREV',[]) then
      CLFNivel.Checked[0]:=IIF(DM4.Tb_FilPad2FPVALOR.AsString='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATPRIMA',[]) then
      CLFNivel.Checked[1]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMBALAGEM',[]) then
      CLFNivel.Checked[2]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRODPROD',[]) then
      CLFNivel.Checked[3]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ACABADO',[]) then
      CLFNivel.Checked[4]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SUBPRO',[]) then
      CLFNivel.Checked[5]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ACES',[]) then
      CLFNivel.Checked[6]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_USOCONSUMO',[]) then
      CLFNivel.Checked[7]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMOBILIZADO',[]) then
      CLFNivel.Checked[8]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SERVICO',[]) then
      CLFNivel.Checked[9]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INSUMOS',[]) then
      CLFNivel.Checked[10]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_OUTROS',[]) then
      CLFNivel.Checked[11]:=IIF(DM4.Tb_FilPad2FPVALOR.Value='true',True,False);
   end;
sql:='';
sqls:='';
if (CLFNivel.Checked[0]) and (CLFNivel.Checked[1]) and
   (CLFNivel.Checked[2]) and (CLFNivel.Checked[3]) and
   (CLFNivel.Checked[4]) and (CLFNivel.Checked[5]) and
   (CLFNivel.Checked[6]) and (CLFNivel.Checked[6]) and
   (CLFNivel.Checked[7]) and (CLFNivel.Checked[8]) and
   (CLFNivel.Checked[9]) and (CLFNivel.Checked[10]) and
   (CLFNivel.Checked[11]) then

   sql:=''
else
  begin
  sql:='';
  sqls:='';
  for n:=0 to 11 do
    begin
    if CLFNivel.Checked[n] then
      begin
      sql:=sql+sqls+'PDNIVEL='+inttostr(n);
      sqls:=' or ';
      end;
    end;
  end;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select pdcodpro as Codigo, pdnome as Nome, pdestmin as EstMin, pdsaldo as EstAtual ');
Query1.SQL.Add(' from cadpro ');
Query1.SQL.Add(' where pdsaldo<=pdestmin '+codemp2('pdcodemp',codemp));
Query1.SQL.Add(' and pdstatus < 8 and pdestmin>0');
Query1.SQL.Add(IIF(sql<>'','and ('+sql+')',' '));
Query1.SQL.Add(' order by pdnome ');
Query1.Open;
end;

procedure Tfrm_estmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if CodUsr<>1111 then
  begin
  flcadusr(1,0,IntToStr(CodUsr));
  dm4.Tb_Usr.Edit;
  dm4.Tb_UsrUSR_DATMOS.AsDateTime:=Now;
  if cb_navise.Checked=True then
    begin
    dm4.Tb_UsrUSR_DATHOR.AsDateTime:=Now;
    end;
  dm4.Tb_Usr.Post;
  end;
end;

procedure Tfrm_estmin.BitBtn1Click(Sender: TObject);
begin
RLReport1.PreviewModal;
end;

procedure Tfrm_estmin.bb_gravarClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_ESTMIN','');
fGravaPadroes(codusr,'CB_MATPREV'     ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[0],'true','false'));
fGravaPadroes(codusr,'CB_MATPRIMA'    ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[1],'true','false'));
fGravaPadroes(codusr,'CB_EMBALAGEM'   ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[2],'true','false'));
fGravaPadroes(codusr,'CB_PRODPROD'    ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[3],'true','false'));
fGravaPadroes(codusr,'CB_ACABADO'     ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[4],'true','false'));
fGravaPadroes(codusr,'CB_SUBPRO'      ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[5],'true','false'));
fGravaPadroes(codusr,'CB_ACES'        ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[6],'true','false'));
fGravaPadroes(codusr,'CB_USOCONSUMO'  ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[7],'true','false'));
fGravaPadroes(codusr,'CB_IMOBILIZADO' ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[8],'true','false'));
fGravaPadroes(codusr,'CB_SERVICO'     ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[9],'true','false'));
fGravaPadroes(codusr,'CB_INSUMOS'     ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[10],'true','false'));
fGravaPadroes(codusr,'CB_OUTROS'      ,'checked'         ,'_ESTMIN',iif(CLFNivel.Checked[11],'true','false'));
pnl_conf.Visible:=False;
end;

procedure Tfrm_estmin.bb_configuracaoClick(Sender: TObject);
begin
pnl_conf.Visible:=True;
end;

procedure Tfrm_estmin.GroupBox3Exit(Sender: TObject);
begin
bb_gravarClick(self);
end;

procedure Tfrm_estmin.FormCreate(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLFNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLFNivel.Items.Add(nivel[n]);
  end;
end;

procedure Tfrm_estmin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F7 then
  pnl_conf.Visible:= not pnl_conf.Visible;
end;

end.
