unit s_CBenef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables, RxDBComb;

type
  TFrm_CBenef = class(TFrm_C)
    Tb_CBenef: TQuery;
    U_CBenef: TUpdateSQL;
    src_CBenef: TDataSource;
    Tb_CBenefCB_CODIGO: TStringField;
    Tb_CBenefCB_UF: TStringField;
    Tb_CBenefCB_DESCRICAO: TStringField;
    Tb_CBenefCB_OBS_NF: TStringField;
    Label1: TLabel;
    DBE_codigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBE_CB_DESCRICAO: TDBEdit;
    Label4: TLabel;
    DBE_CB_OBS_NF: TDBEdit;
    DBE_CB_UF: TRxDBComboBox;
    procedure INCLUIRClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
    mcodigo: string;

    function fLeerCadCbenef: boolean;

  public
    { Public declarations }
    moper_cbenef: integer;
  end;

var
  Frm_CBenef: TFrm_CBenef;

implementation

uses func_excecoes, Func, lerarq;

{$R *.dfm}

procedure TFrm_CBenef.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_cbenef:=0;

Tb_Cbenef.Append;
mcodigo:=Tb_CBenefCB_CODIGO.AsString;
DBE_codigo.Enabled:=True;
DBE_codigo.SetFocus;


end;

function TFrm_CBenef.fLeerCadCbenef: boolean;
begin

Tb_CBenef.Close;
Tb_CBenef.Sql.clear;
Tb_CBenef.Sql.add('select CB_CODIGO, '
                 +' CB_UF, '
                 +' CB_DESCRICAO, '
                 +' CB_OBS_NF from cad_cbenef where 1=1 ');
if trim(edit1.text)<>'' then
   begin
   if CAMPO.ItemIndex=1 then
      begin
      Tb_CBenef.sql.add(' and CB_CODIGO like '+QuotedStr(edit1.Text)+'%');
      end
   else if CAMPO.ItemIndex=0 then
      begin
      Tb_CBenef.sql.add(' and CB_DESCRICAO like '+QuotedStr(edit1.Text)+'%');
      end;
   end;
try
   Tb_CBenef.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CBenef,83,'SGE','CAD_CBENEF');
   end;
   end;

if Tb_CBenef.Eof then
   Result:=False
else
   Result:=True;

end;
procedure TFrm_CBenef.BBnAtuClick(Sender: TObject);
begin
  inherited;
fLeerCadCbenef;
end;

procedure TFrm_CBenef.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_CBenefCB_CODIGO.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_cbenef:=1;

Tb_CBenef.Edit;
DBE_codigo.SetFocus;
DBE_codigo.Enabled:=False;

end;

procedure TFrm_CBenef.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_CBenefCB_CODIGO.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CAD_CBENEF','',''
               ,['CB_CODIGO'],[Tb_CBenefCB_CODIGO.AsString]
               ,Tb_CBenef);

   Tb_CBenef.Delete;
   end;

end;

procedure TFrm_CBenef.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_CBenefCB_CODIGO.Value='_') or (Tb_CBenefCB_CODIGO.IsNull) then
   begin
   fmensagem('Código Invalido!',0,['1'],0);
   DBE_codigo.SetFocus;
   exit;
   end;


Tb_CBenef.Post;
FAtualizaBanco(moper_cbenef,'CAD_CBENEF','',''
               ,['CB_CODIGO'],[Tb_CBenefCB_CODIGO.AsString]
               ,Tb_CBenef);

CANCELAR.Click;

end;

procedure TFrm_CBenef.CANCELARClick(Sender: TObject);
begin
  inherited;
if Tb_CBenef.State in [dsEdit,dsInsert] then
   Tb_CBenef.Cancel;

end;

procedure TFrm_CBenef.SAIRClick(Sender: TObject);
begin
  inherited;
  close;

end;

end.
