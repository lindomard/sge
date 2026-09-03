unit S_SInt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, S_DM1, func,lerarq,S_DM4;

type
  TFrm_SInt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    S00: TEdit;
    C00: TEdit;
    S01: TEdit;
    C01: TEdit;
    S02: TEdit;
    C02: TEdit;
    S03: TEdit;
    C03: TEdit;
    S04: TEdit;
    C04: TEdit;
    S05: TEdit;
    C05: TEdit;
    S06: TEdit;
    C06: TEdit;
    PS01: TCheckBox;
    PS02: TCheckBox;
    PS03: TCheckBox;
    PS04: TCheckBox;
    PS05: TCheckBox;
    PS06: TCheckBox;
    G01: TSpeedButton;
    G02: TSpeedButton;
    G03: TSpeedButton;
    G04: TSpeedButton;
    G05: TSpeedButton;
    G06: TSpeedButton;
    G00: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PS07: TCheckBox;
    PS08: TCheckBox;
    PS09: TCheckBox;
    S07: TEdit;
    C07: TEdit;
    S08: TEdit;
    C08: TEdit;
    S09: TEdit;
    C09: TEdit;
    G09: TSpeedButton;
    G08: TSpeedButton;
    G07: TSpeedButton;
    Label16: TLabel;
    PS10: TCheckBox;
    S10: TEdit;
    C10: TEdit;
    G10: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    PS11: TCheckBox;
    PS12: TCheckBox;
    S11: TEdit;
    C11: TEdit;
    S12: TEdit;
    C12: TEdit;
    G11: TSpeedButton;
    G12: TSpeedButton;
    PS13: TCheckBox;
    S13: TEdit;
    C13: TEdit;
    G13: TSpeedButton;
    PS14: TCheckBox;
    S14: TEdit;
    C14: TEdit;
    PS15: TCheckBox;
    S15: TEdit;
    C15: TEdit;
    PS16: TCheckBox;
    S16: TEdit;
    C16: TEdit;
    G14: TSpeedButton;
    G15: TSpeedButton;
    G16: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    PS17: TCheckBox;
    S17: TEdit;
    C17: TEdit;
    G17: TSpeedButton;
    G18: TSpeedButton;
    G19: TSpeedButton;
    S18: TEdit;
    C18: TEdit;
    S19: TEdit;
    C19: TEdit;
    PS18: TCheckBox;
    PS19: TCheckBox;
    Label24: TLabel;
    Label25: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    Bevel37: TBevel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Label26: TLabel;
    PS20: TCheckBox;
    S20: TEdit;
    C20: TEdit;
    Bevel41: TBevel;
    G20: TSpeedButton;
    Bevel42: TBevel;
    procedure S00Change(Sender: TObject);
    procedure G00Click(Sender: TObject);
    procedure PS01Click(Sender: TObject);
    procedure S01Change(Sender: TObject);
    procedure S02Change(Sender: TObject);
    procedure S03Change(Sender: TObject);
    procedure S04Change(Sender: TObject);
    procedure S05Change(Sender: TObject);
    procedure S06Change(Sender: TObject);
    procedure G01Click(Sender: TObject);
    procedure G02Click(Sender: TObject);
    procedure G03Click(Sender: TObject);
    procedure G04Click(Sender: TObject);
    procedure G05Click(Sender: TObject);
    procedure G06Click(Sender: TObject);
    procedure PS02Click(Sender: TObject);
    procedure PS03Click(Sender: TObject);
    procedure PS04Click(Sender: TObject);
    procedure PS05Click(Sender: TObject);
    procedure PS06Click(Sender: TObject);
    procedure PS07Click(Sender: TObject);
    procedure PS08Click(Sender: TObject);
    procedure PS09Click(Sender: TObject);
    procedure S07Change(Sender: TObject);
    procedure S08Change(Sender: TObject);
    procedure S09Change(Sender: TObject);
    procedure G07Click(Sender: TObject);
    procedure G08Click(Sender: TObject);
    procedure G09Click(Sender: TObject);
    procedure G10Click(Sender: TObject);
    procedure PS10Click(Sender: TObject);
    procedure S10Change(Sender: TObject);
    procedure S11Change(Sender: TObject);
    procedure S12Change(Sender: TObject);
    procedure PS11Click(Sender: TObject);
    procedure PS12Click(Sender: TObject);
    procedure G11Click(Sender: TObject);
    procedure G12Click(Sender: TObject);
    procedure PS13Click(Sender: TObject);
    procedure PS14Click(Sender: TObject);
    procedure PS15Click(Sender: TObject);
    procedure PS16Click(Sender: TObject);
    procedure S13Change(Sender: TObject);
    procedure S14Change(Sender: TObject);
    procedure S15Change(Sender: TObject);
    procedure S16Change(Sender: TObject);
    procedure G13Click(Sender: TObject);
    procedure G14Click(Sender: TObject);
    procedure G15Click(Sender: TObject);
    procedure G16Click(Sender: TObject);
    procedure G17Click(Sender: TObject);
    procedure S17Change(Sender: TObject);
    procedure PS17Click(Sender: TObject);
    procedure PS18Click(Sender: TObject);
    procedure PS19Click(Sender: TObject);
    procedure S18Change(Sender: TObject);
    procedure S19Change(Sender: TObject);
    procedure G18Click(Sender: TObject);
    procedure G19Click(Sender: TObject);
    procedure PS20Click(Sender: TObject);
    procedure S20Change(Sender: TObject);
    procedure G20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SInt: TFrm_SInt;

