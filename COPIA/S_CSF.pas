unit S_CSF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, S_DM1, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,func;

type
  TFrm_CSF = class(TForm)
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CSF: TFrm_CSF;

implementation

{$R *.dfm}

procedure TFrm_CSF.BitBtn2Click(Sender: TObject);
begin
DM1.Tb_CSF.Cancel;
close;
end;

procedure TFrm_CSF.DBRadioGroup1Change(Sender: TObject);
begin
if DM1.Tb_CSFCFTIPOC.Value=0 then
   begin
   Label3.Caption :='Nome..:';
   Label4.Visible :=False;
   DBEdit4.Visible:=False;
   Label10.Caption:='CNPF.:';
   Label11.Caption:='Identidade.:';
   DM1.Tb_CSFCFCGC.DisplayFormat:='000"."000"."000"-"00';
   end
else
   begin
   Label3.Caption :='Razão Social.:';
   Label4.Visible :=True;
   DBEdit4.Visible:=True;
   Label10.Caption:='CNPJ.:';
   Label11.Caption:='Inscrição.:';
   DM1.Tb_CSFCFCGC.DisplayFormat:='00"."000"."000"/"0000"-"00';
   end;

end;

procedure TFrm_CSF.BitBtn1Click(Sender: TObject);
begin
DM1.Tb_CSF.Post;
close;
end;

procedure TFrm_CSF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
