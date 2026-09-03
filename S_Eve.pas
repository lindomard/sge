unit S_Eve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM2,func,db,dbtables,lerarq,S_DM1;

type
  TFrm_Eve = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBE_Nomeve: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox4: TDBCheckBox;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBE_ORDEM: TDBEdit;
    procedure DBEdit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Eve: TFrm_Eve;
  eve_ori: String;
  moper: Integer;
  mcoddsra: Integer=0;
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Eve.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM2.Tb_EveCECODEVE.AsString then
   begin
   if flqr1('CECODEVE','CE','CADEVE','N','CECODEVE',DM2.Tb_EveCECODEVE.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtinformation,[mbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Eve.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadeve(CAMPO.ItemIndex,1,Edit1.Text);

end;

procedure TFrm_Eve.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM2.Tb_Eve.Append;
mcodigo:=DM2.Tb_EveCECODEVE.AsString;
DBEdit1.Enabled:=True;
DBEdit1.SetFocus;
mcoddsra:=0
end;

procedure TFrm_Eve.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_EveCECODEVE.IsNull then
   begin
   MessageDlg('Nao ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADEVE where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEVE',[]),'',' CECODEMP=0'+IntToStr(codemp)+' and ')
                  +' CECODEVE=0'+DM2.Tb_EveCECODEVE.AsString);
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   GroupBox1.Enabled:=false;
}   
moper:=8;
DM2.Tb_Eve.Edit;
DBE_Nomeve.SetFocus;
DBEdit1.Enabled:=False;
mcoddsra:=DM2.Tb_EveCECODEDSR.AsInteger;
end;

procedure TFrm_Eve.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_EveCECODEVE.IsNull then
   begin
   MessageDlg('Nao ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select EPCODEVE from EVEPREF where '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' EPCODEVE=0'+DM2.Tb_EveCECODEVE.AsString);
DM1.Query2.Open;
if not DM1.Query2.Eof then
   begin
   MessageDlg('Este Evento não pode ser Excluido pois esta sendo usando em parametros!',mtWarning,[mbok],0);
   exit;
   end;


if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Eve.Delete;
   CANCELAR.Click;
   end;


end;

procedure TFrm_Eve.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_EveCENOMEVE.Value='_') or (DM2.Tb_EveCENOMEVE.IsNull) then
   begin
   MessageDlg('Nome Inválido!',mtWarning,[mbOk],0);
   DBE_Nomeve.SetFocus;
   exit;
   end;
if (DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value) or
   (DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value)   or
   (DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value) or
   (DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value)   then
   begin
   DM2.Tb_EveCEINCINSS.Value:=1;
   DM2.Tb_EveCEINCVT.Value  :=1;
   DM2.Tb_EveCEINCFGTS.Value:=1;
   DM2.Tb_EveCEINCINSS.Value:=1;
   end;

dm2.Tb_Eve.Post;
CANCELAR.Click;

end;

procedure TFrm_Eve.CANCELARClick(Sender: TObject);
begin
  inherited;
GroupBox1.Enabled:=True;
DM2.Tb_Eve.Cancel;
moper:=0;

end;

procedure TFrm_Eve.FormCreate(Sender: TObject);
begin
  inherited;
eve_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADEVE') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

end;

procedure TFrm_Eve.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if eve_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   eve_ori := '';
   end;

end;

procedure TFrm_Eve.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if eve_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      eve_ori := '';
      end;
   abort;
   end;


end;

procedure TFrm_Eve.DBEdit4Exit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if DM2.Tb_EveCECODEDSR.Value>0 then
   begin
   if not flqr1('CENOMEVE,CECODEDSR','CE','CADEVE','N','CECODEVE',DM2.Tb_EveCECODEDSR.AsString) then
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbok],0);
      DBEdit4.SetFocus;
      end
   else if DM1.Query1.fields[1].Asinteger>0 then
      begin
      MessageDlg('Este Evento: '+DM1.Query1.Fields[0].AsString+#13
                +' ja possui um DSR: '+DM1.Query1.Fields[1].AsString,mtWarning,[mbOk],0);
      dbedit4.SetFocus;
      end;
   end;
if DM2.Tb_EveCECODEDSR.Value>0 then
   begin
   if DM2.Tb_EveCECODEDSR.AsInteger<>mcoddsra then
      begin
      if flqr1('CENOMEVE,CECODEVE','CE','CADEVE','N','CECODEDSR',DM2.Tb_EveCECODEDSR.AsString) then
         begin
         MessageDlg('Este DSR ja Esta no Evento: '+DM1.Query1.Fields[1].AsString+'-'+DM1.Query1.Fields[0].AsString+'!',mtWarning,[mbok],0);
         DBEdit4.SetFocus;
         end;
      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select EPCODEVE from EVEPREF where '
                     +iif(DM1.Qr_Tid.locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' EPCODEVE=0'+DM2.Tb_EveCECODEDSR.AsString);
   DM1.Query2.Open;
   if not DM1.Query2.Eof then
      begin
      MessageDlg('Este Evento não pode ser DSR pois ja esta parametrizado!',mtWarning,[mbok],0);
      abort;
      end;
   end;

end;

procedure TFrm_Eve.SAIRClick(Sender: TObject);
begin
  inherited;
  if eve_ori = '' then close;
end;

procedure TFrm_Eve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
