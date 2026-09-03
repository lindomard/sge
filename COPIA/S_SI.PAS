unit S_SI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, func, StdCtrls, Buttons, s_dm4,S_Usr,lerarq, ComCtrls,S_DM1,db,dbtables;

type
  TFrm_SI = class(TForm)
    Label3: TLabel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    Label2: TLabel;
    SENHA: TEdit;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Memo_Observ: TMemo;
    Memo_Motivo: TMemo;
    Timer1: TTimer;
    bbResposta: TBitBtn;
    bbIgnorar: TBitBtn;
    spb_solicitar: TSpeedButton;
    Memo_cabecalho: TMemo;
    lbl_desconto_max: TLabel;
    procedure bbOkClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure MCODUSRExit(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure Memo_MotivoExit(Sender: TObject);
    procedure Memo_ObservExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bbRespostaClick(Sender: TObject);
    procedure bbIgnorarClick(Sender: TObject);
    procedure spb_solicitarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    musr_descmax_permitido : real;

  public
    { Public declarations }
    musr_descmax_requisitado: real;
  end;

var
  Frm_SI: TFrm_SI;
  mcodemp_doc: Real;
  mlotseq_doc: Real;
  mchave_doc: Real;
  mordem_doc: Real;
  mCodCli_doc: Real;
  mchave_docSt: String;
  mItensBloq: String;
  mCodTab: String;
  mCodSol: Real;
  mPar_CodSenha: Integer=0;
  xCont        : Integer;
implementation

uses S_Liberar_Resp, Func2;

{$R *.DFM}

procedure TFrm_SI.bbOkClick(Sender: TObject);
begin
if Trim(SENHA.Text)='' then
   begin
   fmensagem('Favor Digitar uma Senha válida!',0,['0'],0);

   exit;
   end;

if musr_descmax_requisitado>0 then
   begin
   if (musr_descmax_requisitado - 0.10)>musr_descmax_permitido then
      begin
      MessageDlg('Desconto Solicitado '+formatfloat(mcasas_pct, musr_descmax_requisitado)
                +' maximo permitido '+FormatFloat(mcasas_pct, musr_descmax_permitido)
                +'. Usuario não autorizado ',mtWarning,[mbOk],0);
      exit;
      end;
   end;
   flcadpar02(0,0,ValInt(MCODUSR.Text),IntTostr(mPar_CodSenha));
//if (Crip(SENHA.Text,mPar_CodSenha)=DM4.Tb_Par02PA2SENHA.Value)

{   MessageDlg('SENHA ORIGINAL '+senha.text+' USUARIO '+McodUsr.TEXT+' criptografada '+Crip(SENHA.TEXT,VALINT(MCodUsr.TEXT))
   +' no banco´p/usuario '+DM4.Tb_Par02PA2SENHA.Value+' geral '+DM4.Tb_Par02senhageral.Value
   ,mtInformation,[mbOk],0);
}
if (Crip(SENHA.Text,ValInt(MCODUSR.TEXT))=DM4.Tb_Par02PA2SENHA.Value)
   or (Crip(SENHA.Text,ValInt(MCODUSR.TEXT))=DM4.Tb_Par02senhageral.Value) or
   smaster(SENHA.Text) then
   begin
   if Timer1.Enabled then
      begin
      Timer1.Enabled:=false;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Delete from CADLSEN ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_tid.locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+InttoStr(codemp)+' and '));
      DM1.Query1.SQL.Add(' LSCODIGO='+FloatTostr(mCodSol));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro 86 ao atualizar o CADLSEN!',0,['0'],0);
         end;
      end;
   mvalidarsenha.pcodusr_lib:=valint(MCODUSR.text);

   ModalResult:=mrOk
   end
else
   begin
   if xCont <= 2 then
      begin
      fmensagem('Senha Inválida!',0,['0'],0);
      xCont := xCont + 1;
      SENHA.Clear;
      SENHA.SetFocus;
      Exit;
      end
   else if Timer1.Enabled then
      Exit
   else
      ModalResult:=mrNo;
   end;

end;

procedure TFrm_SI.bbCancelarClick(Sender: TObject);
begin
if timer1.enabled then
   begin
   Timer1.Enabled:=false;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Delete from CADLSEN ');
   DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_tid.locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+InttoStr(codemp)+' and '));
   DM1.Query1.SQL.Add(' LSCODIGO='+FloatTostr(mCodSol));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except

        fmensagem('Erro 86 ao atualizar o CADLSEN!',0,['0'],0);

      end;
   end;
ModalResult:=mrCancel;
end;

procedure TFrm_SI.MCODUSRExit(Sender: TObject);
begin
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if (MCODUSR.Text='1111') and (codusr=1111) then
   begin
   NOMUSR.Text:='Programador(Master)';
   musr_descmax_permitido:=99;
   end
