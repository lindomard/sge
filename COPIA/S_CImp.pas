unit S_CImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_, Grids, DBGrids, ComCtrls, DBCtrls, StdCtrls, Buttons,
  ExtCtrls,S_DM4, Mask,lerarq,db,dbtables,func,printers,S_Impres, RLReport,RlPrinters;

type
  TFrm_CImp = class(TFrm_)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    bbTestar: TBitBtn;
    tsReport: TTabSheet;
    RL_Teste: TRLReport;
    RLBand1: TRLBand;
    DataSource1: TDataSource;
    rl_linha01: TRLLabel;
    rl_linha02: TRLLabel;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure bbTestarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fCimpTestarImp(ptipo: Integer): Boolean;
var
  Frm_CImp: TFrm_CImp;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_CImp.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM4.Tb_Imp_Sys.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;

flcadimp_sys(CAMPO.ItemIndex,0,1,Edit1.Text);
end;

function fCimpTestarImp(ptipo: Integer): Boolean;
var
mImpres: array [1..17] of string;
i: Integer;
mcodigo: String;
begin

mImpres[01]:='ENFS1     Nota Fiscal 1a. Serie';
mImpres[02]:='ENFS2     Nota Fiscal 2a. Serie';
mImpres[03]:='ORC       Orçamentos de Mercadorias';
mImpres[04]:='LSEP      Lista de Separação de Mercadorias';
mImpres[05]:='VALE      Vale de Mercadorias';
mImpres[06]:='DUPLIC_PEREmissão de Duplicatas Personalizadas';
mImpres[07]:='DUPLIC_LASEmissão de Duplicatas Laser/Jato de Tinta';
mImpres[08]:='BOLETAS_PEEmissão de Boletas Personalizadas';
mImpres[09]:='BOLETAS_LAEmissão de Boletas Laser/Jato de Tinta';
mImpres[10]:='ETIQ_CLI  Emissão de Etiquetas Para Cliente';
mImpres[11]:='ETIQ_VOL  Emissão de Etiquetas de Volumes';
mImpres[12]:='NFE_NORMALNFE-Impressão Normal';
mImpres[13]:='NFE_CONTIGNFE-Contigencia Impressão de Danfe Papel Moeda';
mImpres[14]:='LSEP2     Lista de Separação2 de Mercadorias';
mImpres[15]:='CONVENIO  Emissão de Comprovante Convenio';
mImpres[16]:='VALE2     Vale de Mercadorias2 ';
mImpres[17]:='ORC2      Orçamentos de Mercadorias 2';





flcadimp_sys(0,0,1,'');

for i:=0 to printer.Printers.Count-1 do
   begin
   Frm_CImp.DBComboBox1.Items.Add(printer.Printers[i]);
   end;

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TERMINAL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODIGO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'NOMREL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'PORTA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'MODELO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'QTDLP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'USRALT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'DATAALT',ptInput);
DM1.Query3.SQL.add('Insert into CADIMP_SYS ('
                  +' CICODEMP, '
                  +' CITERMINAL, '
                  +' CICODIGO,'
                  +' CINOMREL, '
                  +' CIPORTA, '
                  +' CIMODELO, '
                  +' CIQTDLP, '
                  +' CIUSRALT, '
                  +' CIDATAALT) Values ('
                  +' :CODEMP,'
                  +' :TERMINAL,'
                  +' :CODIGO,'
                  +' :NOMREL, '
                  +' :PORTA, '
                  +' :MODELO, '
                  +' :QTDLP, '
                  +' :USRALT, '
                  +' :DATAALT)');

