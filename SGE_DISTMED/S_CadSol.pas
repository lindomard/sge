unit S_CadSol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl,
  Grids, DBGrids, DB, DBClient, RxDBComb, Menus;

type
  TFrm_CadSol = class(TForm)
    pnlCab: TPanel;
    btnPesquisar: TButton;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    pnlCabCorpo: TPanel;
    lblChave: TLabel;
    lblSolicitante: TLabel;
    lblDataSol: TLabel;
    dbeDataSol: TDBDateEdit;
    dbeChave: TDBEdit;
    dbeCodSol: TDBEdit;
    dbeNomSol: TDBEdit;
    lblObservacao: TLabel;
    dbeCadSol: TDBMemo;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Timer1: TTimer;
    pnlCabItem: TPanel;
    dbgItens: TDBGrid;
    edtCodPro: TEdit;
    edtNomPro: TEdit;
    edtQtd: TEdit;
    lblCodPro: TLabel;
    lblNome: TLabel;
    lblQtd: TLabel;
    lblQtdReal: TLabel;
    edtQtdReal: TEdit;
    lblQtdPen: TLabel;
    edtQtdPen: TEdit;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Alterar1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure edtCodProExit(Sender: TObject);
    procedure edtCodProKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodSolExit(Sender: TObject);
    procedure dbeCodSolKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtuBotao(Op: Boolean);
    procedure Inicializa;
  public
    { Public declarations }
  end;

var
  Frm_CadSol: TFrm_CadSol;
  pNomeForm : String = 'Cadastro de Solicitações';
implementation

uses lerarq, Func2, Func, S_Pro, S_DM1, s_lerarq_geral, S_DM6, S_DM2,
  S_CadSol_Pesq;

{$R *.dfm}

procedure TFrm_CadSol.AtuBotao(Op: Boolean);
begin
btnPesquisar.Enabled := Op;
btnIncluir.Enabled   := Op;
btnAlterar.Enabled   := Op;
btnCancelar.Enabled  := not Op;
btnGravar.Enabled    := not Op;
btnExcluir.Enabled   := Op;
btnSair.Enabled      := Op;
if op then
  dbgItens.PopupMenu := nil
else
  dbgItens.PopupMenu :=PopupMenu1;
end;

procedure TFrm_CadSol.Inicializa;
begin
DM2.Tb_Sol1.Close;
DM2.TB_SOL1.SQL.Clear;
DM2.Tb_Sol1.SQL.Add('select * from CADSOL1 where CS1CHAVE = -1');
DM2.Tb_Sol1.Open;

DM2.Tb_Sol2.Close;
DM2.TB_SOL2.SQL.Clear;
DM2.Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = -1');
DM2.Tb_Sol2.Open;

flcadpro_dpto(0,1,'');
while not (DM6.Tb_Prod_Dep.Eof) do
  begin
  RxDBComboBox1.Items.Add(DM6.Tb_Prod_DepPRODEP_NOME.AsString);
  RxDBComboBox1.Values.Add(DM6.Tb_Prod_DepPRODEP_CODDEP.AsString);
  DM6.Tb_Prod_Dep.next;
  end;
end;


procedure TFrm_CadSol.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_CadSol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

procedure TFrm_CadSol.FormActivate(Sender: TObject);
begin
AtuBotao(True);
Caption := pNomeForm;
end;

procedure TFrm_CadSol.btnCancelarClick(Sender: TObject);
begin
AtuBotao(True);
Caption := pNomeForm;
DM2.Tb_Sol1.Cancel;
Inicializa;
end;

procedure TFrm_CadSol.btnGravarClick(Sender: TObject);
begin
AtuBotao(True);
DM2.Tb_Sol1.Post;
Caption := pNomeForm;
end;

procedure TFrm_CadSol.btnIncluirClick(Sender: TObject);
begin

AtuBotao(False);
Caption := pNomeForm +' - [Incluir] ';

DM2.Tb_Sol1.Close;
DM2.TB_SOL1.SQL.Clear;
DM2.Tb_Sol1.SQL.Add('select * from CADSOL1 where CS1CHAVE = -1');
DM2.Tb_Sol1.Open;

DM2.Tb_Sol2.Close;
DM2.TB_SOL2.SQL.Clear;
DM2.Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = -1');
DM2.Tb_Sol2.Open;

