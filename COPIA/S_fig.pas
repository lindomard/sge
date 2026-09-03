unit S_fig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ExtDlgs, JPEG,func,DB,dbtables,S_DM4,
  S_Fig_TelaCheia, ComCtrls,adodb, Grids, DBGrids;

type
  TFrm_Fig = class(TForm)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbAdquirirExistente: TBitBtn;
    bbExluir: TBitBtn;
    GroupBox2: TGroupBox;
    bbGravar: TBitBtn;
    BitBtn4: TBitBtn;
    opd1: TOpenPictureDialog;
    bbScanner: TBitBtn;
    sbn_Cheia: TSpeedButton;
    sbHorizontal: TSpeedButton;
    sbVertical: TSpeedButton;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    bbAdquirir_Texto01: TBitBtn;
    bbSalvar_Texto01: TBitBtn;
    GroupBox5: TGroupBox;
    bbAbrir_Texto01: TBitBtn;
    bbGravar_Texto01: TBitBtn;
    GroupBox6: TGroupBox;
    bbFonte_Texto01: TBitBtn;
    bbCorfundo_Texto01: TBitBtn;
    GroupBox8: TGroupBox;
    bbSubstituir_Texto01: TBitBtn;
    bbLocalizar_Texto01: TBitBtn;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    FindDialog1: TFindDialog;
    gb_imagem: TGroupBox;
    gb_posicao: TGroupBox;
    Image1: TImage;
    src_fpro: TDataSource;
    DBGrid1: TDBGrid;
    tb_fpro: TADOQuery;
    tb_fproITEM: TFloatField;
    tb_fproCODEMP: TFloatField;
    tb_fproCODPRO: TFloatField;
    tb_fproCF_FOTO: TBlobField;
    tb_fproPOSICAO: TStringField;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    Texto01: TMemo;
    procedure bbGravarClick(Sender: TObject);
    procedure bbAdquirirExistenteClick(Sender: TObject);
    procedure bbExluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbn_CheiaClick(Sender: TObject);
    procedure sbVerticalClick(Sender: TObject);
    procedure sbHorizontalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAdquirir_Texto01Click(Sender: TObject);
    procedure bbSalvar_Texto01Click(Sender: TObject);
    procedure bbAbrir_Texto01Click(Sender: TObject);
    procedure bbGravar_Texto01Click(Sender: TObject);
    procedure bbFonte_Texto01Click(Sender: TObject);
    procedure bbCorfundo_Texto01Click(Sender: TObject);
    procedure src_fproDataChange(Sender: TObject; Field: TField);
    procedure tb_fproBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    mCodEmp: Real;
    mCodPro: Real;
    mPosImagem: Integer;
    function fAbrirTexto(pCodEmp,pCodPro: Real): Boolean;

    function fGravarTexto(pCodEmp,pCodPro: Real; pTexto: TMemo): Boolean;

    function fLerDadosPro(pCodpro,pCodemp: Real): Boolean;

  end;

var
  Frm_Fig: TFrm_Fig;
  f: TextFile;

implementation

uses S_DM1, lerarq, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_Fig.bbGravarClick(Sender: TObject);

begin

fGravarTexto(mcodEmp,mcodpro,Texto01);
close;
end;

procedure TFrm_Fig.bbAdquirirExistenteClick(Sender: TObject);
var
  mtam: Integer;
  ado_Imagem: TADOQuery;

  query_cons: TQuery;
  x_exec: Integer;