for i:=1 to high(mImpres) do
   begin
   mcodigo:=trim(copy(mImpres[i],1,10));
   if not DM4.Tb_Imp_Sys.Locate('CICODIGO',mcodigo,[]) then
      begin
      DM1.Query3.close;
      DM1.Query3.ParamByName('CODEMP').AsFloat  := codemp;
      DM1.Query3.ParamByName('TERMINAL').AsString := pNomTer;
      DM1.Query3.ParamByName('CODIGO').AsString   := mcodigo;
      DM1.Query3.ParamByName('NOMREL').AsString   := copy(mImpres[i],11,length(mImpres[i])-10);

      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.query2.SQL.add(' select CIPORTA,CIMODELO,CIQTDLP from CADIMP_SYS where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADIMP_SYS',[]),'',' CICODEMP=0'+IntToStr(codemp)+' and ')
                        +' CICODIGO ='+chr(39)+mcodigo+chr(39));
      DM1.Query2.Open;
      mboolean:=false;
      While not DM1.Query2.Eof do
         begin
         if uppercase(DM1.Query2.fieldbyName('CIPORTA').AsString)='LPT1' then
            begin
            DM1.Query2.Next;
            Continue;
            end;
         mboolean:=true;
         DM1.Query3.ParamByName('PORTA').AsString    := DM1.Query2.fieldbyName('CIPORTA').AsString;
         DM1.Query3.ParamByName('MODELO').AsFloat    := DM1.Query2.fieldbyName('CIMODELO').AsFloat;
         DM1.Query3.ParamByName('QTDLP').AsFloat     := DM1.Query2.fieldbyName('CIQTDLP').AsFloat;
         DM1.Query2.Next;
         end;
      if not mboolean then
         begin
         DM1.Query3.ParamByName('PORTA').AsString    := 'LPT1';
         DM1.Query3.ParamByName('MODELO').AsFloat    := 0;
         DM1.Query3.ParamByName('QTDLP').AsFloat     := 66;
         end;
      DM1.Query3.ParamByName('USRALT').AsFloat    := codusr;
      DM1.Query3.ParamByName('DATAALT').AsDateTime:= date;
      DM1.Query3.ExecSQL;
      end;
   end;
result:=True;
end;
procedure TFrm_CImp.FormCreate(Sender: TObject);
var
i: Integer;
begin
  inherited;
if codusr=1111 then
   tsReport.TabVisible:=true
else
   tsReport.TabVisible:=false;

fCimpTestarImp(0);

if DBNavigator1.DataSource=nil then
   DBNavigator1.DataSource:=DM4.Src_Imp_Sys;
   
if DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM4.Src_Imp_Sys;


end;

procedure TFrm_CImp.INCLUIRClick(Sender: TObject);
begin
  inherited;
tsCad.Enabled  :=true;
DBGrid1.Enabled:=true;
DM4.Tb_Imp_Sys.Append;
DM4.Tb_Imp_SysCIDATAALT.Value:=pdatasis;
DM4.Tb_Imp_SysCIUSRALT.Value :=codusr;
DBEdit1.Enabled:=True;
mcodigo:=DM4.Tb_Imp_SysCICODIGO.AsString;
DBEdit1.SetFocus;
end;

procedure TFrm_CImp.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Imp_SysCICODIGO.IsNull  then
   begin
   Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   cancelar.Click;
   exit;
   end;
tsCad.Enabled  :=true;
DBGrid1.Enabled:=False;
DM4.Tb_Imp_Sys.Edit;
DM4.Tb_Imp_SysCIDATAALT.Value:=pdatasis;
DBEdit1.Enabled:=False;
DBEdit2.SetFocus;

end;

procedure TFrm_CImp.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Imp_Sys.Eof then
   begin
   fmensagem('Não há registro a ser excluido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_Imp_Sys.Delete;
   end;

end;

procedure TFrm_CImp.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM4.Tb_Imp_SysCICODIGO.IsNull) or (length(DM4.Tb_Imp_SysCICODIGO.AsString)<3) then
   begin
   MessageDlg('Códio do Documento é obrigatorio, minimo 3 caracteres!',mtWarning,[mbOk],0);
   exit;
   end;
if DM4.Tb_Imp_SysCIDATAALT.IsNull then
   DM4.Tb_Imp_SysCIDATAALT.Value:=date;
