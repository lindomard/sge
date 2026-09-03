unit S_Login_Usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,func, Buttons,S_DM4,DB,DBTABLES;

type
  TFrm_Login_Usuario = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    CB_USU: TComboBox;
    lbl_senha: TLabel;
    SENHA: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Timer1: TTimer;
    Label3: TLabel;
    lbl_obs: TLabel;
    lbl_hora: TLabel;
    lbl_data: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_USUExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function fAtuaMens(ptipo: Integer):Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login_Usuario: TFrm_Login_Usuario;
  mtent: Integer=0;

  mtobs: Integer=0;
  mini: Integer=0;
  mtamg: Integer=0;
  mtam: Integer=0;
  mobs: String='';
  pmens: String='';

implementation

uses S_DM1, S_Cons_Pro_Nov;

{$R *.dfm}

procedure TFrm_Login_Usuario.BitBtn1Click(Sender: TObject);
begin
if not smaster(SENHA.Text) then
   begin
   if not DM4.Tb_Usr.Locate('NOMUSR',CB_USU.Text,[locaseinsensitive]) then
      begin
      MessageDlg('Usuário nao Cadastrado!',mtWarning,[mbOk],0);
      CB_USU.SetFocus;
      exit;
      end;
   CB_USU.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;
DM1.Tb_Funcao.Close;
DM1.Tb_Funcao.SQl.Clear;
DM1.Tb_Funcao.SQL.Add('Select * from CADCAR where ');
if DM1.Qr_TID.Locate('TINOME','CADCAR',[]) then
   DM1.Tb_Funcao.SQL.add(' CODCAR=0'+DM4.Tb_UsrCODCAR.AsString
                        +' order by CODCAR')
else
   DM1.Tb_funcao.SQL.Add(' CODEMP=0'+DM4.Tb_UsrCODEMP.AsString
                        +' and CODCAR=0'+DM4.Tb_UsrCODCAR.AsString);
DM1.Tb_Funcao.Open;

