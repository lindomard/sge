unit S_Liberar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func,s_DM4, StdCtrls, Grids, DBGrids, DBCtrls,
  ExtCtrls, Buttons,S_Usr,lerarq,S_SitCre;

type
  TFrm_Liberar = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Panel2: TPanel;
    bbSitCred: TBitBtn;
    Label3: TLabel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    Label2: TLabel;
    SENHA: TEdit;
    GroupBox4: TGroupBox;
    Memo_Resp: TMemo;
    Panel3: TPanel;
    bbAutorizar: TBitBtn;
    bbBloqueia: TBitBtn;
    bbSair: TBitBtn;
    bbAtualizar: TBitBtn;
    cb_manter_senha: TCheckBox;
    cb_manter_resp: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure MCODUSRExit(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbAutorizarClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Memo_RespExit(Sender: TObject);
    procedure bbBloqueiaClick(Sender: TObject);
    procedure bbSitCredClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Liberar: TFrm_Liberar;
  form_SitCre                      : TFrm_SitCre;

  mContaBlq: Integer=0;


implementation

{$R *.dfm}

procedure TFrm_Liberar.FormCreate(Sender: TObject);
begin
DM4.Tb_LSenLSDATALIB.DisplayFormat:=fdathor;
DM4.Tb_LSenLSDATASOL.DisplayFormat:=fdathor;
DM4.Tb_LSen.Close;
DM4.Tb_LSenLSDATALIB.DisplayFormat:=fdathor;
DM4.Tb_LSenLSDATASOL.DisplayFormat:=fdathor;

end;

procedure TFrm_Liberar.MCODUSRExit(Sender: TObject);
begin
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if (MCODUSR.Text='1111') and (codusr=1111) then
   NOMUSR.Text:='Programador(Master)'
else
   begin
   if flcadusr(1,0,Trim(MCODUSR.Text)) then
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value
   else
      begin
      MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
      MCODUSR.SetFocus;
      end;
   end;

end;

procedure TFrm_Liberar.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_Liberar',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Liberar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Liberar.FormActivate(Sender: TObject);
begin

MCODUSR.Text:=IntToStr(codusr);
if codusr=1111 then
   NOMUSR.Text:='Programador(Master)'
else
   begin
   if flcadusr(1,0,Trim(MCODUSR.Text)) then
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;
bbAtualizar.Click;
end;

procedure TFrm_Liberar.bbAutorizarClick(Sender: TObject);
var
query_exe: tQuery;
begin
if DM4.Tb_LSenLSCODIGO.IsNull then
   begin
   MessageDlg('Favor Selecionar um ítem válido!',mtWarning,[mbOk],0);
   exit;
   end;
if Trim(SENHA.Text)='' then
   begin
   MessageDlg('Favor Digitar uma Senha válida!',mtWarning,[mbOk],0);
   exit;
   end;
flcadpar02(0,0,ValInt(MCODUSR.Text),DM4.Tb_LSenLSCODTAB.AsString);

//   if fValidaSenha(0,codusr,4,0,query_nfe.fieldbyName('P1CODCLI').Value,0,0,0,'Senha para Excluir o Pedido apos a emissão da nota fiscal','')<>0 then

//if (Crip(SENHA.Text,DM4.Tb_LSenLSCODTAB.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
if (Crip(SENHA.Text,valint(MCODUSR.Text))=DM4.Tb_Par02PA2SENHA.Value)
   or (Crip(SENHA.Text,0)=DM4.Tb_Par02senhageral.Value) or
   smaster(SENHA.Text) then
   begin
   query_exe:=tQuery.Create(nil);
   query_exe.DatabaseName:='SG_ASSOC';

   query_exe.close;
   query_exe.sql.clear;
   query_exe.sql.Add('Select LSSTATUS from CADLSEN where '+
                     iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' LSCODEMP=0'+intTostr(codemp)+' AND ')
                     +' LSCODIGO=0'+DM4.Tb_LSenLSCODIGO.AsString);
   query_exe.Open;
   if (query_exe.Eof) or (query_exe.Fields[0].AsInteger<>0) then
      begin
      MessageDlg('Ja avaliado por outro usuario!',mtInformation,[mbOk],0);
      bbAtualizar.Click;
      exit;
      end;

   query_exe.close;
   query_exe.Sql.Clear;


   query_exe.Sql.Add('Update CADLSEN set ');
   query_exe.Sql.Add(' LSSTATUS=2');
   query_exe.Sql.Add(' ,LSTEXTORESP=:LSTEXTORESP ');
   query_exe.Sql.Add(' ,LSCODUSRLIB=:LSCODUSRLIB ');
   query_exe.Sql.Add(' ,LSDATALIB  =:LSDATALIB ');
   query_exe.Sql.Add('  where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
   query_exe.Sql.Add(' LSCODIGO=0'+DM4.Tb_LSenLSCODIGO.AsString);
   query_exe.ParamByName('LSTEXTORESP').AsString:=Memo_Resp.Text;
   query_exe.ParamByName('LSCODUSRLIB').AsFloat :=fsonumero(MCODUSR.Text);
   query_exe.ParamByName('LSDATALIB').AsDateTime:=Now;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Liberar usuário!',mtError,[mbOk],0);
      exit;
      end;
   freeandnil(query_exe);
   if not cb_manter_senha.Checked then
      SENHA.Text:='';
   if not cb_manter_resp.Checked then
      Memo_Resp.Text:='';
   bbAtualizar.Click;
   end
else
   begin
   FMensagem('Senha Inválida!',0,['0'],0);
   exit;
   end;

end;

procedure TFrm_Liberar.bbAtualizarClick(Sender: TObject);
begin
DM4.Tb_LSen.Close;
DM4.Tb_LSen.SQL.Clear;
DM4.Tb_LSen.SQL.Add('Select LSCODEMP ');
DM4.Tb_LSen.SQL.Add('       ,LSLOTSEQ');
DM4.Tb_LSen.SQL.Add('       ,LSCODIGO');
DM4.Tb_LSen.SQL.Add('       ,LSITENSBLOQ');
DM4.Tb_LSen.SQL.Add('       ,LSSTATUS');
DM4.Tb_LSen.SQL.Add('       ,LSCODUSRSOL');
DM4.Tb_LSen.SQL.Add('       ,LSDATASOL');
DM4.Tb_LSen.SQL.Add('       ,LSTEXTOMOT');
DM4.Tb_LSen.SQL.Add('       ,LSTEXTOOBS');
DM4.Tb_LSen.SQL.Add('       ,LSTEXTORESP');
DM4.Tb_LSen.SQL.Add('       ,LSCODUSRLIB');
DM4.Tb_LSen.SQL.Add('       ,LSDATALIB');
DM4.Tb_LSen.SQL.Add('       ,LSCODTAB');
DM4.Tb_LSen.SQL.Add('       ,LSCODCLI_DOC');
DM4.Tb_LSen.SQL.Add('       ,LSCODEMP_DOC');
DM4.Tb_LSen.SQL.Add('       ,LSLOTSEQ_DOC   ');
DM4.Tb_LSen.SQL.Add('       ,LSCHAVE_DOC');
DM4.Tb_LSen.SQL.Add('       ,LSORDEM_DOC');
DM4.Tb_LSen.SQL.Add('       ,LSCHAVE_DOCST');
DM4.Tb_LSen.SQL.Add('       ,NOMUSR');
DM4.Tb_LSen.SQL.Add(' from CADLSEN,CADUSR ');
DM4.Tb_LSen.SQL.Add(' where '+iif(DM1.Qr_tid.locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+InttoStr(codemp)+' and '));
//DM4.Tb_LSen.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_Tid.Locate('TINOME','CADLSEN',[]),'',' and CODEMP=LSCODEMP '));
DM4.Tb_LSen.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_Tid.Locate('TINOME','CADUSR',[]),'',' and CODEMP=LSCODEMP '));
DM4.Tb_LSen.SQL.Add(' and CODUSR=LSCODUSRSOL ');
DM4.Tb_LSen.SQL.Add(' order by LSDATASOL ');
DM4.Tb_LSen.SQL.savetofile('c:\sql.sql');
DM4.Tb_LSen.Open;