dm4.Tb_Imp_Sys.Post;
cancelar.Click;

end;

procedure TFrm_CImp.CANCELARClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Imp_Sys.Cancel;
tsCad.Enabled  :=False;
DBGrid1.Enabled:=True;

end;

procedure TFrm_CImp.bbTestarClick(Sender: TObject);
var
mlin: Integer;
f: Textfile;
begin
  inherited;
if (DM4.Tb_Imp_SysCICODIGO.Value='DUPLIC_LAS') or
   (DM4.Tb_Imp_SysCICODIGO.Value='BOLETAS_LA') or
   (DM4.Tb_Imp_SysCICODIGO.Value='NFE_CONTIG') or
   (DM4.Tb_Imp_SysCICODIGO.Value='NFE_NORMAL') then

   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.clear;
   DM1.Query1.Sql.add('Select SYSDATE FROM DUAL');
   DM1.Query1.Open;



   for mlin:=0 to Printer.printers.Count-1 do
      begin
      if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[mlin] then
         begin
         RLPrinter.PrinterIndex:=mlin;
         break;
         end;
      end;
//   Qr_Teste.PrinterSettings.ApplySettings;

   rl_linha01.Caption:='INTERSYS SISTEMAS - SGE-Sistema de Gestao empresarial - Versao: '+pversao;
   rl_linha02.Caption:='Caso voce estaja lendo essa mensagem e porque a instalacao da impressora esta ok';
   verteclado(0);
//   Qr_Teste.PreviewModal;
   RL_Teste.PrintDialog:=false;
   RL_Teste.Print;
//QuickRep1.PrinterSettings.PrinterIndex := 1;
//QuickRep1.PrinterSettings.PrinterIndex := 1;

   end
else if DM4.Tb_Imp_SysCIMODELO.AsInteger=5 then
   begin
   if length(DM4.Tb_Imp_SysCIPORTA.AsString)<2 then
      AssignFile(f,'LPT1')
   else
      AssignFile(f,Get_Printerport(DM4.Tb_Imp_SysCIPORTA.AsString));
//      AssignFile(f,DM4.Tb_Imp_SysCIPORTA.AsString);
   try
      Rewrite(f);
   except
      fmensagem('Erro de porta de Impressão Favor corrigir!',0,['0'],0);
      exit;
      end;
   WriteLn(f,chr(15)+'Teste de Impressao');
   WriteLn(f,chr(14)+'Teste de Impressao');
   WriteLn(f,chr(20)+'Teste de Impressao');
   WriteLn(f,chr(18)+'Teste de Impressao');
   closefile(f);
   end
else
   begin
   Frm_Impres.RDprint1.OpcoesPreview.Preview:=False;
//   Frm_Impres.RDprint1.UsaGerenciadorImpr:=False;
   Frm_Impres.Rdprint1.Abrir;
   if DM4.Tb_Imp_SysCIPORTA.IsNull then
      Frm_Impres.RDprint1.SetPrinterbyName(impressora_padrao(0))
//      Frm_Impres.RDprint1.PortaComunicacao:=Impressora_Padrao(0);
   else
      begin
      if not Frm_Impres.RDprint1.SetPrinterbyName(DM4.Tb_Imp_SysCIPORTA.Value) then
         Frm_Impres.RDPrint1.PortaComunicacao:=DM4.Tb_Imp_SysCIPORTA.Value;
      end;
//      Frm_Impres.RDprint1.PortaComunicacao:=DM4.Tb_Imp_SysCIPORTA.Value;
   mlin:=1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',m20ccp);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',mreduz);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',m12ccp);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',mneg);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,'Teste de Impressao',mexp);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,DM1.Tb_EmpRAZAO.Value,mnormal);
   Frm_Impres.RDprint1.Fechar;
   end;







end;

procedure TFrm_CImp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM4.Tb_Imp_Sys.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_CImp.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrm_CImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
