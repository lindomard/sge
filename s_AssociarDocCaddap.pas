unit s_AssociarDocCaddap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ADODB, Buttons,JPEG,
  ExtCtrls,shellApi;

type
  TFrm_AssociarDocCaddap = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Tb_Imagem_ado: TADOQuery;
    Src_imagem: TDataSource;
    Tb_Imagem_adoCHAVE_ROWID: TStringField;
    Tb_Imagem_adoOBSERVACOES: TStringField;
    Tb_Imagem_adoNOME_ORIGEM: TStringField;
    Tb_Imagem_adoCHAVE_ID_NOVA: TFloatField;
    gb_cadastro: TGroupBox;
    lbl_relacionar: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edt_razao_social: TEdit;
    Label3: TLabel;
    edt_fantasia: TEdit;
    Label4: TLabel;
    edt_cnpj: TEdit;
    bbFiltrar: TBitBtn;
    GroupBox3: TGroupBox;
    src_for: TDataSource;
    DBGrid2: TDBGrid;
    tb_for: TQuery;
    tb_forFRAZAO: TStringField;
    tb_forFDENOM: TStringField;
    tb_forFCGC: TStringField;
    tb_forFCIDADE: TStringField;
    tb_forFUF: TStringField;
    tb_forFCODFOR: TFloatField;
    cb_exibirimagem: TCheckBox;
    Tb_Imagem_adoSEQUENCIA: TFloatField;
    Image1: TImage;
    lbl_ver_documento: TLabel;
    cb_exibir_ao_digitar: TCheckBox;
    tb_forCANUMERO: TFloatField;
    tb_forCADESD: TStringField;
    tb_forCADTEMIS: TDateTimeField;
    tb_forCADTVCTO: TDateTimeField;
    tb_forCAVALOR: TFloatField;
    tb_forCAID_NEW: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure bbFiltrarClick(Sender: TObject);
    procedure Src_imagemDataChange(Sender: TObject; Field: TField);
    procedure src_forDataChange(Sender: TObject; Field: TField);
    procedure lbl_ver_documentoDblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure lbl_relacionarDblClick(Sender: TObject);
    procedure edt_razao_socialChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    rowid_for_lido: string;
    codfor_lido: Real;
    hWnd : THandle;
    tb_Imagem:tAdoQuery;
    function fLerDocumento: boolean;


    function fLerCadForImagem(pRowId: String; pSeq: Integer): boolean;


    procedure fMostrarImagem;

    procedure fMostrarImagemChange;





    procedure fDisplayformat;

  public
    { Public declarations }
  end;


var
  Frm_AssociarDocCaddap: TFrm_AssociarDocCaddap;

implementation

uses func_excecoes, Func, S_Agde, S_DM1_ADO, S_Fig_TelaCheia, S_DM1;

{$R *.dfm}


function TFrm_AssociarDocCaddap.fLerDocumento: boolean;
var
frm_agde_local: TFrm_agde;
begin
application.createForm(TFrm_agde, frm_agde_local);
frm_agde_local.label1.caption:='Aguarde enquando é lido os Documentos';
frm_agde_local.show;
verteclado_02(0);
Tb_Imagem_ado.close;
Tb_Imagem_ado.sql.clear;
Tb_Imagem_ado.sql.add('SELECT PI_SEQ AS SEQUENCIA, PI_ROWID AS CHAVE_ROWID,'
                     +' PI_OBS AS OBSERVACOES,PI_ID_DAP AS CHAVE_ID_NOVA,'
                     +' PI_NOMEORI AS NOME_ORIGEM '
                     +' FROM CADDAP_IMAGEM WHERE nvl(pi_id_dap,0)=0 '
                     +' AND ROWNUM<20 '
                     );




try
   Tb_Imagem_ado.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_ado(tb_imagem_ado,45,'_stru '+e.message,'user');
   result:=false;
   end;
   end;

codfor_lido:=-1;
FreeAndNil(frm_agde_local);
end;

procedure TFrm_AssociarDocCaddap.FormShow(Sender: TObject);
begin
fLerDocumento;
bbFiltrarClick(self);
end;

procedure TFrm_AssociarDocCaddap.bbFiltrarClick(Sender: TObject);
begin
tb_for.close;
tb_for.sql.clear;
tb_for.sql.add('SELECT  '
              +' CANUMERO,CADESD,CADTEMIS,CADTVCTO,CAVALOR, '
               +' FCODFOR,FRAZAO,FDENOM,FCGC,FCIDADE,FUF,CAID_NEW '
               +'    FROM CADDAP,CADFOR '
              +' WHERE FCODFOR=CACODFOR ');

if trim(edt_razao_social.Text)<>'' then
   tb_for.SQL.add(' and FRAZAO like '+QuotedStr(edt_razao_social.text+'%'));

