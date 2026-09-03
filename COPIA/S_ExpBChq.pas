unit S_ExpBChq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,db,dbtables,func,lerarq,S_DM2,S_Emp,Func2,
  S_Agde;

type
  TFrm_ExpBChq = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    CODEMP_ORI: TEdit;
    st_empori: TStaticText;
    StaticText3: TStaticText;
    CODEMP_DES: TEdit;
    st_empdes: TStaticText;
    bbExportar: TBitBtn;
    BBSAIR: TBitBtn;
    procedure BBSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODEMP_DESKeyPress(Sender: TObject; var Key: Char);
    procedure CODEMP_DESExit(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ExpBChq: TFrm_ExpBChq;

implementation

uses S_BChq;

{$R *.dfm}

procedure TFrm_ExpBChq.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpBChq.FormCreate(Sender: TObject);
begin
Frm_BChq.Qr_BCL01.First;
StaticText1.Caption:='Exportação do Lote de Baixa de Cheque No. '+Frm_BChq.Qr_BCL01BL1CHAVE.AsString;
flcademp(1,0,InttoStr(codemp));
CODEMP_ORI.Text  :=DM2.Tb_EmpCODEMP.AsString;
st_empori.Caption:=DM2.Tb_EmpRAZAO.Value;
end;

procedure TFrm_ExpBChq.CODEMP_DESKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Emp, Frm_Emp);
   Frm_Emp.Edit1.Text:=key;
   Frm_Emp.BBnAtu.Click;
   Frm_Emp.Edit1.SelStart:=1;
   Frm_Emp.Edit1.SelLength:=1;
   Frm_Emp.PC1.ActivePageIndex:=1;
   if Frm_Emp.ShowModal=mrok then
      CODEMP_DES.Text:=DM2.Tb_EmpCODEMP.AsString;
   Frm_Emp.Free;
   key:=#0;
   end;

end;

procedure TFrm_ExpBChq.CODEMP_DESExit(Sender: TObject);
begin
CODEMP_DES.Text:=fdeixanum(CODEMP_DES.Text);
if Trim(CODEMP_DES.Text)<>'' Then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select RAZAO from CADEMP where CODEMP=0'+Trim(CODEMP_DES.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      MessageDlg('Empresa não Cadastrada!',mtWarning,[mbOk],0);
      st_empdes.SetFocus;
      end
   else
      st_empdes.Caption:=DM1.query1.Fields[0].AsString;
   end;



end;

procedure TFrm_ExpBChq.bbExportarClick(Sender: TObject);
var
x: Integer;
mcodchq: Real;
begin
if Trim(st_empdes.Caption)='' then
   begin
   MessageDlg('Empresa Destino Campo Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Query3.Close;
DM1.Query3.SQL.clear;
DM1.Query3.Params.CreateParam(ftString,'CHCODEMP',ptinput);
DM1.Query3.Params.CreateParam(ftString,'CHLOTSEQ',ptinput);
DM1.Query3.Params.CreateParam(ftString,'CHSEQ',ptinput);

DM1.Query3.Params.CreateParam(ftString,'NVLOTSEQ',ptinput);
DM1.Query3.Params.CreateParam(ftString,'NVSEQ',ptinput);

DM1.Query3.SQL.add('Insert into CADCHQ (');
mcinst:=' ';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkcalculated then
      Continue;
   DM1.Query3.SQL.Add(mcinst+DM1.Tb_Chq.Fields[x].FieldName);
   mcinst:=',';
   end;
DM1.Query3.sql.add(') Select ');
mcinst:=' ';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkcalculated then
      Continue;
   if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHCODEMP' then
      DM1.Query3.SQL.add(mcinst+Trim(CODEMP_DES.Text)+' as CHCODEMP ')
   else if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHLOTSEQ' then
      DM1.Query3.SQL.add(mcinst+' :NVLOTSEQ ')
   else if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHSEQ'    then
      DM1.Query3.SQL.add(mcinst+' :NVSEQ ')
   else if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHLOTEBX' then
      DM1.Query3.SQL.add(mcinst+' 0 as CHLOTEBX ')
   else if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHSTATUS' then
      DM1.Query3.SQL.add(mcinst+' 0 as CHSTATUS ')
   else if uppercase(DM1.Tb_Chq.Fields[x].FieldName)='CHDTBX' then
      DM1.Query3.SQL.add(mcinst+' ''31/12/1899'' as CHDTBX ')
   else
      DM1.Query3.SQL.add(mcinst+DM1.Tb_Chq.fields[x].FieldName);
   mcinst:=',';
   end;
DM1.Query3.SQL.add(' from CADCHQ where '
                  +' CHCODEMP=:CHCODEMP '
                  +' and CHLOTSEQ=:CHLOTSEQ '
                  +' and CHSEQ=:CHSEQ ');
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Exportando cheques, aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
mplid:=0;
mpqtd:=Frm_BChq.Qr_BCL02.RecordCount;
Frm_BChq.Qr_BCL02.First;
While not Frm_BChq.Qr_BCL02.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   mcodchq:=fbuscacodigoChqCli(Valint(CODEMP_DES.Text));

   DM1.Query3.ParamByName('CHCODEMP').AsFloat:=Frm_BChq.Qr_BCL02BL2CODEMP.Value;
   DM1.Query3.ParamByName('CHLOTSEQ').AsFloat:=Frm_BChq.Qr_BCL02BL2LOTSEQ_CH.Value;
   DM1.Query3.ParamByName('CHSEQ').AsFloat   :=Frm_BChq.Qr_BCL02BL2CODCHQ.Value;
   DM1.Query3.ParamByName('NVLOTSEQ').AsFloat:=ls_codchqcli;
   DM1.Query3.ParamByName('NVSEQ').AsFloat   :=mcodchq;

   try
//      DM1.Query3.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 168 ao incluir cheques!',mtWarning,[mbOk],0);
      break;
      end;
   Frm_BChq.Qr_BCL02.Next;
   end;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);

end;

procedure TFrm_ExpBChq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.
