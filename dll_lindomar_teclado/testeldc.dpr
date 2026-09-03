program testeldc;

uses
  Forms,
  s_ppal in 's_ppal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