else
   begin
   if flcadusr(1,0,Trim(MCODUSR.Text)) then
      begin
      if DM4.Tb_USRUSR_DESCMAX_master.asfloat>DM4.Tb_USRUSR_DESCMAX.asfloat then
         musr_descmax_permitido:=DM4.Tb_UsrUSR_DESCMAX_MASTER.AsFloat
      else
         musr_descmax_permitido:=DM4.Tb_UsrUSR_DESCMAX.AsFloat;
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;
      end
   else
      begin
      musr_descmax_permitido:=0;
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.SetFocus;
      end;

   end;
lbl_desconto_max.Caption:='Desconto Solicitado '+formatfloat(mcasas_pct, musr_descmax_requisitado)
                +' maximo permitido '+FormatFloat(mcasas_pct, musr_descmax_permitido);
if musr_descmax_requisitado>0 then
   lbl_desconto_max.Visible:=true
else
   lbl_desconto_max.Visible:=false;

end;

procedure TFrm_SI.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then 
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_Sl',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_SI.Memo_MotivoExit(Sender: TObject);
begin
if Length(Memo_Motivo.Text)>299 then
   Memo_Motivo.Text:=copy(Memo_Motivo.Text,1,300);
end;

procedure TFrm_SI.Memo_ObservExit(Sender: TObject);
begin
if Length(Memo_Observ.Text)>299 then
   Memo_Observ.Text:=copy(Memo_Observ.Text,1,300);

end;

procedure TFrm_SI.FormCreate(Sender: TObject);
begin
xCont  := 0;
musr_descmax_permitido  :=0;
musr_descmax_requisitado:=0;

end;

procedure TFrm_SI.FormActivate(Sender: TObject);
begin
Memo_cabecalho.Text:=Label1.Caption;

end;

procedure TFrm_SI.Timer1Timer(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.sql.add(' Select count(*) ');
DM1.Query1.sql.Add(' from CADLSEN,CADUSR ');
DM1.Query1.sql.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
DM1.Query1.sql.Add(' LSCODIGO='+FloatTosTr(mCodSol));
DM1.Query1.sql.Add(' and LSSTATUS<>0 '+iif(DM1.Qr_TID.Locate('TINOME','CADUSR',[]),'',' and CODEMP=LSCODEMP '));
DM1.Query1.sql.Add(' and CODUSR=LSCODUSRSOL ');
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   Timer1.Enabled:=false;
   bbResposta.Click;
   end;

end;

procedure TFrm_SI.bbRespostaClick(Sender: TObject);
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
DM4.Tb_LSen.SQL.Add(' LSCODIGO='+FloatTostr(mCodSol));
DM4.Tb_LSen.sql.Add(' and LSSTATUS<>0 '+iif(DM1.Qr_Tid.Locate('TINOME','CADLSEN',[]),'',' and CODEMP=LSCODEMP '));
DM4.Tb_LSen.SQL.Add(' and CODUSR=LSCODUSRSOL ');
DM4.Tb_LSen.Open;
Application.Createform(TFrm_Liberar_Resp,Frm_Liberar_Resp);
if DM4.Tb_LSenLSSTATUS.Value=8 then
   begin
   Frm_Liberar_Resp.lbl_resp.Caption:='O Pedido de Liberação de Senha foi Negado';
   Frm_Liberar_Resp.lbl_resp.Font.Color:=clRed;
   end
else
   begin
   Frm_Liberar_Resp.lbl_resp.Caption:='O Pedido de Liberação de Senha foi Aceito';
   Frm_Liberar_Resp.lbl_resp.Font.Color:=clLime;
   end;
if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_LSenLSCODUSRLIB.AsString) then
   NOMUSR.Text:=DM1.Query1.Fields[0].AsString;
Frm_Liberar_Resp.ShowModal;
Frm_Liberar_Resp.Free;
Frm_Liberar_Resp:=nil;
if DM4.Tb_LSenLSSTATUS.Value=8 then
   ModalResult:=mrNo
else
   ModalResult:=mrOk;
end;

procedure TFrm_SI.bbIgnorarClick(Sender: TObject);
begin
if timer1.enabled then
   begin
   Timer1.Enabled:=false;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Delete from CADLSEN ');
   DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_tid.locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+InttoStr(codemp)+' and '));
   DM1.Query1.SQL.Add(' LSCODIGO='+FloatTostr(mCodSol));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except

      fmensagem('Erro 86 ao atualizar o CADLSEN!',0,['0'],0);


      end;
   end;
ModalResult:=mrIgnore;

end;

procedure TFrm_SI.spb_solicitarClick(Sender: TObject);
begin
spb_solicitar.Enabled:=false;
DM1.Query1.close;
DM1.Query1.sql.clear;
DM1.Query1.sql.Add('Select max(LSCODIGO) from CADLSEN '+
                  iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' where LSCODEMP=0'+intTostr(codemp)));
DM1.Query1.Open;
mCodSol:=DM1.Query1.Fields[0].AsFloat+1;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

