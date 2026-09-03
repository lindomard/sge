unit S_Regiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM6,func,db,dbtables,lerarq, ToolWin;

type
  TFrm_Regiao = class(TFrm_C)
    Label1: TLabel;
    edt_codreg: TDBEdit;
    Label2: TLabel;
    edt_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edt_codregExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Regiao  : TFrm_Regiao;
  mori_regiao : string;
  mcodrg_ant  : Real;
  moper_rg    : Integer; 
implementation

uses S_DM1, S_NFE_reg, S_DM4;

{$R *.dfm}

procedure TFrm_Regiao.INCLUIRClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Cadastro de Região - [Inclusão]';
  DM6.Tb_Regiao.Append;
  DM6.Tb_RegiaoCR_DATINC.AsDateTime:=Now;
  mCodrg_Ant := DM6.Tb_RegiaoCR_CODREG.AsFloat;
  mOper_rg   := 0;
  edt_codreg.Enabled := True;
  edt_codreg.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled       := false;
end;

procedure TFrm_Regiao.ALTERARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Região - [Alteração]';

   if DM6.Tb_RegiaoCR_CODREG.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM6.Tb_Regiao.Edit;
   mCodrg_Ant  := DM6.Tb_RegiaoCR_CODREG.AsFloat;
   mOper_rg    := 1;
   edt_codreg.Enabled   := False;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   DBGrid1.Enabled      := False;
   DBNavigator2.Enabled := False;
   BBnAtu.Enabled:= false;
end;

procedure TFrm_Regiao.EXCLUIRClick(Sender: TObject);
begin
   inherited;
   if DM6.Tb_RegiaoCR_CODREG.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.Asstring,
                  'CR_CODNOV','CR_DATEXC','CR_USREXC',
                  'CR_STATUS',['CR_CODREG'],[FloatToStr(DM6.Tb_RegiaoCR_CODREG.AsFloat)]
                  ,DM6.Tb_Regiao);
       FAtualizaBanco(2,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.AsString
       ,['CR_CODREG'],[FloatToStr(DM6.Tb_RegiaoCR_CODREG.AsFloat)]
       ,DM6.Tb_Regiao);
        DM6.Tb_Regiao.Delete;
   end;
end;

procedure TFrm_Regiao.GRAVARClick(Sender: TObject);
begin
   inherited;
   if (DM6.Tb_RegiaoCR_CODREG.Isnull) then begin
      fmensagem('Favor informar o Código da Região!',0,['0'],0);
      edt_codreg.SetFocus;
      exit;
   end;

   if (DM6.Tb_RegiaoCR_NOMREG.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;

    DM6.Tb_RegiaoCR_DATALT.AsDateTime:=Now;


   if moper_rg=1 then begin
      FGerarAntes(8,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.Asstring,
                 'CR_CODNOV','CR_DATEXC','CR_USREXC',
                 'CR_STATUS',['CR_CODREG'],[FloatToStr(mCodrg_Ant)]
                 ,DM6.Tb_Regiao);
   end;

  FAtualizaBanco(1,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.AsString
  ,['CR_CODREG'],[FloatToStr(mCodrg_Ant)]
  ,DM6.Tb_Regiao);
   DM6.Tb_Regiao.Post;
   mOper_rg:=-1;
   CancelarClick(self);
end;

procedure TFrm_Regiao.CANCELARClick(Sender: TObject);
begin
   inherited;
   if (mOper_rg = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADREGIAO','CR_CODEMP',DM6.Tb_RegiaoCR_CODEMP.AsString
      ,['CR_CODREG'],[FloatToStr(mcodrg_ant)]
      ,DM6.Tb_Regiao);
   end;

   Self.Caption := 'Manutenção no Cadastro de Região';


   if DM6.Tb_Regiao.State in [dsEdit,dsInsert] then
      DM6.Tb_Regiao.Cancel;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   DBNavigator2.Enabled := True;
   BBnAtu.Enabled:= true;
   mOper_rg := -1;
end;

procedure TFrm_Regiao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if mori_regiao='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   mori_regiao := '';
   end;


end;

procedure TFrm_Regiao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if mori_regiao='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      mori_regiao := '';
      end;
   abort;
   end;


end;

procedure TFrm_Regiao.BBnAtuClick(Sender: TObject);
begin
  inherited;
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : gravar.Click;
      else
         cancelar.Click;
      end;
   end;
   flcadRegiao(CAMPO.ItemIndex,0,Edit1.Text);
end;

procedure TFrm_Regiao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   if btn_gravar.enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: gravar.Click;
         mrNo : cancelar.Click;
      else
         CanClose := False;
      end;
   end;

end;

procedure TFrm_Regiao.edt_codregExit(Sender: TObject);
begin
   inherited;
   if btn_cancelar.Focused then begin
      DM6.Tb_RegiaoCR_CODREG.Value := 0;
      Exit;
   end;

   if DM6.Tb_RegiaoCR_CODREG.Isnull then
      Exit;

   if (mOPer_rg = 0) and (DM6.Tb_RegiaoCR_CODREG.AsFloat <> mCodrg_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CR_NOMREG from CADREGIAO '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADREGIAO',[]),'',' where GRCODEMP=0'+IntToStr(codemp)+' and ')
                        +' CR_CODREG=:CODREG ');
      DM1.Query1.ParambyName('CODREG').AsFloat := DM6.Tb_RegiaoCR_CODREG.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CR_NOMREG').AsString,0,['0'],0);
         edt_codreg.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_Regiao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Regiao.FormCreate(Sender: TObject);
begin
   inherited;
   DBGrid1.DataSource      := DM6.Src_Regiao;
   DBNavigator2.DataSource := DM6.Src_Regiao;

   Self.Caption := 'Manutenção no Cadastro de Região';
   Campo.ItemIndex := 0;

   moper_rg:=0;

   if flcadactab(0,0,IntToStr(codcar),'CADREGIAO') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true := False;
   end else begin
      bbinc_true:=true;
      bbalt_true:=true;
      bbexc_true:=true;
   end;

   btn_incluir.Enabled := bbinc_true;
   btn_alterar.Enabled := bbalt_true;
   btn_excluir.Enabled := bbexc_true;
   btn_cancelar.Enabled:= False;

   BBnAtuClick(self);
end;

procedure TFrm_Regiao.SAIRClick(Sender: TObject);
begin
  inherited;
  if mori_regiao = '' then close;

end;

end.
