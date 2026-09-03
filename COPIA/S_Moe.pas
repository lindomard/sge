unit S_Moe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM2,db,dbtables,func,s_DM1;

type
  TFrm_Moe = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     mOrigem: String;

  end;

var
  Frm_Moe: TFrm_Moe;
  moper: Integer;

implementation

uses func_excecoes,lerarq;

{$R *.dfm}

procedure TFrm_Moe.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM2.Tb_Moe.Append;

mcodigo:=DM2.Tb_MoeMCODMOE.AsString;

DM2.Tb_MoeMCODUSR_INC.Value:=codusr;
DM2.Tb_MoeMDATHOR_INC.Value:=Now;
DM2.Tb_MoeMNOMUSR_INC.Value:=nomusr;



DBEdit1.Enabled:=True;
DBEdit2.SetFocus;
end;

procedure TFrm_Moe.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_MoeMCODMOE.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
DM2.Tb_Moe.Edit;
DM2.Tb_MoeMCODUSR_INC.Value:=codusr;
DM2.Tb_MoeMDATHOR_INC.Value:=Now;
DM2.Tb_MoeMNOMUSR_INC.Value:=nomusr;

DBEdit2.SetFocus;
DBEdit1.Enabled:=False;

end;


procedure TFrm_Moe.EXCLUIRClick(Sender: TObject);
var

   mCondicao_old: String;

begin
  inherited;
if DM2.Tb_MoeMCODMOE.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   mCondicao_old:=' where MCODMOE='+DM2.Tb_MoeMCODMOE.AsString;
   fGerarTabelas_Old(9
                      ,0 //codigo novo valor chave
                      ,'MCODNOV' //nome do campo do novo valor (chave)
                      ,'MDATHOR_EVE' // nome do campo data e hora do evento
                      ,'MCODUSR_EVE' // nome do campo do usuario
                      ,'MSTATUS_EVE' // nome do campo de status
                      ,'CADMOE' // nome da tabela
                      ,mCondicao_old);

   DM2.Tb_Moe.Delete;
   CANCELAR.Click;
   end;


end;




procedure TFrm_Moe.GRAVARClick(Sender: TObject);
var
mCondicao_old: String;
begin
  inherited;
if (DM2.Tb_MoeMNOME.Value='_') or (DM2.Tb_MoeMNOME.IsNull) then
   begin
   MessageDlg('Nome da Moeda Invalido!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBEdit2.SetFocus;
   exit;
   end;

if moper=8 then
   begin
   mCondicao_old:=' where MCODMOE='+DM2.Tb_MoeMCODMOE.AsString;
   fGerarTabelas_Old(8
                      ,0 //codigo novo valor chave
                      ,'MCODNOV' //nome do campo do novo valor (chave)
                      ,'MDATHOR_EVE' // nome do campo data e hora do evento
                      ,'MCODUSR_EVE' // nome do campo do usuario
                      ,'MSTATUS_EVE' // nome do campo de status
                      ,'CADMOE' // nome da tabela
                      ,mCondicao_old);

   end;

DM2.Tb_MoeMCODUSR_ALT.Value:=codusr;
DM2.Tb_MoeMDATHOR_ALT.Value :=Now;
DM2.Tb_MoeMNOMUSR_ALT.Value:=nomusr;

dm2.Tb_Moe.Post;
CANCELAR.Click;

end;

procedure TFrm_Moe.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Moe.State in [dsInsert, DsEdit] then
   DM2.Tb_Moe.Cancel;
moper:=0;

end;

procedure TFrm_Moe.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM2.Tb_MoeMCODMOE.AsString then
   begin
   if flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_MoeMCODMOE.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtWarning,[MbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Moe.BBnAtuClick(Sender: TObject);
begin
  inherited;
if mOrigem='consulta' then
   begin
//   fcli01lerant(0);
   end
else
   begin
   If DM2.Tb_Moe.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
   flcadmoe(campo.ItemIndex,1,0,Trim(edit1.Text));
   INCLUIR.Enabled:=bbinc_true;
   ALTERAR.Enabled:=bbalt_true;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=bbexc_true;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_Moe.FormCreate(Sender: TObject);
begin
  inherited;
bbinc_true:=true;
bbalt_true:=true;
bbexc_true:=true;
PC1.ActivePageIndex:=0;
end;

procedure TFrm_Moe.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if mOrigem='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   mOrigem := '';
   end;

end;

procedure TFrm_Moe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if mOrigem='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      mOrigem := '';
      end;
   abort;
   end;

end;

procedure TFrm_Moe.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM2.Tb_Moe.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_MoeMNOME.Value='_' then
   DM2.Tb_Moe.Delete;

end;

procedure TFrm_Moe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Moe.SAIRClick(Sender: TObject);
begin
  inherited;
  if mOrigem = '' then close;
end;

end.
