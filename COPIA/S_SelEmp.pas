unit S_SelEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, CheckLst;

type
  TFrm_SelEmp = class(TForm)
    GB_EMPRESAS: TGroupBox;
    CLB_EMPRESAS: TCheckListBox;
    Panel3: TPanel;
    bbFechar: TBitBtn;
    procedure bbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLB_EMPRESASClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SelEmp: TFrm_SelEmp;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_SelEmp.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SelEmp.FormCreate(Sender: TObject);
begin
CLB_EMPRESAS:=fRetornaEmpresas(CLB_EMPRESAS);

end;

procedure TFrm_SelEmp.CLB_EMPRESASClick(Sender: TObject);
begin
  CLB_EMPRESAS := Valida_CheckList(CLB_EMPRESAS);
end;

end.
