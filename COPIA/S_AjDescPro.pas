unit S_AjDescPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,
  func, db, dbtables,
  S_For,lerarq,S_Tab05,S_Gpro,S_Ram,S_TCon,S_TipPro,S_Agde;


type
  TFrm_AjDescPro = class(TForm)
    Label3: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    NOMGRU: TEdit;
    CODGRU: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    CODRAM: TEdit;
    NOMRAM: TEdit;
    NOMCON: TEdit;
    CODCON: TEdit;
    Label9: TLabel;
    Label12: TLabel;
    CODTIP: TEdit;
    NOMTIP: TEdit;
    bbAjustar: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    PDESC01: TEdit;
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAjustarClick(Sender: TObject);
    procedure PDESC01Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AjDescPro: TFrm_AjDescPro;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_AjDescPro.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_AjDescPro',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_AjDescPro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_AjDescPro',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_AjDescPro.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_AjDescPro',Key);
   if trim(CODRAM.Text)<>'' then
      CODRAMExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AjDescPro.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_AjDescPro',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AjDescPro.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_AjDescPro',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_AjDescPro.CODFORExit(Sender: TObject);
begin
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','N','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      ShowMessage('Fornecedor Não Cadastrado!');
      CODFOR.SetFocus;
      exit;
      end
   else
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjDescPro.CODGRUExit(Sender: TObject);
begin
if Trim(CODGRU.Text)='' then
   NOMGRU.Text:='Todos...'
else
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      MessageDlg('Grupo Não Cadastrado!',mtWarning,[mbOk],0);
      CODGRU.SetFocus;
      exit;
      end
   else
      NOMGRU.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_AjDescPro.CODRAMExit(Sender: TObject);
begin
if Trim(CODRAM.Text)='' then
   NOMRAM.Text:='Todos...'
else
   begin
   if not flqr1('RNOME','R','CADRAM','N','RCODRAM',CODRAM.Text) then
      begin
      MessageDlg('Ramo Não Cadastrado!',mtWarning,[mbOk],0);
      CODRAM.SetFocus;
      exit;
      end
   else
      NOMRAM.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjDescPro.CODCONExit(Sender: TObject);
begin
if Trim(CODCON.Text)='' then
   NOMCON.Text:='Todos...'
else
   begin
   if not flqr1('CNOME','C','CADCON','N','CCODCON',CODCON.Text) then
      begin
      MessageDlg('Controle Não Cadastrado!',mtWarning,[mbOk],0);
      CODCON.SetFocus;
      exit;
      end
   else
      NOMCON.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjDescPro.CODTIPExit(Sender: TObject);
begin
if Trim(CODTIP.Text)='' then
   NOMTIP.Text:='Todos...'
else
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTIP.Text) then
      begin
      ShowMessage('Tipo Não Cadastrado!');
      CODTIP.SetFocus;
      exit;
      end
   else
      NOMTIP.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_AjDescPro.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjDescPro.bbAjustarClick(Sender: TObject);
begin
if fmensagem('Esta opção não tem retorno. Mesmo assim Quer continuar?',0,['1','2'],2)<>mrYes then
   exit;
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Ajustando o Percentual de desconto 01 do Produto, Aguarde...';
Frm_Agde.Show;
mcinst:=' where ';
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.sql.Add('Update CADPRO set PDDESC1=0'+mudaVP(FloatToStr(ValFloat(PDESC01.Text))));
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
if Trim(CODFOR.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODFOR=0'+Trim(CODFOR.Text));
   mcinst:=' and ';
   end;
if Trim(CODGRU.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODGRU=0'+Trim(CODGRU.Text));
   mcinst:=' and ';
   end;
if Trim(CODRAM.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODRAM=0'+Trim(CODRAM.Text));
   mcinst:=' and ';
   end;
if Trim(CODCON.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODCON=0'+Trim(CODCON.Text));
   mcinst:=' and ';
   end;
if Trim(CODTIP.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' PDCODTIP=0'+Trim(CODTIP.Text));
   mcinst:=' and ';
   end;
DM1.Query2.ExecSQL;
Frm_Agde.Free;
close;
end;

procedure TFrm_AjDescPro.PDESC01Exit(Sender: TObject);
begin
PDESC01.Text:=FormatFloat(mcasas, ValFloat(PDESC01.Text));
if (ValFloat(PDESC01.Text)<0) or (ValFloat(PDESC01.Text)>100) then
   begin
   MessageDlg('Percentual de desconto invalido!',mtWarning,[mbOk],0);
   PDESC01.SetFocus;
   end;
end;

procedure TFrm_AjDescPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
