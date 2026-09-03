unit S_PECF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  S_, ComCtrls, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids,
  func, db, dbtables,Func_ecf,lerarq, RxDBComb, Registry;

type
  TFrm_PECF = class(TFrm_)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    BB_REDZ: TBitBtn;
    INFOR: TTabSheet;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    DBGrid2: TDBGrid;
    bbCapturar: TBitBtn;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    bbDadSint: TBitBtn;
    DBCheckBox4: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBGrid_fp: TDBGrid;
    DBNavigator2: TDBNavigator;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBRG_TIPOPROG: TDBRadioGroup;
    Label17: TLabel;
    DB_PORTA: TDBComboBox;
    dcb_usb: TDBCheckBox;
    RxDBCb_MODECF: TRxDBComboBox;
    Label18: TLabel;
    RxDBCb_MODELO: TRxDBComboBox;
    Label19: TLabel;
    DataSource1: TDataSource;
    procedure DBRadioGroup3Change(Sender: TObject);
    procedure DBRadioGroup4Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure CODALIKeyPress(Sender: TObject; var Key: Char);
    procedure ALIQKeyPress(Sender: TObject; var Key: Char);
    procedure bbCapturarClick(Sender: TObject);
    procedure BB_REDZClick(Sender: TObject);
    procedure Src_EmpDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbDadSintClick(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBCb_MODELOClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
     pecf_ori: String;

  end;
var
  Frm_PECF: TFrm_PECF;
  mqtd: Integer;
  mop: Integer=0;
  mcodecf_fp_Ant: Integer=0;

  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;

implementation

uses S_DM1, S_MRECF, S_DM4, func_excecoes, S_DadSint;

{$R *.DFM}

procedure TFrm_PECF.DBRadioGroup3Change(Sender: TObject);
begin
  inherited;
if DBRadioGroup3.ItemIndex=1 then
   begin
   DBEdit3.Enabled:=True;
   Label3.Enabled :=True;
   end
else
   begin
   DBEdit3.Enabled:=False;
   Label3.Enabled :=False;
   end;
end;

procedure TFrm_PECF.DBRadioGroup4Change(Sender: TObject);
begin
  inherited;
if DBRadioGroup4.ItemIndex=1 then
   begin
   Label4.Enabled:=True;
   Edit2.Enabled :=True;
   end
else
   begin
   Label4.Enabled:=False;
   Edit2.Enabled :=False;
   end;
end;

procedure TFrm_PECF.Edit2Exit(Sender: TObject);
begin
  inherited;
if Trim(Edit2.Text)<>'' then
   begin
   DM1.Tb_ECFCFSENHA.Value:=Crip(Edit2.Text,1);
   end;
end;

procedure TFrm_PECF.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadecf(CAMPO.ItemIndex,1,Trim(Edit1.Text));

end;

procedure TFrm_PECF.FormCreate(Sender: TObject);
begin
  inherited;
if flcadactab(0,0,IntToStr(codcar),'CADECF') then
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

DM1.Tb_ECF.Close;
DM1.Tb_ECF.SQL.Clear;
DM1.Tb_ECF.SQL.Add('Select * from CADECF ');
if DM1.Qr_Tid.Locate('TINOME','CADECF',[]) then
   DM1.Tb_Ecf.SQL.add(' order by CFNOME')
else
   DM1.Tb_Ecf.SQL.Add(' order by CFCODEMP,CFNOME');
DM1.Tb_Ecf.open;
end;

procedure TFrm_PECF.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   If DM1.Tb_ECF.State in [dsInsert, dsEdit] then
   begin
      DBEdit2.SetFocus;
      DBEdit2.SelectAll;
   end;

end;


procedure TFrm_PECF.INCLUIRClick(Sender: TObject);
var
  Reg: TRegistry;
  Lista: TStringList;
  X: Integer;
begin
Reg := TRegistry.Create;
Lista := TStringList.Create;
Reg.RootKey := HKEY_LOCAL_MACHINE;
Reg.OpenKey('\HARDWARE\DEVICEMAP\SERIALCOMM', True);
Reg.GetValueNames(Lista);
DB_PORTA.Items.Clear;
for X:=0 to Lista.Count-1 do
  begin
  DB_PORTA.Items.Add(Reg.ReadString(Lista.Strings[X]));
  end;
DB_PORTA.Items.Add('DEFAULT');

Reg.CloseKey;
FreeAndNil(Reg);
FreeAndNil(Lista);
inherited;
moper:=0;
DM1.Tb_ECF.Append;
INFOR.Enabled:=True;
tsCad.Enabled:=True;
DBGrid1.Enabled:=False;
DBEdit2.SetFocus;

end;

procedure TFrm_PECF.ALTERARClick(Sender: TObject);
var
  Reg: TRegistry;
  Lista: TStringList;
  X: Integer;
begin
RxDBCb_MODELOClick(self);
Reg := TRegistry.Create;
Lista := TStringList.Create;
Reg.RootKey := HKEY_LOCAL_MACHINE;
Reg.OpenKey('\HARDWARE\DEVICEMAP\SERIALCOMM', True);
Reg.GetValueNames(Lista);
DB_PORTA.Items.Clear;
for X:=0 to Lista.Count-1 do
  begin
  DB_PORTA.Items.Add(Reg.ReadString(Lista.Strings[X]));
  end;
DB_PORTA.Items.Add('DEFAULT');
 
Reg.CloseKey;
FreeAndNil(Reg);
FreeAndNil(Lista);

  inherited;
if DM1.Tb_ECFCFCAIXA.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
INFOR.Enabled:=True;

DM1.Tb_ECF.Edit;
DBEdit1.Enabled:=False;
DBEdit2.SetFocus;

end;

procedure TFrm_PECF.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ECFCFNOME.Value='_') or (DM1.Tb_ECFCFNOME.IsNull) then
   begin
   MessageDlg('Nome da Impressora Invalido!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;

dm1.Tb_ECF.Post;

CANCELAR.Click;
end;

procedure TFrm_PECF.EXCLUIRClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_ECFCFCAIXA.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_ECF.Delete;
   INFOR.Enabled:=False;
   CANCELAR.Click;
   end;

end;

procedure TFrm_PECF.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ECF.State in [dsInsert, DsEdit] then
   DM1.Tb_ECF.Cancel;
INFOR.Enabled :=False;
moper:=0;

end;

procedure TFrm_PECF.CODALIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_PECF.ALIQKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PECF.bbCapturarClick(Sender: TObject);
var
Parametros: String;
IRetorno,mlid: Integer;
mposini: Integer;
begin
  inherited;

iRetorno := Bematech_FI_VerificaImpressoraLigada();
if iRetorno<>1 then
   begin
   MessageDlg('Impressora desliqada ou Cabo desconectado!',mtWarning,[mbOk],0);
   exit;
   end;



// Exemplo em Delphi
Parametros:=insere2(' ',' ',15);
iRetorno := Bematech_FI_NumeroSerie( Parametros );
DM1.Tb_Ecfcfserie.Value:=Parametros;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADECF_FP where FPECODEMP=0'+DM1.Tb_ECFCFCODEMP.AsString
                  +' and FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,285,'Frm_PECF','CADECF_FP');
   end;
Parametros:=insere2(' ',' ',3016);
iRetorno := Bematech_FI_VerificaFormasPagamento( parametros );

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODIGO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'FORMA',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODECF',ptInput);
DM1.Query2.SQL.add('Insert into CADECF_FP ('
                  +' FPECODEMP, '
                  +' FPECODIGO, '
                  +' FPEFORMA, '
                  +' FPECODECF) values ('
                  +':CODEMP, '
                  +':CODIGO, '
                  +':FORMA, '
                  +':CODECF) ');
mlid:=0;
While (mlid*58)+59 < length(Parametros) do
   begin
   mposini:=(mlid*58)+1;
   mlid:=mlid+1;
   if Trim(copy(parametros,mposini,16))='' then
      Continue;
   DM1.Query2.Close;
   DM1.Query2.ParamByName('CODEMP').AsInteger:=codemp;
   DM1.Query2.ParamByName('CODIGO').AsInteger:=mlid;
   DM1.Query2.ParamByName('FORMA').AsString  :=copy(parametros,mposini,16);
   DM1.Query2.ParamByName('CODECF').AsFloat  :=DM1.Tb_ECFCFCAIXA.Value;
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,321,'Frm_PECF','CADECF_FP');
      end;
   end;
