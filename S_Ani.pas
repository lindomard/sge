unit S_Ani;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons,func,db,dbtables,S_DM1,S_DM4,lerarq,
  Mask, Grids, DBGrids,S_RAni;

type
  TFrm_Ani = class(TForm)
    PC1: TPageControl;
    TsCad: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    MANUT: TGroupBox;
    ALTERAR: TBitBtn;
    INCLUIR: TBitBtn;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    GRAVAR: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    db_dtnas: TDBEdit;
    Label12: TLabel;
    db_dtcontato: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBGrid1: TDBGrid;
    dtnas: TMaskEdit;
    dtcontato: TMaskEdit;
    Panel1: TPanel;
    NOME: TEdit;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    TIPO: TLabel;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dtnasExit(Sender: TObject);
    procedure dtcontatoExit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMEChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    form_Rani: Tfrm_Rani;
  end;

var
  Frm_Ani: TFrm_Ani;
  mOper_ani: Integer=0;
  mTipo_Ani: String;
  mCodigo_ani: Real=0;
  mani_ori: String='';
  bbaalt_true : Boolean=True;
  bbainc_true : Boolean=True;
  bbaexc_true : Boolean=True;
  mOrdem: Integer;

implementation


{$R *.dfm}

procedure TFrm_Ani.INCLUIRClick(Sender: TObject);
begin
PC1.ActivePageIndex:=0;
tsCad.Enabled       :=True;
DBGrid1.Enabled     :=False;
ALTERAR.Enabled     :=False;
INCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
DBNavigator1.Enabled:=False;
moper_ani:=0;
DM4.Tb_Ani.Append;
DM4.Tb_AniCA_CODEMP.Value :=codemp;
DM4.Tb_AniCA_TIPO.Value   :=Tipo.Caption;
DM4.Tb_AniCA_CODIGO.Value :=mCodigo_ani;
DM4.Tb_AniCA_DATHOR_INC.Value:=Now;
DM4.Tb_AniCA_CODUSR_INC.Value:=codusr;
DBEdit1.SetFocus;
PC1.ActivePageIndex:=0;

if DM4.Tb_AniCA_DTNAS.Value<=pdatanula then
   dtnas.Text:='/  /'
else
   dtnas.Text          :=FormatDateTime(fdt2, DM4.Tb_AniCA_DTNAS.Value);
if DM4.Tb_AniCA_DTCONTATO.Value<=pdatanula then
   dtcontato.Text:='/  /'
else
   dtcontato.Text       :=FormatDateTime(fdt2, DM4.Tb_AniCA_DTCONTATO.Value);
db_dtnas.Visible    :=False;
db_dtcontato.Visible:=False;
dtnas.Visible       :=true;
dtcontato.Visible   :=true;



end;

procedure TFrm_Ani.ALTERARClick(Sender: TObject);
begin

if DM4.Tb_AniCA_NOME.IsNull then
   begin
   fMensagem('Não ha registro a ser alterado!',0,['0'],0);
   exit;
   end;
moper_ani:=8;

DM4.Tb_Ani.Edit;

DM4.Tb_AniCA_DATHOR_ALT.Value:=Now;
DM4.Tb_AniCA_CODUSR_ALT.Value:=codusr;
PC1.ActivePageIndex :=0;
tsCad.Enabled       :=True;
DBEdit1.SetFocus;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
DBNavigator1.Enabled:=False;
if DM4.Tb_AniCA_DTNAS.Value<=pdatanula then
   dtnas.Text:='/  /'
else
   dtnas.Text          :=FormatDateTime(fdt2, DM4.Tb_AniCA_DTNAS.Value);
if DM4.Tb_AniCA_DTCONTATO.Value<=pdatanula then
   dtcontato.Text:='/  /'
else
   dtcontato.Text       :=FormatDateTime(fdt2, DM4.Tb_AniCA_DTCONTATO.Value);
db_dtnas.Visible    :=False;
db_dtcontato.Visible:=False;
dtnas.Visible       :=true;
dtcontato.Visible   :=true;


end;

procedure TFrm_Ani.EXCLUIRClick(Sender: TObject);
begin
if DM4.Tb_AniCA_CODIGO.IsNull then
   begin
   fMensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Ani.Delete;
   CANCELAR.Click;
   end;