If ((DM4.Tb_UsrSENHA.Value=Crip(Trim(SENHA.Text),DM4.Tb_UsrCODUSR.AsInteger)) and
   (DM1.Tb_FuncaoTIPACE.AsInteger in [1,2])) or
   (smaster(Trim(SENHA.Text))) then
   begin
   CodCar:=0; CodUsr:=0; TipAce:=0;
   If smaster(Trim(SENHA.Text)) then
      begin
      TipAce:=2;
      CodCar:=1111;
      Codusr:=1111;
      log_codven:=0;
      log_codsup:=0;
      end
   else
      begin
      if DM4.Tb_UsrUSR_CODCAI.AsInteger>0 then
         codcai:=DM4.Tb_UsrUSR_CODCAI.AsInteger
      else
         codcai:=1;
      CodCar:=DM4.Tb_UsrCODCAR.AsInteger;
      Codusr:=DM4.Tb_UsrCODUSR.AsInteger;
      log_codven:=DM4.Tb_UsrCODVEN.Value;
      log_codsup:=DM4.Tb_UsrCODSUP.Value;
      end;
   if (codemp>100) and (log_codven>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
      begin
      MessageDlg('Favor selecionar uma empresa válida!',mtWarning,[mbOk],0);
      CB_USU.SetFocus;
      exit;
      end;
   ModalResult:=mrOk;
{   setlength(ce_codempati,1);
   ce_codempati[0]:=IntTostr(codemp);
   ce_qtdemp      :=1;}
   end
else
   begin
   mtent:=mtent+1;
   if mtent>3 then
      begin
      AvisoSonoro(1);
      MessageDlg('Numero de Tentativas Escotadas!',mtWarning,[mbOk],0);
      ModalResult:=mrCancel;
      end
   else
      begin
      MessageDlg('Senha Invalida. Tente Novamente!',mtWarning,[mbOk],0);
      CB_USU.Setfocus;
//      exit;
      end;
   end;
end;

procedure TFrm_Login_Usuario.FormCreate(Sender: TObject);
begin
if not DM1.Qr_TID.Active then
   begin
   DM1.Qr_TID.Close;
   DM1.Qr_TID.SQL.Clear;
   DM1.Qr_TID.SQL.Add('Select * from CADTID');
   DM1.Qr_TID.open;
   end;


DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
             +' where LSCHAVE='+chr(39)+'LOGO0'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
             
DM4.Tb_LogoSis.Open;
if not DM4.Tb_LogoSis.Eof then
   begin
   if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
      DM4.Tb_LogoSisLSLOGO.SaveToFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO0.JPG');
   end;

if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO0.jpg') then
   Image1.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO0.jpg');

end;

procedure TFrm_Login_Usuario.FormActivate(Sender: TObject);
begin
fAtuaMens(0);
mtam:=40;

CB_USU.Text:='';
SENHA.Text :='';
CB_USU.Items.Clear;
DM4.Tb_Usr.Close;
DM4.Tb_Usr.SQL.Clear;
DM4.Tb_Usr.SQL.add('Select * from CADUSR where (USUARIO<>1 or USUARIO is null) ');
if DM1.Qr_tid.Locate('TINOME','CADUSR',[]) then
   DM4.Tb_Usr.SQL.add(' order by NOMUSR')
else
   DM4.Tb_Usr.SQL.add(' and CODEMP=0'+InttoStr(codemp)
                     +' order by CODEMP,NOMUSR');
DM4.Tb_Usr.Open;
While not DM4.Tb_Usr.Eof do
   begin
   CB_USU.Items.Add(DM4.Tb_UsrNOMUSR.Value);
   DM4.Tb_Usr.Next;
   end;
CB_USU.SetFocus;

end;

procedure TFrm_Login_Usuario.CB_USUExit(Sender: TObject);
begin
if CB_USU.ItemIndex<0 then
   begin
   with CB_USU do ItemIndex:=Items.IndexOf(CB_USU.Text);
   end;
CB_USU.text:=CB_USU.Items.Strings[CB_USU.ItemIndex];

end;

procedure TFrm_Login_Usuario.BitBtn3Click(Sender: TObject);
begin

DM4.Tb_Usr.Locate('CODUSR',codusr,[locaseinsensitive]);
modalresult:=mrcancel;
end;

procedure TFrm_Login_Usuario.Timer1Timer(Sender: TObject);
begin
lbl_hora.Caption:='Horas: '+FormatDateTime('hh:nn:ss',Time);
lbl_data.Caption:='Data: '+FormatDateTime(fdt2,date);
if mtobs=0 then
   begin
   mini:=mini+1;
   if mini>mtamg then
      mini:=mtamg-mini;
   if (mini+mtam)>mtamg then
      label3.Caption:=copy((mobs+' -- '+mobs),mini,mtam)
   else
      label3.Caption:=copy(mobs,mini,mtam);
   label3.Update;
   end
else if mtobs=1 then
   begin
   if label3.Visible then
      label3.Visible:=False
   else
      label3.Visible:=True;
   end;


end;

function TFrm_Login_Usuario.fAtuaMens(ptipo: Integer):Boolean;
begin
DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                  +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+'TODOS'+chr(39)
                     +' and PFNOMFOR='+chr(39)+'LOGINVEND'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'VEND'+chr(39));
DM1.Tb_ParFon.Open;
if not DM1.Tb_ParFon.Eof then
   begin
   mobs :=DM1.Tb_ParFonPFMENS.Value;
   mtobs:=DM1.Tb_ParFonPFMTIPO.AsInteger;
   end
else
   begin
   mobs:=DM1.Tb_EmpRAZAO.Value;
   mtobs:=0;
   end;
mtamg  :=Length(mobs);

label3.Visible:=True;
Label3.Caption:=mobs;

if mtobs=3 then
   label3.Visible:=False;
if mtobs=0 then
   Label3.Alignment:=taLeftJustify
else
   Label3.Alignment:=taCenter;
if DM1.Tb_ParFonPFCORFON.AsFloat<>0 then
   begin
   Label3.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   Lbl_obs.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
   lbl_obs.Update;
   end;
result:=True;
end;


procedure TFrm_Login_Usuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
