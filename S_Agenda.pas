unit S_Agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Calendar, ExtCtrls, DBGrids, Mask, DB,
  DBTables, Buttons;

type
  TFrm_Agenda = class(TForm)
    Panel1: TPanel;
    Calendar1: TCalendar;
    lbl_mes: TLabel;
    cb_mes: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cb_ano: TComboBox;
    Panel2: TPanel;
    incluir: TBitBtn;
    alterar: TBitBtn;
    excluir: TBitBtn;
    gravar: TBitBtn;
    cancelar: TBitBtn;
    sair: TBitBtn;
    Src_Agen: TDataSource;
    Qr_Agen: TQuery;
    Panel3: TPanel;
    lbl_codigo: TLabel;
    CODIGO: TEdit;
    NOME: TEdit;
    hora: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    assunto: TEdit;
    U_Agen: TUpdateSQL;
    Qr_AgenAGCODEMP: TFloatField;
    Qr_AgenAGCODTIP: TFloatField;
    Qr_AgenAGCODSEQ: TFloatField;
    Qr_AgenAGDATA: TDateTimeField;
    Qr_AgenAGHORA: TStringField;
    Qr_AgenAGCODIGO: TFloatField;
    Qr_AgenAGASSUNTO: TStringField;
    Qr_AgenNOME: TStringField;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_mesChange(Sender: TObject);
    procedure cb_anoChange(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure Qr_AgenAfterDelete(DataSet: TDataSet);
    procedure Qr_AgenAfterPost(DataSet: TDataSet);
    procedure Qr_AgenBeforePost(DataSet: TDataSet);
    procedure incluirClick(Sender: TObject);
    procedure alterarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure gravarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_AgenCalcFields(DataSet: TDataSet);
    procedure Calendar1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frm_Agenda: TFrm_Agenda;
  dd,mm,yyyy: integer;
  mes: string;
  Frm_Agenda_Tipo: Integer;

implementation

uses Func, S_DM1, lerarq;

{$R *.dfm}

procedure TFrm_Agenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Qr_Agen.State in [dsInsert, dsEdit] then
  begin
  ShowMessage('Grave ou Cancele o pedido!');
  Action:=CaNone;
  end;
  
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Agenda.cb_mesChange(Sender: TObject);
begin
Calendar1.Month:=cb_mes.ItemIndex+1;
lbl_mes.Caption:=cb_mes.Text+' / '+cb_ano.Text;
end;

procedure TFrm_Agenda.cb_anoChange(Sender: TObject);
begin
Calendar1.Year:=StrToInt(cb_ano.Text);
lbl_mes.Caption:=cb_mes.Text+' / '+cb_ano.Text;
end;

procedure TFrm_Agenda.sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Agenda.Qr_AgenAfterDelete(DataSet: TDataSet);
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

procedure TFrm_Agenda.Qr_AgenAfterPost(DataSet: TDataSet);
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

procedure TFrm_Agenda.Qr_AgenBeforePost(DataSet: TDataSet);
begin
if Qr_Agen.State in [dsinsert] then
  begin
  DM1.Query6.Close;
  DM1.Query6.SQL.Clear;
  DM1.Query6.SQL.Add(' select max(AGCODSEQ) from CADAGEN where AGCODEMP is not null ');
  DM1.Query6.SQL.Add(codemp2('AGCODEMP',codemp));
  DM1.Query6.Open;
  Qr_AgenAGCODSEQ.AsInteger:=DM1.Query6.FieldByName('max(AGCODSEQ)').AsInteger+1;
  Qr_AgenAGCODEMP.AsInteger:=codemp;
  Qr_AgenAGCODTIP.AsInteger:=Frm_Agenda_Tipo;
  end;
end;

procedure TFrm_Agenda.incluirClick(Sender: TObject);
begin
incluir.Enabled :=False;
alterar.Enabled :=False;
gravar.Enabled  :=True;
cancelar.Enabled:=True;
excluir.Enabled  :=False;
sair.Enabled    :=False;

Qr_Agen.Insert;

CODIGO.Clear;
NOME.Clear;
hora.Clear;
assunto.Clear;
end;

procedure TFrm_Agenda.alterarClick(Sender: TObject);
begin

CODIGO.Text :=Qr_AgenAGCODIGO.AsString;
NOME.Text   :=Qr_AgenNOME.AsString;
hora.Text   :=Qr_AgenAGHORA.AsString;
assunto.Text:=Qr_AgenAGASSUNTO.AsString;

if not Qr_AgenAGCODSEQ.IsNull then
  begin
  Qr_Agen.Edit;
  incluir.Enabled :=False;
  alterar.Enabled :=False;
  gravar.Enabled  :=True;
  cancelar.Enabled:=True;
  excluir.Enabled :=False;
  sair.Enabled    :=False;
  end
else
  begin
  fmensagem('Favor selecione um agendamento valido!',0,['0'],0);
  end;
end;

procedure TFrm_Agenda.excluirClick(Sender: TObject);
begin
Qr_Agen.Delete;
CODIGO.Clear;
NOME.Clear;
hora.Clear;
assunto.Clear;
end;

procedure TFrm_Agenda.gravarClick(Sender: TObject);
begin
incluir.Enabled :=True;
alterar.Enabled :=True;
gravar.Enabled  :=False;
cancelar.Enabled:=False;
excluir.Enabled  :=True;
sair.Enabled    :=True;

if ValFloat(CODIGO.Text)=0 then
  begin
  CODIGO.SetFocus;
  Exit;
  end;

Qr_AgenAGCODIGO.AsInteger:=StrToInt(CODIGO.Text);
Qr_AgenAGDATA.AsDateTime :=StrToDate(IntToStr(Calendar1.Day)+'/'+IntToStr(Calendar1.Month)+'/'+IntToStr(Calendar1.Year));
Qr_AgenAGHORA.AsString   :=hora.Text;
Qr_AgenAGASSUNTO.AsString:=assunto.Text;
Qr_Agen.Post;

CODIGO.Clear;
NOME.Clear;
hora.Clear;
assunto.Clear;

end;

procedure TFrm_Agenda.cancelarClick(Sender: TObject);
begin
incluir.Enabled :=True;
alterar.Enabled :=True;
gravar.Enabled  :=False;
cancelar.Enabled:=False;
excluir.Enabled  :=True;
sair.Enabled    :=True;

Qr_Agen.Cancel;

CODIGO.Clear;
NOME.Clear;
hora.Clear;
assunto.Clear;

Qr_Agen.Close;
Qr_Agen.SQL.Clear;
Qr_Agen.sql.Add(' select * from CADAGEN ');
Qr_Agen.sql.Add(' where AGCODEMP='+IntToStr(CODEMP));
Qr_Agen.sql.Add(' and AGCODTIP='+IntToStr(Frm_Agenda_Tipo));
Qr_Agen.sql.Add(' and AGDATA='+chr(39)+IntToStr(Calendar1.Day)+'/'+IntToStr(Calendar1.Month)+'/'+IntToStr(Calendar1.Year)+chr(39));
Qr_Agen.sql.Add(' order by AGHORA ');
Qr_Agen.Open;
end;

procedure TFrm_Agenda.DBGrid1DblClick(Sender: TObject);
begin
CODIGO.Text :=Qr_AgenAGCODIGO.AsString;
NOME.Text   :=Qr_AgenNOME.AsString;
hora.Text   :=Qr_AgenAGHORA.AsString;
assunto.Text:=Qr_AgenAGASSUNTO.AsString;
end;

procedure TFrm_Agenda.CODIGOExit(Sender: TObject);
begin
CODIGO.Text:=fdeixanum(CODIGO.Text);
if ValFloat(CODIGO.Text)<=0 then
  begin
  CODIGO.Text:='';
  end
else
  begin
  if Frm_Agenda_Tipo=0 then
    begin
    if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODIGO.SetFocus;
      end
    else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
    end
  else
    begin
    if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODIGO.SetFocus;
      end
    else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
    end;
  end;
end;

procedure TFrm_Agenda.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  if Frm_Agenda_Tipo=0 Then
    CODIGO.Text:=fChamaFor(0,'Frm_AgendaFor',Key)
  else
    CODIGO.Text:=fChamaCli(0,'Frm_AgendaFor',Key);
  if trim(CODIGO.Text)<>'' then
    CODIGOExit(Self);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_Agenda.Qr_AgenCalcFields(DataSet: TDataSet);
begin
if not Qr_AgenAGCODIGO.IsNull then
  begin
  if Qr_AgenAGCODTIP.AsInteger=0 then
    begin
    if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_AgenAGCODIGO.AsString) then
      Qr_AgenNOME.AsString:='Fornecedor não Cadastrado!'
    else
      Qr_AgenNOME.AsString:=DM1.Query1.Fields[0].AsString;
    end
  else
    begin
    if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_AgenAGCODIGO.AsString) then
      Qr_AgenNOME.AsString:='Cliente não Cadastrado!'
    else
      Qr_AgenNOME.AsString:=DM1.Query1.Fields[0].AsString;
    end;
  end;
