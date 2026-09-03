library SGE_DLL_WEBCAM;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  ShareMem,
  Classes,
  forms,
  dialogs,
  Controls,
  Windows,
  DateUtils,
  VSample in 'VSample.pas',
  VFrames in 'VFrames.pas',
  Frame_Video in 'Frame_Video.pas' {Frame1: TFrame},
  S_Captura in 'S_Captura.pas' {Frm_Captura};


function fCapturaImagemWebCam(pTipoDisparo: Integer;pWebCamPadrao: AnsiString; out pNomeRetorno: AnsiString): Boolean;  stdcall; export;
// ptipo de disparo 0-normal 1-discreto
var
form_Captura: TFrm_Captura;
begin

Application.CreateForm(TFrm_Captura, form_Captura);
Form_Captura.Timer_executa.Enabled:=true;
if pTipoDisparo=1 then
   form_Captura.Frame_Video1.mdisparoautomatico:=true
else
   begin
   form_Captura.Frame_Video1.mdisparoautomatico:=false;
   end;

form_Captura.Frame_Video1.mWebCamPadrao:=pWebCamPadrao;

form_Captura.ShowModal;

pNomeRetorno:=form_Captura.Frame_Video1.mArqRetorno;
result:=form_Captura.Frame_Video1.mResultado;
//form_Captura.Frame_Video1.Close;
//form_Captura.Free;

end;


{$R *.res}

exports
 fcapturaimagemWebCam;

begin
end.
