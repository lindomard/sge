unit S_AssocarCServ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids,jpeg,shellapi;

type
  TFrm_AssociarCServ = class(TForm)
    Tb_Imagem_ado: TADOQuery;
    Tb_Imagem_adoCHAVE_ROWID: TStringField;
    Tb_Imagem_adoOBSERVACOES: TStringField;
    Tb_Imagem_adoNOME_ORIGEM: TStringField;
    Tb_Imagem_adoCHAVE_ID_NOVA: TFloatField;
    Tb_Imagem_adoSEQUENCIA: TFloatField;
    Src_imagem: TDataSource;
    src_cli: TDataSource;
    tb_cli: TQuery;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    lbl_ver_documento: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_razao_social: TEdit;
    edt_fantasia: TEdit;
    edt_cnpj: TEdit;
    bbFiltrar: TBitBtn;
    cb_exibirimagem: TCheckBox;
    cb_exibir_ao_digitar: TCheckBox;
    lbl_relacionar: TLabel;
    gb_cadastro: TGroupBox;
    DBGrid2: TDBGrid;
    tb_cliCCODCLI: TFloatField;
    tb_cliCRAZAO: TStringField;
    tb_cliCCNPJ: TFloatField;
    tb_cliCCIDADE: TStringField;
    tb_cliCUF: TStringField;
    tb_cliCDENOM: TStringField;
    procedure FormShow(Sender: TObject);
    procedure lbl_relacionarDblClick(Sender: TObject);
    procedure bbFiltrarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Src_imagemDataChange(Sender: TObject; Field: TField);
    procedure src_cliDataChange(Sender: TObject; Field: TField);
    procedure edt_fantasiaChange(Sender: TObject);
  private
    { Private declarations }

    rowid_cli_lido: string;
    codcli_lido: Real;
    hWnd : THandle;
    tb_Imagem:tAdoQuery;
    function fLerDocumento: boolean;


    function fLerCadForImagem(pRowId: String; pSeq: Integer): boolean;


    procedure fMostrarImagem;

//    procedure fMostrarImagemChange;

  public
    { Public declarations }
  end;
const
   mQtdLimiteReg = 30;

var
  Frm_AssociarCServ: TFrm_AssociarCServ;

implementation

uses S_DM1, S_Agde, Func, func_excecoes, S_Fig_TelaCheia, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_AssociarCServ.FormShow(Sender: TObject);
begin
fLerDocumento;
bbFiltrarClick(self);

end;


function TFrm_AssociarCServ.fLerDocumento: boolean;
var
frm_agde_local: TFrm_agde;
begin
application.createForm(TFrm_agde, frm_agde_local);
frm_agde_local.label1.caption:='Aguarde enquando é lido os Documentos';
frm_agde_local.show;
verteclado_02(0);
Tb_Imagem_ado.close;
Tb_Imagem_ado.sql.clear;
Tb_Imagem_ado.sql.add('SELECT CI_SEQ AS SEQUENCIA, cI_ROWID AS CHAVE_ROWID, '
                     +' cI_OBS AS OBSERVACOES,CI_ID_CLI AS CHAVE_ID_NOVA,CI_NOMEORI AS NOME_ORIGEM '
                     +' FROM CADCLI_IMAGEM WHERE NVL(CI_ID_CLI,0)=0  AND ROWNUM < '+inttostr(mQtdLimiteReg)
                     +' ORDER BY OBSERVACOES ');

Tb_Imagem_ado.SQL.Text:='Select * from ( '
                       +Tb_Imagem_ado.SQL.Text
                       +') '
                       +' order by CHAVE_ROWID,SEQUENCIA ';
try
   Tb_Imagem_ado.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_ado(tb_imagem_ado,45,'_stru '+e.message,'user');
   result:=false;
   end;
   end;

codcli_lido:=-1;
FreeAndNil(frm_agde_local);
end;

procedure TFrm_AssociarCServ.lbl_relacionarDblClick(Sender: TObject);
var
query_relaciona: tQuery;
begin
if trim(tb_cliCCODCLI.AsString)='' then
   exit;
if Application.MessageBox(pchar('Relacionar ' + lbl_relacionar.caption),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_relaciona :=tQuery.Create(nil);
query_relaciona.DatabaseName  := DM1.SG_ASSOC.DatabaseName;
query_relaciona.SQL.add('update CADCLI_IMAGEM set CI_ID_CLI='+tb_cliCCODCLI.AsString
                       +' where CI_ROWID='+QuotedStr(Tb_Imagem_adoCHAVE_ROWID.AsString));;


try
   query_relaciona.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_relaciona,383,'SGE','CADFOR_IMAGEM');
   end;
   end;

fLerDocumento;
bbFiltrarClick(self);



end;

procedure TFrm_AssociarCServ.bbFiltrarClick(Sender: TObject);
begin
tb_cli.close;
tb_cli.sql.clear;
tb_cli.sql.add('SELECT CCODCLI,CRAZAO,CDENOM,CCNPJ,CCIDADE,CUF '
               +' FROM CADCLI where 1=1');

