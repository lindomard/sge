unit S_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,s_dm1,func,lerarq,S_DM3,db,dbtables;

type
  TFrm_Proc = class(TFrm_C)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Texto: TRichEdit;
    bbFonte: TBitBtn;
    FontDialog1: TFontDialog;
    Src_Proc: TDataSource;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure bbFonteClick(Sender: TObject);
    procedure Src_ProcDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
     function fGravarTexto(pTipo: Integer): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Proc: TFrm_Proc;
  moper: Integer=0;
  proc_ori: String;
  mTextoTemp: String;
  f: TextFile;
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Proc.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM3.Tb_Proc.Append;
mcodigo:=DM3.Tb_ProcCP_CODPRO.AsString;
DBEdit1.Enabled:=True;
DBEdit1.SetFocus;
end;

procedure TFrm_Proc.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM3.Tb_ProcCP_CODPRO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
DM3.Tb_Proc.Edit;
DBEdit1.Enabled:=False;
dbedit2.SetFocus;
end;

procedure TFrm_Proc.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM3.Tb_ProcCP_CODPRO.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este registro?',0,['1','2'],2)=mrYes then
   begin
   DM3.Tb_Proc.Delete;
   CANCELAR.Click;
   end;


end;

procedure TFrm_Proc.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM3.Tb_ProcCP_NOME.Value='_') or (DM3.Tb_ProcCP_NOME.IsNull) then
   begin
   MessageDlg('Nome do Procedimento invalido!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;
fGravarTexto(0);
dm3.Tb_Proc.Post;

CANCELAR.Click;

end;

procedure TFrm_Proc.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM3.Tb_Proc.State in [dsInsert, DsEdit] then
   DM3.Tb_Proc.Cancel;
moper:=0;

end;

procedure TFrm_Proc.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM3.Tb_ProcCP_CODPRO.AsString then
   begin
   if flqr1('CP_NOME','CP_','CADPROC','N','CP_CODPRO',DM3.Tb_ProcCP_CODPRO.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtWarning,[MbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Proc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM3.Tb_Proc.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM3.Tb_ProcCP_NOME.Value='_' then
   DM3.Tb_Proc.Delete;

end;

procedure TFrm_Proc.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM3.Tb_Proc.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
   mrYes: GRAVAR.Click;
   mrNo : CANCELAR.Click;
   end;
   end;
flcadproc(campo.ItemIndex,1,0,Trim(edit1.Text));
end;

procedure TFrm_Proc.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if proc_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   proc_ori := '';
   end;

end;

procedure TFrm_Proc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if proc_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      proc_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Proc.FormCreate(Sender: TObject);
begin
  inherited;
IF DBNavigator1.DataSource=nil then
   DBNavigator1.DataSource:=DM3.Src_Proc;
IF DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM3.Src_Proc;

if flcadactab(0,0,IntToStr(codcar),'CADPROC') then
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
mTextoTemp:=fProcTemp(24);

end;

procedure TFrm_Proc.SAIRClick(Sender: TObject);
begin
  inherited;
  if proc_ori = '' then close;
end;

procedure TFrm_Proc.bbFonteClick(Sender: TObject);
begin
  inherited;
FontDialog1.Font.Assign(Texto.SelAttributes);
If FontDialog1.Execute Then
   If Texto.SelLength > 0 Then
      Texto.SelAttributes.Assign(FontDialog1.font)
   else
      Texto.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Proc.Src_ProcDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if not (DM3.Tb_Proc.State in [dsEdit,dsInsert]) then
   begin
   Texto.Lines.Clear;
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select CPT_CODEMP,CPT_CODPRO,CPT_PAG,CPT_DESCRICAO FROM CADPROC_TEXTO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CPT_CODPRO=0'+DM3.Tb_ProcCP_CODPRO.AsString
                     +' ORDER BY CPT_PAG ');
   DM1.Query3.Open;
   if not DM1.Query3.Eof then
      begin
      While not DM1.Query3.Eof do
         begin
         assignfile(f,mTextoTemp);
         rewrite(f);
         While not DM1.Query3.Eof do
            begin
            writeln(f,DM1.Query3.fieldbyName('CPT_DESCRICAO').AsString);
            DM1.Query3.Next;
            end;
         closefile(f);
         Texto.Lines.LoadFromFile(mTextoTemp);
         end;
      end;
   end;
end;

function TFrm_Proc.fGravarTexto(pTipo: Integer): Boolean;
var
x,y: Integer;
mlinha,mlinha2: String;
begin

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADPROC_TEXTO where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPT_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CPT_CODPRO=0'+DM3.Tb_ProcCP_CODPRO.AsString);
try
  DM1.Query2.ExecSQL;
  fdm1StartCommit;
except
  DM1.Query2.sql.SavetoFile('C:\sql.txt');
  end;
Texto.lines.SaveToFile(mTextoTemp);
assignfile(f,mTextoTemp);
reset(f);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'PAG',ptinput);
DM1.Query2.Params.CreateParam(ftMemo,'DESCRICAO',ptinput);
DM1.Query2.SQL.Add(' Insert into CADPROC_TEXTO (CPT_CODEMP,CPT_CODPRO,CPT_PAG,CPT_DESCRICAO) '
              +' Values (:CODEMP,:CODPRO,:PAG,:DESCRICAO)');
DM1.Query2.ParambyName('CODEMP').Asfloat      :=DM3.Tb_ProcCP_CODEMP.Value;
DM1.Query2.ParambyName('CODPRO').Asfloat      :=DM3.Tb_ProcCP_CODPRO.Value;
x:=0;
y:=0;
mlinha2:='';

while not eof(f) do
   begin
   readln(f,mlinha);
   x:=x+1;
   mlinha2:=mlinha2+mlinha;
   if (x>60) or eof(f) then
      begin
      x:=0;
      y:=y+1;
      DM1.Query2.ParambyName('PAG').AsFloat :=y;
      DM1.Query2.ParambyName('DESCRICAO').AsMemo   :=mlinha2;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.sql.SavetoFile('C:\sql.txt');
         end;
      mlinha2:='';
      end;
   end;
closefile(f);
end;

procedure TFrm_Proc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DeleteFile(mTextoTemp);
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
