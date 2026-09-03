unit S_Ped_02_MPReq_Outros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, Buttons;

type
  TFrm_Ped_02_MPReq_Outros = class(TForm)
    lblmp_qtddev: TStaticText;
    edtmp_qtddev: TCurrencyEdit;
    StaticText90: TStaticText;
    edtmp_sobra: TCurrencyEdit;
    StaticText98: TStaticText;
    edtmp_quebra: TCurrencyEdit;
    StaticText101: TStaticText;
    edtmp_outret: TCurrencyEdit;
    bbFecharJanela: TBitBtn;
    procedure edtmp_qtddevExit(Sender: TObject);
    procedure edtmp_sobraExit(Sender: TObject);
    procedure BitBtn1Enter(Sender: TObject);
    procedure edtmp_outretExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_02_MPReq_Outros: TFrm_Ped_02_MPReq_Outros;

implementation

uses S_Ped_02_MPReq, S_DM1, Func, lerarq, S_Ped_02;

{$R *.dfm}

procedure TFrm_Ped_02_MPReq_Outros.edtmp_qtddevExit(Sender: TObject);
var
  xQtde : Real;
begin

if (edtmp_qtddev.value=0) then
   exit;
xQtde := 0;
xQtde := edtmp_qtddev.Value;


if (not DM1.Tb_Pro.Active) or (DM1.Tb_ProPDCODPRO.AsFloat<>valFloat(Frm_Ped_02_MPReq.edtmp_codpro.Text)) then
   flcadpro(1,0,0,fdeixanum(Frm_Ped_02_MPReq.edtmp_codpro.Text));
if not frm_ped_02.mpd_RestaurandoPedido then
   begin
   if not frm_ped_02.mPd_FaturandoPedido then
      begin
      if (DM1.Tb_ProPDFRACAO.Value<>1) then
         begin
         if Trunc(xQtde)<>xQtde then
            begin
            fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
            edtmp_qtddev.SetFocus;
            exit;
            end;
         end;
      if (DM1.Tb_ProPDUNDVDA.AsFloat<>0) then
         begin
         if fsonumero(FloatToStr(xQtde/DM1.Tb_ProPDUNDVDA.Value))<>
            (xQtde/DM1.Tb_ProPDUNDVDA.Value) then
            begin
            fMensagem('Não é uma quantidade válida! multipla de '+floatToStr(DM1.Tb_ProPDUNDVDA.Value)+#13
                     +' Quantidade Proxima: '+FloatToStr(
                    round(xQtde/DM1.Tb_ProPDUNDVDA.Value)*DM1.Tb_ProPDUNDVDA.value)
                   ,0,['0'],0);
            abort;
            exit;
            end;
         end;
      end;
   // INICIO
   if xQtde>Frm_Ped_02_MPReq.edtmp_qtdsol.Value then
      begin
      fmensagem('Quantidade Devolvida não Pode Ser Maior que Quantide solicitada!',0,['0'],0);
      edtmp_qtddev.Value:=Frm_Ped_02_MPReq.edtmp_qtdsol.Value;
      edtmp_qtddev.SetFocus;
      exit;
      end;
   end;



end;

procedure TFrm_Ped_02_MPReq_Outros.edtmp_sobraExit(Sender: TObject);
var
  xQtde : Real;
begin
if (edtmp_qtddev.value=0) then
   exit;
xQtde := 0;
xQtde := edtmp_qtddev.Value;
if (not DM1.Tb_Pro.Active) or (DM1.Tb_ProPDCODPRO.AsFloat<>valFloat(Frm_Ped_02_MPReq.edtmp_codpro.Text)) then
   flcadpro(1,0,0,fdeixanum(Frm_Ped_02_MPReq.edtmp_codpro.Text));
if not frm_ped_02.mpd_RestaurandoPedido then
   begin
   if not frm_ped_02.mPd_FaturandoPedido then
      begin
      if (DM1.Tb_ProPDFRACAO.Value<>1) then
         begin
         if Trunc(xQtde)<>xQtde then
            begin
            fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
            edtmp_sobra.SetFocus;
            exit;
            end;
         end;
      if (DM1.Tb_ProPDUNDVDA.AsFloat<>0) then
         begin
         if fsonumero(FloatToStr(xQtde/DM1.Tb_ProPDUNDVDA.Value))<>
            (xQtde/DM1.Tb_ProPDUNDVDA.Value) then
            begin
            fMensagem('Não é uma quantidade válida! multipla de '+floatToStr(DM1.Tb_ProPDUNDVDA.Value)+#13
                     +' Quantidade Proxima: '+FloatToStr(
                    round(xQtde/DM1.Tb_ProPDUNDVDA.Value)*DM1.Tb_ProPDUNDVDA.value)
                   ,0,['0'],0);
            abort;
            exit;
            end;
         end;
      end;
   // INICIO
   if xQtde>Frm_Ped_02_MPReq.edtmp_qtdsol.Value then
      begin
      fmensagem('Quantidade Devolvida não Pode Ser Maior que Quantide solicitada!',0,['0'],0);
      edtmp_sobra.SetFocus;
      exit;
      end;
   end;







end;

procedure TFrm_Ped_02_MPReq_Outros.BitBtn1Enter(Sender: TObject);
begin
edtmp_qtddev.SetFocus;
end;

procedure TFrm_Ped_02_MPReq_Outros.edtmp_outretExit(Sender: TObject);
begin
if bbFecharJanela.Focused then
   close;
end;

procedure TFrm_Ped_02_MPReq_Outros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