if trim(edt_razao_social.Text)<>'' then
   tb_cli.SQL.add(' and CRAZAO like '+QuotedStr(edt_razao_social.text+'%'));

if trim(edt_fantasia.Text)<>'' then
   tb_cli.SQL.add(' and CDENOM like '+QuotedStr(edt_fantasia.text+'%'));

if trim(edt_cnpj.Text)<>'' then
   tb_cli.SQL.add(' and CCNPJ = '+fDeixanum(edt_cnpj.text));

tb_cli.sql.add(' ORDER BY CRAZAO ');
try
   tb_cli.open;
except on e : exception do
   begin
   ex_erroSql_novo(tb_cli,162,'_stru '+e.message,'user');
   end;
   end;

end;


procedure TFrm_AssociarCServ.fMostrarImagem;

var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

form_img_agde: tFrm_agde;

    function fExecutarArquivoLocal(pNomeArq: String): boolean;
    begin
      ShellExecute(Application.Handle,'Open',pchar(pNomeArq),nil,nil,SW_HIDE);
    result:=true;

    end;

   procedure pFechar;
   begin
   if form_img_agde<>nil then
      freeandnil(form_img_agde);
   end;



begin
  inherited;



application.createForm(TFrm_Agde, form_img_agde);
form_img_agde.Label1.Caption:='Aguarde enquanto buscamos o documento no servidor!';
verteclado(0);
form_img_agde.Show;
verteclado(0);
verteclado_02(0);

if fLerCadForImagem(Tb_Imagem_adoCHAVE_ROWID.asString, Tb_Imagem_adoSEQUENCIA.AsInteger ) then

   begin

   imagestream:=TMemoryStream.Create;
   (Tb_imagem.fieldbyname('CI_IMAGEM')as TBlobField).SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_Imagem_adoNOME_ORIGEM.asstring)='')  or fEImagem(Tb_Imagem_adoNOME_ORIGEM.asstring) then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      pfechar;
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_Imagem_adoNOME_ORIGEM.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_Imagem_adoNOME_ORIGEM.asstring);
            fExecutarArquivoLocal(mcamtmp+'\'+Tb_Imagem_adoNOME_ORIGEM.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_Imagem_adoNOME_ORIGEM.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_Imagem_adoNOME_ORIGEM.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);
   end;

pfechar;

end;



function TFrm_AssociarCServ.fLerCadForImagem(pRowId: String; pSeq: Integer): boolean;
begin
if tb_Imagem=nil then
   tb_Imagem:=TADOQuery.create(nil);
tb_imagem.close;
if DM1_ADO.ADOConnection1.connected=false then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;
   end;
tb_imagem.close;
tb_imagem.Connection:=DM1_ADO.ADOConnection1;
tb_imagem.Sql.clear;
tb_imagem.Sql.Add('Select CI_IMAGEM from CADCLI_IMAGEM '
                 +' where  CI_ROWID=:ROWID '
                 +' and   CI_SEQ=:CI_SEQ ');
tb_imagem.Parameters.ParamByName('ROWID').Value    :=pRowId;
tb_imagem.Parameters.ParamByName('CI_SEQ').Value    :=pSeq;
try
   tb_imagem.open;
   if tb_Imagem.FieldByName('CI_IMAGEM').IsNull then
      result:=false
   else
      result:=true;
except on e : exception do
   begin
   ex_erroSql_ado(tb_Imagem,279,'func Erro:'+e.Message ,'CADCLI_IMAGEM');
   result:=false;
   end;
   end;
end;



procedure TFrm_AssociarCServ.DBGrid1DblClick(Sender: TObject);
begin

fMostrarImagem

end;

procedure TFrm_AssociarCServ.Src_imagemDataChange(Sender: TObject;
  Field: TField);
begin
if rowid_cli_lido<>Tb_Imagem_adoCHAVE_ROWID.AsString then
   begin
//   if cb_exibirimagem.Checked then
//      fMostrarImagemChange;

   codcli_lido:=-1;
   rowid_cli_lido:=Tb_Imagem_adoCHAVE_ROWID.AsString;
   src_cliDataChange(self,tb_cliCCIDADE);
   codcli_lido:=-1;
   end;

end;

procedure TFrm_AssociarCServ.src_cliDataChange(Sender: TObject;
  Field: TField);
begin
if tb_cliCCODCLI.AsFloat<>codcli_lido then
   begin
   lbl_relacionar.Caption:='Click aqui para Vincular '+Tb_Imagem_adoCHAVE_ROWID.AsString+'/'+
   Tb_Imagem_adoOBSERVACOES.AsString+'/'+Tb_Imagem_adoNOME_ORIGEM.AsString+' com o cliente '+tb_cliCRAZAO.AsString;
   end;

end;

procedure TFrm_AssociarCServ.edt_fantasiaChange(Sender: TObject);
begin
if cb_exibir_ao_digitar.Checked then
   bbFiltrarClick(self);

end;

end.
