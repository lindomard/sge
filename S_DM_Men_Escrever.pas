unit S_DM_Men_Escrever;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,dbtables,
    RxMemDS, xmldom, XMLIntf, msxmldom, XMLDoc, Menus;

type
  TFrm_DM_Men_Escrever = class(TForm)
    Panel1: TPanel;
    gb_Mensagem: TGroupBox;
    Panel2: TPanel;
    gbDestinatarios: TGroupBox;
    bbEnviar: TBitBtn;
    bbNova: TBitBtn;
    bbSair: TBitBtn;
    edt_mensagem: TRichEdit;
    DBGrid_destinatarios: TDBGrid;
    Panel3: TPanel;
    edt_destinatarios: TEdit;
    mem_destinatarios: TRxMemoryData;
    Src_destinatarios: TDataSource;
    mem_destinatariosNOMVEN: TStringField;
    XMLDocument1: TXMLDocument;
    Popup: TPopupMenu;
    AdicionarTodos1: TMenuItem;
    mem_destinatariosDESTINATARIO: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure edt_destinatariosExit(Sender: TObject);
    procedure bbEnviarClick(Sender: TObject);
    procedure AdicionarTodos1Click(Sender: TObject);
    procedure DBGrid_destinatariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
    Function FGerarExportacao(pChave: String): Boolean;

  end;

var
  Frm_DM_Men_Escrever: TFrm_DM_Men_Escrever;

implementation

uses Func, lerarq, S_DM1;

{$R *.dfm}

procedure TFrm_DM_Men_Escrever.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DM_Men_Escrever.edt_destinatariosExit(Sender: TObject);
begin
edt_destinatarios.Text:=fdeixanum2(edt_destinatarios.Text);
if trim(edt_destinatarios.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',edt_destinatarios.Text) then
      begin
      MessageDlg('Vendedor não Encontrado!',mtWarning,[mbOk],0);
      edt_destinatarios.SetFocus;
      exit;
      end;
   if not mem_destinatarios.Active then
      mem_destinatarios.Open;
   mem_destinatarios.Append;
   mem_destinatariosDESTINATARIO.Value:=edt_destinatarios.Text;
   mem_destinatariosNOMVEN.Value      :=DM1.Query1.fieldbyName('VNOME').AsString;
   mem_destinatarios.Post;
   edt_destinatarios.Text:='';
   edt_destinatarios.SetFocus;
   end;
end;

procedure TFrm_DM_Men_Escrever.bbEnviarClick(Sender: TObject);
var
mChaveMen: String;
begin
if trim(edt_mensagem.Text)='' then
   begin
   MessageDlg('Favor Digitar uma mensagem!',mtWarning,[mbOk],0);
   edt_mensagem.SetFocus;
   exit;
   end;

if (not mem_destinatarios.Active) or (mem_destinatarios.IsEmpty) then
   begin
   MessageDlg('Favor Colocar Pelo menos um destinatario!',mtWarning,[mbOk],0);
   edt_destinatarios.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADDM_MENS ('
                  +' CMP_CHAVE '
                  +',CMP_MENSAGEM'
                  +',CMP_TIPO'
                  +',CMP_STATUS'
                  +',CMP_REPASSAR'
                  +') values ('
                  +' :CMP_CHAVE '
                  +',:CMP_MENSAGEM'
                  +',:CMP_TIPO'
                  +',:CMP_STATUS'
                  +',:CMP_REPASSAR'
                  +')');
mChaveMen:='GESTAO_'+FormatDateTime('ddmmyyyy',date)+'_'+FormatDateTime('hhnnss', time);
DM1.Query1.ParamByName('CMP_CHAVE').AsString    :=mChaveMen;
DM1.Query1.ParamByName('CMP_MENSAGEM').AsMemo   :=edt_mensagem.Text;
DM1.Query1.ParamByName('CMP_TIPO').AsInteger    :=1;
DM1.Query1.ParamByName('CMP_STATUS').AsInteger  :=1;
DM1.Query1.ParamByName('CMP_REPASSAR').AsInteger:=0;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
mem_destinatarios.First;

While not mem_destinatarios.Eof do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADDM_MENS_dest '
                     +'('
                     +' CMPD_CHAVE '
                     +',CMPD_TIPO '
                     +',CMPD_DESTINO '
                     +') values ('
                     +' :CMPD_CHAVE '
                     +',:CMPD_TIPO '
                     +',:CMPD_DESTINO '
                     +')');
   DM1.Query1.ParamByName('CMPD_CHAVE').AsString    :=mChaveMen;
   DM1.Query1.ParamByName('CMPD_TIPO').AsInteger    :=1;
   DM1.Query1.ParamByName('CMPD_DESTINO').AsString  :=mem_destinatariosDESTINATARIO.AsString;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   mem_destinatarios.Next;
   end;


