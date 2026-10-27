unit S_AcTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids,lerarq,S_DM1,func,S_DM4,
  DBGrids,db,dbtables, DBCtrls;

type
  TFrm_AcTab = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    STG1: TStringGrid;
    DBGrid1: TDBGrid;
    dbcb_inc: TDBCheckBox;
    dbcb_alt: TDBCheckBox;
    dbcb_exc: TDBCheckBox;
    dbcb_rel: TDBCheckBox;
    dbcb_Adic: TDBCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcb_incClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure dbcb_altClick(Sender: TObject);
    procedure dbcb_excClick(Sender: TObject);
    procedure dbcb_relClick(Sender: TObject);
    procedure dbcb_AdicClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcb_AdicExit(Sender: TObject);
  private
  function ftestaarq(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AcTab: TFrm_AcTab;

implementation

uses S_Ace;

{$R *.dfm}

procedure TFrm_AcTab.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_AcTab.FormCreate(Sender: TObject);
var
mqtd:Integer;
begin
STG1.RowCount:=1;
STG1.RowS[0].Clear;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPRO';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Produtos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADRAM';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Ramo de Produto';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADGRU';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Grupos de Produtos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADTP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Tipos de Produtos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCON';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Controles de Produtos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADGEN';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de DCB-Genérico';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPFOR';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Pedidos de Fornecedores';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADUF';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Unidade da Federação(Estados)';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADLOC';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Cidades';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADBAI';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Bairros';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADFOR';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Fornecedores';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCLI';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Clientes';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCV';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Convenios';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADRED';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Redes de Clientes';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADRCLI';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Ramo de Cliente';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADVEN';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Vendedores';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADSUP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Supervisores';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADTRA';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Transportadoras';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADBCO';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Bancos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCCU';
STG1.Cells[1,mqtd]:='Manutenção no Centro de Custo do Caixa';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADDEP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Departamento(Caixa)';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADLDR';
STG1.Cells[1,mqtd]:='Lançamento do Fluxo de Caixa';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPRO';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Produtos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADOP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Ordem de Produção';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPROC';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Procedimentos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADUSR';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Usuários';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCAR';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Cargos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPV';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Plano de Vendas';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCOMD';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Comissão do Desconto';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADFUN';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Funcionários(Folha Pgto)';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADDEPTO';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Departamentos(Folha Pgto)';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADEVE';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Eventos(Folha Pgto)';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADPED';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Pedidos';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADLIC';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Licitações';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADROM';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Romaneios';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADNE';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Notas de Entradas';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADNS';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Notas de Saidas';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCFO';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de CFOP';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADDAP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Contas A Pagar';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADDAR';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Contas A Receber';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCHQ';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Cheques de Clientes';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADCIMP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Impressoras da Rede';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADECF';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Impressoras Fiscais';
STG1.RowCount:=STG1.RowCount+1;
mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADEMP';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Empresas';
STG1.RowCount:=STG1.RowCount+1;


mqtd:=STG1.RowCount-1;
STG1.Cells[0,mqtd]:='CADOS';
STG1.Cells[1,mqtd]:='Manutenção no Cadastro de Ordem de Serviços';
STG1.RowCount:=STG1.RowCount+1;


ftestaarq(0);
flcadactab(0,0,IntToStr(cargo),'');
end;

function TFrm_AcTab.ftestaarq(ptipo: Integer): Boolean;
var
x: Integer;
begin
for x:=0 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      Continue;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select AT_TABELA,AT_DESC from CADACTAB where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADACE',[]),'',' AT_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' AT_CODCAR=0'+IntToStr(cargo)+' and '
                     +' AT_TABELA='+chr(39)+STG1.Cells[0,x]+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.Params.CreateParam(ftstring,'TABELA',ptinput);
      DM1.Query2.Params.CreateParam(ftstring,'DESC',ptinput);
      DM1.Query2.SQL.Add('Insert into CADACTAB ('
                        +'AT_CODEMP, '
                        +'AT_CODCAR, '
                        +'AT_TABELA, '
                        +'AT_DESC, '
                        +'AT_INC, '
                        +'AT_ALT, '
                        +'AT_EXC, '
                        +'AT_REL) Values ('
                        +IntToStr(codemp)+','
                        +IntToStr(cargo)+','
                        +':TABELA, '
                        +':DESC, '
                        +'0,0,0,0)');
      DM1.Query2.ParamByName('TABELA').AsString:=STG1.Cells[0,x];
      DM1.Query2.ParamByName('DESC').AsString   :=STG1.Cells[1,x];
      DM1.Query2.ExecSQL;
      end
   else if DM1.Query1.Fields[1].AsString<>STG1.Cells[1,x] then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.Params.CreateParam(ftstring,'TABELA',ptinput);
      DM1.Query2.Params.CreateParam(ftstring,'DESC',ptinput);
      DM1.Query2.SQL.Add('Update CADACTAB set AT_DESC=:DESC where '
                        +iif(DM1.Qr_TID.locate('TINOME','CADACE',[]),'',' AT_CODEMP=0'+IntToStr(codemp)+' and ')
                        +'AT_CODCAR=0'+IntTostr(cargo)
                        +' and AT_TABELA=:TABELA');
      DM1.Query2.ParamByName('TABELA').AsString:=STG1.Cells[0,x];
      DM1.Query2.ParamByName('DESC').AsString   :=STG1.Cells[1,x];
      DM1.Query2.ExecSQL;
      end;
   end;
result:=True;
end;
procedure TFrm_AcTab.dbcb_incClick(Sender: TObject);
begin

  if dbcb_inc.Checked then
     dbcb_inc.Caption := 'Sim'
  else
     dbcb_inc.Caption := 'Nao';

end;

procedure TFrm_AcTab.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField.FieldName = dbcb_inc.DataField then
  dbcb_inc.Visible := False
else if DBGrid1.SelectedField.FieldName = dbcb_alt.DataField then
  dbcb_alt.Visible := False
else if DBGrid1.SelectedField.FieldName = dbcb_exc.DataField then
  dbcb_exc.Visible := False
else if DBGrid1.SelectedField.FieldName = dbcb_rel.DataField then
  dbcb_rel.Visible := False
else if DBGrid1.SelectedField.FieldName = dbcb_Adic.DataField then
  dbcb_Adic.Visible := False;


end;

procedure TFrm_AcTab.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
if (gdFocused in State) then
   begin
   if (Column.Field.FieldName = dbcb_inc.DataField) then
      begin
      dbcb_inc.Left := Rect.Left + DBGrid1.Left + 2;
      dbcb_inc.Top := Rect.Top + DBGrid1.top + 2;
      dbcb_inc.Width := Rect.Right - Rect.Left;
      dbcb_inc.Height := Rect.Bottom - Rect.Top;
      dbcb_inc.Visible := True;
      end
   else if (Column.Field.FieldName = dbcb_alt.DataField) then
      begin
      dbcb_alt.Left := Rect.Left + DBGrid1.Left + 2;
      dbcb_alt.Top := Rect.Top + DBGrid1.top + 2;
      dbcb_alt.Width := Rect.Right - Rect.Left;
      dbcb_alt.Height := Rect.Bottom - Rect.Top;
      dbcb_alt.Visible := True;
      end
   else if (Column.Field.FieldName = dbcb_exc.DataField) then
      begin
      dbcb_exc.Left := Rect.Left + DBGrid1.Left + 2;
      dbcb_exc.Top := Rect.Top + DBGrid1.top + 2;
      dbcb_exc.Width := Rect.Right - Rect.Left;
      dbcb_exc.Height := Rect.Bottom - Rect.Top;
      dbcb_exc.Visible := True;
      end
   else if (Column.Field.FieldName = dbcb_rel.DataField) then
      begin
      dbcb_rel.Left := Rect.Left + DBGrid1.Left + 2;
      dbcb_rel.Top := Rect.Top + DBGrid1.top + 2;
      dbcb_rel.Width := Rect.Right - Rect.Left;
      dbcb_rel.Height := Rect.Bottom - Rect.Top;
      dbcb_rel.Visible := True;
      end
   else if (Column.Field.FieldName = dbcb_Adic.DataField) then
      begin
      dbcb_Adic.Left    := Rect.Left + DBGrid1.Left + 2;
      dbcb_Adic.Top     := Rect.Top + DBGrid1.top + 2;
      dbcb_Adic.Width   := Rect.Right - Rect.Left;
      dbcb_Adic.Height  := Rect.Bottom - Rect.Top;
      dbcb_Adic.Visible := True;
      end;
   end
else
   begin
   if (Column.Field.FieldName = dbcb_inc.DataField)  or
      (Column.Field.FieldName = dbcb_alt.DataField) or
      (Column.Field.FieldName = dbcb_exc.DataField) or
      (Column.Field.FieldName = dbcb_Adic.DataField) or
      (Column.Field.FieldName = dbcb_rel.DataField) then
      begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);

      DrawState := ISChecked[Column.Field.AsInteger=0];
      DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,
                       DFC_BUTTON, DrawState);
      end;
   end;
