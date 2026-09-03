unit s_pedpen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, ComCtrls, S_SelEmp, RLReport, Buttons, DB,
  DBTables, Grids, DBGrids,s_lerarq_geral;

type
  TFrm_pedpen = class(TForm)
    PageControl1: TPageControl;
    ts_filtro1: TTabSheet;
    ts_relatorio: TTabSheet;
    lbl_cli: TLabel;
    lbl_prod: TLabel;
    lbl_uf: TLabel;
    lbl_cid: TLabel;
    lb_ped: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_cli: TEdit;
    edt_prod: TEdit;
    edt_cid: TEdit;
    edt_uf: TEdit;
    lb_cli: TListBox;
    lb_prod: TListBox;
    lb_cid: TListBox;
    lb_uf: TListBox;
    cb_omitir_cli: TCheckBox;
    cb_omitir_prod: TCheckBox;
    cb_omitir_cid: TCheckBox;
    cb_omitir_uf: TCheckBox;
    dtinicial: TDateEdit;
    dtfinal: TDateEdit;
    RLReport1: TRLReport;
    edt_chaveini: TEdit;
    edt_chavefin: TEdit;
    Label2: TLabel;
    bit_visu: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1P2CODEMP: TFloatField;
    Query1P2CHAVE: TFloatField;
    Query1P2CODPRO: TFloatField;
    Query1PDNOME: TStringField;
    Query1QTD: TFloatField;
    RLBand1: TRLBand;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    Query1CLIENTE: TStringField;
    rl_chave: TRLLabel;
    rl_codpro: TRLLabel;
    rl_nome: TRLLabel;
    rl_qtd: TRLLabel;
    rl_dtemis: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Query1P1DATANF: TDateTimeField;
    Label1: TLabel;
    cb_tpdata: TComboBox;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    MEMO: TRLMemo;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel5: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_cliExit(Sender: TObject);
    procedure edt_prodExit(Sender: TObject);
    procedure edt_prodKeyPress(Sender: TObject; var Key: Char);
    procedure cb_omitir_prodMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edt_prodMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cb_omitir_cliMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lb_prodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lb_cliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cliMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edt_ufExit(Sender: TObject);
    procedure edt_ufMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lb_ufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bit_sairClick(Sender: TObject);
    procedure edt_ufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bit_visuClick(Sender: TObject);
    procedure edt_cidExit(Sender: TObject);
    procedure edt_cidKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cidMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cb_omitir_cidMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lb_cidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_omitir_ufMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pedpen: TFrm_pedpen;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, Func, Func2, lerarq, Math;

{$R *.dfm}

procedure TFrm_pedpen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;
end;