DM4.Qr_ContBlq.close;
DM4.Qr_ContBlq.Sql.Clear;
DM4.Qr_ContBlq.sql.add(' Select count(*) ');
DM4.Qr_ContBlq.sql.Add(' from CADLSEN,CADUSR ');
DM4.Qr_ContBlq.sql.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
DM4.Qr_ContBlq.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_TID.Locate('TINOME','CADUSR',[]),'',' and CODEMP=LSCODEMP '));
DM4.Qr_ContBlq.sql.Add(' and CODUSR=LSCODUSRSOL ');
DM4.Qr_ContBlq.Open;
mContaBlq:=DM4.Qr_ContBlq.Fields[0].AsInteger;

end;

procedure TFrm_Liberar.Memo_RespExit(Sender: TObject);
begin
if length(Memo_Resp.Text)>299 then
   Memo_Resp.Text:=copy(Memo_Resp.Text,1,299);
end;

procedure TFrm_Liberar.bbBloqueiaClick(Sender: TObject);
begin
if DM4.Tb_LSenLSCODIGO.IsNull then
   begin
   MessageDlg('Favor Selecionar um ítem válido!',mtWarning,[mbOk],0);
   exit;
   end;
if Trim(SENHA.Text)='' then
   begin
   MessageDlg('Favor Digitar uma Senha válida!',mtWarning,[mbOk],0);
   exit;
   end;
