unit S_ComRVCT

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, db, dbtables, S_DM1, func,
  Grids, DBGrids;

type
  TFrm_ComRVCT = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TMaskEdit;
    BitBtn1: TBitBtn;
    Qr_BxChq: TQuery;
    Qr_BxChqBL1CODEMP: TFloatField;
    Qr_BxChqBL1CHAVE: TFloatField;
    Qr_BxChqBL1DATA: TDateTimeField;
    Qr_BxChqBL1OBS01: TStringField;
    Qr_BxChqBL1OBS02: TStringField;
    Qr_BxChqBL1OBS03: TStringField;
    Src_BxChq: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ComRVCT: TFrm_ComRVCT;

implementation

{$R *.dfm}

procedure TFrm_ComRVCT.BitBtn1Click(Sender: TObject);
begin
Qr_BxChq.Close;
Qr_BxChq.Sql.Clear;
Qr_BxChq.SQL.add('Select * from CADBCL01 where '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]),'',' BL1CODEMP=0'+IntTostr(codemp)+' and '));
if CB_TIPO.ItemIndex=0 then
   begin
   if Trim(nome.Text)<>'' then
      Qr_BxChq.SQL.Add(' BL1CHAVE=0'+Trim(NOME.Text));
   Qr_BxChq.SQL.Add(' order by BL1CHAVE');
   end
else if CB_TIPO.ItemIndex=1 then
   begin
   if Trim(nome.Text)<>'/  /' then
      Qr_BxChq.SQL.Add(' BL1DATA='+chr(39)+FormatDatetime(fdt,StrtoDate(NOME.Text))+chr(39));
   Qr_BxChq.SQL.Add(' order by BL1DATA');
   end;
Qr_BxChq.Open;
end;

procedure TFrm_ComRVCT.FormActivate(Sender: TObject);
begin
CB_TIPO.ItemIndex:=1;
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
NOME.EditMask:='!99/99/9999;1; ';
NOME.SetFocus;
NOME.Text:=FormatDatetime(fdt2, pdatasis);
BitBtn1.Click;
end;

procedure TFrm_ComRVCT.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
if CB_TIPO.ItemIndex=1 then
   NOME.EditMask:='!99/99/9999;1; '
else
   NOME.EditMask:='';
end;

procedure TFrm_ComRVCT.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
