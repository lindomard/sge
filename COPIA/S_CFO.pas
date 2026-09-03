unit S_CFO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,s_dm1,lerarq;

type
  TFrm_CFO = class(TFrm_C)
    DBE_CFOP: TDBEdit;
    DBEdit2: TDBEdit;
    DBE_CFOP_ENTRADA: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    StaticText4: TStaticText;
    DBE_CFCODCTA_EFD: TDBEdit;
    StaticText5: TStaticText;
    DBE_PC_NOME_CTA: TDBEdit;
    Tb_Cfo: TQuery;
    Tb_CfoCFCODEMP: TFloatField;
    Tb_CfoCFCODCFO: TFloatField;
    Tb_CfoCFCFOENT: TFloatField;
    Tb_CfoCFTPOPER: TFloatField;
    Tb_CfoCFNOME: TStringField;
    Tb_CfoCFCODCTA_EFD: TStringField;
    U_CFO: TUpdateSQL;
    Src_Cfo: TDataSource;
    Tb_CfoPC_NOME_CTA: TStringField;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CFOPExit(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBE_CFOP_ENTRADAExit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tb_CfoAfterInsert(DataSet: TDataSet);
    procedure Tb_CfoBeforePost(DataSet: TDataSet);
    procedure DBE_CFCODCTA_EFDExit(Sender: TObject);
    procedure DBE_CFCODCTA_EFDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    function flcadcfo_local(ptipo,ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
  cfo_ori: String;
  end;

var
  Frm_CFO: TFrm_CFO;


implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_CFO.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcfo_local(CAMPO.ItemIndex,1,Edit1.Text);
end;

procedure TFrm_CFO.FormCreate(Sender: TObject);
begin
  inherited;
cfo_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCFO') then
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
DBNavigator2.DataSource:=Src_Cfo;
DBGrid1.DataSource:=Src_Cfo;

end;

procedure TFrm_CFO.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cfo_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;
end;

procedure TFrm_CFO.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if cfo_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_CFO.DBE_CFOPExit(Sender: TObject);
begin
  inherited;
if mcodigo<>Tb_CfoCFCODCFO.AsString then
   begin
   if flqr1('CFNOME','CF','CADCFO','N','CFCODCFO',Tb_CfoCFCODCFO.AsString) then
      begin
      fmensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['1'],0);
      DBE_CFOP.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_CFO.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_CfoCFCODCFO.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;

Tb_Cfo.Edit;
Dbedit2.SetFocus;
DBE_CFOP.Enabled:=False;

end;

procedure TFrm_CFO.INCLUIRClick(Sender: TObject);
begin
  inherited;
Tb_Cfo.Append;
mcodigo:=Tb_CfoCFCODCFO.AsString;
DBE_CFOP.Enabled:=True;
DBE_CFOP.SetFocus;

end;

procedure TFrm_CFO.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_CfoCFCODCFO.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   Tb_Cfo.Delete;
   end;
end;

procedure TFrm_CFO.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_CfoCFNOME.Value='_') or (Tb_CfoCFNOME.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBEdit2.SetFocus;
   exit;
   end;
if valint(copy(formatFloat('0000', Tb_CfoCFCODCFO.AsInteger),1,1))<5 then
   begin
   if not LocalizaArray(mcfop_entrada_valido, Tb_CfoCFCODCFO.AsString) then
      begin
      MessageDlg('CFOP '+Tb_CfoCFCODCFO.AsString+' não é um cfop válido!',mtWarning,[mbOk],0);
      DBE_CFOP.SetFocus;
      abort;
      exit;
      end;
   end
else
   begin
   if not LocalizaArray(mcfop_saida_valido, Tb_CfoCFCODCFO.AsString) then
      begin
      MessageDlg('CFOP '+tb_cfoCFCODCFO.AsString+' não é um cfop válido!',mtWarning,[mbOk],0);
      DBE_CFOP.SetFocus;
      abort;
      exit;
      end;
   end;

if tb_cfoCFCFOENT.AsInteger>1 then
   begin
   if not LocalizaArray(mcfop_entrada_valido, tb_cfoCFCFOENT.AsString) then
      begin
      MessageDlg('CFOP de entrada '+tb_cfoCFCFOENT.AsString+' não é um cfop válido!',mtWarning,[mbOk],0);
      DBE_CFOP_ENTRADA.SetFocus;
      abort;
      exit;
      end;
   end;


tb_cfo.Post;
CANCELAR.Click;

end;

procedure TFrm_CFO.CANCELARClick(Sender: TObject);
begin
  inherited;
if tb_cfo.State in [dsEdit,dsInsert] then
   tb_cfo.Cancel;

end;

procedure TFrm_CFO.DBE_CFOP_ENTRADAExit(Sender: TObject);
begin
  inherited;
if tb_cfoCFCFOENT.Value>4999 then
   begin
   fmensagem('CFOP Tem que ser menor que 4999!',0,['1'],0);
   DBE_CFOP_ENTRADA.SetFocus;
   exit;
   end;
end;

procedure TFrm_CFO.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_CFO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CFO.Tb_CfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
if codemp>100 then
   Tb_CfoCFCODEMP.Value:=codemp-100
else
   Tb_CfoCFCODEMP.Value:=codemp;

end;

procedure TFrm_CFO.Tb_CfoBeforePost(DataSet: TDataSet);
var
i:Integer;

begin
  inherited;
For i:=0 to tb_cfo.FieldCount-1 do
   begin
   if not Tb_Cfo.Fields[i].IsNull then
      Continue;
   if Tb_Cfo.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      Tb_Cfo.Fields[i].Value:=0
//   else if Tb_Cfo.fields[i].DataType in [ftDate,ftDateTime] then
//      Tb_Cfo.Fields[i].Value:=0
   else if Tb_Cfo.Fields[i].DataType in [ftString,ftMemo] then
      Tb_Cfo.Fields[i].Value:=' ';
   end;

end;

procedure TFrm_CFO.DBE_CFCODCTA_EFDExit(Sender: TObject);
begin
  inherited;

if Tb_CfoCFCODCTA_EFD.AsString='' then
   exit;
if Tb_Cfo.State in [DsEdit, DsInsert] then
   begin
   if not fLerGenerico_query('CADPLANOCTAEFD','PC_NOME_CTA','PC_COD_CTA='+Quotedstr(Tb_CfoCFCODCTA_EFD.AsString),query_consulta) then
      begin
      fmensagem('Conta ' + Tb_CfoCFCODCTA_EFD.asstring+' nao Cadastrado',0,['0'],0);
      if DBE_CFCODCTA_EFD.Enabled then
         DBE_CFCODCTA_EFD.SetFocus;
      end
   else
      Tb_CfoPC_NOME_CTA.asstring := query_consulta.fieldbyName('PC_NOME_CTA').AsString;
   end;

end;

procedure TFrm_CFO.DBE_CFCODCTA_EFDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_Cfo.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      key:=0;
      Tb_CfoCFCODCTA_EFD.Value:=fChamaPlanoContasContabil(0,'frm_cfop','');
      DBE_CFCODCTA_EFDExit(self);
      end
   end;


end;


function TFrm_CFO.flcadcfo_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
Tb_CFO.Close;
Tb_CFO.Sql.clear;
Tb_CFO.Sql.add('Select '
+' CFCODEMP, '
+'  CFCODCFO, '
+'  CFNOME, '
+'  CFCFOENT, '
+'  CFTPOPER, '
+'  CFCODCTA_EFD, PC_NOME_CTA '
+' from CADCFO left join CADPLANOCTAEFD on (PC_COD_CTA = CFCODCTA_EFD) ');
mcinst2:=fRetInstMECadastro('CADCFO','CFCODEMP',codemp);
mcinst:=' where ';
if trim(mcinst2)<>'' then
  begin
  Tb_CFO.Sql.add(mcinst+mcinst2);
  mcinst:=' and ';
  end;

if DM1.Qr_Tid.Locate('TINOME','CADCFO',[]) then
  begin
  if PTIPO<1 then
    begin
    if ppre=0 then
      Tb_CFO.SQl.Add(mcinst+' CFNOME = '+chr(39)+pvalor+chr(39)
                        +' order by CFNOME')
    else
      Tb_CFO.SQl.Add(mcinst+' CFNOME like '+chr(39)+pvalor+'%'+chr(39)
                        +' order by CFNOME');
      end
  else if (ptipo=1) then
    begin
    if (ppre=1) and (trim(pvalor)='') then
      Tb_CFO.SQl.Add(' order by CFCODCFO')
    else
      Tb_CFO.SQl.add(mcinst+' CFCODCFO=0'+pvalor
                        +' order by CFCODCFO');
    end;
  end
else
  begin
//  Tb_CFO.Sql.add(' where '+fla_EmpBaixaAlta(0,codemp,' CFCODEMP',''));
  if PTIPO<1 then
    begin
    if ppre=0 then
      Tb_CFO.SQl.Add(' and CFNOME = '+chr(39)+pvalor+chr(39)
                        +' order by CFCODEMP,CFNOME')
    else
      Tb_CFO.SQl.Add(' and CFNOME like '+chr(39)+pvalor+'%'+chr(39)
                        +' order by CFCODEMP,CFNOME');
    end
  else if (ptipo=1) then
    begin
    if (ppre=1) and (trim(pvalor)='') then
      Tb_CFO.SQl.Add(' order by CFCODEMP,CFCODCFO')
    else
      Tb_CFO.SQl.add(' and  CFCODCFO=0'+pvalor
                        +' order by CFCODEMP,CFCODCFO');
    end;
  end;
Tb_CFO.open;
if Tb_CFO.Eof then
   Result:=False
else
   Result:=True;
end;


end.
