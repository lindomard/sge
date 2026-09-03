unit s_sac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, DB, StdCtrls, Mask, ExtCtrls, Menus,
  DBTables, S_SelEmp;

type
  Tfrm_sac = class(TForm)
    Panel1: TPanel;
    lbl_cliente: TLabel;
    edt_codcli: TEdit;
    lbl_data: TLabel;
    btn_filtrar: TButton;
    edt_nomcli: TEdit;
    mdt1: TMaskEdit;
    Label1: TLabel;
    mdt2: TMaskEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_ender: TEdit;
    edt_fone01: TMaskEdit;
    DataSource1: TDataSource;
    sb_mais: TSpeedButton;
    dbg_pedidos: TDBGrid;
    GroupBox2: TGroupBox;
    dbg_produtos: TDBGrid;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    GerarOS1: TMenuItem;
    Query1: TQuery;
    Query2: TQuery;
    edt_cgc: TEdit;
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure btn_filtrarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GerarOS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  frm_sac: Tfrm_sac;


implementation

uses Func, S_DM1, Func2, lerarq, S_ManOs;

{$R *.dfm}

procedure Tfrm_sac.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
  begin
  if flcadcli(1,0,edt_codcli.Text) then
    begin
    edt_nomcli.Text:=DM1.Tb_CliCRAZAO.AsString;
    edt_ender.Text :=DM1.Tb_CliCLOG.AsString
                    +' N.: '+DM1.Tb_CliCNUM.AsString
                    +' - '+DM1.Tb_CliCBAIRRO.AsString
                    +' - '+DM1.Tb_CliCCIDADE.AsString
                    +' - '+DM1.Tb_CliCUF.AsString;
    if DM1.Tb_CliCTIPOC.AsInteger=1 then
      begin
      edt_cgc.Text:=FormatFloat( '0##"."###"."###"-"##',DM1.Tb_CliCCPF.AsFloat);
      end
    else
      begin
      edt_cgc.Text:=FormatFloat( '0#"."###"."###"/"####"-"##',DM1.Tb_CliCCNPJ.AsFloat);
      end;
    edt_fone01.Text:=DM1.Tb_CliCFONE01.AsString;
    mdt1.SetFocus;
    end
  else
    begin
    fmensagem('Cliente não Cadastrado!',0,['0'],0);
    edt_CODCLI.text := '';
    edt_CODCLI.SetFocus;
    end;
  end;
end;

procedure Tfrm_sac.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_CODCLI.Text:=fChamaCli(0,'Frm_SAC',key);
  if trim(edt_CODCLI.Text)<>'' then
    edt_CODCLIExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure Tfrm_sac.btn_filtrarClick(Sender: TObject);
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select                                  ');
Query1.SQL.Add('   P2CODPRO AS CODPRO,                   ');
Query1.SQL.Add('   PDNOME AS NOME,                       ');
Query1.SQL.Add('   PDUND  AS UND,                        ');
Query1.SQL.Add('   PDMARCA AS MARCA,                     ');
Query1.SQL.Add('   max(P2COMPLEMENTO) AS MODELO,    ');
Query1.SQL.Add('   case                                  ');
Query1.SQL.Add('     when P1FORMACE = 1                  ');
Query1.SQL.Add('       then max(P2QTD)                   ');
Query1.SQL.Add('     when P1FORMACE <> 1                 ');
Query1.SQL.Add('       then sum(P2QTD)                   ');
Query1.SQL.Add('   end AS QUANTIDADE,                    ');
Query1.SQL.Add('   case                                  ');
Query1.SQL.Add('     when P1FORMACE = 1                  ');
Query1.SQL.Add('       then sum(P2PRECO)                 ');
Query1.SQL.Add('     when P1FORMACE <> 1                 ');
Query1.SQL.Add('       then max(P2PRECO)                 ');
Query1.SQL.Add('   end AS PREÇO,                         ');
Query1.SQL.Add('   case                                  ');
Query1.SQL.Add('     when P1FORMACE = 1                  ');
Query1.SQL.Add('       then sum(P2PCOTAB)                ');
Query1.SQL.Add('     when P1FORMACE <> 1                 ');
Query1.SQL.Add('       then max(P2PCOTAB)                ');
Query1.SQL.Add('   end AS PRECO_TABELA,                  ');
Query1.SQL.Add('   max(P1CHAVE) AS CHAVE                 ');
Query1.SQL.Add(' from cadp01, cadp02, cadpro             ');
Query1.SQL.Add(' where p1chave=p2chave                   ');
Query1.SQL.Add(' and p2codpro=pdcodpro                   ');
Query1.SQL.Add(' and p1codcli='+edt_codcli.Text);
Query1.SQL.Add(' and p1status=2 and p1emidoc=1      ');
Query1.SQL.Add(iif(trim(la_empresas)='','',' and '+la_Empresas));