if trim(Memo_Resp.Text)='' then
   begin
   MessageDlg('Digite uma Mensagem como Resposta, confirmando!',mtWarning,[mbOk],0);
   Memo_Resp.SetFocus;
   exit;
   end;
if fmensagem('Quer Realmente Bloquear Esse Ítens?',0,['1','2'],2)<>mrYes then
   exit;
flcadpar02(0,0,ValInt(MCODUSR.Text),DM4.Tb_LSenLSCODTAB.AsString);
//if (Crip(SENHA.Text,DM4.Tb_LSenLSCODTAB.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
if (Crip(SENHA.Text,ValInt(MCODUSR.Text))=DM4.Tb_Par02PA2SENHA.Value)
   or (Crip(SENHA.Text,0)=DM4.Tb_Par02senhageral.Value) or
   smaster(SENHA.Text) then
   begin
   DM1.Query1.close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.Add('Select LSSTATUS from CADLSEN where '+
                     iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' LSCODEMP=0'+intTostr(codemp)+' AND ')
                     +' LSCODIGO=0'+DM4.Tb_LSenLSCODIGO.AsString);
   DM1.Query1.Open;
   if (DM1.Query1.Eof) or (DM1.Query1.Fields[0].AsInteger<>0) then
      begin
      MessageDlg('Ja avaliado por outro usuario!',mtInformation,[mbOk],0);
      bbAtualizar.Click;
      exit;
      end;
   
   DM1.Query1.close;
   DM1.Query1.Sql.Clear;

   DM1.Query1.Params.CreateParam(ftString,'LSTEXTORESP',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'LSCODUSRLIB',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'LSDATALIB',ptInput);

   DM1.Query1.Sql.Add('Update CADLSEN set ');
   DM1.Query1.Sql.Add(' LSSTATUS=8');
   DM1.Query1.Sql.Add(' ,LSTEXTORESP=:LSTEXTORESP ');
   DM1.Query1.Sql.Add(' ,LSCODUSRLIB=:LSCODUSRLIB ');
   DM1.Query1.Sql.Add(' ,LSDATALIB  =:LSDATALIB ');
   DM1.Query1.Sql.Add('  where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
   DM1.Query1.Sql.Add(' LSCODIGO=0'+DM4.Tb_LSenLSCODIGO.AsString);
   DM1.Query1.ParamByName('LSTEXTORESP').AsString:=Memo_Resp.Text;
   DM1.Query1.ParamByName('LSCODUSRLIB').AsFloat :=fsonumero(MCODUSR.Text);
   DM1.Query1.ParamByName('LSDATALIB').AsDateTime:=Now;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Liberar usuário!',mtError,[mbOk],0);
      exit;
      end;
   if not cb_manter_senha.Checked then
      SENHA.Text:='';
   if not cb_manter_resp.Checked then
      Memo_Resp.Text:='';
   bbAtualizar.Click;
   end
else
   begin
   MessageDlg('Senha Inválida!',mtWarning,[mbOk],0);
   exit;
   end;


end;

procedure TFrm_Liberar.bbSitCredClick(Sender: TObject);
begin
if DM4.Tb_LSenLSCODCLI_DOC.AsFloat<>0 then
   begin

   testeform := TFrm_Liberar(FindGlobalComponent('form_sitcre'));
   if (testeform=nil)  then
      Application.CreateForm(TFrm_SitCre, form_SitCre);
   Form_SitCre.CODCLI.Text:=DM4.Tb_LSenLSCODCLI_DOC.AsString;
   Form_Sitcre.BBAPLICAR.Click;
   if Form_SitCre.WindowState=WsMinimized then
      Form_SitCre.WindowState:=wsNormal
   else
      Form_SitCre.Show;
   end;
end;

procedure TFrm_Liberar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
mContaBlq:=0;
end;

end.
