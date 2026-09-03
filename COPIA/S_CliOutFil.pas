unit S_CliOutFil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,db,dbtables;

type
  TFrm_CliOutFil = class(TForm)
    lbl_local: TLabel;
    lbl_encontrado: TLabel;
    Label1: TLabel;
    RAZSOC: TEdit;
    CNPJ: TEdit;
    Label2: TLabel;
    INSCRICAO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CPF: TEdit;
    Label5: TLabel;
    RG: TEdit;
    Label6: TLabel;
    CENDER: TEdit;
    Label7: TLabel;
    BAIRRO: TEdit;
    Label8: TLabel;
    CEP: TEdit;
    Label9: TLabel;
    CIDADE: TEdit;
    Label10: TLabel;
    UF: TEdit;
    bbCadastrar: TBitBtn;
    Label11: TLabel;
    CONS_CNPJ: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    CONS_CPF: TEdit;
    bbPesq: TBitBtn;
    bbSair: TBitBtn;
    procedure CONS_CNPJExit(Sender: TObject);
    procedure CONS_CPFExit(Sender: TObject);
    procedure bbPesqClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCadastrarClick(Sender: TObject);
    procedure CONS_CNPJEnter(Sender: TObject);
    procedure CONS_CPFEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CliOutFil: TFrm_CliOutFil;
  mEncontrado: Boolean=false;

implementation

uses S_WebService,  S_DM6, S_DM1;

{$R *.dfm}

procedure TFrm_CliOutFil.CONS_CNPJExit(Sender: TObject);
begin
if valfloat(CONS_CNPJ.Text)=0 then
   CONS_CNPJ.Text:=''
else
   begin
   CONS_CNPJ.Text:=FormatFloat(pDFCNPJ, ValFloat(CONS_CNPJ.Text));
   end;
end;

procedure TFrm_CliOutFil.CONS_CPFExit(Sender: TObject);
begin
if valfloat(CONS_CPF.Text)=0 then
   CONS_CPF.Text:=''
else
   begin
   CONS_CPF.Text:=FormatFloat(pDFCNPF, ValFloat(CONS_CPF.Text));
   end;

end;

procedure TFrm_CliOutFil.bbPesqClick(Sender: TObject);
begin
lbl_encontrado.Caption:='';
if (valfloat(CONS_CNPJ.Text)=0) and
   (valfloat(CONS_CPF.Text)=0) then
   begin
   fmensagem('Favor digitar um CNPJ ou CPF!',0,['0'],0);
   CONS_CNPJ.SetFocus;
   exit;
   end;
mencontrado:=false;
if not DM6.Tb_ParLCD.Active then
   begin
   DM6.Tb_ParLCD.Close;
   DM6.Tb_ParLCD.SQL.clear;
   DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
   DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
   DM6.Tb_ParLCD.Open;
   end;
DM6.Tb_ParLCD.First;

While not DM6.Tb_ParLCD.Eof do
   begin
   if Trim(DM6.Tb_ParLCDendloc.AsString)='' then
      begin
      DM6.Tb_ParLCD.Next;
      Continue;
      end;
   mConexao_URL:=DM6.Tb_ParLCDendloc.AsString;
   lbl_local.Caption:='Pesquisando em: '+DM6.Tb_ParLCDdescloc.Value;
   Update;
   if not Frm_WebService.fWS_Conectar(0) then
      begin
      if fmensagem('Não foi possivel conectar: '+DM6.Tb_ParLCDdescloc.AsString
               +' Quer Continuar?',0,['1','2'],1)=mrNo then
      break;
      end;
   if valFloat(CONS_CNPJ.Text)=0 then
      mcinst2:=Frm_WebService.fWS_CadCli(0, '%',FloatToStr(Fsonumero(CONS_CPF.Text)))
   else
      mcinst2:=Frm_WebService.fWS_CadCli(0,FloatToStr(FSonumero(CONS_CNPJ.Text)), '%');
   if mcinst2='-1' then
      begin
      DM6.Tb_ParLCD.Next;
      Continue;
      end
   else if mcinst2='-2' then
      begin
      lbl_encontrado.Caption:='Erro ao Tentar Buscar as Informações!';
      exit;
      end
   else if mcinst2='-3' then
      begin
      lbl_encontrado.Caption:='Erro ao Criar Tabela Temporaria!';
      exit;
      end
   else
      mEncontrado:=true;
      break;
   DM6.Tb_ParLCD.Next;
   end;
