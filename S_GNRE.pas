unit S_GNRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,func,S_DM5,db,dbtables;

type
  TFrm_GNRE = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    NOMBCO: TDBEdit;
    nomcli: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fGnre01gant(ptipo: Integer): Boolean;

var
  Frm_GNRE: TFrm_GNRE;
  moper: Integer=0;

implementation

uses func_excecoes, flerarq, lerarq;

{$R *.dfm}

procedure TFrm_GNRE.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM5.Tb_GNRE01.Append;
mcodigo:=DM5.Tb_GNRE01GN1CODIGO.AsString;
DBEdit1.Enabled:=True;
DBEdit1.SetFocus;
PC1.ActivePageIndex:=0;

end;

procedure TFrm_GNRE.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM5.Tb_GNRE01GN1CODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
DM5.Tb_GNRE01.Edit;
DBEdit2.SetFocus;
DBEdit1.Enabled:=False;

end;

procedure TFrm_GNRE.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM5.Tb_GNRE01GN1CODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   fgnre01gant(9);
   DM5.Tb_GNRE01.Delete;
   CANCELAR.Click;
   end;

end;

procedure TFrm_GNRE.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM5.Tb_GNRE01GN1DATA.Value<=pdatanula) or (DM5.Tb_GNRE01GN1DATA.IsNull) then
   begin
   MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBEdit2.SetFocus;
   exit;
   end;

if moper=8 then
   fgnre01gant(moper);

DM5.Tb_GNRE01GN1CODUSR.Value:=codusr;
DM5.Tb_GNRE01GN1DATALT.Value :=pdatasis;

dm5.Tb_GNRE01.Post;

CANCELAR.Click;


end;

procedure TFrm_GNRE.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM5.Tb_GNRE01.State in [dsInsert, DsEdit] then
   DM5.Tb_GNRE01.Cancel;
moper:=0;

end;


function fGnre01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(GN1CODNOV) from OLD_CADGNRE01');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADGNRE01 (';
v:='';
for x:=0 to DM5.Tb_GNRE01.FieldCount-1 do
   begin
   if DM5.Tb_GNRE01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM5.Tb_GNRE01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',GN1CODNOV) Select ';
v:='';
for x:=0 to DM5.Tb_GNRE01.FieldCount-1 do
   begin
   if DM5.Tb_GNRE01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM5.Tb_GNRE01.Fields[x].FieldName='GN1STATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as GN1STATUS '
   else if DM5.Tb_GNRE01.Fields[x].FieldName='GN1USRALT' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as GN1USRALT '
   else if DM5.Tb_GNRE01.Fields[x].FieldName='GN1DATALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as GN1DATALT '
   else
      minstru:=minstru+v+DM5.Tb_GNRE01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as GN1CODNOV ';
minstru:=minstru+' from CADGNRE01 where GN1CODEMP=0'+DM5.Tb_GNRE01GN1CODEMP.AsString
                +' and GN1LOTSEQ=0'+DM5.Tb_GNRE01GN1LOTSEQ.AsString
                +' and GN1CODIGO=0'+DM5.Tb_GNRE01GN1CODIGO.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,192,'Frm_GNRE','CADGNRE01');
   end;

minstru:='Insert into OLD_CADGNRE02 (';
v:='';
for x:=0 to DM5.Tb_GNRE02.FieldCount-1 do
   begin
   if DM5.Tb_GNRE02.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM5.Tb_GNRE02.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',GN2CODNOV) Select ';
v:='';
for x:=0 to DM5.Tb_GNRE02.FieldCount-1 do
   begin
   if DM5.Tb_GNRE02.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM5.Tb_GNRE02.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as GN2CODNOV ';
minstru:=minstru+' from CADGNRE02 where GN2CODEMP=0'+DM5.Tb_GNRE02GN2CODEMP.AsString
                +' and GN2LOTSEQ=0'+DM5.Tb_GNRE02GN2LOTSEQ.AsString
                +' and GN2CODIGO=0'+DM5.Tb_GNRE02GN2CODIGO.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,225,'Frm_GNRE2','CADGNRE2_OLD');
   end;

result:=True;
end;



procedure TFrm_GNRE.BBnAtuClick(Sender: TObject);
var
pCodigo: String;

begin
  inherited;
mcinst:='';
pcodigo:='0';
if (CAMPO.ItemIndex=2) then
   begin
   if (Trim(Edit1.Text)<>'') and (Trim(Edit1.Text)<>'/  /') then
      begin
      Try
         Edit1.Text:=FormatDateTime(fdt2, StrToDate(Edit1.Text));
      except
         MessageDlg('Data invalida!',mtWarning,[mbOk],0);
         Edit1.SetFocus;
         exit;
         end;
      mcinst:=FormatDatetime(fdt, StrTodate(Edit1.Text));
      end;
   end
else
   pCodigo:='0'+fdeixanum(Edit1.Text);
flcadgnre01(CAMPO.ItemIndex,0,pCodigo,mcinst);

end;

procedure TFrm_GNRE.DBGrid2Exit(Sender: TObject);
begin
  inherited;
if DM5.Tb_GNRE02.State in [dsInsert,dsEdit] then
   begin
   if (DM5.Tb_GNRE02GN2NUMDOC.IsNull) or (DM5.Tb_GNRE02GN2NUMDOC.Value=0) then
      begin
      DM5.Tb_GNRE02.Cancel;
      end
   else
      DM5.Tb_GNRE02.Post;   
   end;
end;

procedure TFrm_GNRE.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_GNRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GNRE.FormCreate(Sender: TObject);
begin
  inherited;
if DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM5.Src_GNRE01;
if DBNavigator1.DataSource=nil then
   DBNavigator1.DataSource:=DM5.Src_GNRE01;

end;

procedure TFrm_GNRE.DBEdit3Exit(Sender: TObject);
begin
  inherited;
   if DM5.Tb_GNRE01GN1CODCLI.AsFloat>0 then
      begin
      if not flcadcli(1,0,DM5.Tb_GNRE01GN1CODCLI.AsString) then
         begin
         fmensagem('Cliente não cadastrado!',0,['0'],0);
         DBEdit4.SetFocus;
         end
      else
         begin
         DM5.Tb_GNRE01GN1CNPJ.AsFloat:=DM1.Tb_CliCCNPJ.AsFloat;
         DM5.Tb_GNRE01GN1IE.AsString:=DM1.Tb_CliCIE.AsString;
         end;

      end;

end;

procedure TFrm_GNRE.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM5.Tb_GNRE01.State IN [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM5.Tb_GNRE01GN1CODCLI.Value:=ValFloat(fChamaCli(0,'frm_gnre',key));
      if DM5.Tb_GNRE01GN1CODCLI.AsFloat>0 then
         DBEdit3Exit(self);
      end;
   end;

end;

end.