procedure TFrm_pedpen.edt_cliExit(Sender: TObject);
begin
edt_cli.Text:=fdeixanum2(edt_cli.Text);
if ValFloat(edt_cli.Text)<>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',trim(edt_cli.Text)) then
      begin
      lb_cli.Items.Add(FormatFloat('0000000',StrToFloat(edt_cli.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      edt_cli.text := '';
      edt_cli.SetFocus;
      end
   else
      begin
      fmensagem('CLIENTE NÃO CADASTRADO!',0,['0'],0);
      edt_cli.SetFocus;
      end;
   end;
end;

procedure TFrm_pedpen.edt_prodExit(Sender: TObject);
begin
edt_prod.Text:=fdeixanum2(edt_prod.Text);
  if Trim(edt_prod.Text)<>'' then
   begin
   if not flcadpro(1,0,0,edt_prod.Text) then
      begin
      fmensagem('PRODUTO NÃO CADASTRADO!',0,['0'],0);
      edt_prod.setfocus;
      end
   else
      begin
      lb_prod.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      edt_prod.text := '';
      edt_prod.setfocus;
      end;
   end;
end;

procedure TFrm_pedpen.edt_prodKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_prod.Text:=fChamaPro(0,'Frm_pedpen',key);
   key:=#0;
   edt_prodExit(Self);
   end;
end;

procedure TFrm_pedpen.cb_omitir_prodMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   cb_omitir_prod.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_pedpen.edt_prodMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   edt_prod.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_pedpen.cb_omitir_cliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   cb_omitir_cli.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_pedpen.lb_prodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lb_prod.ItemIndex>=0 then
      lb_prod.Items.Delete(lb_prod.ItemIndex);
end;

procedure TFrm_pedpen.lb_cliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lb_cli.ItemIndex>=0 then
      lb_cli.Items.Delete(lb_cli.ItemIndex);

end;

procedure TFrm_pedpen.edt_cliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_cli.Text:=fChamaCli(0,'Frm_pedpen',key);
if trim(edt_cli.Text)<>'' then
   edt_cliExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_pedpen.edt_cliMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  edt_cli.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_pedpen.edt_ufExit(Sender: TObject);
begin
if Trim(edt_uf.Text)<>'' then
   begin
   if not flcaduf(0,0,0,edt_uf.Text) then
      begin
      fmensagem('ESTADO NÃO CADASTRADO!',0,['0'],0);
      edt_uf.SetFocus;
      end
   else
      lb_uf.Items.Add(DM1.Tb_UFPUF.AsString+'-'+DM1.Tb_UFPNOM.AsString);
      edt_uf.text := '';
      edt_uf.SetFocus;
   end;

end;

procedure TFrm_pedpen.edt_ufMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   edt_uf.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_pedpen.lb_ufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lb_uf.ItemIndex>=0 then
      lb_uf.Items.Delete(lb_uf.ItemIndex);
end;

procedure TFrm_pedpen.bit_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_pedpen.edt_ufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=114 then
   begin
   lb_uf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   edt_uf.text := '';
   edt_uf.SetFocus;

   end;
end;

procedure TFrm_pedpen.bit_visuClick(Sender: TObject);
var
  mdata: String;
  mfiltro: String;
begin
if cb_tpdata.itemindex=0 then
  mdata:='P1DATANF'
else
  mdata:='P1DATAP';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
Query1.Close;
query1.SQL.clear;
query1.SQL.Add(' select P2CODEMP, P2CHAVE, P1DATANF, P2CODPRO, PDNOME, (nvl(P2QTD,0)-nvl(P2QTDDEV,0)) as QTD, CCODCLI||'+QuotedStr(' - ')+'||CRAZAO  AS CLIENTE');
query1.SQL.Add(' from CADP02, CADP01, CADPRO, CADCLI ');
query1.SQL.Add(' where P1TIPO=11 and (nvl(P2QTD,0)-nvl(P2QTDDEV,0))>0 and CCODCLI=P1CODCLI ');
query1.SQL.Add(' and P1CHAVE=P2CHAVE and P1LOTSEQ=P2LOTSEQ and P1ORDEM=P2ORDEM ');
query1.SQL.Add(' and P2CODPRO=PDCODPRO and P1CODEMP=P2CODEMP and P1STATUS<9 and P1EMIDOC>0');
if trim(la_Empresas)<>'' then
  query1.sql.Add(' and '+la_Empresas);                                                  
if ValFloat(edt_chaveini.Text)>0 then
  query1.SQL.Add(' and P1CHAVE>='+edt_chaveini.Text);
if ValFloat(edt_chavefin.Text)>0 then
  query1.SQL.Add(' and P1CHAVE<='+edt_chavefin.Text);

mfiltro:=fItensListBox(0,lb_cli,cb_omitir_cli);
if trim(mfiltro)<>'' then
  Query1.SQL.Add(' and P1CODCLI '+mfiltro);

mfiltro:=fItensListBox(0,lb_prod,cb_omitir_prod);
if trim(mfiltro)<>'' then
  Query1.SQL.Add(' and PDCODPRO '+mfiltro);

mfiltro:=fItensListBox(0,lb_cid,cb_omitir_cid);
if trim(mfiltro)<>'' then
  Query1.SQL.Add(' and CCODLOC '+mfiltro);

mfiltro:=fItensListBox(1,lb_uf,CB_OMITIR_UF);
if trim(mfiltro)<>'' then
  begin
  Query1.SQL.Add(' and CUF '+mfiltro);
  end;


if trim(dtinicial.text)<>'/  /' then
  Query1.SQL.Add(' and '+mdata+'>='+QuotedStr(dtinicial.text));
if trim(dtfinal.text)<>'/  /' then
  Query1.SQL.Add(' and '+mdata+'<='+QuotedStr(dtfinal.text));
query1.SQL.Add(' order by CRAZAO, P2CHAVE, P2CODPRO');
query1.Open;
if Query1.IsEmpty then
  begin
  fmensagem('NADA A SER IMPRESSO!',0,['0'],0);
  Exit;
  end;
RLReport1.PreviewModal;
end;

procedure TFrm_pedpen.edt_cidExit(Sender: TObject);
begin
edt_cid.Text:=fdeixanum2(edt_cid.Text);
if Trim(edt_cid.Text)<>'' then
  begin
  if not flcadloc(1,0,edt_cid.Text) then
    begin
    fmensagem('CIDADE NÃO CADASTRADA!',0,['0'],0);
    edt_cid.setfocus;
    end
  else
    begin
    lb_cid.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_LocLCODLOC.ASSTRING))
                                 +' - '+DM1.Tb_LocLNOME.AsString);
    edt_cid.text := '';
    edt_cid.setfocus;
    end;
  end;