DM1.Query2.Params.CreateParam(ftString,'LSCODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSLOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCODIGO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSITENSBLOQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSSTATUS',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCODTAB',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCODUSRSOL',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSDATASOL',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCODCLI_DOC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCODEMP_DOC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSLOTSEQ_DOC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCHAVE_DOC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSORDEM_DOC',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSCHAVE_DOCST',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSTEXTOMOT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LSTEXTOOBS',ptInput);


DM1.Query2.SQL.Add('Insert into CADLSEN ');
DM1.Query2.SQL.Add('       ( ');
DM1.Query2.SQL.Add('       LSCODEMP ');
DM1.Query2.SQL.Add('       ,LSLOTSEQ ');
DM1.Query2.SQL.Add('       ,LSCODIGO ');
DM1.Query2.SQL.Add('       ,LSITENSBLOQ ');
DM1.Query2.SQL.Add('       ,LSSTATUS ');
DM1.Query2.SQL.Add('       ,LSCODTAB ');
DM1.Query2.SQL.Add('       ,LSCODUSRSOL ');
DM1.Query2.SQL.Add('       ,LSDATASOL ');
DM1.Query2.SQL.Add('       ,LSCODCLI_DOC ');
DM1.Query2.SQL.Add('       ,LSCODEMP_DOC ');
DM1.Query2.SQL.Add('       ,LSLOTSEQ_DOC ');
DM1.Query2.SQL.Add('       ,LSCHAVE_DOC ');
DM1.Query2.SQL.Add('       ,LSORDEM_DOC ');
DM1.Query2.SQL.Add('       ,LSCHAVE_DOCST');
DM1.Query2.SQL.Add('       ,LSTEXTOMOT ');
DM1.Query2.SQL.Add('       ,LSTEXTOOBS ');
DM1.Query2.SQL.Add('       ) Values ( ');

DM1.Query2.SQL.Add('       :LSCODEMP ');
DM1.Query2.SQL.Add('       ,:LSLOTSEQ ');
DM1.Query2.SQL.Add('       ,:LSCODIGO ');
DM1.Query2.SQL.Add('       ,:LSITENSBLOQ ');
DM1.Query2.SQL.Add('       ,:LSSTATUS ');
DM1.Query2.SQL.Add('       ,:LSCODTAB ');
DM1.Query2.SQL.Add('       ,:LSCODUSRSOL ');
DM1.Query2.SQL.Add('       ,:LSDATASOL ');
DM1.Query2.SQL.Add('       ,:LSCODCLI_DOC ');
DM1.Query2.SQL.Add('       ,:LSCODEMP_DOC ');
DM1.Query2.SQL.Add('       ,:LSLOTSEQ_DOC ');
DM1.Query2.SQL.Add('       ,:LSCHAVE_DOC ');
DM1.Query2.SQL.Add('       ,:LSORDEM_DOC ');
DM1.Query2.SQL.Add('       ,:LSCHAVE_DOCST');
DM1.Query2.SQL.Add('       ,:LSTEXTOMOT ');
DM1.Query2.SQL.Add('       ,:LSTEXTOOBS ');
DM1.Query2.SQL.Add('       ) ');


//   mPar_CodSenha:=pCodSen;

DM1.Query2.ParamByName('LSCODEMP').AsFloat      :=codemp;
DM1.Query2.ParamByName('LSLOTSEQ').AsFloat      :=0;
DM1.Query2.ParamByName('LSCODIGO').AsFloat      :=mCodSol;
DM1.Query2.ParamByName('LSITENSBLOQ').AsString  :=mItensBloq;
DM1.Query2.ParamByName('LSSTATUS').AsFloat      :=0;
DM1.Query2.ParamByName('LSCODTAB').AsFloat      :=mpar_codsenha;
DM1.Query2.ParamByName('LSCODUSRSOL').AsFloat   :=codusr;
DM1.Query2.ParamByName('LSDATASOL').AsDateTime  :=Now;
DM1.Query2.ParamByName('LSCODCLI_DOC').AsFloat  :=mCodCli_doc;
DM1.Query2.ParamByName('LSCODEMP_DOC').AsFloat  :=mcodemp_doc;
DM1.Query2.ParamByName('LSLOTSEQ_DOC').AsFloat  :=mlotseq_doc;
DM1.Query2.ParamByName('LSCHAVE_DOC').AsFloat   :=mchave_doc;
DM1.Query2.ParamByName('LSORDEM_DOC').AsFloat   :=mordem_doc;
DM1.Query2.ParamByName('LSCHAVE_DOCST').AsString:=mchave_docSt;
DM1.Query2.ParamByName('LSTEXTOMOT').AsString   :=Memo_cabecalho.Lines.Text+#13+Memo_Motivo.Lines.Text;
DM1.Query2.ParamByName('LSTEXTOOBS').AsString   :=Memo_Observ.Text;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.SQL.SaveToFile('c:\sql.txt');

   fmensagem('Erro 209 ao incluir solicitação!',0,['0'],0);

   end;
Timer1.Enabled:=true;


end;

procedure TFrm_SI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SI.FormShow(Sender: TObject);
begin
MCODUSR.Text:=IntToStr(codusr);
MCODUSRExit(self);

end;

end.