if FGerarExportacao(mChaveMen) then
   begin
   MessageDlg('Mensagem Enviada!',mtInformation,[mbOk],0);
   edt_mensagem.Clear;
   mem_destinatarios.Close;
   end
else
   MessageDlg('Erro ao Enviar Mensagem!',mtError,[mbOk],0);

end;


Function TFrm_DM_Men_Escrever.FGerarExportacao(pChave: String): Boolean;
{
pTipo=0 Cadastros
      1 Retornos
}
var
mNomArq: String;
mPasta: String;


xmlDoc: TXMLDocument;
NodeNivelA, NodeNivelB, NodeNivelC, NodeNivelD: IXMLNode;
mItem: Integer;
mSigla,mCodigo,mNomUsr: String;
begin
mem_destinatarios.First;
mCodigo:=mem_destinatariosDESTINATARIO.Value;
mSigla :='VD';
mNomUsr:=mem_destinatariosNOMVEN.Value;
mNomArq:=mSigla+mCodigo;
mPasta:='C:\DM\ENVIAR\'+mNomArq+'\MENSAGEM';
fcriarPastas(mpasta);
result:=false;

xmlDoc := TXMLDocument.Create(nil);
Try
   With xmlDoc do
      begin
      Active := True;
      Version := '1.0';
      Encoding := 'utf-8';
      AddChild('Mensagens');
      NodeNivelA := DocumentElement;
      NodeNivelB := NodeNivelA.AddChild('TABELA');
      NodeNivelB.AddChild('Chave').NodeValue         :=pChave;
      NodeNivelB.AddChild('Mensagem').NodeValue      :=edt_mensagem.Text;
      mNomArq:=mPasta+'\'+pChave;

      end;
   xmlDoc.SaveToFile(mNomArq+'.$$$');
   RenameFile(mNomArq+'.$$$',mNomArq+'.XML');

   mem_destinatarios.Next;
   While not mem_destinatarios.Eof do
      begin
      mCodigo:=mem_destinatariosDESTINATARIO.Value;
      mSigla :='VD';
      mNomUsr:=mem_destinatariosNOMVEN.Value;
      mNomArq:=mSigla+mCodigo;
      mPasta:='C:\DM\ENVIAR\'+mNomArq+'\MENSAGEM';
      fcriarPastas(mpasta);
      mNomArq:=mPasta+'\'+pChave;
      xmlDoc.SaveToFile(mNomArq+'.$$$');
      RenameFile(mNomArq+'.$$$',mNomArq+'.XML');
      mem_destinatarios.Next;
      end;
   result:=true;
finally
   xmlDoc:=nil;
   end;





end;

procedure TFrm_DM_Men_Escrever.AdicionarTodos1Click(Sender: TObject);
begin

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select VNOME,VCODVEN from CADVEN ');
if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
   DM1.Query1.SQL.add(' where VCODEMP=0'+IntToStr(codemp));
DM1.Query1.SQL.add(' order by VNOME ');
DM1.Query1.Open;
if not DM1.Query1.IsEmpty then
   begin
   mem_destinatarios.Close;
   mem_destinatarios.Open;
   While not DM1.Query1.eof do
      begin
      mem_destinatarios.Append;
      mem_destinatariosDESTINATARIO.Value:=DM1.Query1.fieldbyName('VCODVEN').AsString;
      mem_destinatariosNOMVEN.Value      :=DM1.Query1.fieldbyName('VNOME').AsString;
      mem_destinatarios.Post;
      DM1.Query1.Next;
      end;
   end;

end;

procedure TFrm_DM_Men_Escrever.DBGrid_destinatariosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if not mem_destinatariosDESTINATARIO.IsNull then
      mem_destinatarios.Delete;

end;

end.
