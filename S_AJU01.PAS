unit S_Aju01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Func, S_DM1, S_DM4, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrm_Aju01 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    RgOrdem: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    BBnAtu: TBitBtn;
    BBnFechar: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure BBnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Aju01: TFrm_Aju01;

implementation

{$R *.DFM}

procedure TFrm_Aju01.BBnAtuClick(Sender: TObject);
begin
DM4.Tb_Hlp.Close;
if RgOrdem.ItemIndex=0 then
   begin
   DM4.Tb_Hlp.ParamByName('CHAVE').AsString:='%';
   DM4.Tb_Hlp.ParamByName('DESCR').AsString:=Edit1.Text+'%';
   end
else
   begin
   DM4.Tb_Hlp.ParamByName('CHAVE').AsString:=Edit1.Text+'%';
   DM4.Tb_Hlp.ParamByName('DESCR').AsString:='%';
   end;
DM4.Tb_Hlp.Open;
end;

procedure TFrm_Aju01.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Aju01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