begin
if Opd1.Execute then
  begin

  Image1.Picture.LoadFromFile(Opd1.FileName);
  mtam:=length(Opd1.FileName);
  if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
     begin
     MessageDlg('Nao é uma Figura Valida.'+UpperCase(copy(Opd1.FileName,mtam-3,4)),mtWarning,[mbOk],0);
     end
  else
     begin
     query_cons:=TQuery.Create(nil);
     query_cons.DatabaseName:='SG_ASSOC';

     ado_Imagem:=TADOQuery.Create(nil);
     ado_Imagem.Connection:=DM1_ADO.ADOConnection1;


     query_cons.Close;
     query_cons.SQL.Clear;
     query_cons.sql.Add('Select count(*) from CADFPRO where '
                     +' CF_CODEMP=:CODEMP  and '
                     +' CF_ORDEM=:ORDEM and'
                     +' CF_CODPRO=:CODPRO');
     query_cons.ParamByName('CODEMP').Value:=mcodemp;
     query_cons.ParamByName('ORDEM').Value :=Tb_FProITEM.asinteger;
     query_cons.ParamByName('CODPRO').Value:=mCodPro;
     query_cons.Open;
     if query_cons.Fields[0].AsInteger<1 then
        begin
        ado_Imagem.Close;
        ado_Imagem.SQL.Clear;
        ado_Imagem.SQL.Add('Insert into CADFPRO (CF_CODEMP,CF_ORDEM,CF_CODPRO,CF_FOTO,CF_DATHOR_UEVE) values ('
                    +':CODEMP '+','
                    +':ORDEM '+','
                    +':CODPRO '
                    +', :FT '
                    +', SYSDATE )');
        end
     else
        Begin
        ado_Imagem.Close;
        ado_Imagem.SQL.Clear;
        ado_Imagem.SQL.Add('Update CADFPRO set CF_FOTO=:FT,CF_DATHOR_UEVE=SYSDATE where '
                    +' CF_CODEMP=:CODEMP and '
                    +' CF_ORDEM=:ORDEM and '
                    +' CF_CODPRO=:CODPRO ');
        end;
     end;
   ado_Imagem.Parameters.ParamByName('CODEMP').Value:=mcodemp;
   ado_Imagem.Parameters.ParamByName('ORDEM').Value :=Tb_FProITEM.AsInteger;
   ado_Imagem.Parameters.ParamByName('CODPRO').Value:=mCodPro;
   ado_Imagem.Parameters.ParamByName('FT').LoadFromFile(opd1.FileName,ftBlob);
   for x_exec:=0 to 2 do
      begin
      try
         ado_Imagem.ExecSQL;
         fdm1StartCommit;
         break;

      except on e : exception do
        if Pos('CADFPRO0',E.Message)>0 then
           fDeletarIndice('CADFPRO0');
           end;
      end;
   FreeAndNil(ado_Imagem);
   FreeAndNil(query_cons);
   mtam:=Tb_FProITEM.AsInteger;
   fLerDadosPro(mcodpro,mcodemp);
   Tb_FPro.Locate('ITEM',mtam,[]);
   end;
end;

procedure TFrm_Fig.bbExluirClick(Sender: TObject);
var
  ado_Imagem: TADOQuery;
  mItemExc: Integer;
  query_cons: tQuery;
begin


ado_Imagem:=TADOQuery.Create(nil);
ado_Imagem.Connection:=DM1_ADO.ADOConnection1;

query_cons:=TQuery.Create(nil);
query_cons.DatabaseName:='SG_ASSOC';

query_cons.Close;


query_cons.Close;
query_cons.SQL.Clear;
query_cons.sql.Add('Select count(*) from CADFPRO where '
                +' CF_CODEMP=:CODEMP  and '
                +' CF_ORDEM=:ORDEM and'
                +' CF_CODPRO=:CODPRO');
query_cons.ParamByName('CODEMP').Value:=mcodemp;
query_cons.ParamByName('ORDEM').Value :=Tb_FProITEM.asinteger;
query_cons.ParamByName('CODPRO').Value:=mCodPro;
query_cons.Open;


if query_cons.Fields[0].AsInteger>0 then
   begin
   ado_Imagem.Close;
   ado_Imagem.SQL.Clear;
   ado_Imagem.SQL.Add('Update CADFPRO set CF_FOTO=NULL where '
               +' CF_CODEMP=:CODEMP and '
               +' CF_ORDEM=:ORDEM and '
               +' CF_CODPRO=:CODPRO ');
   ado_Imagem.Parameters.ParamByName('CODEMP').Value:=mcodemp;
   ado_Imagem.Parameters.ParamByName('ORDEM').Value :=Tb_FProITEM.AsInteger;
   ado_Imagem.Parameters.ParamByName('CODPRO').Value:=mCodPro;
   ado_Imagem.ExecSQL;
   fdm1StartCommit;
   mItemExc:=Tb_FProITEM.AsInteger;
   fLerDadosPro(mcodpro,mcodemp);
   Tb_FPro.Locate('ITEM',mItemExc,[]);
   end;