end;

procedure TFrm_AcTab.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = Chr(9)) then Exit;

if (DBGrid1.SelectedField.FieldName = dbcb_inc.DataField) then
   begin
   dbcb_inc.SetFocus;
   SendMessage(dbcb_inc.Handle, WM_Char, word(Key), 0);
   end
else if (DBGrid1.SelectedField.FieldName = dbcb_alt.DataField) then
   begin
   dbcb_alt.SetFocus;
   SendMessage(dbcb_alt.Handle, WM_Char, word(Key), 0);
   end
else if (DBGrid1.SelectedField.FieldName = dbcb_exc.DataField) then
   begin
   dbcb_exc.SetFocus;
   SendMessage(dbcb_exc.Handle, WM_Char, word(Key), 0);
   end
else if (DBGrid1.SelectedField.FieldName = dbcb_rel.DataField) then
   begin
   dbcb_rel.SetFocus;
   SendMessage(dbcb_rel.Handle, WM_Char, word(Key), 0);
   end
else if (DBGrid1.SelectedField.FieldName = dbcb_Adic.DataField) then
   begin
   dbcb_Adic.SetFocus;
   SendMessage(dbcb_rel.Handle, WM_Char, word(Key), 0);
   end;


end;

procedure TFrm_AcTab.dbcb_altClick(Sender: TObject);
begin
{
if not (DM4.Tb_AcTab.State in [dsEdit,dsInsert]) then
   DM4.Tb_AcTab.Edit;
}
if dbcb_alt.Checked then
   dbcb_alt.Caption := 'Sim'
