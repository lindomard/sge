unit S_Ped02_Canc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, S_SelEmp, Mask, ToolEdit,
  RLReport;

type
  TFrm_Ped02_Canc = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    bbAplicar: TButton;
    Label1: TLabel;
    bbimprimir: TButton;
    dtIni: TDateEdit;
    Label2: TLabel;
    dtFim: TDateEdit;
    Label3: TLabel;
    EDT_CODCAI: TEdit;
    cb_omitir_cx: TCheckBox;
    lb_codcai: TListBox;
    lb_codusr: TListBox;
    EDT_CODUSR: TEdit;
    cb_omitir_usr: TCheckBox;
    Label4: TLabel;
    lb_codsi: TListBox;
    cb_omitir_si: TCheckBox;
    EDT_CODSI: TEdit;
    Label5: TLabel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLBand4: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLAngleLabel3: TRLAngleLabel;
    RLAngleLabel4: TRLAngleLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    rl_mov: TRLLabel;
    rl_usrsi: TRLLabel;
    rl_usrlog: TRLLabel;
    rl_codcai: TRLLabel;
    rl_datahora: TRLLabel;
    rl_cupom: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    MEMO: TRLMemo;
    procedure bbAplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure lb_codcaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lb_codusrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lb_codsiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDT_CODCAIKeyPress(Sender: TObject; var Key: Char);
    procedure EDT_CODCAIExit(Sender: TObject);
    procedure EDT_CODUSRExit(Sender: TObject);
    procedure EDT_CODSIExit(Sender: TObject);
    procedure EDT_CODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure EDT_CODSIKeyPress(Sender: TObject; var Key: Char);
    procedure bbimprimirClick(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped02_Canc: TFrm_Ped02_Canc;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, lerarq, Func, Func2;

{$R *.dfm}

procedure TFrm_Ped02_Canc.bbAplicarClick(Sender: TObject);
begin
la_Empresas:=fEmpresas_Selecionadas('CADPED','P2EX_CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Tb_Ped02_Canc.Close;
DM1.Tb_Ped02_Canc.SQL.Clear;
DM1.Tb_Ped02_Canc.SQL.Add(' select * from CADP02_CANC ');
DM1.Tb_Ped02_Canc.SQL.Add(' where P2EX_CODEMP is not null ');
if trim(dtIni.Text)<>'/  /' then
  DM1.Tb_Ped02_Canc.SQL.Add(' and p2ex_dathor_exc >= '+QuotedStr(dtIni.Text));
if trim(dtFim.Text)<>'/  /' then
  DM1.Tb_Ped02_Canc.SQL.Add(' and p2ex_dathor_exc <= '+QuotedStr(dtFim.Text));
if trim(la_Empresas)<>'' then
  DM1.Tb_Ped02_Canc.SQL.ADD(' and '+la_empresas);
mcinst2:=fItensListBox(1,lb_codcai,cb_omitir_cx);
if trim(mcinst2)<>'' then
  DM1.Tb_Ped02_Canc.SQL.Add(' and P2EX_CODCAI '+mcinst2);
mcinst2:=fItensListBox(1,lb_codusr,cb_omitir_usr);
if trim(mcinst2)<>'' then
  DM1.Tb_Ped02_Canc.SQL.Add(' and P2EX_CODUSR_LOG '+mcinst2);
mcinst2:=fItensListBox(1,lb_codsi,cb_omitir_si);
if trim(mcinst2)<>'' then
  DM1.Tb_Ped02_Canc.SQL.Add(' and P2EX_CODUSR_SI '+mcinst2);
DM1.Tb_Ped02_Canc.SQL.Add(' order by p2ex_chave, p2ex_dathor_exc ');
DM1.Tb_Ped02_Canc.Open;
end;

procedure TFrm_Ped02_Canc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
SalvarGrid('Frm_Ped02_Canc',DBGrid1);
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_Ped02_Canc.FormKeyDown(Sender: TObject; var Key: Word;
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
if Key = VK_F6 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from CADINFGRID where GFORMULARIO='+CHR(39)+'Frm_Ped02_Canc'+CHR(39));
  DM1.Query1.ExecSQL;
  fmensagem('Modulo DBGRID padrão restaurado.',0,['0'],0);
  end;
end;

procedure TFrm_Ped02_Canc.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
CarregarGrid('Frm_Ped02_Canc',DBGrid1);
end;

procedure TFrm_Ped02_Canc.lb_codcaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lb_codcai.ItemIndex>=0 then
    lb_codcai.Items.Delete(lb_codcai.ItemIndex);
end;

procedure TFrm_Ped02_Canc.lb_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lb_codusr.ItemIndex>=0 then
    lb_codusr.Items.Delete(lb_codusr.ItemIndex);
end;

procedure TFrm_Ped02_Canc.lb_codsiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lb_codsi.ItemIndex>=0 then
    lb_codsi.Items.Delete(lb_codsi.ItemIndex);
end;

procedure TFrm_Ped02_Canc.EDT_CODCAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  EDT_CODCAI.Text:=fChamaBco(0,'frm_ped02_canc',Key);
  if trim(EDT_CODCAI.Text)<>'' then
    EDT_CODCAIExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_Ped02_Canc.EDT_CODCAIExit(Sender: TObject);
begin
EDT_CODCAI.Text:=fdeixanum2(EDT_CODCAI.Text);
if Trim(EDT_CODCAI.Text)<>'' then
  begin
  if flqr1('BCCODBCO,BCBANCO','BC','CADBCO','N','BCCODBCO',EDT_CODCAI.Text) then
    begin
    lb_CODCAI.Items.Add(FormatFloat('0000000',DM1.Query1.Fields[0].AsFloat)
                                  +' - '+DM1.Query1.Fields[1].AsString);
    EDT_CODCAI.text := '';
    EDT_CODCAI.SetFocus;
    end
  else
    begin
    fmensagem('Banco não Cadastrado!',0,['0'],0);
    EDT_CODCAI.text := '';
    EDT_CODCAI.SetFocus;
    end;
  end;
end;

procedure TFrm_Ped02_Canc.EDT_CODUSRExit(Sender: TObject);
begin
EDT_CODUSR.Text:=fdeixanum2(EDT_CODUSR.Text);
if Trim(EDT_CODUSR.Text)<>'' then
  begin
  if flqr1('CODUSR,NOMUSR','','CADUSR','N','CODUSR',EDT_CODUSR.Text) then
    begin
    lb_codusr.Items.Add(FormatFloat('0000000',DM1.Query1.Fields[0].AsFloat)
                                  +' - '+DM1.Query1.Fields[1].AsString);
    EDT_CODUSR.Text := '';
    EDT_CODUSR.SetFocus;
    end
  else
    begin
    fmensagem('Usuario não Cadastrado!',0,['0'],0);
    EDT_CODUSR.Text := '';
    EDT_CODUSR.SetFocus;
    end;
  end;
end;

procedure TFrm_Ped02_Canc.EDT_CODSIExit(Sender: TObject);
begin
EDT_CODSI.Text:=fdeixanum2(EDT_CODSI.Text);
if Trim(EDT_CODSI.Text)<>'' then
  begin
  if flqr1('CODUSR,NOMUSR','','CADUSR','N','CODUSR',EDT_CODSI.Text) then
    begin
    lb_codsi.Items.Add(FormatFloat('0000000',DM1.Query1.Fields[0].AsFloat)
                                  +' - '+DM1.Query1.Fields[1].AsString);
    EDT_CODSI.Text := '';
    EDT_CODSI.SetFocus;
    end
  else
    begin
    fmensagem('Usuario não Cadastrado!',0,['0'],0);
    EDT_CODSI.Text := '';
    EDT_CODSI.SetFocus;
    end;
  end;
end;

procedure TFrm_Ped02_Canc.EDT_CODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  EDT_CODUSR.Text:=fChamaUsr(0,'frm_ped02_canc',Key);
  if trim(EDT_CODUSR.Text)<>'' then
    EDT_CODUSRExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_Ped02_Canc.EDT_CODSIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  EDT_CODSI.Text:=fChamaUsr(0,'frm_ped02_canc',Key);
  if trim(EDT_CODSI.Text)<>'' then
    EDT_CODSIExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_Ped02_Canc.bbimprimirClick(Sender: TObject);
begin
if DM1.Tb_Ped02_Canc.IsEmpty then
  begin
  fmensagem('Nada a ser impresso na configuração desejada!',0,['0'],0);
  Exit;
  end;
RLReport1.PreviewModal;
end;

procedure TFrm_Ped02_Canc.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:=pBanner_Intersys;

end;

procedure TFrm_Ped02_Canc.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  x:Integer;
begin
MEMO.Lines.Clear;
if lb_codcai.items.count>0 then
  begin
  MEMO.Lines.Add(' RELACAO DE CAIXA/BANCO'+IIF(cb_omitir_cx.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_codcai.items.Count -1 do
    begin
    MEMO.Lines.Add(lb_codcai.items[x]);
    end;
  end;

if lb_codusr.items.Count>0 then
  begin
  MEMO.Lines.Add(' RELACAO DE USUARIO'+IIF(cb_omitir_usr.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_codusr.items.Count -1 do
    begin
    MEMO.Lines.Add(lb_codusr.items[x]);
    end;
  end;

if lb_codsi.Items.Count>0 then
  begin
  MEMO.Lines.Add(' RELACAO DE USUARIO DE LIBERACAO'+IIF(cb_omitir_si.Checked,' NAO ','')+' SELECIONADOS ');
  for x:=0 to lb_codsi.items.Count -1 do
    begin
    MEMO.Lines.Add(lb_codsi.items[x]);
    end;
  end;

if (trim(dtIni.Text)<>'/  /') and (trim(dtFim.Text)<>'/  /') then
  begin
  MEMO.Lines.Add(' PERIODO DE '+dtIni.Text+' A ' +dtFim.Text);
  end
else if trim(dtIni.Text)<>'/  /' then
  begin
  MEMO.Lines.Add(' APARTIR DE '+dtIni.Text);
  end
else if trim(dtFim.text)<>'/  /' then
  begin
  MEMO.LINES.Add(' ATE '+dtFim.text);
  end
else
  begin
  MEMO.Lines.Add(' SEM PERIODO SELECIONADO');
  end;

if MEMO.Lines.Count = 0 then
  RLBand5.Visible:=False
else
  RLBand5.Visible:=True;
end;

end.