FreeAndNil(query_cons);
FreeAndNil(ado_Imagem);
end;

procedure TFrm_Fig.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Fig.FormCreate(Sender: TObject);
begin
mPosImagem:=-1;


{if tipace=2 then
   begin}
   bbAdquirirExistente.Enabled:=True;
   bbExluir.Enabled           :=True;
   bbGravar.Enabled:=True;
{   end
else
   begin
   bbAdquirirExistente.Enabled:=False;
   bbExluir.Enabled           :=False;
   bbGravar.Enabled:=True;
   end;}


end;

procedure TFrm_Fig.sbn_CheiaClick(Sender: TObject);
begin
if image1.Picture<>nil then
   begin
   Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
   Frm_Fig_TelaCheia.Image1.Picture.LoadFromFile(Opd1.FileName);
   Frm_Fig_TelaCheia.ShowModal;
   Frm_Fig_TelaCheia.Free;
   end;
end;

procedure TFrm_Fig.sbVerticalClick(Sender: TObject);
begin
if image1.Picture=nil then
   exit;
with Image1.Picture.Bitmap do
Canvas.CopyRect(Canvas.ClipRect, Canvas, Rect(0, Height - 1, Width, -1));

end;

procedure TFrm_Fig.sbHorizontalClick(Sender: TObject);
begin
if image1.Picture=nil then
   exit;
with Image1.Picture.Bitmap do
Canvas.CopyRect(Canvas.ClipRect, Canvas, Rect(Width-1, 0, -1, Height));


end;

procedure TFrm_Fig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fig.bbAdquirir_Texto01Click(Sender: TObject);
begin
If OpenDialog1.Execute Then
   Texto01.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Fig.bbSalvar_Texto01Click(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If FMensagem('Deseja Substituir o Arquivo existente?',0,['1','2'],1)= mrYes Then
         Texto01.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      Texto01.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;
function TFrm_Fig.fAbrirTexto(pCodEmp,pCodPro: Real): Boolean;
var
mTabTemp: String;
begin
result:=true;
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO FROM CADPRO_SOBRE where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+FloatTostr(Mcodemp)+' and ')
                     +' PDS_CODPRO=0'+FloatTostr(mCodpro)
                     +' ORDER BY PDS_PAG ');
DM1.Query3.Open;
mTabTemp:=fproctemp(41)+'.rtf';

if not DM1.Query3.Eof then
   begin

   While not DM1.Query3.Eof do
      begin
      assignfile(f,MtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('PDS_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   end
else
   begin
   assignfile(f,mtabTemp);
   rewrite(f);
   writeln(f,'Não Encontrado');
   closefile(f);
   end;


Texto01.Lines.LoadFromFile(mTabTemp);
DeleteFile(mTabTemp);
end;

function tFrm_Fig.fGravarTexto(pCodEmp,pCodPro: Real; pTexto: TMemo): Boolean;
var
x,y: Integer;
mTextoTemp,mlinha,mlinha2: String;
begin
if (pcodemp>99) and (DM1.Qr_TID.Locate('TINOME','CADPRO',[])) then
   pcodemp:=100-pcodemp;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADPRO_SOBRE where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+FloatTostr(mcodemp)+' and ')
                  +' PDS_CODPRO=0'+FloatTostr(mCodPro));
try
  DM1.Query2.ExecSQL;
  fdm1StartCommit;
except
  DM1.Query2.sql.SavetoFile('C:\sql.txt');
  end;
mTextoTemp:=fProcTemp(42);
pTexto.Lines.SaveToFile(mTextoTemp);
assignfile(f,mTextoTemp);
reset(f);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'PAG',ptinput);
DM1.Query2.Params.CreateParam(ftMemo,'TEXTO',ptinput);

DM1.Query2.SQL.Add(' Insert into CADPRO_SOBRE (PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO) '
              +' Values (:CODEMP,:CODPRO,:PAG,:TEXTO)');
DM1.Query2.ParambyName('CODEMP').Asfloat      :=mCodEmp;
DM1.Query2.ParambyName('CODPRO').Asfloat      :=mCodPro;