if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
  begin
  Query1.SQL.Add(' and '+fla_sqlmp('CCODEMP',Form_SelEmp.CLB_EMPRESAS));
  end;

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
  begin
  Query1.SQL.Add(' and '+fla_sqlmp('PDCODEMP',Form_SelEmp.CLB_EMPRESAS));
  end;

if trim(mdt1.Text)<>'/  /' then
  Query1.SQL.Add(' and P1DATANF>='+chr(39)+mdt1.Text+chr(39));

if trim(mdt2.Text)<>'/  /' then
  Query1.SQL.Add(' and P1DATANF<='+chr(39)+mdt2.Text+chr(39));

Query1.SQL.Add(' group by P2CODPRO, PDNOME, P1FORMACE, PDUND, PDMARCA ');
Query1.SQL.Add(' order by PDNOME ');
try
  Query1.Open;
except
  Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
  end;
end;

procedure Tfrm_sac.DataSource1DataChange(Sender: TObject; Field: TField);
begin
if not Query1.IsEmpty then
  begin
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add(' select ');
  Query2.SQL.Add('  P1CHAVE as N_Pedido, ');
  Query2.SQL.Add('  min(P1CODEMP) as EMPRESA, ');
  Query2.SQL.Add('  max(P1DATAP) as DATA_Pedido, ');
  Query2.SQL.Add('  max(P1LOTSEQ) as LoteSeq, ');
  Query2.SQL.Add('  max(P1DATANF) as DATA_NF, ');
  Query2.SQL.Add('  max(P1NUMNF) as N_NF, ');
  Query2.SQL.Add('  max(P1OBS1) as Obs1_Pedido, ');
  Query2.SQL.Add('  max(P1OBS2) as Obs2_Pedido, ');
  Query2.SQL.Add('  max(P1OBS3) as Obs3_Pedido, ');
  Query2.SQL.Add('  sum(P1TOTALB) as TOTAL_BRUTO, ');
  Query2.SQL.Add('  sum(P1TOTALL) as TOTAL_LIQUIDO, ');
  Query2.SQL.Add('  sum(P1TOTDES) as DESC_Pedido ');
  Query2.SQL.Add(' from cadp01 where p1codcli='+edt_codcli.Text);
  Query2.SQL.Add(' and p1chave='+Query1.FieldByName('CHAVE').AsString);
  Query2.SQL.Add(' and p1status=2 and p1emidoc=1 ');
  Query2.SQL.Add(iif(trim(la_empresas)='','',' and '+la_Empresas));
  Query2.SQL.Add(' group by P1CHAVE ');
  Query2.SQL.Add(' order by max(P1DATANF) ');
  try
    Query2.Open;
  except
    Query2.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
    end;
  end;
end;

procedure Tfrm_sac.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure Tfrm_sac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(Form_SelEmp);
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure Tfrm_sac.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_sac.GerarOS1Click(Sender: TObject);
begin
Application.createform(TFrm_ManOs,Frm_ManOs);
with Frm_ManOs do
  begin
  BBLIMPAR.Click;
  BBINCLUIR.Enabled  :=False;
  BBLOCALIZAR.Enabled:=False;
  BBALTERAR.Enabled  :=False;
  BBEXCLUIR.Enabled  :=False;
  BBGRAVAR.Enabled   :=True;
  BBIMPRIMIR.Enabled :=False;
  BBFATURAR.Enabled  :=False;
  TabSheet5.Enabled  :=True;
  TabSheet6.Enabled  :=True;
  TabSheet7.Enabled  :=True;
  GroupBox1.Enabled  :=True;
  GroupBox2.Enabled  :=True;
  GroupBox3.Enabled  :=True;
  GroupBox4.Enabled  :=True;
  MDATA.Text    :=FormatDatetime(fdt2,date);
  PageControl2.ActivePageIndex:=0;
  PageControl1.ActivePageIndex:=0;
  mManOs_Oper   :=0;
  CODCLI.Text   :=edt_codcli.Text;
  CODCLIExit(Self);
  CODVEN.Text   :=FloatToStr(log_codven);
  STGOS2.Cells[00,01]:=Query1.FieldByName('CODPRO').AsString;
  STGOS2.Cells[01,01]:=Query1.FieldByName('NOME').AsString;
  STGOS2.Cells[02,01]:=Query1.FieldByName('UND').AsString;
  STGOS2.Cells[03,01]:=Query1.FieldByName('MODELO').AsString;
  STGOS2.Cells[04,01]:=Query1.FieldByName('MARCA').AsString;
  STGOS2.Cells[05,01]:='';
  STGOS2.Cells[06,01]:='';
  STGOS2.Cells[07,01]:='';
  STGOS2.Cells[08,01]:='';
  ShowModal;
  end;
FreeAndNil(Frm_ManOs);
end;

end.