if trim(edt_fantasia.Text)<>'' then
   tb_for.SQL.add(' and FDENOM like '+QuotedStr(edt_fantasia.text+'%'));

if trim(edt_cnpj.Text)<>'' then
   tb_for.SQL.add(' and FCGC = '+QuotedStr(edt_cnpj.text));

tb_for.sql.add(' ORDER BY FRAZAO,CADTVCTO,CAVALOR ');
try
   tb_for.open;
except on e : exception do
   begin
   ex_erroSql_novo(tb_for,104,'_stru '+e.message,'user');
   end;
   end;

end;

procedure TFrm_AssociarDocCaddap.Src_imagemDataChange(Sender: TObject;
  Field: TField);
begin
if rowid_for_lido<>Tb_Imagem_adoCHAVE_ROWID.AsString then
   begin
//   if cb_exibirimagem.Checked then
//      fMostrarImagemChange;

   codfor_lido:=-1;
   rowid_for_lido:=Tb_Imagem_adoCHAVE_ROWID.AsString;
   src_forDataChange(self,tb_forFCIDADE);
   codfor_lido:=-1;
   end;

end;

procedure TFrm_AssociarDocCaddap.src_forDataChange(Sender: TObject;
  Field: TField);
begin
if tb_forFCODFOR.AsFloat<>codfor_lido then
   begin
   lbl_relacionar.Caption:='Click aqui para Vincular '+Tb_Imagem_adoCHAVE_ROWID.AsString+'/'+
   Tb_Imagem_adoOBSERVACOES.AsString+'/'+Tb_Imagem_adoNOME_ORIGEM.AsString+' com o fornecedor '+tb_forFRAZAO.AsString;
   end;
end;

procedure TFrm_AssociarDocCaddap.fMostrarImagem;

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
   (Tb_imagem.fieldbyname('PI_IMAGEM')as TBlobField).SaveToStream(imagestream);
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



function TFrm_AssociarDocCaddap.fLerCadForImagem(pRowId: String; pSeq: Integer): boolean;
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
tb_imagem.Sql.Add('Select PI_IMAGEM from CADDAP_IMAGEM '
                 +' where  PI_ROWID=:ROWID '
                 +' and   PI_SEQ=:PI_SEQ ');
tb_imagem.Parameters.ParamByName('ROWID').Value    :=pRowId;
tb_imagem.Parameters.ParamByName('PI_SEQ').Value    :=pSeq;
try
   tb_imagem.open;
   if tb_Imagem.FieldByName('PI_IMAGEM').IsNull then
      result:=false
   else
      result:=true;
except on e : exception do
   begin
   ex_erroSql_ado(tb_Imagem,3334,'func Erro:'+e.Message ,'CADFOR_IMAGEM');
   result:=false;
   end;
   end;
end;


procedure TFrm_AssociarDocCaddap.lbl_ver_documentoDblClick(
  Sender: TObject);
begin
fMostrarImagem;
end;




procedure TFrm_AssociarDocCaddap.fMostrarImagemChange;

var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

form_img_agde: tFrm_agde;


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
   (Tb_imagem.fieldbyname('PI_IMAGEM')as TBlobField).SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_Imagem_adoNOME_ORIGEM.asstring)='')  or fEImagemNovo(Tb_Imagem_adoNOME_ORIGEM.asstring) then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );

      Image1.Picture.Bitmap.Assign(jpg);
      pfechar;
      end;
   freeandnil(imagestream);
   end;

pfechar;

end;


procedure TFrm_AssociarDocCaddap.DBGrid1DblClick(Sender: TObject);
begin

fMostrarImagem
end;

procedure TFrm_AssociarDocCaddap.lbl_relacionarDblClick(Sender: TObject);
var
query_relaciona: tQuery;
begin
if trim(tb_forFCODFOR.AsString)='' then
   exit;
if Application.MessageBox(pchar('Relacionar ' + lbl_relacionar.caption),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_relaciona :=tQuery.Create(nil);
query_relaciona.DatabaseName  := DM1.SG_ASSOC.DatabaseName;
query_relaciona.SQL.add('update CADDAP_IMAGEM set PI_ID_DAP='+tb_forCAID_NEW.AsString
                       +' where PI_ROWID='+QuotedStr(Tb_Imagem_adoCHAVE_ROWID.AsString));;


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

procedure TFrm_AssociarDocCaddap.edt_razao_socialChange(Sender: TObject);
begin
if cb_exibir_ao_digitar.Checked then
   bbFiltrarClick(self);
end;


procedure TFrm_AssociarDocCaddap.fDisplayformat;
begin


tb_forCADTEMIS.DisplayFormat := fdt;
tb_forCADTVCTO.DisplayFormat := fdt;
tb_forCAVALOR.DisplayFormat  := mcasas;

end;

procedure TFrm_AssociarDocCaddap.FormCreate(Sender: TObject);
begin
fDisplayformat;

end;

end.
