unit S_Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg,func, Buttons,S_Lib,S_DM2,S_DM1,comobj,db,dbtables,
  ShellApi;

type
  TFrm_Sobre = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    lbl_nomsis: TLabel;
    lbl_logo: TLabel;
    lbl_versao: TLabel;
    BitBtn1: TBitBtn;
    lbl_empresa: TLabel;
    lbl_ender: TLabel;
    lbl_fone: TLabel;
    lbl_data: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Sobre: TFrm_Sobre;
  IEApp: Variant;

implementation

uses lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_Sobre.FormCreate(Sender: TObject);
var
marq: String;
begin
//marq:='C:\SGE\SGE.EXE';
marq:=ExtractFilePath(Application.ExeName)+Fnomearq_Pasta(0,Application.ExeName);

lbl_versao.Caption:='Versão: '+pversao;
if FileExists(marq) then
   begin
   lbl_data.Caption:='Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(marq)))
                +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(marq)))+' horas ';
   end;
end;

procedure TFrm_Sobre.BitBtn1Click(Sender: TObject);
var
  mano, mmes, mdia: word;
  msistema: string;
  mdt: TDateTime;
  mqtdias : Integer;
  query_temp: tquery;
begin
flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp)));


if Frm_Lib=nil then
     Application.CreateForm(TFrm_Lib, Frm_Lib)
  else
     begin
     Frm_Lib.Free;
     Frm_Lib:=nil;
     Application.CreateForm(TFrm_Lib, Frm_Lib);
     end;

Frm_Lib.CODLIB.Text:=CalculaCodLib('0'+DM2.Tb_EmpCGC.AsString);
while true do
   begin
   If Frm_Lib.ShowModal=mrOk then
      begin
      If Copy(Frm_Lib.SENHA.Text,1,6)=CalculaSenhaLib(Frm_Lib.CODLIB.Text) then
         begin



         msistema:=FormatDateTime('ddmmyyyy',Date);
         mdia:=StrToInt(Copy(msistema,1,2));
         mmes:=StrToInt(Copy(msistema,3,2));
         mano:=StrToInt(Copy(msistema,5,4));
         mqtdias:=StrToInt(PalNum_Sis(Copy(Trim(Frm_Lib.SENHA.Text),7,4)));
         if mqtdias>60 then
            mqtdias:=60;
         mdt:=EncodeDate(mano,mmes,mdia);
         msistema:=FormatDateTime('ddmmyyyy',mdt+mqtdias);
         query_temp:=tquery.create(nil);
         query_temp.databasename:=DM1.SG_ASSOC.databasename;
         query_temp.Sql.add('Update PARGER SET PA001=:PA001 ');
         query_temp.ParamByName('PA001').asstring  :=NumPal_Sis(msistema);
         try
           query_temp.ExecSQL;
           fdm1StartCommit;
        except on e : exception do
          ex_erroSql_Novo(query_temp,97,'_sobre'+e.Message ,'parger');
          end;


          query_temp:=tquery.create(nil);
          query_temp.databasename:=DM1.SG_ASSOC.databasename;
          query_temp.Sql.add('Update CADEMP SET PA001=:PA001 ');
          query_temp.ParamByName('PA001').asstring  :=NumPal_Sis(msistema);
          try
            query_temp.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            ex_erroSql_Novo(query_temp,120,'_sobre'+e.Message ,'CADEMP');
            end;
         query_temp.close;
         freeandnil(query_temp);

         fMensagem('Sistema Liberado!',0,['0'],0);
         Break;
         end
      else
         begin
         fMensagem('Senha Incorreta!',0,['0'],0);
         Continue;
         end;
      end;
   Break;
   end;
Frm_Lib.Free;
Frm_Lib:=nil;
{
Application.CreateForm(Tfrm_Lib, Frm_Lib);
Frm_Lib.ShowModal;
Frm_Lib.Free;
}
end;

procedure TFrm_Sobre.Label1Click(Sender: TObject);
begin
IEApp := CreateOLEObject('InternetExplorer.Application');
IEApp.visible := true;
IEApp.Top := 0;
IEApp.Left := 0;
IEApp.width := screen.width;
IEApp.height := screen.height;
IEApp.Navigate('http://www.intersysnet.com.br');

end;

procedure TFrm_Sobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Sobre.BitBtn2Click(Sender: TObject);
begin
//ShellExecute(Handle,'open',PAnsiChar('http://187.115.66.177:8025/TeamViewer_Intersys.rar'),nil,nil,SW_SHOWNORMAL);

ShellExecute(Handle,'open',PAnsiChar('http://www.intersysnet1.com.br:8025/TeamViewer_Intersys.rar'),nil,nil,SW_SHOWNORMAL);



//  ShellExecute(Handle,'open',PAnsiChar('http://www.intersysnet1.com.br/TeamViewer_Intersys.exe'),nil,nil,SW_SHOWNORMAL)
end;

end.
