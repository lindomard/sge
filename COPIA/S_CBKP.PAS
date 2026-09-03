unit S_CBKP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrm_CBKP = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DEST: TEdit;
    ORIGEM: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure DESTChange(Sender: TObject);
    procedure ORIGEMChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CBKP: TFrm_CBKP;

implementation

uses S_Par;

{$R *.DFM}

procedure TFrm_CBKP.DESTChange(Sender: TObject);
begin
if DEST.Modified then Frm_Par.GRAVAR.Enabled:=True;

end;

procedure TFrm_CBKP.ORIGEMChange(Sender: TObject);
begin
if ORIGEM.Modified then Frm_Par.GRAVAR.Enabled:=True;
end;

end.
