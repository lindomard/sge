unit s_ender_entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, S_Cli, Buttons,db,dbtables;

type
  TFrm_Ender_Entrega = class(TForm)
    Label1: TLabel;
    lbl_dados_cliente: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    DBE_COE_CEP: TDBEdit;
    SbnEnderCep: TSpeedButton;
    Label3: TLabel;
    DBE_COE_LOG: TDBEdit;
    Label4: TLabel;
    DBE_COE_ENDER_NUM: TDBEdit;
    Label5: TLabel;
    DBE_COE_COMPL: TDBEdit;
    Label6: TLabel;
    DBE_COE_CODBAI: TDBEdit;
    DBE_COE_BAIRRO: TDBEdit;
    Label7: TLabel;
    DBE_COE_CODLOC: TDBEdit;
    DBE_COE_CIDADE: TDBEdit;
    Label8: TLabel;
    DBE_COE_UF: TDBEdit;
    Label9: TLabel;
    DBE_COE_PONTO_REF: TDBEdit;
    bbGravar: TBitBtn;
    bbCancelar: TBitBtn;
    procedure SbnEnderCepClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure DBE_COE_CODLOCExit(Sender: TObject);
    procedure DBE_COE_CODBAIExit(Sender: TObject);
    procedure DBE_COE_CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_COE_CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mAlterouDados: boolean;
  end;

var
  Frm_Ender_Entrega: TFrm_Ender_Entrega;

implementation

uses S_BuscaCep, Func, lerarq, S_DM1, S_DM_MYSQL;



{$R *.dfm}

procedure TFrm_Ender_Entrega.SbnEnderCepClick(Sender: TObject);
var
mEnderIgual: Boolean;
mCep:String;
begin
  inherited;
if not fEstanaNet then
   begin
   fmensagem('Favor Conectar na internet para que possa ser feito essa Consulta!',0,['0'],0);
   exit;
   end;
mCep:=DBE_COE_CEP.Text;
if fSonumero(mcep)<>0 then
   begin

   testeform := TFrm_Ender_Entrega(FindGlobalComponent('Frm_buscacep'));
//   testeform := TFrm_Cli(FindGlobalComponent('Frm_ani'));

   if testeform=nil then
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
   else
      begin
      Frm_BuscaCep.free;
      Frm_BuscaCep:=nil;
      Application.CreateForm(TFrm_BuscaCep,  Frm_BuscaCep)
      end;
   Frm_BuscaCep.mCep_Origem:='frm_ender_entgrega';
   Frm_BuscaCep.mCepEncontrado:=false;
   Frm_BuscaCep.edtCep.Text:=mCep;
   Frm_BuscaCep.bbBuscarCEPClick(Self);
   if Frm_BuscaCep.mCepencontrado then
      begin
      if (DM1.Tb_PargerPCODBAI.Value=1) and
         (fSonumero(Frm_BuscaCep.edtCep.Text)<>0) then
         begin
         if flcadbai(0,0,Frm_BuscaCep.edtBairro.Text) then
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value
         else
            begin
            DM1.Tb_Bai.Append;
            DM1.Tb_BaiBNOME.Value:=Frm_BuscaCep.edtBairro.Text;
            DM1.Tb_Bai.Post;
            DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
            end
         end;

      if (DM1.Tb_PargerPCODLOC.Value=1) and
         (Frm_BuscaCep.edtCidade.Text<>'') then
         begin
         if flcadloc(0,0,Frm_BuscaCep.edtCidade.Text) then
            begin
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            DM1.Tb_CliCUF.Value    :=DM1.Tb_LocLUF.Value;
            end
         else
            begin
            DM1.Tb_Loc.Append;
            DM1.Tb_LocLNOME.Value:=Frm_BuscaCep.edtCidade.text;
            DM1.Tb_LocLUF.Value  :=Frm_BuscaCep.edtUF.Text;
            DM1.Tb_Loc.Post;
            DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
            end;
         end;
      Frm_Cli.tb_cli_outros_enderCOE_LOG.Value   :=Frm_BuscaCep.edtLogradouro.Text;
      Frm_Cli.tb_cli_outros_enderCOE_CEP.Value   :=Frm_BuscaCep.edtCep.text;
      Frm_Cli.tb_cli_outros_enderCOE_BAIRRO.Value:=Frm_BuscaCep.edtBairro.text;
      Frm_Cli.tb_cli_outros_enderCOE_CIDADE.Value:=Frm_BuscaCep.edtCidade.Text;
      Frm_Cli.tb_cli_outros_enderCOE_UF.Value    :=Frm_BuscaCep.edtUF.Text;
      dbe_coe_log.SelStart:=1;
      dbe_coe_log.SelLength:=length(Frm_Cli.tb_cli_outros_enderCOE_LOG.asstring);
      dbe_coe_log.SetFocus;
      end
   else
      fMensagem('o Cep Solicitado nao foi encontrado!',0,['0'],0);
   FreeAndNil(Frm_BuscaCep);
   end