DM2.Tb_Sol1.Append;
DM2.Tb_Sol1CS1DATA.AsDateTime:=Now;

dbeCodSol.SetFocus;
end;

procedure TFrm_CadSol.btnAlterarClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select sum(CS2QTDREAL) from CADSOL2 where CS2CHAVE = '+DM2.Tb_Sol1CS1CHAVE.AsString);
DM1.Query1.Open;
if ((DM1.Query1.Fields[0].AsFloat>0) or (DM2.Tb_Sol1CS1STATUS.AsInteger>0)) then
  begin
  ShowMessage('Pedido já confirmado, ou em baixas parciais!');
  end
else
  begin
  DM2.Tb_Sol1.Edit;
  dbgItens.Enabled:=True;
  AtuBotao(False);
  Caption := pNomeForm +' - [Alterar] ';
  end;

end;

procedure TFrm_CadSol.btnPesquisarClick(Sender: TObject);
begin
dbgItens.Enabled:=True;
Caption := pNomeForm +' - [Pesquisar] ';
Application.CreateForm(TFrm_CadSol_Pesq,Frm_CadSol_Pesq);
Frm_CadSol_Pesq.ShowModal;
if not Frm_CadSol_Pesq.Tb_Sol1.IsEmpty then
  begin
  DM2.Tb_Sol1.Close;
  DM2.TB_SOL1.SQL.Clear;
  DM2.Tb_Sol1.SQL.Add('select * from CADSOL1 where CS1CHAVE = '+Frm_CadSol_Pesq.Tb_Sol1CS1CHAVE.AsString);
  DM2.Tb_Sol1.Open;

  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('select sum(CS2QTDREAL) from CADSOL2 where CS2CHAVE = '+Frm_CadSol_Pesq.Tb_Sol1CS1CHAVE.AsString);
  DM1.Query1.Open;
  if ((DM1.Query1.Fields[0].AsFloat>0) or (DM2.Tb_Sol1CS1STATUS.AsInteger>0)) then
    dbgItens.Enabled:=False
  else
    dbgItens.Enabled:=True;

  DM2.Tb_Sol2.Close;
  DM2.TB_SOL2.SQL.Clear;
  DM2.Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = '+Frm_CadSol_Pesq.Tb_Sol1CS1CHAVE.AsString);
  DM2.Tb_Sol2.Open;
  end;
FreeAndNil(Frm_CadSol_Pesq);
end;

procedure TFrm_CadSol.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=FormatDateTime('dd/mm/yyyy',Now);
StatusBar1.Panels[1].Text:=FormatDateTime('hh:mm:ss',Now);
end;

procedure TFrm_CadSol.FormCreate(Sender: TObject);
begin
Inicializa;
end;

procedure TFrm_CadSol.edtQtdExit(Sender: TObject);
begin
if (ValFloat(edtCodPro.Text)>0) and (ValFloat(edtQtd.Text)>0) then
  begin
  if DM2.Tb_Sol1CS1CHAVE.IsNull then
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('select (max(CS1CHAVE)) as total from CADSOL1 where 1=1');
    DM1.Query2.SQL.Add(codemp2('CS1CODEMP',codemp));
    try
      DM1.Query2.Open;
    except
      end;
    if DM1.Query2.IsEmpty then
      DM2.Tb_Sol1CS1CHAVE.AsInteger := 1
    else
      DM2.Tb_Sol1CS1CHAVE.AsInteger :=DM1.Query2.FieldByName('total').AsInteger+1;
    DM2.Tb_Sol1CS1CODEMP.AsInteger:=codemp;
    DM2.Tb_Sol1CS1LOTSEQ.AsInteger:=1;
    DM2.Tb_Sol1CS1STATUS.AsInteger:=0;
    DM2.Tb_Sol1.Post;
    DM2.Tb_Sol1.Edit;
    end;

  DM2.Tb_Sol2.Append;
  DM2.Tb_Sol2CS2CODEMP.AsInteger  := DM2.Tb_Sol1CS1CODEMP.AsInteger;
  DM2.Tb_Sol2CS2LOTSEQ.AsInteger  := DM2.Tb_Sol1CS1LOTSEQ.AsInteger;
  DM2.Tb_Sol2CS2CHAVE.AsInteger   := DM2.Tb_Sol1CS1CHAVE.AsInteger;
  DM2.Tb_Sol2CS2CODPRO.AsInteger  := StrToInt(edtCodPro.Text);
  DM2.Tb_Sol2CS2QTDPREV.AsFloat   := ValFloat(edtQtd.Text);
  DM2.Tb_Sol2CS2QTDREAL.AsFloat   := 0;
  DM2.Tb_Sol2.Post;
  edtCodPro.Clear;
  edtNomPro.Clear;
  edtQtd.Clear;
  edtQtdReal.Clear;
  edtQtdPen.Clear;
  edtCodPro.SetFocus;
  end;