end;

procedure TFrm_Agenda.Calendar1Change(Sender: TObject);
begin
Qr_Agen.Close;
Qr_Agen.SQL.Clear;
Qr_Agen.sql.Add(' select * from CADAGEN ');
Qr_Agen.sql.Add(' where AGCODEMP='+IntToStr(CODEMP));
Qr_Agen.sql.Add(' and AGCODTIP='+IntToStr(Frm_Agenda_Tipo));
Qr_Agen.sql.Add(' and AGDATA='+chr(39)+IntToStr(Calendar1.Day)+'/'+IntToStr(Calendar1.Month)+'/'+IntToStr(Calendar1.Year)+chr(39));
Qr_Agen.sql.Add(' order by AGHORA ');
Qr_Agen.Open;
end;

procedure TFrm_Agenda.FormShow(Sender: TObject);
var
  x: integer;
begin
if Qr_Agen.Active=False then
  Qr_Agen.Active:=True;

dd  :=StrToInt(FormatDateTime('dd',Date));
mm  :=StrToInt(FormatDateTime('mm',Date));
yyyy:=StrToInt(FormatDateTime('yyyy',Date));

Calendar1.Day  :=dd;
Calendar1.Month:=mm;
Calendar1.Year :=yyyy;

cb_ano.Clear;
for x:=-2 to 2 do
  begin
  cb_ano.Items.Add(IntToStr(yyyy+x));
  end;
cb_ano.ItemIndex:=2;
cb_mes.ItemIndex:=MM-1;

Calendar1.Month:=cb_mes.ItemIndex+1;
lbl_mes.Caption:=cb_mes.Text+' / '+cb_ano.Text;


cancelarClick(self);

if Frm_Agenda_Tipo=0 then
  begin
  DBGrid1.Columns[1].Title.Caption:='FORNECEDOR..:';
  lbl_codigo.Caption:='Fornecedor';
  Frm_Agenda.Caption:='Agendamento de Atendimento de Fornecedores';
  end
else
  begin
  DBGrid1.Columns[1].Title.Caption:='CLIENTE..:';
  lbl_codigo.Caption:='Cliente';
  Frm_Agenda.Caption:='Agendamento de Atendimento de Cliente';
  end;
end;

end.