end;

procedure TFrm_pedpen.edt_cidKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_cid.Text:=fChamaLoc(0,'Frm_pedpen',key);
   key:=#0;
   edt_cidExit(Self);
   end;

end;

procedure TFrm_pedpen.edt_cidMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   edt_cid.Hint := 'Informe Codigo da Cidade ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_pedpen.cb_omitir_cidMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  cb_omitir_cid.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_pedpen.lb_cidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lb_cid.ItemIndex>=0 then
      lb_cid.Items.Delete(lb_cid.ItemIndex);

end;

procedure TFrm_pedpen.cb_omitir_ufMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  cb_omitir_uf.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_pedpen.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp,Form_SelEmp);
ts_relatorio.TabVisible:=false;
end;

procedure TFrm_pedpen.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  x:Integer;
  temp: String;
begin
if cb_tpdata.ItemIndex=0 then
  temp:=' POR DATA DE NF.'
else
  temp:=' POR DATA DE PEDIDO.';
MEMO.Lines.Clear;

if lb_cli.Items.Count>0 then
  begin
  MEMO.Lines.Add('RELACAO DE CLIENTES '+IIF(cb_omitir_cli.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_cli.Items.Count - 1 do
    begin
    MEMO.Lines.Add(trim(lb_cli.Items[x]));
    end;
  end;

if lb_prod.items.count>0 then
  begin
  MEMO.Lines.Add('RELACAO DE PRODUTOS'+IIF(cb_omitir_prod.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_prod.items.Count -1 do
    begin
    MEMO.Lines.Add(trim(lb_prod.items[x]));
    end;
  end;

if lb_cid.items.Count>0 then
  begin
  MEMO.Lines.Add('RELACAO DE CIDADE'+IIF(cb_omitir_cid.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_cid.items.Count -1 do
    begin
    MEMO.Lines.Add(trim(lb_cid.items[x]));
    end;
  end;

if lb_uf.Items.Count>0 then
  begin
  MEMO.Lines.Add('RELACAO DE ESTADO'+IIF(cb_omitir_uf.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_uf.items.Count -1 do
    begin
    MEMO.Lines.Add(trim(lb_uf.items[x]));
    end;
  end;

if (trim(dtinicial.Text)<>'/  /') and (trim(dtfinal.Text)<>'/  /') then
  begin
  MEMO.Lines.Add('PERIODO DE '+dtinicial.Text+' A ' +dtfinal.Text+' '+temp);
  end
else if trim(dtinicial.Text)<>'/  /' then
  begin
  MEMO.Lines.Add('APARTIR DE '+dtinicial.Text+' '+temp);
  end
else if trim(dtfinal.text)<>'/  /' then
  begin
  MEMO.LINES.Add('ATE '+dtfinal.text+' '+temp);
  end
else
  begin
  MEMO.Lines.Add('SEM PERIODO SELECIONADO');
  end;

if (ValFloat(edt_chaveini.Text)>0) and (ValFloat(edt_chavefin.Text)>0) then
  begin
  MEMO.Lines.Add('CHAVE DE '+edt_chaveini.Text+' A ' +edt_chavefin.Text);
  end
else if ValFloat(edt_chaveini.Text)>0 then
  begin
  MEMO.Lines.Add('APARTIR DA CHAVE '+edt_chaveini.Text);
  end
else if ValFloat(edt_chavefin.text)>0 then
  begin
  MEMO.LINES.Add('ATE A CHAVE '+edt_chavefin.text);
  end
else
  begin
  MEMO.Lines.Add('NENHUMA CHAVE SELECIONADA ');
  end;

if MEMO.Lines.Count = 0 then
  RLBand4.Visible:=False
else
  RLBand4.Visible:=True;
end;

procedure TFrm_pedpen.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:= pBanner_Intersys;
end;

procedure TFrm_pedpen.FormKeyDown(Sender: TObject; var Key: Word;
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