INCLUIR.Enabled     :=bbainc_true;
DBGrid1.Enabled     :=true;
ALTERAR.Enabled     :=bbaalt_true;
GRAVAR.Enabled      :=False;
EXCLUIR.Enabled     :=bbaexc_true;
CANCELAR.Enabled    :=True;
tsCad.Enabled       :=False;
DBNavigator1.Enabled:=True;

end;

procedure TFrm_Ani.FormActivate(Sender: TObject);
begin

if flcadactab(0,0,IntToStr(codcar),mani_ori) then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbainc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbaalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbaexc_true:=False;
   end
else
   begin
   bbainc_true:=true;
   bbaalt_true:=true;
   bbaexc_true:=true;
   end;

end;

procedure TFrm_Ani.GRAVARClick(Sender: TObject);
begin
if (DM4.Tb_AniCA_NOME.Value='_') or (DM4.Tb_AniCA_NOME.IsNull) then
   begin
   fMensagem('Nome Campo Obrigatório!',0,['0'],0);
   PC1.ActivePageIndex:=0;
   DBEdit1.SetFocus;
   exit;
   end;
if mOper_ani=0 then
   begin
   if TIPO.Caption = 'OU' then
      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.ADD('SELECT MAX(CA_CODIGO) FROM CADANI WHERE ');
      DM1.Query4.SQL.ADD('      CA_CODEMP = '+INTTOSTR(CODEMP));
      DM1.Query4.SQL.ADD(' AND  CA_TIPO   = ''OU''');
      DM1.Query4.Open;
      DM4.Tb_AniCA_CODIGO.AsFloat := DM1.Query4.Fields[0].AsFloat + 1;
      end;

   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.ADD('SELECT MAX(CA_ORDEM) FROM CADANI WHERE ');
   DM1.Query4.SQL.ADD('      CA_CODEMP = '+INTTOSTR(CODEMP));
   DM1.Query4.SQL.ADD(' AND  CA_TIPO   = :TIPO');
   DM1.Query4.SQL.ADD(' AND  CA_CODIGO = :CODIGO');
   DM1.Query4.ParamByName('TIPO').AsString:=TIPO.Caption;
   DM1.Query4.ParamByName('CODIGO').Value :=DM4.Tb_AniCA_CODIGO.AsFloat;
   DM1.Query4.Open;
   DM4.Tb_AniCA_ORDEM.AsFloat:=DM1.Query4.fields[0].AsFloat+1;
   end;

DM4.Tb_AniCA_DATHOR_ALT.Value:=Now;

DM4.Tb_Ani.Post;
CANCELAR.Click;
end;

procedure TFrm_Ani.CANCELARClick(Sender: TObject);
begin
DBGrid1.Enabled     :=True;
INCLUIR.Enabled     :=bbainc_true;
ALTERAR.Enabled     :=bbaalt_true;
GRAVAR.Enabled      :=false;
EXCLUIR.Enabled     :=bbaexc_true;
CANCELAR.Enabled    :=True;
tsCad.Enabled       :=False;
DBNavigator1.Enabled:=True;
if DM4.Tb_Ani.State in [dsInsert, DsEdit] then
   DM4.Tb_Ani.Cancel;
db_dtnas.Visible    :=true;
db_dtcontato.Visible:=true;
dtnas.Visible       :=False;
dtcontato.Visible   :=False;

moper_ani:=0;
end;

procedure TFrm_Ani.SAIRClick(Sender: TObject);
begin
//if mani_ori='' then
   close;
//else
//   modalResult:=MrOk;//
end;

procedure TFrm_Ani.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If DM4.Tb_Ani.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM4.Tb_AniCA_NOME.Value='_' then
   DM4.Tb_Ani.Delete;

end;

procedure TFrm_Ani.FormCreate(Sender: TObject);
begin
    tipo.Caption := mTipo_Ani;
    IF mTipo_Ani = '' THEN
    begin
       DM4.Tb_Ani.close;
       DM4.Tb_Ani.sql.Clear;
       DM4.Tb_Ani.sql.Add('select * from cadani where ca_tipo = ''OU''');
       DM4.Tb_Ani.Open;
       LABEL1.Caption := 'OUTRO ANIVERSARIANTE';
       tipo.Caption := 'OU';
    end;

    DM4.Tb_AniCA_DTNAS.DisplayFormat    :=fdt2;
    DM4.Tb_AniCA_DTCONTATO.DisplayFormat:=fdt2;
    DM4.Tb_Anidtnas.DisplayFormat       :=fdt2;
    DM4.Tb_Anidtcontato.DisplayFormat   :=fdt2;

