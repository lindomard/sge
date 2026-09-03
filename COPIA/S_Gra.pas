unit S_Gra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, StdCtrls, Buttons, Mask, DBCtrls,
  Grids, DBGrids, ExtCtrls,lerarq;

type
  TFrm_Gra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    INCLUIR: TBitBtn;
    GRAVAR: TBitBtn;
    SAIR: TBitBtn;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Gra: TFrm_Gra;

implementation

uses S_Pro;

{$R *.dfm}

procedure TFrm_Gra.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Gra.FormActivate(Sender: TObject);
begin
flcadlgc(0,0,codemp,DM1.Tb_ProPDCODPRO.AsString,' ',' ');
if DM1.Tb_LGC.Eof then
   EXCLUIR.Enabled:=False
else
   EXCLUIR.Enabled:=true;
Label1.Caption:='Produto..: '+DM1.Tb_ProPDCODPRO.AsString+' - '+DM1.Tb_ProPDNOME.Value;
end;

procedure TFrm_Gra.INCLUIRClick(Sender: TObject);
begin
DM1.Tb_LGC.Insert;
DM1.Tb_LGCCLCODPRO.Value:=dm1.Tb_ProPDCODPRO.Value;
INCLUIR.Enabled:=False;
GRAVAR.Enabled:=True;
EXCLUIR.Enabled:=False;
DBEdit1.Enabled:=True;
DBEdit1.SetFocus;
end;

procedure TFrm_Gra.GRAVARClick(Sender: TObject);
begin
if DM1.Tb_LGCCLNUMERO.IsNull then
   begin
   ShowMessage('Favor Digitar um nome Valido!');
   DBEdit1.SetFocus;
   Abort;
   end;
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADLGC where ');
DM1.Query1.Sql.add(' CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                  +' and CLNUMERO='+chr(39)+DM1.Tb_LGCCLNUMERO.Value+chr(39));
la_Empresas:=trim(fRetInstMECadastro('CADLGC','CLCODEMP',codemp));
if la_Empresas <>'' then
   DM1.Query1.Sql.add(' and '+la_Empresas);
DM1.Query1.Open;
if DM1.query1.Fields[0].AsInteger>0 Then
   begin
   ShowMessage('Ja existe uma Grade com o mesmo nome!');
   DBEdit1.SetFocus;
   abort;
   end;
DM1.Tb_LGCCLCODEMP.Value:=codemp;
DM1.Tb_LGCCLCODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
DM1.Tb_LGCCLQTD.Value   :=0;
DM1.Tb_LGC.Post;
DBEdit1.Enabled:=False;
INCLUIR.Enabled:=True;
GRAVAR.Enabled:=False;
EXCLUIR.Enabled:=True;
end;

procedure TFrm_Gra.EXCLUIRClick(Sender: TObject);
begin
if DM1.Tb_LGCCLCODPRO.IsNull then
   begin
   MessageDlg('Não ha Registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if not fProTestaMov(DM1.Tb_ProPDCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value) then
   begin
   MessageDlg('Este Produto possui Movimento de Compra/Venda. Exclusão Inválida!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   if (DM1.Tb_LGCCLNUMERO.IsNull) or (DM1.Tb_LGCCLDTVCTO.IsNull) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      if not (DM1.Tb_LGCCLNUMERO.IsNull) then
         DM1.Query1.Params.CreateParam(ftString,'NUMERO',ptInput);
      DM1.Query1.SQL.Add('Delete from CADLGC where '
                        +' CLCODEMP=0'+DM1.Tb_LGCCLCODEMP.AsString
                        +' and CLCODPRO=0'+DM1.Tb_LGCCLCODPRO.AsString);
      if DM1.Tb_LGCCLNUMERO.IsNull then
         DM1.Query1.SQL.Add(' and CLNUMERO is null ')
      else
         begin
         DM1.Query1.SQL.Add(' and CLNUMERO=:NUMERO');
         DM1.Query1.ParamByName('NUMERO').AsString:=DM1.Tb_LGCCLNUMERO.Value;
         end;
      if DM1.Tb_LGCCLDTVCTO.IsNull then
         DM1.Query1.SQL.add(' and CLDTVCTO is null ')
      else
         DM1.Query1.SQL.Add(' and CLDTVCTO='+chr(39)+FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end
   else
      DM1.Tb_LGC.Delete;
   INCLUIR.Enabled:=True;
   GRAVAR.Enabled:=False;
   EXCLUIR.Enabled:=True;
   DBEdit1.Enabled:=False;
   end;
end;

procedure TFrm_Gra.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If DM1.Tb_LGC.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: DM1.Tb_LGC.Post;
      mrNo : DM1.Tb_LGC.Cancel;
      else CanClose:=False;
      end;
   end;


end;

procedure TFrm_Gra.CANCELARClick(Sender: TObject);
begin
DM1.Tb_LGC.Cancel;
Dbedit1.Enabled:=False;
INCLUIR.Enabled:=True;
EXCLUIR.Enabled:=True;
GRAVAR.Enabled :=False;
end;

procedure TFrm_Gra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
