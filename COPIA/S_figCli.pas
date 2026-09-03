unit S_figCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ExtDlgs, JPEG,func,DB,dbtables,S_DM4;

type
  TFrm_FigCli = class(TForm)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Memo1: TMemo;
    opd1: TOpenPictureDialog;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_FigCli: TFrm_FigCli;
  mpegoufig: Boolean=false;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_FigCli.BitBtn3Click(Sender: TObject);
begin
if image1.Picture=nil then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.sql.Add('Delete from CADFCLI where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CF_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' CF_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   end
else if mpegoufig then
   begin
   DM1.Query1.Params.CreateParam(ftOraBlob,'FT',ptinput);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   if DM4.Tb_FCli.Eof then
      Begin
      DM1.Query1.SQL.Add('Insert into CADFCLI (CF_CODEMP,CF_CODCLI,CF_FOTO) values ('
                    +IntTostr(codemp)+','
                    +'0'+DM1.Tb_CliCCODCLI.AsString+','+' :FT )');
      end
   else
      begin
      DM1.Query1.SQL.Add('Update CADFCLI set CF_FOTO=:FT where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CF_CODEMP=0'+IntTostr(codemp)+' and ')
                        +' CF_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
      end;
   DM1.Query1.ParamByName('FT').LoadFromFile(opd1.FileName,ftBlob);
   DM1.Query1.Execsql;
   fdm1StartCommit;
   end;
if DM4.Tb_ICli.eof then
   begin
   DM1.Query1.Params.CreateParam(ftMemo,'BULA',ptinput);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADICLI (CI_CODEMP,CI_CODCLI,CI_INFORMACAO) values ('
                     +IntToStr(codemp)+','
                     +'0'+DM1.Tb_CliCCODCLI.AsString+','+' :BULA )');
   DM1.Query1.ParamByName('BULA').AsMemo:=Memo1.Text;
   DM1.Query1.Execsql;
   fdm1StartCommit;

   end;

DM1.Query1.Params.CreateParam(ftMemo,'BULA',ptinput);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADICLI set CI_INFORMACAO=:BULA where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CI_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CI_CODCLI=0'+DM1.Tb_CliCCODCLI.AsString);
DM1.Query1.ParamByName('BULA').AsMemo:=Memo1.Text;
DM1.Query1.Execsql;
fdm1StartCommit;

close;
end;

procedure TFrm_FigCli.BitBtn1Click(Sender: TObject);
var
mtam: Integer;
begin
If Opd1.Execute then
   begin
   Image1.Picture.LoadFromFile(Opd1.FileName);
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin
      fmensagem('Nao é uma Figura Valida.'+UpperCase(copy(Opd1.FileName,mtam-3,4)),0,['0'],0);
      end
   else
      mpegoufig:=true;
   end;

end;

procedure TFrm_FigCli.BitBtn2Click(Sender: TObject);
begin
Image1.Picture:=nil;
end;

procedure TFrm_FigCli.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_FigCli.FormCreate(Sender: TObject);
begin
mpegoufig:=False;
if DM4.Tb_FCliCF_CODCLI.IsNull then
   opd1.FileName:=''
else
   begin
   DM4.Tb_FCliCF_FOTO.SaveToFile('C:\SGE\TEMPO.JPG');
   opd1.FileName:='C:\SGE\TEMPO.JPG';
   Image1.Picture.LoadFromFile(Opd1.FileName);
   end;
if DM4.Tb_ICliCI_INFORMACAO.IsNull then
   Memo1.Text:=''
else
   Memo1.Text:=DM4.Tb_ICliCI_INFORMACAO.Value;
{if tipace=2 then
   begin}
   BitBtn1.Enabled:=True;
   BitBtn2.Enabled:=True;
   BitBtn3.Enabled:=True;
{   end
else
   begin
   BitBtn1.Enabled:=False;
   BitBtn2.Enabled:=False;
   BitBtn3.Enabled:=False;
   end;    }
end;

procedure TFrm_FigCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