end;

procedure TFrm_Ani.dtnasExit(Sender: TObject);
begin
if Trim(dtnas.Text)<>'/  /' then
   begin
   try
      dtnas.Text:=FormatDateTime(fdt2, StrToDate(dtnas.Text));
      DM4.Tb_AniCA_DTNAS.Value:=StrToDate(dtnas.Text);
      DM4.Tb_AniCA_DIA.Value  :=StrToFloat(FormatDateTime('dd',DM4.Tb_AniCA_DTNAS.Value));
      DM4.Tb_AniCA_MES.Value  :=StrToFloat(FormatDateTime('mm',DM4.Tb_AniCA_DTNAS.Value));
   except
      fMensagem('Data inválida!',0,['0'],0);
      dtnas.SetFocus;
      end;
   end
else
   DM4.Tb_AniCA_DTNAS.Value:=pdatanula;

end;

procedure TFrm_Ani.dtcontatoExit(Sender: TObject);
begin
if Trim(dtcontato.Text)<>'/  /' then
   begin
   try
      dtcontato.Text:=FormatDateTime(fdt2, StrToDate(dtcontato.Text));
      DM4.Tb_AniCA_DTCONTATO.Value:=StrToDate(dtcontato.Text);
   except
      fMensagem('Data inválida!',0,['0'],0);
      dtcontato.SetFocus;
      end;
   end
else
   DM4.Tb_AniCA_DTCONTATO.Value:=pdatanula;

end;

procedure TFrm_Ani.DBEdit12Exit(Sender: TObject);
begin
if (DM4.Tb_AniCA_DIA.Value<0) or (DM4.Tb_AniCA_DIA.Value>31) then
   begin
   fMensagem('Dia Inválido!',0,['0'],0);
   DBEdit12.SetFocus;
   end;
end;

procedure TFrm_Ani.DBEdit13Exit(Sender: TObject);
begin
if (DM4.Tb_AniCA_MES.Value<0) or (DM4.Tb_AniCA_MES.Value>12) then
   begin
   fMensagem('Mês Inválido!',0,['0'],0);
   DBEdit13.SetFocus;
   end;

end;

procedure TFrm_Ani.BitBtn1Click(Sender: TObject);
begin
if form_Rani=nil then
   Application.CreateForm(Tfrm_Rani, form_Rani);


Form_RAni.Visible      :=false;
Form_RAni.FormStyle    :=fsNormal;

Form_RAni.ShowModal;
Form_RAni.free;
Form_RAni:=nil;

end;

procedure TFrm_Ani.NOMEChange(Sender: TObject);
begin
    DM4.Tb_Ani.close;
    DM4.Tb_Ani.sql.Clear;
    DM4.Tb_Ani.sql.Add('select * from cadani where ');
    DM4.Tb_Ani.sql.Add('     ca_codemp = '+inttostr(codemp));

    if Tipo.Caption = 'OU' THEN
       DM4.Tb_Ani.sql.Add(' and ca_tipo   = ''OU''');

    if Tipo.Caption = 'CL' THEN
    BEGIN
       DM4.Tb_Ani.sql.Add(' and ca_tipo   = '+''''+Tipo.Caption+'''');
       DM4.Tb_Ani.sql.Add(' and ca_codigo = '+FloatToStr(mCodigo_ani));
    END;
    if Tipo.Caption = 'FR' THEN
    BEGIN
       DM4.Tb_Ani.sql.Add(' and ca_tipo   = '+''''+Tipo.Caption+'''');
       DM4.Tb_Ani.sql.Add(' and ca_codigo = '+FloatToStr(mCodigo_ani));
    END;

    DM4.Tb_Ani.sql.Add(' and ca_nome like '+''''+NOME.Text+'%''');
    DM4.Tb_Ani.Open;

end;

procedure TFrm_Ani.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Tipo.Caption := '';
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
