unit S_ConsLot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons,S_DM1,db,dbtables,func,
  lerarq;

type
  TFrm_ConsLot = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    bbSair: TBitBtn;
    src_lgc: TDataSource;
    procedure bbSairClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mConsLotOrigem: Integer;
    plote,pdtvcto: String;

  end;

var
  Frm_ConsLot: TFrm_ConsLot;
implementation

uses s_lerarq_geral;

{$R *.dfm}

procedure TFrm_ConsLot.bbSairClick(Sender: TObject);
begin
if mConsLotOrigem=1 then
   begin
   if not DM1.Tb_LGCCLCODEMP.IsNull then
      begin
      plote:=DM1.Tb_LGCCLNUMERO.Value;
      if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
         pdtvcto:='/  /'
      else
         pdtvcto:=FormatDatetime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
      end;
   end;
close;
end;

procedure TFrm_ConsLot.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_ConsLot',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ConsLot.DBGrid1DblClick(Sender: TObject);
begin
bbSair.Click;
 end;

procedure TFrm_ConsLot.FormCreate(Sender: TObject);
begin
mConsLotOrigem:=0;
plote:='';
pdtvcto:='';
end;

procedure TFrm_ConsLot.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin



if key=9 then
   bbSair.Click;

end;

procedure TFrm_ConsLot.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ConsLot.FormShow(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if fsonumero(CODPRO.Text)<=0 then
   CODPRO.Text:=''
else
   CODPRO.Text:=fdeixanum(CODPRO.Text);
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
   exit;
   end;
flcadlgc(0,0,0,CODPRO.Text,'','');
end;

end.
