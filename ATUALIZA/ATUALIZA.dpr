program ATUALIZA;

uses
  Forms,
  S_Ppal in 'S_Ppal.pas' {Frm_Ppal};

{$R *.res}
{$R UAC.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Ppal, Frm_Ppal);
  Application.Run;
end.
