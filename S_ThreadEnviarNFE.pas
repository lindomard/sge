unit S_ThreadEnviarNFE;

interface

uses
  Classes;

type
  theadEnviarNFE = class(TThread)
  private
    { Private declarations }

    procedure FEnviarXML;

  public
     mXMLEntrada: String;
     mXMLSaida: String;
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure theadEnviarNFE.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ theadEnviarNFE }

procedure theadEnviarNFE.Execute;
begin
  { Place thread code here }
end;

procedure theadEnviarNFE.FEnviarXML;
begin


end;


end.