x:=0;
y:=0;
mlinha2:='';

while not eof(f) do
   begin
   readln(f,mlinha);
   x:=x+1;
   mlinha2:=mlinha2+mlinha;
   if (x>60) or eof(f) then
      begin
      x:=0;
      y:=y+1;
      DM1.Query2.ParambyName('PAG').AsFloat :=y;
      DM1.Query2.ParambyName('TEXTO').AsMemo   :=mlinha2;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.sql.SavetoFile('C:\sql.txt');
         end;
      mlinha2:='';
      end;
   end;
closefile(f);
DeleteFile(mTextoTemp);
result:=true;

end;


procedure TFrm_Fig.bbAbrir_Texto01Click(Sender: TObject);
begin
fAbrirTexto(mCodEmp,mCodPro);

end;

procedure TFrm_Fig.bbGravar_Texto01Click(Sender: TObject);
begin
fGravarTexto(mCodEmp,mCodPro,Texto01);

end;

procedure TFrm_Fig.bbFonte_Texto01Click(Sender: TObject);
begin
{
FontDialog1.Font.Assign(Texto01.SelAttributes);
If FontDialog1.Execute Then
   If Texto01.SelLength > 0 Then
      Texto01.SelAttributes.Assign(FontDialog1.font)
   else
      Texto01.DefAttributes.Assign(FontDialog1.Font);
}
end;

procedure TFrm_Fig.bbCorfundo_Texto01Click(Sender: TObject);
begin
ColorDialog1.Color := Texto01.Color;
If Colordialog1.Execute Then
   texto01.Color := ColorDialog1.Color;

end;

function TFrm_Fig.fLerDadosPro(pCodpro,pCodemp: Real): Boolean;
begin
Tb_FPro.Close;
Tb_FPro.SQL.Clear;
Tb_FPro.SQL.Add('select item, CODPRO,CODEMP,CF_FOTO, '
               +' CASE WHEN ITEM=0 THEN '+QuotedStr('FRENTE ')
               +'     WHEN ITEM=1 THEN '+QuotedStr('FUNDO')
               +'     WHEN ITEM=2 THEN '+QuotedStr('LATERAL DIREITA')
               +'     WHEN ITEM=3 THEN '+QuotedStr('LATERAL ESQUERDA')
               +'     WHEN ITEM=4 THEN '+QuotedStr('POR CIMA ')
               +'     ELSE '+QuotedStr('POR BAIXO')+' END AS POSICAO '
               +' from '
               +'( '
               +'select rownum-1 as item, TO_NUMBER(:CODPRO) AS CODPRO,TO_NUMBER(:CODEMP) AS CODEMP from user_tab_columns where rownum<7 '
               +') TAB01,CADFPRO '
               +'WHERE CF_ORDEM(+)=TAB01.ITEM AND '
               +'CF_CODEMP(+)=TAB01.CODEMP AND '
               +'CF_CODPRO(+)=TAB01.CODPRO ');
Tb_FPro.Parameters.ParamByName('CODEMP').Value:=pCodemp;
Tb_FPro.Parameters.ParamByName('CODPRO').Value:=pCodpro;
try
   Tb_FPro.Open;
except
   Tb_FPro.SQL.savetofile('c:\sqlpro.txt');
   end;
end;
procedure TFrm_Fig.src_fproDataChange(Sender: TObject; Field: TField);
var
mImagemStream: TStream;
J : TJPEGImage;
begin
if mPosImagem<>Tb_FProITEM.AsInteger then
   begin
   gb_posicao.Caption:='POSICAO DA IMAGEM: '+Tb_FProPOSICAO.AsString;
   if Tb_FProCF_FOTO.IsNull then
      Image1.Picture:=nil
   else
      begin
      J := TJPEGImage.Create;
      mImagemStream:=Tb_FPro.CreateBlobStream(Tb_FProCF_FOTO, bmRead);
      J.LoadFromStream(mImagemStream);
      Image1.Picture.Assign(j);
      FreeAndNil(j);
      FreeAndNil(mImagemStream);
      end;
   end;


end;

procedure TFrm_Fig.tb_fproBeforeEdit(DataSet: TDataSet);
begin
abort;
end;

end.