if mEncontrado then
   begin
   CNPJ.Text     :=FormatFloat(pDFCNPJ, Frm_WebService.ClientDataSet1.fieldbyName('CCNPJ').AsFloat);
   INSCRICAO.Text:=Frm_WebService.ClientDataSet1.fieldbyName('CIE').AsString;
   CPF.Text      :=FormatFloat(pDFCNPF, Frm_WebService.ClientDataSet1.fieldbyName('CCPF').AsFloat);
   RG.Text       :=Frm_WebService.ClientDataSet1.fieldbyName('CRG').AsString;
   RAZSOC.Text   :=Frm_WebService.ClientDataSet1.fieldbyName('CRAZAO').AsString;
   CENDER.Text   :=Frm_WebService.ClientDataSet1.fieldbyName('CLOG').AsString;
   BAIRRO.Text   :=Frm_WebService.ClientDataSet1.fieldbyName('CBAIRRO').AsString;
   CEP.Text      :=Frm_WebService.ClientDataSet1.fieldbyName('CCEP').AsString;
   CIDADE.Text   :=Frm_WebService.ClientDataSet1.fieldbyName('CCIDADE').AsString;
   UF.Text       :=Frm_WebService.ClientDataSet1.fieldbyName('CUF').AsString;
   bbCadastrar.Enabled:=true;
   end
else
   begin
   CNPJ.Text     :='';
   INSCRICAO.Text:='';
   CPF.Text      :='';
   RG.Text       :='';
   RAZSOC.Text   :='';
   CENDER.Text   :='';
   BAIRRO.Text   :='';
   CEP.Text      :='';
   CIDADE.Text   :='';
   UF.Text       :='';
   lbl_encontrado.Caption:='Nao foi encontrado registros que satisfaça a necessidade';
   bbCadastrar.Enabled:=false;
   end;

end;

procedure TFrm_CliOutFil.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CliOutFil.FormActivate(Sender: TObject);
begin
if Frm_WebService=nil then
   Application.CreateForm(TFrm_WebService, Frm_WebService);

end;

procedure TFrm_CliOutFil.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_WebService.free;
Frm_WebService:=nil;

end;

procedure TFrm_CliOutFil.bbCadastrarClick(Sender: TObject);
var
y,x: Integer;
mcodcli: Real;
begin
if fmensagem('Quer Realmente Cadastrar Este Cliente?',0,['1','2'],0)<>mrYes then
   exit;
if DM1.Tb_cli.state in [dsEdit,dsInsert] then
   DM1.Tb_cli.cancel;
DM1.Tb_cli.Append;
mcodcli:=Frm_WebService.ClientDataSet1.fieldbyName('CCODCLI').asfloat;
DM1.Query1.Close;
DM1.Query1.sql.clear;
DM1.Query1.sql.add('select count(*) from CADCLI where '
                  +iif(DM1.Qr_tid.LOCATE('TINOME','CADCLI',[]),'',' CCODEMP='+IntTostr(codemp)+' and ')
                  +' CCODCLI=0'+FloatTostr(mcodcli));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   mcodcli:=DM1.Tb_CliCCODCLI.AsFloat;
for x:=0 to DM1.Tb_Cli.Fields.Count-1 do
   begin
   if DM1.Tb_Cli.Fields[x].FieldKind=fkCalculated then
      Continue;

   for y:=0 to Frm_WebService.ClientDataSet1.Fields.Count-1 do
      begin
      if Frm_WebService.ClientDataSet1.Fields[y].FieldName=DM1.Tb_Cli.Fields[x].FieldName then
         begin
         DM1.Tb_Cli.Fields[x].Value:=Frm_WebService.ClientDataSet1.Fields[y].Value;
         break;
         end;
      end;
   end;
   
DM1.Tb_Cli.Post;
Fmensagem('Cadastrado!',0,['0'],0);
end;

procedure TFrm_CliOutFil.CONS_CNPJEnter(Sender: TObject);
begin
lbl_encontrado.Caption:='';
end;

procedure TFrm_CliOutFil.CONS_CPFEnter(Sender: TObject);
begin
lbl_encontrado.Caption:='';
end;

procedure TFrm_CliOutFil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

end.
