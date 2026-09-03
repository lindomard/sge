unit S_CV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,func, CheckLst, ComCtrls,lerarq;

type
  TFrm_CV = class(TForm)
    Panel2: TPanel;
    bbFaturar: TBitBtn;
    bbCancelar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    tsTiposPerm: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    RGCODSERF: TRadioGroup;
    bbGravarPadrao: TBitBtn;
    procedure bbCancelarClick(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure bbGravarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CV: TFrm_CV;
//  mtipo: array[1..10] of String;
implementation

uses S_DM1, S_DM4;


{$R *.dfm}

procedure TFrm_CV.bbCancelarClick(Sender: TObject);
begin
ModalResult:=mrCancel;
//close;
end;

procedure TFrm_CV.bbFaturarClick(Sender: TObject);
begin
if trim(CB_TIPO.Text)='' then
   begin
   MessageDlg('Favor Selecionar um tipo de Pedido válido!',mtWarning,[mbOk],0);
   CB_TIPO.SetFocus;
   exit;
   end;
ModalResult:=mrOk;
end;

procedure TFrm_CV.FormCreate(Sender: TObject);
var
x: Integer;
begin
if codusr=1111 then
   begin
   tsTiposPerm.TabVisible:=true;
   bbGravarPadrao.Visible:=true;
   end
else
   begin
   tsTiposPerm.TabVisible:=false;
   bbGravarPadrao.Visible:=false;
   end;

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
//      RG_TIPOPED.Items.Add(tab_tped[x]);
      RG_TIPOPED.Items.Add(tab_tped_mov[x,00]);
   end;

if flfilpad(0,'_CV','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
      end;
   end
else
   begin
   RG_TIPOPED.Checked[RG_TIPOPED.Items.Count-1]:=true;
   RG_TIPOPED.ItemIndex:=RG_TIPOPED.Items.Count-1;
   RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
   end;

//RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);


CB_TIPO.Items.Clear;  //tab_tped_mov[x,00]
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=8) or (x=12) or (x=13) or (x=17) or (x=18)  then
      continue;
   if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      begin
//      CB_TIPO.Items.Add(tab_tped[x]);
//      CB_TIPO.Text:=tab_tped[1];
      CB_TIPO.Items.Add(tab_tped_mov[x,00]);
      CB_TIPO.Text:=tab_tped_mov[1,00];
      end
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
//      CB_TIPO.Items.Add(tab_tped[x])
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=26) and (DM1.Tb_PargerPDESTTIP26.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=27) and (DM1.Tb_PargerPDESTTIP27.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00])
   else if (x=28) and (DM1.Tb_PargerPDESTTIP28.AsInteger=0) and (RG_TIPOPED.checked[x-1]) then
      CB_TIPO.Items.Add(tab_tped_mov[x,00]);

   end;
if trim(CB_TIPO.Text)='' then
   CB_TIPO.ItemIndex:=0;
with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);


end;

procedure TFrm_CV.CB_TIPOExit(Sender: TObject);
begin
if CB_TIPO.ItemIndex<0 then
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);

end;

procedure TFrm_CV.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_CV.bbGravarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_CV','');
//fGravaPadroes(0,'CB_FORMAPAG'   ,'checked'   ,'_RCPAG',iif(cb_formapag.Checked,'true','false'));


mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if (trim(mcinst2)<>'') and (RG_TIPOPED.Checked[RG_TIPOPED.Items.Count-1]=false) then
   begin
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
   fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_CV',mcinst2);
   end;
fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_CV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