if Trim(Parametros)='' then
   mlid:=0;
if mlid=0 then
   begin
   for mlid:=1 to 5 do
      begin
      DM1.Query2.Close;
      DM1.Query2.ParamByName('CODEMP').AsInteger:=codemp;
      DM1.Query2.ParamByName('CODIGO').AsInteger:=mlid;
      if mlid=1 then
         DM1.Query2.ParamByName('FORMA').AsString  :='Dinheiro'
      else if mlid=2 then
         DM1.Query2.ParamByName('FORMA').AsString  :='Cheques'
      else if mlid=3 then                             
         DM1.Query2.ParamByName('FORMA').AsString  :='Chq. Pre-Datado'
      else if mlid=4 then
         DM1.Query2.ParamByName('FORMA').AsString  :='Convenio'
      else if mlid=5 then
         DM1.Query2.ParamByName('FORMA').AsString  :='Cartao';



      DM1.Query2.ParamByName('CODECF').AsFloat  :=DM1.Tb_ECFCFCAIXA.Value;
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(02,321,'Frm_PECF','CADECF_FP');
         end;

      end;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCAL where CACODEMP=0'+DM1.Tb_ECFCFCODEMP.AsString
                 +' and CACODIMP=0'+DM1.Tb_ECFCFCAIXA.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,333,'Frm_PECF','CADCAL');
   end;
