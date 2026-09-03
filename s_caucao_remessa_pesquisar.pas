unit s_caucao_remessa_pesquisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, S_SelEmp;

type
  Tfrm_caucao_remessa_pesquisar = class(TForm)
    Panel1: TPanel;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    lbl_codcli: TLabel;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label1: TLabel;
    edt_codbco: TEdit;
    lbx_codbco: TListBox;
    omitir_bco: TCheckBox;
    U_Dup: TUpdateSQL;
    Src_Dup: TDataSource;
    Qr_Dup: TQuery;
    Qr_DupOK: TStringField;
    DBGrid1: TDBGrid;
    Qr_DupCRNUMERO: TFloatField;
    Qr_DupCRID_NEW: TFloatField;
    Qr_DupCRDESD: TStringField;
    Qr_DupCRDUP: TFloatField;
    Qr_DupCRDTEMIS: TDateTimeField;
    Qr_DupCRDTVCTO: TDateTimeField;
    Qr_DupCRVALOR: TFloatField;
    Qr_Dupcrazao: TStringField;
    Qr_Dupparcela: TStringField;
    bbAtualizar: TBitBtn;
    SAIR: TBitBtn;
    cb_todos: TCheckBox;
    bbCancelar: TBitBtn;
    Qr_DupCODBCO_LDR: TFloatField;
    Qr_DupCRID_LDR_NEW: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbAtualizarClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    procedure fbuscarDados(pMarcar: String);

  public
    { Public declarations }
    mSelecionar: boolean;
    
    Form_SelEmp: TFrm_SelEmp;

  end;

var
  frm_caucao_remessa_pesquisar: Tfrm_caucao_remessa_pesquisar;

implementation

uses Func, S_DM1, lerarq, func_excecoes;

{$R *.dfm}

procedure Tfrm_caucao_remessa_pesquisar.SAIRClick(Sender: TObject);
begin
mSelecionar:=true;
close;
end;

procedure Tfrm_caucao_remessa_pesquisar.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO,','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      END
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      edt_codcli.text := '';
      edt_CODCLI.SetFocus;
      end;
   end;

end;

procedure Tfrm_caucao_remessa_pesquisar.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text:=fdeixanum2(edt_codbco.Text);
if Trim(edt_codbco.Text)<>'' then
   begin
   if flqr1('BCBANCO,','C','CADBCO','N','BCCODBCO',edt_codcli.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbco.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      edt_codbco.text := '';
      edt_codbco.SetFocus;
      END
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      edt_codbco.text := '';
      edt_codbco.SetFocus;
      end;
   end;


end;

procedure Tfrm_caucao_remessa_pesquisar.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(edt_CODCLI.Text)<>'' then
      edt_CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure Tfrm_caucao_remessa_pesquisar.edt_codbcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODbco.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(edt_CODbco.Text)<>'' then
      edt_CODbcoExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure Tfrm_caucao_remessa_pesquisar.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure Tfrm_caucao_remessa_pesquisar.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure Tfrm_caucao_remessa_pesquisar.fbuscarDados(pMarcar: String);
var
mDataPesq: string;
begin
if (edt_datini.Date>pDataNula) and (edt_datfin.Date>pDatanula) then
   begin
   if edt_datfin.Date<edt_datini.Date then
      begin
      MessageDlg('Data Inicial Maior que final é invalido',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      exit;
      end;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADPDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
mDataPesq:='CRDTVCTO';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');

la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADLDR','CODEMP' ,'CRCODEMP','LDR_ID_NEW' ,'CRID_LDR_NEW');

Qr_Dup.Close;
Qr_Dup.sql.clear;
Qr_dup.sql.add('select '+QuotedStr(pMarcar)+' as OK'
             +', CRNUMERO , CRDESD,CRDUP'
             +',crazao,CRDTEMIS,CRDTVCTO'
             +',CRVALOR, TO_CHAR(CRNUMPARC) || '+quotedstr('/')+' || TO_CHAR(CRQTDPARC) AS parcela '
             +',CRID_NEW,CODBCO AS CODBCO_LDR,CRID_LDR_NEW from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
             +'       '+la_Join
             +'       where CRCODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
             +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

Qr_dup.sql.add(' and CRLOTE_CAUCAO=0 AND CRSTATUS < 1');

if trim(la_Empresas)<>'' then
   Qr_dup.sql.add(' and '+la_Empresas);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  Qr_dup.sql.Add(' and  CCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_bco);
if trim(mcinst2)<>'' then
  Qr_dup.sql.Add(' and  CRCODBCO '+mcinst2);

if trim(edt_datini.Text)<>'/  /' then
   Qr_DUP.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,edt_datini.Date));

if edt_datfin.Date>pDatanula then
   Qr_DUP.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,FALSE,edt_datfin.Date));

//   ex_erroSql_Novo(qr_dup,215,'_stru '+'caucao_remessa_pesquisar','user');

try
   Qr_Dup.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(qr_dup,215,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   end;
   end;




end;

procedure Tfrm_caucao_remessa_pesquisar.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mSelecionar:=false;
end;

procedure Tfrm_caucao_remessa_pesquisar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

end;

procedure Tfrm_caucao_remessa_pesquisar.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

end;

procedure Tfrm_caucao_remessa_pesquisar.bbAtualizarClick(Sender: TObject);
begin
fbuscarDados('X');
end;

procedure Tfrm_caucao_remessa_pesquisar.cb_todosClick(Sender: TObject);
begin
fbuscarDados(iif(cb_todos.Checked,'X',' '));
end;

procedure Tfrm_caucao_remessa_pesquisar.DBGrid1DblClick(Sender: TObject);
begin
Qr_Dup.Edit;
Qr_DupOK.Value:=iif(Qr_DupOK.AsString='X',' ','X');
Qr_Dup.post;
end;

procedure Tfrm_caucao_remessa_pesquisar.bbCancelarClick(Sender: TObject);
begin
mSelecionar:=false;
close;
end;

procedure Tfrm_caucao_remessa_pesquisar.FormShow(Sender: TObject);
begin
mSelecionar:=false;
edt_datini.date:=date-7;
bbAtualizarClick(self);
end;

end.