end;

procedure TFrm_Ender_Entrega.bbGravarClick(Sender: TObject);
var
mObs: String;
begin
if valfloat(frm_cli.tb_cli_outros_enderCOE_CEP.AsString)=0 then
   mObs:=mObs+'Esta Faltando o Cep '+ mQuebraLinha;
if trim(frm_cli.tb_cli_outros_enderCOE_LOG.AsString)='' then
   mObs:=mObs+'Esta faltando o Logradouro '+ mQuebraLinha;
if trim(frm_cli.tb_cli_outros_enderCOE_CIDADE.AsString)='' then
   mObs:=mObs+'Esta faltando a cidade '+ mQuebraLinha;
if trim(frm_cli.tb_cli_outros_enderCOE_UF.AsString)='' then
   mObs:=mObs+'Esta faltando a UF '+ mQuebraLinha;


if trim(mObs)='' then
   begin
   mAlterouDados:=true;
   close;
   end
else
   begin
   Messagedlg(mObs,mtWarning,[mbOk],0);
   DBE_COE_CEP.setfocus;
   end;



end;

procedure TFrm_Ender_Entrega.bbCancelarClick(Sender: TObject);
begin
frm_cli.tb_cli_outros_ender.Cancel;
close;
end;

procedure TFrm_Ender_Entrega.DBE_COE_CODLOCExit(Sender: TObject);
begin
if bbGravar.Focused or bbCancelar.Focused then
   exit;
if not flcadloc(1,0,frm_cli.tb_cli_outros_enderCOE_CODLOC.AsString) then
   begin
   verteclado(1);
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   DBE_COE_CODLOC.SetFocus;
   end
else
   begin
   frm_cli.tb_cli_outros_enderCOE_CODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   frm_cli.tb_cli_outros_enderCOE_CIDADE.Value:=DM1.Tb_LocLNOME.Value;
   frm_cli.tb_cli_outros_enderCOE_UF.Value    :=DM1.Tb_LocLUF.Value;
//   frm_cli.tb_cli_outros_enderCOE_CEP.Value   :=DM1.Tb_LocLCEP.Value;
   end;

end;

procedure TFrm_Ender_Entrega.DBE_COE_CODBAIExit(Sender: TObject);
begin
if (frm_cli.tb_cli_outros_enderCOE_CODBAI.Value=0) or (frm_cli.tb_cli_outros_enderCOE_CODBAI.IsNull) then
   begin
   frm_cli.tb_cli_outros_enderCOE_CODBAI.value:=0;
   frm_cli.tb_cli_outros_enderCOE_BAIRRO.value:='';
   exit;
   end;

if bbGravar.Focused or bbCancelar.Focused then
   exit;
if not flcadbai(1,0,frm_cli.tb_cli_outros_enderCOE_CODBAI.AsString) then
   begin
   verteclado(1);
   fmensagem('Bairro não Cadastrada.',0,['0'],0);
   DBE_coE_CODBAI.SetFocus;
   end
else
   begin
   frm_cli.tb_cli_outros_enderCOE_CODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   frm_cli.tb_cli_outros_enderCOE_BAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;

end;

procedure TFrm_Ender_Entrega.DBE_COE_CODBAIKeyPress(Sender: TObject;
  var Key: Char);
begin
if FRM_CLI.tb_cli_outros_ender.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      FRM_CLI.tb_cli_outros_enderCOE_CODBAI.Value:=ValFloat(fChamaBai(0,'frm_Cli',Key));
      DBE_COE_CODBAIExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Ender_Entrega.DBE_COE_CODLOCKeyPress(Sender: TObject;
  var Key: Char);
begin
if frm_cli.tb_cli_outros_ender.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      frm_cli.tb_cli_outros_enderCOE_CODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Cli',Key));
      DBE_COE_CODLOCExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Ender_Entrega.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   DBE_COE_CODBAI.Visible    :=True;
   DBE_COE_BAIRRO.ReadOnly   :=true;
   DBE_COE_BAIRRO.TabStop    :=False;
   DBE_COE_BAIRRO.ParentColor:=True;
   end
else
   begin
   DBE_COE_CODBAI.Visible  :=False;
   DBE_COE_BAIRRO.Left     :=DBE_COE_CODBAI.Left;
   DBE_COE_BAIRRO.Visible  :=True;

   end;

if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   DBE_COE_CODLOC.Visible    :=True;
   DBE_COE_CIDADE.ReadOnly   :=true;
   DBE_COE_CIDADE.TabStop    :=False;
   DBE_COE_CIDADE.ParentColor:=True;
   end
else
   begin
   DBE_COE_CODLOC.Visible  :=False;
   DBE_COE_CIDADE.Left     :=DBE_COE_CODBAI.Left;
   DBE_COE_CIDADE.Visible  :=True;

   end;
mAlterouDados:=false;
end;

end.
