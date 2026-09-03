unit s_Lic2_Renomear_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, DB, DBTables;

type
  TFrm_Lic2_Renomear_item = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_numitem01_atual: TEdit;
    edt_numitem01_novo: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_dados_item01: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edt_numitem_ultimo_atual: TEdit;
    edt_numitem_ultimo_novo: TEdit;
    edt_dados_item_ultimo: TEdit;
    Label7: TLabel;
    edt_valor_inc: TSpinEdit;
    SAIR: TBitBtn;
    GRAVAR: TBitBtn;
    Query1: TQuery;
    procedure edt_valor_incChange(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    morigem_chave: integer;
    morigem_chave_ano: integer;
    morigem_codemp: integer;
    majustou: boolean;

  end;

var
  Frm_Lic2_Renomear_item: TFrm_Lic2_Renomear_item;

implementation

uses Func, S_DM1, func_excecoes;

{$R *.dfm}

procedure TFrm_Lic2_Renomear_item.edt_valor_incChange(Sender: TObject);
begin
edt_numitem01_novo.Text     :=IntToStr(valint(edt_numitem01_atual.text)+edt_valor_inc.Value);
edt_numitem_ultimo_novo.Text:=IntToStr(valint(edt_numitem_ultimo_atual.text)+edt_valor_inc.Value);
GRAVAR.Enabled:=edt_valor_inc.Value<>0;
end;

procedure TFrm_Lic2_Renomear_item.SAIRClick(Sender: TObject);
begin
majustou:=false;
close;
end;

procedure TFrm_Lic2_Renomear_item.GRAVARClick(Sender: TObject);
var
query_exe: tquery;
begin
query_exe:=TQuery.Create(nil);

query_exe.close;
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_exe.SQL.clear;
query_exe.SQL.add('Update CADLC2 set LC2_ITEM=LC2_ITEM+:ITEM_INCREM where '
                 +' LC2_CHAVE=:CHAVE '
                 +' AND LC2_LOTSEQ=:CHAVE_ANO '
                 +' AND LC2_CODEMP=:CODEMP ');
query_exe.ParamByName('ITEM_INCREM').AsInteger:=edt_valor_inc.Value;
query_exe.ParamByName('CHAVE').AsInteger      :=morigem_chave;
query_exe.ParamByName('CHAVE_ANO').AsInteger  :=morigem_chave_ano;
query_exe.ParamByName('CODEMP').AsInteger     :=morigem_codemp;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
   majustou:=true;

except ON E: Exception do
   begin
   ex_erroSql_Novo(query_exe,79,'_stru'+e.message,'user');
   end;
   end;
query_exe.close;
freeandnil(query_exe);
close;


end;

procedure TFrm_Lic2_Renomear_item.FormCreate(Sender: TObject);
begin
    majustou:=false;

end;

end.