implementation

{$R *.DFM}

procedure TFrm_SInt.S00Change(Sender: TObject);
begin
if S00.Modified then G00.Enabled:=True;
end;

procedure TFrm_SInt.G00Click(Sender: TObject);
begin
If S00.Text<>C00.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C00.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'0') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S00.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      G00.Enabled:=False;
      DM4.Tb_Par02.Post;
      end;
   end;

end;

procedure TFrm_SInt.PS01Click(Sender: TObject);
begin
flcadpar02(0,0,'1');
If ((PS01.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS01.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G01.Enabled:=True;
end;

procedure TFrm_SInt.S01Change(Sender: TObject);
begin
if S01.Modified then G01.Enabled:=True;

end;

procedure TFrm_SInt.S02Change(Sender: TObject);
begin
if S02.Modified then G02.Enabled:=True;

end;

procedure TFrm_SInt.S03Change(Sender: TObject);
begin
if S03.Modified then G03.Enabled:=True;

end;

procedure TFrm_SInt.S04Change(Sender: TObject);
begin
if S04.Modified then G04.Enabled:=True;

end;

procedure TFrm_SInt.S05Change(Sender: TObject);
begin
if S05.Modified then G05.Enabled:=True;

end;

procedure TFrm_SInt.S06Change(Sender: TObject);
begin
if S06.Modified then G06.Enabled:=True;

end;

procedure TFrm_SInt.G01Click(Sender: TObject);
begin
If S01.Text<>C01.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C01.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'1') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S01.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS01.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G01.Enabled:=False;
      end;
   end;



end;

procedure TFrm_SInt.G02Click(Sender: TObject);
begin
If S02.Text<>C02.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C02.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'2') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S02.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS02.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G02.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G03Click(Sender: TObject);
begin
If S03.Text<>C03.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C03.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'3') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S03.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS03.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G03.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G04Click(Sender: TObject);
begin
If S04.Text<>C04.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C04.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'1') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S04.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS04.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G04.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G05Click(Sender: TObject);
begin
If S05.Text<>C05.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C05.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'5') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S05.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS05.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G05.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G06Click(Sender: TObject);
begin
If S06.Text<>C06.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C01.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'6') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S06.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS06.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G06.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.PS02Click(Sender: TObject);
begin
flcadpar02(0,0,'2');
If ((PS02.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS02.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G02.Enabled:=True;

end;

procedure TFrm_SInt.PS03Click(Sender: TObject);
begin
flcadpar02(0,0,'3');
If ((PS03.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS03.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G03.Enabled:=True;

end;

procedure TFrm_SInt.PS04Click(Sender: TObject);
begin
flcadpar02(0,0,'4');
If ((PS04.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS04.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G04.Enabled:=True;

end;

procedure TFrm_SInt.PS05Click(Sender: TObject);
begin
flcadpar02(0,0,'5');
If ((PS05.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS05.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G05.Enabled:=True;

end;

procedure TFrm_SInt.PS06Click(Sender: TObject);
begin
flcadpar02(0,0,'6');
If ((PS06.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS06.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G06.Enabled:=True;

end;

procedure TFrm_SInt.PS07Click(Sender: TObject);
begin
flcadpar02(0,0,'7');
If ((PS07.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS07.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G07.Enabled:=True;

end;

procedure TFrm_SInt.PS08Click(Sender: TObject);
begin
flcadpar02(0,0,'8');
If ((PS08.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS08.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G08.Enabled:=True;

end;

procedure TFrm_SInt.PS09Click(Sender: TObject);
begin
flcadpar02(0,0,'9');
If ((PS09.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS09.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G09.Enabled:=True;

end;

procedure TFrm_SInt.S07Change(Sender: TObject);
begin
if S07.Modified then G07.Enabled:=True;

end;

procedure TFrm_SInt.S08Change(Sender: TObject);
begin
if S08.Modified then G08.Enabled:=True;

end;

procedure TFrm_SInt.S09Change(Sender: TObject);
begin
if S09.Modified then G09.Enabled:=True;

end;

procedure TFrm_SInt.G07Click(Sender: TObject);
begin
If S07.Text<>C07.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C07.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'7') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S07.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS07.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G07.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G08Click(Sender: TObject);
begin
If S08.Text<>C08.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C08.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'8') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S08.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS08.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G08.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G09Click(Sender: TObject);
begin
If S09.Text<>C09.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C09.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'9') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S09.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS09.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G09.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G10Click(Sender: TObject);
begin
If S10.Text<>C10.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C10.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'10') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S10.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS10.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G10.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.PS10Click(Sender: TObject);
begin
flcadpar02(0,0,'10');
If ((PS10.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS10.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G10.Enabled:=True;

end;

procedure TFrm_SInt.S10Change(Sender: TObject);
begin
if S10.Modified then G10.Enabled:=True;
end;

procedure TFrm_SInt.S11Change(Sender: TObject);
begin
if S11.Modified then G11.Enabled:=True;

end;

procedure TFrm_SInt.S12Change(Sender: TObject);
begin
if S12.Modified then G12.Enabled:=True;

end;

procedure TFrm_SInt.PS11Click(Sender: TObject);
begin
flcadpar02(0,0,'11');
If ((PS11.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS11.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G11.Enabled:=True;

end;

procedure TFrm_SInt.PS12Click(Sender: TObject);
begin
flcadpar02(0,0,'12');
If ((PS12.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS12.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G12.Enabled:=True;

end;

procedure TFrm_SInt.G11Click(Sender: TObject);
begin
If S11.Text<>C11.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C11.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'11') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S11.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS11.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G11.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G12Click(Sender: TObject);
begin
If S12.Text<>C12.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C12.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'12') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S12.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS12.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G12.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.PS13Click(Sender: TObject);
begin
flcadpar02(0,0,'13');
If ((PS13.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS13.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G13.Enabled:=True;

end;

procedure TFrm_SInt.PS14Click(Sender: TObject);
begin
flcadpar02(0,0,'14');
If ((PS14.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS14.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G14.Enabled:=True;

end;

procedure TFrm_SInt.PS15Click(Sender: TObject);
begin
flcadpar02(0,0,'15');
If ((PS15.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS15.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G15.Enabled:=True;

end;

procedure TFrm_SInt.PS16Click(Sender: TObject);
begin
flcadpar02(0,0,'16');
If ((PS16.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS16.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G16.Enabled:=True;

end;

procedure TFrm_SInt.S13Change(Sender: TObject);
begin
if S13.Modified then G13.Enabled:=True;

end;

procedure TFrm_SInt.S14Change(Sender: TObject);
begin
if S14.Modified then G14.Enabled:=True;

end;

procedure TFrm_SInt.S15Change(Sender: TObject);
begin
if S15.Modified then G15.Enabled:=True;

end;

procedure TFrm_SInt.S16Change(Sender: TObject);
begin
if S16.Modified then G16.Enabled:=True;

end;

procedure TFrm_SInt.G13Click(Sender: TObject);
begin
If S13.Text<>C13.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C13.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'13') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S13.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS13.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G13.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G14Click(Sender: TObject);
begin
If S14.Text<>C14.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C14.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'14') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S14.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS14.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G14.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G15Click(Sender: TObject);
begin
If S15.Text<>C15.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C15.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'15') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S15.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS15.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G15.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G16Click(Sender: TObject);
begin
If S16.Text<>C16.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C16.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'16') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S16.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS16.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G16.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.G17Click(Sender: TObject);
begin
If S17.Text<>C17.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C17.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'17') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S17.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS17.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G17.Enabled:=False;
      end;
   end;

end;

procedure TFrm_SInt.S17Change(Sender: TObject);
begin
if S17.Modified then G17.Enabled:=True;

end;

procedure TFrm_SInt.PS17Click(Sender: TObject);
begin
flcadpar02(0,0,'17');
If ((PS17.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS17.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G17.Enabled:=True;

end;

procedure TFrm_SInt.PS18Click(Sender: TObject);
begin
flcadpar02(0,0,'18');
If ((PS18.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS18.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G18.Enabled:=True;

end;

procedure TFrm_SInt.PS19Click(Sender: TObject);
begin
flcadpar02(0,0,'19');
If ((PS19.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS19.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G19.Enabled:=True;

end;

procedure TFrm_SInt.S18Change(Sender: TObject);
begin
if S19.Modified then G19.Enabled:=True;

end;

procedure TFrm_SInt.S19Change(Sender: TObject);
begin
if S19.Modified then G19.Enabled:=True;

end;

procedure TFrm_SInt.G18Click(Sender: TObject);
begin
If S18.Text<>C18.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C18.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'18') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S18.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS18.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G18.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.G19Click(Sender: TObject);
begin
If S19.Text<>C19.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C19.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'19') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S19.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS19.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G19.Enabled:=False;
      end;
   end;


end;

procedure TFrm_SInt.PS20Click(Sender: TObject);
begin
flcadpar02(0,0,'20');
If ((PS20.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
   or (not (PS20.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
   G20.Enabled:=True;

end;

procedure TFrm_SInt.S20Change(Sender: TObject);
begin
if S20.Modified then G20.Enabled:=True;

end;

procedure TFrm_SInt.G20Click(Sender: TObject);
begin
If S20.Text<>C20.Text then
   begin
   MessageDlg('Confirmação Incorreta!',mtWarning,[mbOk],0);
   C20.SetFocus;
   end
else
   begin
   if flcadpar02(0,0,'20') then
      begin
      DM4.Tb_Par02.Edit;
      DM4.Tb_Par02PA2SENHA.Value:=Crip(S20.Text,DM4.Tb_Par02PA2CODIGO.AsInteger);
      DM4.Tb_Par02PA2PDSN.Value:=IIF(PS20.Checked,'S','N');
      DM4.Tb_Par02.Post;
      G20.Enabled:=False;
      end;
   end;


end;

end.
