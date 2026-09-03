unit S_eventosproducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, Buttons, ToolEdit,s_lerarq_geral;

type
  Tfrm_eventosproducao = class(TForm)
    Label1: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    cb_somentes: TCheckBox;
    bb_Aplicar_e_Imprimir: TButton;
    cb_omitir1: TCheckBox;
    CODMAT: TEdit;
    lbx_CODMAT: TListBox;
    CheckBox1: TCheckBox;
    CODPRO: TEdit;
    lbx_CODPRO: TListBox;
    Label4: TLabel;
    ListBox2: TListBox;
    Edit2: TEdit;
    CheckBox2: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    ListBox3: TListBox;
    CheckBox3: TCheckBox;
    Label7: TLabel;
    Edit4: TEdit;
    ListBox4: TListBox;
    CheckBox4: TCheckBox;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODMATExit(Sender: TObject);
  
    procedure CODMATKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODMATKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eventosproducao: Tfrm_eventosproducao;

implementation

uses S_DM1, lerarq, Func;

{$R *.dfm}

procedure Tfrm_eventosproducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure Tfrm_eventosproducao.CODMATExit(Sender: TObject);
begin
CODMAT.Text:=fdeixanum2(CODMAT.Text);
if Trim(CODMAT.Text)<>'' then
  begin
  if not flcadpro(1,0,0,CODMAT.Text) then
    begin
    fmensagem('Materia Prima nao Cadastrado!',0,['0'],0);
    CODMAT.SetFocus;
    end
  else
    begin
    lbx_codmat.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
    CODMAT.text := '';
    CODMAT.setfocus;
    end;
  end;
end;

procedure Tfrm_eventosproducao.CODMATKeyPress(Sender: TObject;
  var Key: Char);
var
  X: integer;
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODMAT.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODMATExit(Self);
   end;
end;

procedure Tfrm_eventosproducao.lbx_CODMATKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=46 then
  if lbx_codmat.ItemIndex>=0 then
    lbx_codmat.Items.Delete(lbx_codmat.ItemIndex);
end;

procedure Tfrm_eventosproducao.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
  if Trim(CODPRO.Text)<>'' then
    begin
      if not flcadpro(1,0,0,CODPRO.Text) then
        begin
        fmensagem('Produto Acabado nao Cadastrado!',0,['0'],0);
        CODPRO.SetFocus;
        end
  else
    begin
    lbx_CODPRO.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
    CODPRO.text := '';
    CODPRO.setfocus;
    end;
  end;
end;

procedure Tfrm_eventosproducao.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   //CODMATExit(Self);
   end;
end;

procedure Tfrm_eventosproducao.lbx_CODPROKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=46 then
 if lbx_CODPRO.ItemIndex>=0 then
    lbx_CODPRO.Items.Delete(lbx_CODPRO.ItemIndex);
end;

end.
