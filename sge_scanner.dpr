program sge_scanner;

uses
  Forms,
  s_scanner_ppal in 's_scanner_ppal.pas' {frm_scanner_ppal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_scanner_ppal, frm_scanner_ppal);
  if ParamStr(1) <>'SGE_INTERSYS' then
     begin
     Application.Terminate;
     end;

  Application.Run;
end.