Parametros:=insere2(' ',' ',79);
iRetorno := Bematech_FI_RetornoAliquotas( parametros);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODIMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODALI',ptInput);
DM1.Query2.Params.CreateParam(ftString,'ALIQ',ptInput);
DM1.Query2.SQL.add('Insert into CADCAL ('
                  +' CACODEMP, '
                  +' CACODIMP, '
                  +' CACODALI,'
                  +' CAALIQ) values ('
                  +':CODEMP, '
                  +':CODIMP, '
                  +':CODALI, '
                  +':ALIQ) ');

mlid:=0;
While (mlid*5)+5 < length(Parametros) do
   begin
   mposini:=(mlid*5)+1;
   mlid:=mlid+1;
   if Trim(copy(parametros,mposini,4))='' then
      Continue;
   DM1.Query2.Close;
   DM1.Query2.ParamByName('CODEMP').AsInteger:=codemp;
   DM1.Query2.ParamByName('CODIMP').AsFloat  :=DM1.Tb_ECFCFCAIXA.Value;
   DM1.Query2.ParamByName('CODALI').AsInteger:=mlid;
   DM1.Query2.ParamByName('ALIQ').AsFloat    :=ValFloat(copy(parametros,mposini,4))/100;
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,369,'Frm_PECF','CADCAL');
      end;
   end;

DM1.Tb_Cal.Close;
DM1.Tb_Cal.SQL.Clear;
DM1.Tb_Cal.SQL.Add('Select * from CADCAL where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                 +' CACODIMP=0'+DM1.Tb_ECFCFCAIXA.AsString
                 +' order by CACODALI ');
DM1.Tb_Cal.Open;

DM1.Tb_ECF_FP.Close;
DM1.Tb_ECF_FP.Sql.Clear;
DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                     +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                     +' order by FPECODIGO ');
DM1.Tb_ECF_FP.Open;
end;

procedure TFrm_PECF.BB_REDZClick(Sender: TObject);
begin
  inherited;
if Frm_MRECF=nil then
   begin
   Frm_MRECF.Free;
   Frm_MRECF:=nil;
   Application.CreateForm(TFrm_MRECF, Frm_MRECF);
   end;
Frm_MRECF.Show;
end;

procedure TFrm_PECF.Src_EmpDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if DM1.Tb_ECFCFCAIXA.IsNull then
   exit;
DM1.Tb_Cal.Close;
DM1.Tb_Cal.SQL.Clear;
DM1.Tb_Cal.SQL.Add('Select * from CADCAL where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                 +' CACODIMP=0'+DM1.Tb_ECFCFCAIXA.AsString
                 +' order by CACODALI ');
DM1.Tb_Cal.Open;

DM1.Tb_ECF_FP.Close;
DM1.Tb_ECF_FP.Sql.Clear;
DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                     +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                     +' order by FPECODIGO ');
DM1.Tb_ECF_FP.Open;
end;

procedure TFrm_PECF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if pecf_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_PECF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if pecf_ori='' then
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

procedure TFrm_PECF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_ECF.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;
end;

procedure TFrm_PECF.bbDadSintClick(Sender: TObject);
begin
  inherited;