end;

procedure TFrm_CadSol.edtCodProExit(Sender: TObject);
begin
edtCodPro.Text:=fdeixanum2(edtCodPro.Text);
edtCodPro.Text:=FloatToStr(fAchaCodigoOri(edtCodPro.Text));
if ValFloat(edtCodPro.Text)>0 then
  begin
  if not flcadpro(1,0,0,edtCodPro.Text) then
    begin
    fmensagem('Produto nao Cadastrado!',0,['0'],0);
    edtCodPro.SetFocus;
    end
  else
    edtNomPro.Text:=DM1.TB_PROPDNOME.AsString;
  end;
end;

procedure TFrm_CadSol.edtCodProKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edtCodPro.Text:=fChamaPro(0,'CadSol',key);
  key:=#0;
  edtCodProExit(Self);
  end;
end;

procedure TFrm_CadSol.dbeCodSolExit(Sender: TObject);
begin
if Trim(DM2.Tb_Sol1CS1CODSOL.AsString)<>'' then
  begin
  if not flqr1('NOMUSR','','CADUSR','N','CODUSR',DM2.Tb_Sol1CS1CODSOL.AsString) then
    begin
    if DM2.Tb_Sol1CS1CODSOL.AsInteger<>1111 then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      dbeCodSol.SetFocus;
      end;
    end;
  end;    
end;

procedure TFrm_CadSol.dbeCodSolKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  DM2.Tb_Sol1CS1CODSOL.AsString:=fChamaUsr(0,'frm_RCRec',Key);
  dbeCodSolExit(Self);
  key:=#0;
  end;
end;

procedure TFrm_CadSol.btnExcluirClick(Sender: TObject);
begin
if (DM2.Tb_Sol1CS1CHAVE.AsInteger>0) then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('select sum(CS2QTDREAL) from CADSOL2 where CS2CHAVE = '+DM2.Tb_Sol1CS1CHAVE.AsString);
  DM1.Query1.Open;
  if ((DM1.Query1.Fields[0].AsFloat>0) or (DM2.Tb_Sol1CS1STATUS.AsInteger=0)) then
    begin
    ShowMessage('Pedido já confirmado, ou em baixas parciais!');
    end
  else
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('delete from CADSOL2 where 1=1 ');
    DM1.Query2.SQL.Add(' and CS2CHAVE='+DM2.Tb_Sol1CS1CHAVE.AsString);
    DM1.Query2.SQL.Add(codemp2('CS2CODEMP',codemp));
    DM1.Query2.ExecSQL;
    DM2.Tb_Sol1.Delete;
    Inicializa;
    end;
  end;
end;

procedure TFrm_CadSol.Delete1Click(Sender: TObject);
begin
if DM2.Tb_Sol1.State in [dsInsert, dsEdit] then
  if not DM2.Tb_Sol2CS2CODPRO.IsNull then
    DM2.Tb_Sol2.Delete;
end;

procedure TFrm_CadSol.Alterar1Click(Sender: TObject);
begin
if DM2.Tb_Sol1.State in [dsInsert, dsEdit] then
  if not DM2.Tb_Sol2CS2CODPRO.IsNull then
    begin
    edtCodPro.Text  :=DM2.Tb_Sol2CS2CODPRO.AsString;
    edtNomPro.Text  :=DM2.Tb_Sol2NOMPRO.AsString;
    edtQtd.Text     :=DM2.Tb_Sol2CS2QTDPREV.AsString;
    edtQtdReal.Text :=DM2.Tb_Sol2CS2QTDREAL.AsString;
    edtQtdPen.Text  :=DM2.Tb_Sol2QTDPEN.AsString;
    DM2.Tb_Sol2.Delete;
    edtCodPro.SetFocus;
    end;
end;

end.
