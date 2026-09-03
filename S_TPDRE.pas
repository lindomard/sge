unit S_TPDRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBTables,
  DB, DBCtrls;

type
  Tfrm_tpdre = class(TForm)
    Panel1: TPanel;
    bb_incluir: TBitBtn;
    bb_alterar: TBitBtn;
    bb_gravar: TBitBtn;
    bb_cancelar: TBitBtn;
    bb_excluir: TBitBtn;
    bb_sair: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    cb_tipo: TComboBox;
    edt_buscar: TEdit;
    bb_buscar: TBitBtn;
    PC1: TPageControl;
    ts_manutencao: TTabSheet;
    ts_lista: TTabSheet;
    edt_chave: TEdit;
    lbl_chave: TLabel;
    Label2: TLabel;
    lbl_nome: TLabel;
    edt_nome: TEdit;
    cb_compoem: TComboBox;
    DBGrid1: TDBGrid;
    btn_importar: TBitBtn;
    Src_TPDRE: TDataSource;
    dbn_next: TDBNavigator;
    rg_vinculo: TRadioGroup;
    procedure bb_sairClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure atubotClick(Sender: TObject);
    procedure bb_incluirClick(Sender: TObject);
    procedure bb_alterarClick(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure bb_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bb_excluirClick(Sender: TObject);
    procedure bb_buscarClick(Sender: TObject);
    procedure edt_buscarExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edt_buscarChange(Sender: TObject);
    procedure btn_importarClick(Sender: TObject);
    procedure Src_TPDREDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    cons: String;
    { Public declarations }
  end;

var
  frm_tpdre: Tfrm_tpdre;
  Status:    Integer; // 1 - inserindo, 2 - alterando, 0 -nda

implementation

uses Func, lerarq, S_DM1, flerarq;

{$R *.dfm}
procedure Tfrm_tpdre.atubotClick(Sender: TObject);
var
EDT1,EDT2: Boolean;
begin
if (status=1) or (status=2) then
  begin
  edt1:=True;
  edt2:=False;
  end
else
  begin
  edt1:=False;
  edt2:=True;
  end;
// botões
bb_incluir.Enabled  :=EDT2;
bb_alterar.Enabled  :=EDT2;
bb_gravar.Enabled   :=EDT1;
bb_cancelar.Enabled :=EDT1;
bb_excluir.Enabled  :=EDT2;
bb_sair.Enabled     :=EDT2;
bb_buscar.Enabled   :=EDT2;
//edits
edt_buscar.ReadOnly :=EDT1;
edt_chave.ReadOnly  :=EDT2;
edt_nome.ReadOnly   :=EDT2;
cb_compoem.Enabled  :=EDT1;
rg_vinculo.Enabled  :=EDT1;
//tabsheet
ts_lista.TabVisible :=EDT2;
//dbnnavigator
dbn_next.Enabled    :=EDT2;
end;

procedure Tfrm_tpdre.bb_sairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_tpdre.edt_chaveExit(Sender: TObject);
begin
edt_chave.Text:=fdeixanum(edt_chave.Text);
if edt_chave.Text<>'0' then
  begin
  if dm1.TB_TPDRE.State in [dsinsert] then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.CLEAR;
    DM1.Query1.SQL.Add(' select * from CADTPDRE where TPD_CHAVE='+edt_chave.Text);
    DM1.Query1.SQL.Add(fla_EmpBaixaAlta(0,'CADTPDRE',' and ',codemp,' TPD_CODEMP',''));
    DM1.Query1.Open;
    if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Já existe DRE com este codigo!',0,['0'],0);
      edt_chave.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_tpdre.bb_incluirClick(Sender: TObject);
var
 lntnum: Integer;
 prxnum: String;
 ultcrc: String;
begin
Status:=1;
atubotClick(self);
PC1.ActivePage:=ts_manutencao;
edt_nome.Clear;
edt_nome.SetFocus;
edt_chave.Clear;
cb_compoem.ItemIndex:=0;
rg_vinculo.ItemIndex:=0;

dm1.Query1.Close;
dm1.Query1.Sql.Clear;
dm1.Query1.SQL.Add(' select max(length(TPD_CHAVE)) from CADTPDRE ');
dm1.Query1.SQL.Add(' where (TPD_CHAVE is not null) '+codemp2('TPD_CODEMP',codemp));
try
  dm1.Query1.Open;
except
  ShowMessage('Error');
  DM1.Query1.SQL.SavetoFile(SALVA_NOME('C:\SGE\ERROSQL\','EX'));
  Exit;
  end;
lntnum:=dm1.Query1.FieldByName('max(length(TPD_CHAVE))').AsInteger;
dm1.Query1.Close;
dm1.Query1.Sql.Clear;
dm1.Query1.SQL.Add(' select max(TPD_CHAVE) from CADTPDRE ');
dm1.Query1.SQL.Add(' where (TPD_CHAVE is not null) '+codemp2('TPD_CODEMP',codemp));
dm1.Query1.SQL.Add(' and length(TPD_CHAVE)='+IntToStr(lntnum));
try
  dm1.Query1.Open;
except
  ShowMessage('Error');
  DM1.Query1.SQL.SavetoFile(SALVA_NOME('C:\SGE\ERROSQL\','EX'));
  Exit;
  end;
prxnum:=dm1.Query1.FieldByName('max(TPD_CHAVE)').AsString;
if prxnum = '' then
  prxnum :='1'
else
  prxnum:=IntToStr(dm1.Query1.FieldByName('max(tpd_chave)').AsInteger+1);
edt_chave.Text:=prxnum;
ultcrc:=copy(prxnum,lntnum,1);
{if UpperCase(Copy(ultcrc,0,1)) in ['A'..'Z'] then
  begin
  ShowMessage(ultcrc);
  end
else
  begin
  prxnum:=copy(prxnum,0,lntnum-2)+IntToStr(StrToInt(ultcrc)+1);
  ShowMessage(prxnum);
  end;}
end;

procedure Tfrm_tpdre.bb_alterarClick(Sender: TObject);
begin
edt_chave.enabled:=False;
PC1.ActivePage:=ts_manutencao;
Status:=2;
atubotClick(self);
edt_chave.ReadOnly:=True;
edt_nome.SetFocus;
end;

procedure Tfrm_tpdre.bb_gravarClick(Sender: TObject);
begin
if dm1.TB_TPDRE.Active=False then
  begin
  dm1.TB_TPDRE.Active:=True;
  end;
if Status=1 then
  begin
  dm1.TB_TPDRE.Insert;
  if fdeixanum(edt_chave.Text)='0' then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.CLEAR;
    DM1.Query1.SQL.Add(' select max(TPD_CHAVE) from CADTPDRE ');
    DM1.Query1.SQL.Add(fla_EmpBaixaAlta(0,'CADTPDRE',' where ',codemp,' TPD_CODEMP',''));
    DM1.Query1.Open;
    edt_chave.text:=IntToStr(DM1.Query1.FieldByName('max(TPD_CHAVE)').AsInteger+1);
    end;
  dm1.TB_TPDRETPD_CHAVE.AsString:=edt_chave.Text;
  end
else if Status=2 then
  begin
  dm1.TB_TPDRE.Edit;
  end;
dm1.TB_TPDRETPD_DESCRICAO.AsString:=edt_nome.Text;
dm1.TB_TPDRETPD_COMPOEM.AsInteger:=cb_compoem.ItemIndex+3;
dm1.TB_TPDRETPD_DESPOP.AsInteger :=IIF(cb_compoem.ItemIndex+3<4,1,2);
dm1.TB_TPDRETPD_VINCULO.AsInteger:=rg_vinculo.ItemIndex;
dm1.TB_TPDRE.Post;
edt_chave.enabled:=True;
Status:=0;
atubotClick(self);
end;

procedure Tfrm_tpdre.bb_cancelarClick(Sender: TObject);
begin
Status:=0;
atubotClick(self);
bb_buscarClick(self);
PC1.ActivePage:=ts_lista;
end;

procedure Tfrm_tpdre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (Status=1) or (Status=2) then
  begin
  if Fmensagem('Registro está em Inclusão ou Alteração. Deseja gravar??',0,['1','2'],0)=mrYes then
    begin
    bb_gravarClick(self);
    end
  else
    begin
    Action:=caNone;
    Exit;
    end;
  end;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_tpdre.FormActivate(Sender: TObject);
begin
bb_cancelarClick(self);
end;

procedure Tfrm_tpdre.bb_excluirClick(Sender: TObject);
begin
if not(dm1.TB_TPDRETPD_CHAVE.IsNull) and (fmensagem('Deseja excluir o registro??',0,['1','2'],0)=mrYes) then
  begin
  dm1.TB_TPDRE.Delete;
  end
else
  begin
  PC1.ActivePage:=ts_lista;
  end;
end;

procedure Tfrm_tpdre.bb_buscarClick(Sender: TObject);
begin
if cb_tipo.ItemIndex=1 then
  begin
  flcadtpdre(0,1,edt_buscar.Text);
  end
else
  begin
  flcadtpdre(1,1,fdeixanum2(edt_buscar.Text));
  end;
end;

procedure Tfrm_tpdre.edt_buscarExit(Sender: TObject);
begin
if cb_tipo.ItemIndex=0 then
  begin
  edt_buscar.Text:=fdeixanum2(edt_buscar.Text);
  end;
end;

procedure Tfrm_tpdre.DBGrid1DblClick(Sender: TObject);
Begin
if cons<>'consulta' then
  PC1.ActivePage:=ts_lista
else
  Close;
end;

procedure Tfrm_tpdre.edt_buscarChange(Sender: TObject);
begin
bb_buscarClick(SELF);
end;

procedure Tfrm_tpdre.btn_importarClick(Sender: TObject);
begin
if fmensagem('Este processo substituira todos os registros existentes.'+#13
            +'Deseja Continuar??',0,['1','2'],1)=mrYes then
  begin
  dm1.Query1.close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.add(' delete from cadtpdre where tpd_codemp='+inttostr(codemp));
  try
    dm1.query1.execsql;
  except
    fmensagem('Falha ao Deletar os registros!!!',0,['0'],0);
    Exit;
    end;
  dm1.tb_ccu.close;
  dm1.tb_ccu.sql.clear;
  dm1.tb_ccu.sql.add(' select * from cadccu where cccodemp='+IntToStr(codemp));
  dm1.tb_ccu.open;
  dm1.tb_ccu.first;
  while not dm1.tb_ccu.Eof do
    begin
    dm1.TB_TPDRE.Insert;
    dm1.TB_TPDRETPD_CODEMP.AsInteger  :=DM1.Tb_CCUCCCODEMP.AsInteger;
    dm1.TB_TPDRETPD_CHAVE.AsString    :=DM1.Tb_CCUCCCODCCU.AsString;
    dm1.TB_TPDRETPD_DESCRICAO.AsString:=DM1.Tb_CCUCCNOME.AsString;
    dm1.TB_TPDRETPD_DESPOP.AsInteger  :=0;
    dm1.TB_TPDRETPD_VINCULO.AsInteger :=0;
    dm1.TB_TPDRETPD_COMPOEM.AsInteger :=3;
    dm1.TB_TPDRE.Post;
    dm1.Tb_CCU.Next;
    end;
  end;
end;

procedure Tfrm_tpdre.Src_TPDREDataChange(Sender: TObject; Field: TField);
begin
if not (DM1.TB_TPDRETPD_CHAVE.IsNull) and not ((Status=1) or (Status=2)) then
  begin
  edt_chave.Text:=DM1.TB_TPDRETPD_CHAVE.AsString;
  edt_nome.Text :=DM1.TB_TPDRETPD_DESCRICAO.AsString;
  cb_compoem.ItemIndex:=DM1.TB_TPDRETPD_COMPOEM.AsInteger-3;
  rg_vinculo.ItemIndex:=DM1.TB_TPDRETPD_VINCULO.AsInteger;
  end;
end;

end.