if Frm_DadSint=nil then
   Application.CreateForm(TFrm_DadSint, Frm_DadSint)
else
   begin
   Frm_DadSint.Free;
   Frm_DadSint:=nil;
   Application.CreateForm(TFrm_DadSint, Frm_DadSint);
   end;
if Frm_DadSint.WindowState=wsMinimized then
   Frm_DadSint.WindowState:=wsNormal
else
   Frm_DadSint.Show;
end;

procedure TFrm_PECF.DBEdit16Exit(Sender: TObject);
begin
  inherited;
if mcodecf_fp_Ant<>DM1.Tb_ECF_FPFPECODIGO.AsInteger then
   begin
   dm1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select FPEFORMA from CADECF_FP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntToStr(codemp)+' and ')
                     +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                     +' and FPECODIGO=0'+DM1.Tb_ECF_FPFPECODIGO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      MessageDlg('Código ja Cadastrado!',mtWarning,[mbOk],0);
      DM1.Tb_ECF_FPFPECODIGO.AsInteger:=mcodecf_fp_Ant;
      DBEdit3.SetFocus;
      exit;
      end
   end;


end;

procedure TFrm_PECF.DBEdit16Enter(Sender: TObject);
begin
  inherited;

mcodecf_fp_Ant:=DM1.Tb_ECF_FPFPECODIGO.AsInteger;

end;

procedure TFrm_PECF.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrm_PECF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PECF.RxDBCb_MODELOClick(Sender: TObject);
begin
if RxDBCb_MODELO.ItemIndex<2 then
   begin
   RxDBCb_MODECF.Items.clear;
   RxDBCb_MODECF.Items.Add('MP 20 FI II');
   RxDBCb_MODECF.Items.Add('MP 40 FI II');
   RxDBCb_MODECF.Items.Add('MP 25 FI');
   RxDBCb_MODECF.Items.Add('MP 50 FI');
   RxDBCb_MODECF.Items.Add('MP 2000 TH FI');
   RxDBCb_MODECF.Items.Add('MP 2100 TH FI');
   RxDBCb_MODECF.Items.Add('MP 6000 TH FI');
   RxDBCb_MODECF.Items.Add('MP 6100 TH FI');
   RxDBCb_MODECF.Items.Add('MP 4000 TH FI');
   RxDBCb_MODECF.Values.clear;
   RxDBCb_MODECF.Values.Add('6');
   RxDBCb_MODECF.Values.Add('8');
   RxDBCb_MODECF.Values.Add('B');
   RxDBCb_MODECF.Values.Add('C');
   RxDBCb_MODECF.Values.Add('E');
   RxDBCb_MODECF.Values.Add('F');
   RxDBCb_MODECF.Values.Add('G');
   RxDBCb_MODECF.Values.Add('H');
   RxDBCb_MODECF.Values.Add('J');
   end
else if RxDBCb_MODELO.ItemIndex=2 then
   begin
   RxDBCb_MODECF.Items.clear;
   RxDBCb_MODECF.Items.Add('FS600');
   RxDBCb_MODECF.Items.Add('FS2100T');
   RxDBCb_MODECF.Items.Add('FS600 USB');
   RxDBCb_MODECF.Items.Add('FS700 L');
   RxDBCb_MODECF.Items.Add('FS700 H');
   RxDBCb_MODECF.Items.Add('FS700 M');
   RxDBCb_MODECF.Items.Add('MACH 1');
   RxDBCb_MODECF.Items.Add('MACH 2');
   RxDBCb_MODECF.Items.Add('MACH 3');
   RxDBCb_MODECF.Values.clear;
   RxDBCb_MODECF.Values.Add('F');
   RxDBCb_MODECF.Values.Add('T');
   RxDBCb_MODECF.Values.Add('U');
   RxDBCb_MODECF.Values.Add('L');
   RxDBCb_MODECF.Values.Add('H');
   RxDBCb_MODECF.Values.Add('M');
   RxDBCb_MODECF.Values.Add('1');
   RxDBCb_MODECF.Values.Add('2');
   RxDBCb_MODECF.Values.Add('3');
   end;
end;

procedure TFrm_PECF.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
if (not (DM1.Tb_ECF.State in [dsEdit,dsInsert]))then
  begin
  DB_PORTA.Items.Clear;
  DB_PORTA.Items.Add(DM1.Tb_ECFCFPORTA.AsString);
  end;
end;

end.
