unit S_CCU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls, RxDBComb, DBTables;

type
  Tfrm_CCU = class(TForm)
    tlb_centro: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    btn_sair: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_incluir: TBitBtn;
    Panel_edicao: TPanel;
    Label2: TLabel;
    edt_codccu: TDBEdit;
    Label3: TLabel;
    edt_nomccu: TDBEdit;
    Label4: TLabel;
    DBCB_NatDC: TDBComboBox;
    Grid: TDBGrid;
    cb_usadre: TCheckBox;
    coddre: TDBEdit;
    lbl_dre_codigo: TLabel;
    lbl_dre_descricao: TLabel;
    nomdre: TDBEdit;
    bbDre: TButton;
    DBNavigator1: TDBNavigator;
    gb_dadoscont: TGroupBox;
    Label7: TLabel;
    dbcb_categ: TRxDBComboBox;
    dbcb_folha: TRxDBComboBox;
    Label8: TLabel;
    db_codcta_deb: TDBEdit;
    Label9: TLabel;
    db_codhis_deb: TDBEdit;
    Label10: TLabel;
    db_codcta_cred: TDBEdit;
    Label11: TLabel;
    db_codhis_cred: TDBEdit;
    DataSource1: TDataSource;
    Label5: TLabel;
    db_codccu_deb: TDBEdit;
    Label6: TLabel;
    db_codccu_cred: TDBEdit;
    GroupBox10: TGroupBox;
    RxDBCB_SITCAD: TRxDBComboBox;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_sairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDblClick(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure edt_codccuExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_usadreClick(Sender: TObject);
    procedure coddreExit(Sender: TObject);
    procedure coddreKeyPress(Sender: TObject; var Key: Char);
    procedure bbDreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure edt_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    function FExisteLancamentos(pCodCcu: String): boolean;

  public
    { Public declarations }
  end;

var
  frm_CCU : Tfrm_CCU;
  mcodccu_ant : String;
  mOper_Ccu   : Integer=-1; // -1 nada 0-Incluido 1-Alterando
  bbccinc_true: Boolean = true;
  bbccalt_true: Boolean = true;
  bbccexc_true: Boolean = true;
  ccu_ori     : String;
  
implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4, S_contas;

{$R *.dfm}

procedure Tfrm_CCU.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Centro de Custo';

cb_localizar.ItemIndex := 0;

moper_ccu:=0;

if flcadactab(0,0,IntToStr(codcar),'CADCCU') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbccinc_true := False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbccalt_true := False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbccexc_true := False;
   end
else
   begin
   bbccinc_true:=true;
   bbccalt_true:=true;
   bbccexc_true:=true;
   end;

btn_incluir.Enabled := bbccinc_true;
btn_alterar.Enabled := bbccalt_true;
btn_excluir.Enabled := bbccexc_true;
btn_cancelar.Enabled:= False;
btn_atualizarClick(self);
end;

procedure Tfrm_CCU.btn_incluirClick(Sender: TObject);
var
 lntnum: String;
 prxnum: String;
begin
Self.Caption           := 'Manutenção no Cadastro de Centro de Custo - [Inclusão]';
DM1.Tb_CCU.Append;
DBNavigator1.Enabled   := False;
mCodCCU_Ant            := DM1.Tb_CCUCCCODCCU.AsString;
DM1.Tb_CCUCCNAT.Value  :='C';
DBCB_NatDc.ItemIndex   := 0;
mOper_Ccu              := 0;
edt_codccu.Enabled     := True;
btn_incluir.Enabled    := False;
btn_alterar.Enabled    := False;
btn_excluir.Enabled    := False;
btn_cancelar.Enabled   := True;
btn_gravar.Enabled     := True;
Grid.Enabled           := False;
btn_atualizar.Enabled  := False;
edt_nomccu.ReadOnly    := False;
DBCB_NatDC.ReadOnly    := False;
coddre.ReadOnly        := False;

db_codcta_deb.ReadOnly         := False;
db_codcta_cred.ReadOnly        := False;
db_codhis_deb.ReadOnly         := False;
db_codhis_cred.ReadOnly        := False;
db_codccu_deb.ReadOnly         := False;
db_codccu_cred.ReadOnly        := False;

gb_dadoscont.Enabled := true;

edt_codccu.SetFocus;

dm1.Query1.Close;
dm1.Query1.Sql.Clear;
dm1.Query1.SQL.Add(' select max(length(cccoddre)) from cadccu ');
dm1.Query1.SQL.Add(' where cccodemp is not null '+codemp2('cccodemp',codemp));
try
   dm1.Query1.Open;
except
   dm1.Query1.SQL.SAVETOFILE('C:\SQL.TXT');
   end;
lntnum:=dm1.Query1.FieldByName('max(length(cccoddre))').AsString;
dm1.Query1.Close;
dm1.Query1.Sql.Clear;
dm1.Query1.SQL.Add(' select max(cccoddre) from cadccu ');
dm1.Query1.SQL.Add(' where cccodemp is not null '+codemp2('cccodemp',codemp));
dm1.Query1.SQL.Add(' and length(cccoddre)='+lntnum);
dm1.Query1.Open;
prxnum:=dm1.Query1.FieldByName('max(cccoddre)').AsString;
end;

procedure Tfrm_CCU.btn_alterarClick(Sender: TObject);
begin

Self.Caption := 'Manutenção no Cadastro de Centro de Custo - [Alteração]';
if DM1.Tb_CCUCCCODCCU.IsNull then
  begin
  Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
  Exit;
  end;
DM1.Tb_CCU.Edit;
DBNavigator1.Enabled:=False;
if DM1.Tb_CCUCCCODDRE.IsNull then
  begin
  dm1.Tb_CCUCCCODDRe.AsFloat:=0;
  end;

mCodCCU_Ant := DM1.Tb_CCUCCCODCCU.AsString;
mOper_Ccu    :=1;
edt_codccu.Enabled   := False;
edt_nomccu.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
edt_nomccu.ReadOnly  := False;
DBCB_NatDC.ReadOnly  := False;
coddre.ReadOnly      := False;

db_codcta_deb.ReadOnly         := False;
db_codcta_cred.ReadOnly        := False;
db_codhis_deb.ReadOnly         := False;
db_codhis_cred.ReadOnly        := False;
db_codccu_deb.ReadOnly         := False;
db_codccu_cred.ReadOnly        := False;

gb_dadoscont.Enabled := true;
end;

procedure Tfrm_CCU.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_CCUCCCODCCU.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;
if FExisteLancamentos(DM1.Tb_CCUCCCODCCU.Asstring) then
   begin
   exit;
   end;


if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.Asstring,
              'CCCODNOV','CCDATHOR','CCCODUSR',
              'CCSTATUS',['CCCODCCU'],[DM1.Tb_CCUCCCODCCU.AsString]
              ,DM1.Tb_CCU);
   FAtualizaBanco(2,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
   ,['CCCODCCU'],[DM1.Tb_CCUCCCODCCU.AsString]
    ,DM1.Tb_CCU);
   DM1.Tb_CCu.Delete;
   end;