else
   dbcb_alt.Caption := 'Nao';

end;

procedure TFrm_AcTab.dbcb_excClick(Sender: TObject);
begin
{
if not (DM4.Tb_AcTab.State in [dsEdit,dsInsert]) then
   DM4.Tb_AcTab.Edit;
}
if dbcb_exc.Checked then
   dbcb_exc.Caption := 'Sim'
else
   dbcb_exc.Caption := 'Nao';

end;

procedure TFrm_AcTab.dbcb_relClick(Sender: TObject);
begin
{
if not (DM4.Tb_AcTab.State in [dsEdit,dsInsert]) then
   DM4.Tb_AcTab.Edit;
}
if dbcb_rel.Checked then
   dbcb_rel.Caption := 'Sim'
else
   dbcb_rel.Caption := 'Nao';

end;

procedure TFrm_AcTab.dbcb_AdicClick(Sender: TObject);
begin

{if not (DM4.Tb_AcTab.State in [dsEdit,dsInsert]) then
   DM4.Tb_AcTab.Edit;
   }
if dbcb_Adic.Checked then
   dbcb_Adic.Caption := 'Sim'
else
   dbcb_Adic.Caption := 'Nao';

end;

procedure TFrm_AcTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM4.Tb_AcTab.State in [dsEdit, dsInsert] then
   DM4.Tb_AcTab.Post;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcTab.dbcb_AdicExit(Sender: TObject);
begin
if DM4.Tb_AcTab.State in [dsEdit, dsInsert] then
   DM4.Tb_AcTab.Post;

end;

end.