end;

procedure Tfrm_CCU.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Centro de Custo';

if (mOper_ccu=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
   ,['CCCODCCU'],[mcodccu_ant]
    ,DM1.Tb_CCU);
   end;
if DM1.Tb_CCu.State in [dsEdit,dsInsert] then
   DM1.Tb_CCu.Cancel;
DBNavigator1.Enabled := True;   
btn_incluir.Enabled  := bbccinc_true;
btn_alterar.Enabled  := bbccalt_true;
btn_excluir.Enabled  := bbccexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
edt_nomccu.ReadOnly  := True;
DBCB_NatDC.ReadOnly  := True;
coddre.ReadOnly      := True;

db_codcta_deb.ReadOnly         := true;
db_codcta_cred.ReadOnly        := true;
db_codhis_deb.ReadOnly         := true;
db_codhis_cred.ReadOnly        := true;
db_codccu_deb.ReadOnly         := true;
db_codccu_cred.ReadOnly        := true;

gb_dadoscont.Enabled := false;

mOper_ccu:=-1;

end;

procedure Tfrm_CCU.btn_atualizarClick(Sender: TObject);
begin
if btn_gravar.Enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                 +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes : btn_gravar.Click;
   else
     btn_cancelar.Click;
     end;
   end;
flcadccu(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure Tfrm_CCU.btn_gravarClick(Sender: TObject);
begin
edt_nomccu.text:=trim(edt_nomccu.text);
if (DM1.Tb_CCUCCCODCCU.Isnull) then
   begin
   fmensagem('Favor informar Código do Centro de Custo !',0,['0'],0);
   edt_codccu.SetFocus;
   exit;
   end;

if (DM1.Tb_CCUCCNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nomCCu.SetFocus;
   exit;
   end;
if (DM1.Tb_CcUCCNAT.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   dbcb_NATDC.SetFocus;
   exit;
   end;

DBNavigator1.Enabled   := True;

if moper_ccu=1 then
   begin
   FGerarAntes(8,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.Asstring,
              'CCCODNOV','CCDATHOR','CCCODUSR',
              'CCSTATUS',['CCCODCCU'],[mCodCCU_Ant]
              ,DM1.Tb_CCU);

   end;

FAtualizaBanco(1,'CADCCU','CCCODEMP',DM1.Tb_CCUCCCODEMP.AsString
,['CCCODCCU'],[mCodCCU_Ant]
 ,DM1.Tb_CCU);
mOper_ccu:=-1;
DM1.Tb_CCU.Post;
btn_cancelarClick(self);
end;


procedure Tfrm_CCU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fDeletaPadroes(-1,'_CCU','');
fGravaPadroes(-1,'CB_USADRE','checked','_CCU',iif(cb_usadre.Checked,'true','false'));

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_CCU.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if btn_gravar.enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: btn_gravar.Click;
      mrNo : btn_cancelar.Click;
   else
      CanClose := False;
      end;
   end;
end;

procedure Tfrm_CCU.btn_sairClick(Sender: TObject);
begin
Close;
end;

procedure Tfrm_CCU.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key = vk_insert then
  btn_incluir.Click;

// if key = vk_F2 then
//   btn_alterar.Click;

//if key = vk_F3 then
//  btn_cancelar.Click;
if key = vk_F9 then
  btn_excluir.Click;
if key = vk_F10 then
  btn_gravar.Click;
end;

procedure Tfrm_CCU.GridDblClick(Sender: TObject);
begin
   if ccu_ori = '' then begin
      if not btn_incluir.Enabled = True then
          btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
   end;
end;

procedure Tfrm_CCU.GridExit(Sender: TObject);
begin
   if ccu_ori <> '' then begin
      ModalResult := MrOk;
      ccu_ori     := '';
   end;
end;

procedure Tfrm_CCU.edt_codccuExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM1.Tb_CCUCCCODCCU.Value := '';
   Exit;
end;

if DM1.Tb_CCUCCCODCCU.Isnull then
   Exit;

if (mOPer_CCU=0) and (DM1.Tb_CCUCCCODCCU.AsString<>mCodccu_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CCNOME from CADCCU where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCCU',[]),'',' CCCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CCCODCCU=:CODCCU ');
   DM1.Query1.ParambyName('CODCCU').AsString:=DM1.Tb_CCUCCCODCCU.AsString;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CCNOME').AsString,0,['0'],0);
      edt_codccu.setFocus;
      exit;
      end;

   end;

end;

procedure Tfrm_CCU.FormActivate(Sender: TObject);
begin
if codusr<>1111 then
  begin
  cb_usadre.Visible:=false;
  end
else
  begin
  cb_usadre.Visible:=True;
  end;
{
if cb_usadre.Checked=True then
  begin
  Panel_edicao.Height:=100;
  end
else
  begin
  Panel_edicao.Height:=55;
  end;
}
if flfilpad(-1,'_CCU','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_USADRE',[]) then
      cb_usadre.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
cb_usadreClick(self);
end;

procedure Tfrm_CCU.cb_usadreClick(Sender: TObject);
begin
if cb_usadre.Checked=True then
  begin
  coddre.Visible:=True;
  nomdre.Visible:=True;
  bbDre.Visible :=True;
  lbl_dre_codigo.Visible:=True;
  lbl_dre_descricao.Visible:=True;
  end
else
  begin
  coddre.Visible:=false;
  nomdre.Visible:=false;
  bbDre.Visible :=false;
  lbl_dre_codigo.Visible:=false;
  lbl_dre_descricao.Visible:=false;
  end;
end;

procedure Tfrm_CCU.coddreExit(Sender: TObject);
begin
if dm1.Tb_CCU.State in [dsedit,dsinsert] then
  begin
  if trim(coddre.Text)='' then
    coddre.Text:='0';
  if not flqr1('TPD_DESCRICAO','TPD_','CADTPDRE','N','TPD_CHAVE',chr(39)+coddre.Text+chr(39)) and (Trim(coddre.text)<>'0') then
     BEGIN
     fmensagem('Codigo de DRE não Cadastrado!',0,['0'],0);
     coddre.SetFocus;
     end;
  end;
end;

procedure Tfrm_CCU.coddreKeyPress(Sender: TObject; var Key: Char);
begin
if dm1.Tb_CCU.State in [dsedit,dsinsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
     begin
     coddre.Text:=trim(fChamaTPDRE(0,'consulta',key));
     key := #0;
     end;
  end;
end;

procedure Tfrm_CCU.bbDreClick(Sender: TObject);
begin
if fmensagem('Esta opção ira sobrepor os já existentes'+#13
            +' Deseja Continurar?',0,['1','2'],0)=mrYes then
  begin
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' update CADCCU set CCCODDRE=CCCODCCU ');
  dm1.Query1.ExecSQL;
  fmensagem('Concluido!',0,['0'],0);
  end;
btn_atualizarClick(Self);
end;

procedure Tfrm_CCU.FormShow(Sender: TObject);
begin
edt_conteudo.SetFocus;
end;

procedure Tfrm_CCU.DataSource1DataChange(Sender: TObject; Field: TField);
begin
if DM1.Tb_CCUCCEXP_CATEG.AsInteger=1 then
   begin
   dbcb_folha.Items.Clear;
   dbcb_folha.Items.Add('0001 - Tributo Folha INSS');
   dbcb_folha.Items.Add('0002 - Tributo Folha INSS 13o. Salario');
   dbcb_folha.Items.Add('0003 - Tributo Folha IRRF');
   dbcb_folha.Items.Add('0004 - Tributo Folha FGTS');
   dbcb_folha.Items.Add('0005 - Tributo Folha PIS');
   dbcb_folha.Items.Add('0006 - folha Normal');
   dbcb_folha.Items.Add('0007 - Folha Ferias');
   dbcb_folha.Items.Add('0008 - Folha 13o. Salario - 1a Parcela');
   dbcb_folha.Items.Add('0009 - Folha 13o. Salario - 2a Parcela');
   dbcb_folha.Items.Add('0010 - Folha Rescisão');
   dbcb_folha.Items.Add('0011 - Folha Adiantamento Salarial');
   dbcb_folha.Values.Clear;
   dbcb_folha.Values.Add('0001');
   dbcb_folha.Values.Add('0002');
   dbcb_folha.Values.Add('0003');
   dbcb_folha.Values.Add('0004');
   dbcb_folha.Values.Add('0005');
   dbcb_folha.Values.Add('0006');
   dbcb_folha.Values.Add('0007');
   dbcb_folha.Values.Add('0008');
   dbcb_folha.Values.Add('0009');
   dbcb_folha.Values.Add('0010');
   dbcb_folha.Values.Add('0011');
   end
else if DM1.Tb_CCUCCEXP_CATEG.AsInteger=2 then
   begin
   dbcb_folha.Items.Clear;
   dbcb_folha.Items.Add('0001 - Guia ICMS-Código de Recolhimento 108');
   dbcb_folha.Items.Add('0002 - Guia ICMS-Código de Recolhimento 124(SUBSTITUTO TRIBUTARIO OPER.POSTERIOR)');
   dbcb_folha.Items.Add('0003 - Guia ICMS-Código de Recolhimento 124(SUBSTITUTO TRIBUTARIO - APENDICE I)');
   dbcb_folha.Items.Add('0004 - DARF SIMPLES ou DAS SIMPLES NACIONAL');
   dbcb_folha.Items.Add('0005 - DARF PIS');
   dbcb_folha.Items.Add('0006 - DARF COFINS');
   dbcb_folha.Items.Add('0007 - DARF CSSL');
   dbcb_folha.Items.Add('0008 - DARF IRPJ');
   dbcb_folha.Values.Clear;
   dbcb_folha.Values.Add('0001');
   dbcb_folha.Values.Add('0002');
   dbcb_folha.Values.Add('0003');
   dbcb_folha.Values.Add('0004');
   dbcb_folha.Values.Add('0005');
   dbcb_folha.Values.Add('0006');
   dbcb_folha.Values.Add('0007');
   dbcb_folha.Values.Add('0008');
   end;


end;

procedure Tfrm_CCU.edt_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
query_seq: tquery;
begin
if (key=113) or  (key=114) then  // [f3] ou [f4]
   begin
   query_seq:=tquery.create(nil);
   query_seq.databasename:=DM1.SG_ASSOC.databasename;
   if key=113 then
      query_seq.SQL.add('select fproximasequenciaalfa('+QuotedStr('CADCCU')+', '+QuotedStr('CCCODCCU')+','+QuotedStr((Sender as TDBEdit).Text)+ ') from dual')
   else
      query_seq.SQL.add('select fPrimeirasequenciaalfa('+QuotedStr('CADCCU')+', '+QuotedStr('CCCODCCU')+','+QuotedStr((Sender as TDBEdit).Text)+') from dual');
   try
      query_seq.Open;
      edt_codccu.Text:=query_seq.fields[0].asstring;
   except on e : exception do
      begin
      ex_erroSql_Novo(Query_seq,600,'SGE '+E.Message ,'CADCCU');
      end;
      end;
   query_seq.close;
   freeandnil(query_seq);

   end;



end;

function Tfrm_CCU.FExisteLancamentos(pCodCcu: String): boolean;
var
form_contas: TFrm_Contas;
begin
application.Createform(TFrm_Contas, form_contas);
form_contas.qr_contas.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
form_contas.panel_cab.Caption:='Documentos que utilizam o centro de custo '+pCodccu+'. *****NÃO PODERÁ SER EXCLUIDO*****';
form_contas.qr_contas.sql.Clear;
form_contas.qr_contas.sql.Add('select '+QuotedStr('Caixa')+' as cta_tipo_conta'
                             +' , numdoc as cta_numero  '
                             +', '+QuotedStr(' ')+' as cta_desd'
                             +',  case when tipo='+QuotedStr('FR')+' then '+QuotedStr('Fornecedor:')
                             +'        when tipo='+QuotedStr('US')+' then '+QuotedStr('Usuario:')
                             +'        when tipo='+QuotedStr('TR')+' then '+QuotedStr('transportadora:')
                             +'        when tipo='+QuotedStr('VD')+' then '+QuotedStr('vendedor:')
                             +'        else '+QuotedStr('cliente: ')+' end'
                             +' || nome as cta_participante '
                             +', datadp as cta_dtvcto '
                             +' ,  dataref as cta_dtemis '
                             +' , valorp as cta_valor from cadldr '
                             +' where CODCC='+quotedstr(pCodccu)
                             +' and status<>9 '
                             +' union all '
                             +'select '+QuotedStr('A Receber')+' as cta_tipo_conta '
                             +', to_char(crnumero) as cta_numero '
                             +', crdesd as cta_desd '
                             +', '+QuotedStr('cliente: ')+' || crazao as cta_participante '
                             +', crdtvcto as cta_dtvcto '
                             +', crdtemis as cta_dtemis '
                             +', crvalor as cta_valor from caddar,cadcli '
                            +' where ccodcli=crcodcli '
                            +' and CRCODCC='+quotedstr(pCodccu)
                            +' and crstatus<>9 '

                            +' union all '
                            +' select '+QuotedStr('A Pagar')+' as cta_tipo_conta '
                            +' , to_char(canumero) as cta_numero '
                            +' , cadesd as cta_desd '
                            +' , '+QuotedStr('Fornecedor: ')+' || frazao as cta_participante '
                            +' , cadtvcto as cta_dtvcto '
                            +' , cadtemis as cta_dtemis '
                            +' , cavalor as cta_valor from caddap,cadfor '
                            +' where fcodfor=cacodfor '
                            +' and CACODCC='+quotedstr(pCodccu)
                            +' and cAstatus<>9 '
);



try
   form_contas.qr_contas.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(form_contas.qr_contas,669,'_stru '+e.message,'user');
   end;
   end;
if form_contas.qr_contas.IsEmpty then
   begin
   result:=false;
   form_contas.qr_contas.close;
   freeandnil(form_contas);
   end
else
   begin
   form_contas.ShowModal;
   form_contas.qr_contas.close;
   freeandnil(form_contas);
   result:=true;
   end;

end;

end.
